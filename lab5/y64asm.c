#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

#include "y64asm.h"

line_t *line_head = NULL;
line_t *line_tail = NULL;
int lineno = 0;

#define err_print(_s, _a...)            \
    do                                  \
    {                                   \
        if (lineno < 0)                 \
            fprintf(stderr, "[--]: "_s  \
                            "\n",       \
                    ##_a);              \
        else                            \
            fprintf(stderr, "[L%d]: "_s \
                            "\n",       \
                    lineno, ##_a);      \
    } while (0);

int64_t vmaddr = 0; /* vm addr */

/* register table */
const reg_t reg_table[REG_NONE] = {
    {"%rax", REG_RAX, 4},
    {"%rcx", REG_RCX, 4},
    {"%rdx", REG_RDX, 4},
    {"%rbx", REG_RBX, 4},
    {"%rsp", REG_RSP, 4},
    {"%rbp", REG_RBP, 4},
    {"%rsi", REG_RSI, 4},
    {"%rdi", REG_RDI, 4},
    {"%r8", REG_R8, 3},
    {"%r9", REG_R9, 3},
    {"%r10", REG_R10, 4},
    {"%r11", REG_R11, 4},
    {"%r12", REG_R12, 4},
    {"%r13", REG_R13, 4},
    {"%r14", REG_R14, 4}};
const reg_t *find_register(char *name)
{
    int i;
    for (i = 0; i < REG_NONE; i++)
        if (!strncmp(name, reg_table[i].name, reg_table[i].namelen))
            return &reg_table[i];
    return NULL;
}

/* instruction set */
instr_t instr_set[] = {
    {"nop", 3, HPACK(I_NOP, F_NONE), 1},
    {"halt", 4, HPACK(I_HALT, F_NONE), 1},
    {"rrmovq", 6, HPACK(I_RRMOVQ, F_NONE), 2},
    {"cmovle", 6, HPACK(I_RRMOVQ, C_LE), 2},
    {"cmovl", 5, HPACK(I_RRMOVQ, C_L), 2},
    {"cmove", 5, HPACK(I_RRMOVQ, C_E), 2},
    {"cmovne", 6, HPACK(I_RRMOVQ, C_NE), 2},
    {"cmovge", 6, HPACK(I_RRMOVQ, C_GE), 2},
    {"cmovg", 5, HPACK(I_RRMOVQ, C_G), 2},
    {"irmovq", 6, HPACK(I_IRMOVQ, F_NONE), 10},
    {"rmmovq", 6, HPACK(I_RMMOVQ, F_NONE), 10},
    {"mrmovq", 6, HPACK(I_MRMOVQ, F_NONE), 10},
    {"addq", 4, HPACK(I_ALU, A_ADD), 2},
    {"subq", 4, HPACK(I_ALU, A_SUB), 2},
    {"andq", 4, HPACK(I_ALU, A_AND), 2},
    {"xorq", 4, HPACK(I_ALU, A_XOR), 2},
    {"jmp", 3, HPACK(I_JMP, C_YES), 9},
    {"jle", 3, HPACK(I_JMP, C_LE), 9},
    {"jl", 2, HPACK(I_JMP, C_L), 9},
    {"je", 2, HPACK(I_JMP, C_E), 9},
    {"jne", 3, HPACK(I_JMP, C_NE), 9},
    {"jge", 3, HPACK(I_JMP, C_GE), 9},
    {"jg", 2, HPACK(I_JMP, C_G), 9},
    {"call", 4, HPACK(I_CALL, F_NONE), 9},
    {"ret", 3, HPACK(I_RET, F_NONE), 1},
    {"pushq", 5, HPACK(I_PUSHQ, F_NONE), 2},
    {"popq", 4, HPACK(I_POPQ, F_NONE), 2},
    {".byte", 5, HPACK(I_DIRECTIVE, D_DATA), 1},
    {".word", 5, HPACK(I_DIRECTIVE, D_DATA), 2},
    {".long", 5, HPACK(I_DIRECTIVE, D_DATA), 4},
    {".quad", 5, HPACK(I_DIRECTIVE, D_DATA), 8},
    {".pos", 4, HPACK(I_DIRECTIVE, D_POS), 0},
    {".align", 6, HPACK(I_DIRECTIVE, D_ALIGN), 0},
    {NULL, 1, 0, 0} //end
};

instr_t *find_instr(char *name)
{
    int i;
    for (i = 0; instr_set[i].name; i++)
        if (strncmp(instr_set[i].name, name, instr_set[i].len) == 0)
            return &instr_set[i];
    return NULL;
}

/* symbol table (don't forget to init and finit it) */
symbol_t *symtab = NULL;

/*
 * find_symbol: scan table to find the symbol
 * args
 *     name: the name of symbol
 *
 * return
 *     symbol_t: the 'name' symbol
 *     NULL: not exist
 */
symbol_t *find_symbol(char *name)
{
    symbol_t *stmp = symtab->next;
    while ((stmp != NULL))
    {
        if (strncmp(stmp->name, name, strlen(name)) == 0)
        {
            return stmp;
        }
        else
        {
            stmp = stmp->next;
        }
    }
    return NULL;
}

/*
 * add_symbol: add a new symbol to the symbol table
 * args
 *     name: the name of symbol
 *
 * return
 *     0: success
 *     -1: error, the symbol has exist
 */
int add_symbol(char *name)
{
    /* check duplicate */
    if (find_symbol(name) != NULL)
    {
        return -1;
    }

    /* create new symbol_t (don't forget to free it)*/
    symbol_t *sadd = (symbol_t *)malloc(sizeof(symbol_t));
    sadd->name = name;
    sadd->addr = vmaddr;
    sadd->next = NULL;

    /* add the new symbol_t to symbol table */
    symbol_t *stmp = symtab;
    if (symtab->next == NULL)
    {
        symtab->next = sadd;
    }
    else
    {
        while (stmp->next != NULL)
        {
            stmp = stmp->next;
        }
        stmp->next = sadd;
    }
    return 0;
}

/* relocation table (don't forget to init and finit it) */
reloc_t *reltab = NULL;

/*
 * add_reloc: add a new relocation to the relocation table
 * args
 *     name: the name of symbol
 *
 * return
 *     0: success
 *     -1: error, the symbol has exist
 */
void add_reloc(char *name, bin_t *bin)
{
    /* create new reloc_t (don't forget to free it)*/
    reloc_t *radd = (reloc_t *)malloc(sizeof(reloc_t));
    radd->y64bin = bin;
    radd->name = name;
    radd->next = NULL;

    /* add the new reloc_t to relocation table */
    reloc_t *rtmp = reltab;
    if (reltab->next == NULL)
    {
        reltab->next = radd;
    }
    else
    {
        while (rtmp->next != NULL)
        {
            rtmp = rtmp->next;
        }
        rtmp->next = radd;
    }
}

/* macro for parsing y64 assembly code */
#define IS_DIGIT(s) ((*(s) >= '0' && *(s) <= '9') || *(s) == '-' || *(s) == '+')
#define IS_LETTER(s) ((*(s) >= 'a' && *(s) <= 'z') || (*(s) >= 'A' && *(s) <= 'Z'))
#define IS_COMMENT(s) (*(s) == '#')
#define IS_REG(s) (*(s) == '%')
#define IS_IMM(s) (*(s) == '$')

#define IS_BLANK(s) (*(s) == ' ' || *(s) == '\t')
#define IS_END(s) (*(s) == '\0')

#define SKIP_BLANK(s)                     \
    do                                    \
    {                                     \
        while (!IS_END(s) && IS_BLANK(s)) \
            (s)++;                        \
    } while (0);

/* return value from different parse_xxx function */
typedef enum
{
    PARSE_ERR = -1,
    PARSE_REG,
    PARSE_DIGIT,
    PARSE_SYMBOL,
    PARSE_MEM,
    PARSE_DELIM,
    PARSE_INSTR,
    PARSE_LABEL
} parse_t;

/*
 * parse_instr: parse an expected data token (e.g., 'rrmovq')
 * args
 *     ptr: point to the start of string
 *     inst: point to the inst_t within instr_set
 *
 * return
 *     PARSE_INSTR: success, move 'ptr' to the first char after token,
 *                            and store the pointer of the instruction to 'inst'
 *     PARSE_ERR: error, the value of 'ptr' and 'inst' are undefined
 */
parse_t parse_instr(char **ptr, instr_t **inst)
{
    char *ctmp = *ptr;
    instr_t *itmp;

    /* skip the blank */
    SKIP_BLANK(ctmp);
    if (IS_END(ctmp))
    {
        return PARSE_ERR;
    }

    /* find_instr and check end */
    itmp = find_instr(ctmp);
    if (itmp == NULL)
        return PARSE_ERR;
    ctmp += itmp->len;
    if (!IS_END(ctmp) && !IS_BLANK(ctmp))
    {
        return PARSE_ERR;
    }

    /* set 'ptr' and 'inst' */
    *ptr = ctmp;
    *inst = itmp;
    return PARSE_INSTR;
}

/*
 * parse_delim: parse an expected delimiter token (e.g., ',')
 * args
 *     ptr: point to the start of string
 *
 * return
 *     PARSE_DELIM: success, move 'ptr' to the first char after token
 *     PARSE_ERR: error, the value of 'ptr' and 'delim' are undefined
 */
parse_t parse_delim(char **ptr, char delim)
{
    char *ctmp = *ptr;
    /* skip the blank and check */

    SKIP_BLANK(ctmp);
    if (IS_END(ctmp))
    {
        return PARSE_ERR;
    }
    if (*ctmp != delim)
    {
        return PARSE_ERR;
    }
    ctmp++;

    /* set 'ptr' */
    *ptr = ctmp;
    return PARSE_DELIM;
}

/*
 * parse_reg: parse an expected register token (e.g., '%rax')
 * args
 *     ptr: point to the start of string
 *     regid: point to the regid of register
 *
 * return
 *     PARSE_REG: success, move 'ptr' to the first char after token, 
 *                         and store the regid to 'regid'
 *     PARSE_ERR: error, the value of 'ptr' and 'regid' are undefined
 */
parse_t parse_reg(char **ptr, regid_t *regid)
{
    char *ctmp = *ptr;
    const reg_t *rtmp;

    /* skip the blank and check */
    SKIP_BLANK(ctmp);
    if (IS_END(ctmp))
    {
        return PARSE_ERR;
    }

    /* find register */
    rtmp = find_register(ctmp);
    if (!rtmp)
    {
        return PARSE_ERR;
    }
    ctmp += rtmp->namelen;

    /* set 'ptr' and 'regid' */
    *ptr = ctmp;
    *regid = rtmp->id;
    return PARSE_REG;
}

/*
 * parse_symbol: parse an expected symbol token (e.g., 'Main')
 * args
 *     ptr: point to the start of string
 *     name: point to the name of symbol (should be allocated in this function)
 *
 * return
 *     PARSE_SYMBOL: success, move 'ptr' to the first char after token,
 *                               and allocate and store name to 'name'
 *     PARSE_ERR: error, the value of 'ptr' and 'name' are undefined
 */
parse_t parse_symbol(char **ptr, char **name)
{
    char *ctmp = *ptr;

    /* skip the blank and check */
    SKIP_BLANK(ctmp);
    if (IS_END(ctmp))
    {
        return PARSE_ERR;
    }
    if (!IS_LETTER(ctmp))
    {
        return PARSE_ERR;
    }

    /* allocate name and copy to it */
    char *namestart = ctmp, *symname;
    int symlen = 0;
    while (IS_LETTER(ctmp) || IS_DIGIT(ctmp))
    {
        symlen++;
        ctmp++;
    }
    symname = (char *)malloc(symlen + 1);
    memcpy(symname, namestart, symlen);
    symname[symlen] = '\0';

    /* set 'ptr' and 'name' */
    *ptr = ctmp;
    *name = symname;
    return PARSE_SYMBOL;
}

/*
 * parse_digit: parse an expected digit token (e.g., '0x100')
 * args
 *     ptr: point to the start of string
 *     value: point to the value of digit
 *
 * return
 *     PARSE_DIGIT: success, move 'ptr' to the first char after token
 *                            and store the value of digit to 'value'
 *     PARSE_ERR: error, the value of 'ptr' and 'value' are undefined
 */
parse_t parse_digit(char **ptr, long *value)
{
    char *ctmp = *ptr, *endctmp;

    /* skip the blank and check */
    SKIP_BLANK(ctmp);
    if (IS_END(ctmp))
    {
        return PARSE_ERR;
    }

    /* calculate the digit, (NOTE: see strtostrtoll()) */
    if (!IS_DIGIT(ctmp))
    {
        return PARSE_ERR;
    }
    *value = (long)strtoull(ctmp, &endctmp, 0);
    ctmp = endctmp;
    /* set 'ptr' and 'value' */
    *ptr = ctmp;
    return PARSE_DIGIT;
}

/*
 * parse_imm: parse an expected immediate token (e.g., '$0x100' or 'STACK')
 * args
 *     ptr: point to the start of string
 *     name: point to the name of symbol (should be allocated in this function)
 *     value: point to the value of digit
 *
 * return
 *     PARSE_DIGIT: success, the immediate token is a digit,
 *                            move 'ptr' to the first char after token,
 *                            and store the value of digit to 'value'
 *     PARSE_SYMBOL: success, the immediate token is a symbol,
 *                            move 'ptr' to the first char after token,
 *                            and allocate and store name to 'name' 
 *     PARSE_ERR: error, the value of 'ptr', 'name' and 'value' are undefined
 */
parse_t parse_imm(char **ptr, char **name, long *value)
{
    char *ctmp = *ptr;
    parse_t ret = PARSE_ERR;
    /* skip the blank and check */

    SKIP_BLANK(ctmp);
    if (IS_END(ctmp))
    {
        ret = PARSE_ERR;
    }
    /* if IS_IMM, then parse the digit */

    if (IS_IMM(ctmp))
    {
        ctmp++;
        ret = parse_digit(&ctmp, value);
    }

    /* if IS_LETTER, then parse the symbol */
    else if (IS_LETTER(ctmp))
    {
        ret = parse_symbol(&ctmp, name);
    }
    else
    {
        ret = PARSE_ERR;
    }

    /* set 'ptr' and 'name' or 'value' */
    *ptr = ctmp;
    return ret;
}

/*
 * parse_mem: parse an expected memory token (e.g., '8(%rbp)')
 * args
 *     ptr: point to the start of string
 *     value: point to the value of digit
 *     regid: point to the regid of register
 *
 * return
 *     PARSE_MEM: success, move 'ptr' to the first char after token,
 *                          and store the value of digit to 'value',
 *                          and store the regid to 'regid'
 *     PARSE_ERR: error, the value of 'ptr', 'value' and 'regid' are undefined
 */
parse_t parse_mem(char **ptr, long *value, regid_t *regid)
{
    char *ctmp = *ptr;

    /* skip the blank and check */
    SKIP_BLANK(ctmp);
    if (IS_END(ctmp))
    {
        return PARSE_ERR;
    }

    /* calculate the digit and register, (ex: (%ebp) or 8(%ebp)) */
    if (*ctmp == '(')
    {
        *value = 0;
    }
    if (IS_DIGIT(ctmp))
    {
        if (parse_digit(&ctmp, value) == PARSE_ERR)
        {
            return PARSE_ERR;
        }
    }
    if (*ctmp != '(')
    {
        return PARSE_ERR;
    }
    ctmp++;
    if (parse_reg(&ctmp, regid) == PARSE_ERR)
    {
        return PARSE_ERR;
    }
    if (*ctmp != ')')
    {
        return PARSE_ERR;
    }
    ctmp++;

    /* set 'ptr', 'value' and 'regid' */
    *ptr = ctmp;
    return PARSE_MEM;
}

/*
 * parse_data: parse an expected data token (e.g., '0x100' or 'array')
 * args
 *     ptr: point to the start of string
 *     name: point to the name of symbol (should be allocated in this function)
 *     value: point to the value of digit
 *
 * return
 *     PARSE_DIGIT: success, data token is a digit,
 *                            and move 'ptr' to the first char after token,
 *                            and store the value of digit to 'value'
 *     PARSE_SYMBOL: success, data token is a symbol,
 *                            and move 'ptr' to the first char after token,
 *                            and allocate and store name to 'name' 
 *     PARSE_ERR: error, the value of 'ptr', 'name' and 'value' are undefined
 */
parse_t parse_data(char **ptr, char **name, long *value)
{
    char *ctmp = *ptr;

    parse_t ret = PARSE_ERR;

    /* skip the blank and check */
    SKIP_BLANK(ctmp);
    if (IS_END(ctmp))
    {
        return PARSE_ERR;
    }

    /* if IS_DIGIT, then parse the digit */
    if (IS_DIGIT(ctmp))
    {
        ret = parse_digit(&ctmp, value);
    }

    /* if IS_LETTER, then parse the symbol */
    if (IS_LETTER(ctmp))
    {
        ret = parse_symbol(&ctmp, name);
    }

    /* set 'ptr', 'name' and 'value' */
    *ptr = ctmp;
    return ret;
}

/*
 * parse_label: parse an expected label token (e.g., 'Loop:')
 * args
 *     ptr: point to the start of string
 *     name: point to the name of symbol (should be allocated in this function)
 *
 * return
 *     PARSE_LABEL: success, move 'ptr' to the first char after token
 *                            and allocate and store name to 'name'
 *     PARSE_ERR: error, the value of 'ptr' is undefined
 */
parse_t parse_label(char **ptr, char **name)
{
    char *ctmp = *ptr;

    /* skip the blank and check */
    SKIP_BLANK(ctmp);
    if (IS_END(ctmp))
    {
        return PARSE_ERR;
    }

    if (!IS_LETTER(ctmp))
    {
        return PARSE_ERR;
    }

    /* allocate name and copy to it */
    char *namestart = ctmp, *labelname;
    int labellen = 0;
    while (IS_LETTER(ctmp) || IS_DIGIT(ctmp))
    {
        labellen++;
        ctmp++;
    }
    if (*ctmp != ':')
    {
        return PARSE_ERR;
    }

    labelname = (char *)malloc(labellen + 1);
    memcpy(labelname, namestart, labellen);
    labelname[labellen] = '\0';
    ctmp++;

    /* set 'ptr' and 'name' */
    *ptr = ctmp;
    *name = labelname;
    return PARSE_LABEL;
}

/* Load long value to binary code in little endian. */
void longToLittleEndian(byte_t *dest, long value, int bytes)
{
    for (int i = 0; i < bytes; i++)
    {
        dest[i] = ((value >> (8 * i)) & 0xFF);
    }
}

/*
 * parse_line: parse a line of y64 code (e.g., 'Loop: mrmovq (%rcx), %rsi')
 * (you could combine above parse_xxx functions to do it)
 * args
 *     line: point to a line_t data with a line of y64 assembly code
 *
 * return
 *     PARSE_XXX: success, fill line_t with assembled y64 code
 *     PARSE_ERR: error, try to print err information (e.g., instr type and line number)
 */
type_t parse_line(line_t *line)
{
    char *ctmp = line->y64asm;
    char *name = NULL;
    parse_t type;

    /* when finish parse an instruction or lable, we still need to continue check 
* e.g., 
*  Loop: mrmovl (%ebp), %ecx
*           call SUM  #invoke SUM function */

    /* skip blank and check IS_END */
    SKIP_BLANK(ctmp);
    if (IS_END(ctmp))
    {
        return line->type;
    }

    /* is a comment ? */
    if (IS_COMMENT(ctmp))
    {
        return line->type;
    }

    /* is a label ? */
    type = parse_label(&ctmp, &name);
    if (type == PARSE_LABEL)
    {
        if (add_symbol(name) == -1)
        {
            err_print("Dup symbol:%s", name);
            line->type = TYPE_ERR;
            return line->type;
        }
    }
    line->y64bin.addr = vmaddr;
    SKIP_BLANK(ctmp);

    if (IS_END(ctmp) || IS_COMMENT(ctmp))
    {
        line->type = TYPE_INS;
        return line->type;
    }

    /* is an instruction ? */
    instr_t *inst;
    type = parse_instr(&ctmp, &inst);
    if (type != PARSE_INSTR)
    {
        line->type = TYPE_ERR;
        err_print("Invalid Instr") return TYPE_ERR;
    }

    /* set type and y64bin */
    line->type = TYPE_INS;
    line->y64bin.codes[0] = inst->code;
    line->y64bin.bytes = inst->bytes;

    /* update vmaddr */
    vmaddr += inst->bytes;

    /* parse the rest of instruction according to the itype */
    regid_t rA, rB;
    long memory;
    long immediate;
    switch (HIGH(inst->code))
    {
    case I_HALT:
    case I_NOP:
    case I_RET:
    {
        return line->type;
    }
    case I_ALU:
    case I_RRMOVQ:
    {
        if (parse_reg(&ctmp, &rA) != PARSE_REG)
        {
            err_print("Invalid REG");
            return TYPE_ERR;
        }
        if (parse_delim(&ctmp, ',') != PARSE_DELIM)
        {
            err_print("Invalid \',\'");
            return TYPE_ERR;
        }
        if (parse_reg(&ctmp, &rB) != PARSE_REG)
        {
            err_print("Invalid REG");
            return TYPE_ERR;
        }
        line->y64bin.codes[1] = HPACK(rA, rB);
        return line->type;
    }
    case I_IRMOVQ:
    {
        rA = REG_NONE;
        parse_t immtype = parse_imm(&ctmp, &name, &immediate);
        if (immtype == PARSE_ERR)
        {
            err_print("Invalid Immediate");
            return TYPE_ERR;
        }
        if (parse_delim(&ctmp, ',') != PARSE_DELIM)
        {
            err_print("Invalid \',\'");
            return TYPE_ERR;
        }
        if (parse_reg(&ctmp, &rB) != PARSE_REG)
        {
            err_print("Invalid REG");
            return TYPE_ERR;
        }
        line->y64bin.codes[1] = HPACK(rA, rB);
        if (immtype == PARSE_DIGIT)
        {
            longToLittleEndian(&line->y64bin.codes[2], immediate, 8);
        }
        else
        {
            add_reloc(name, &line->y64bin);
        }
        return line->type;
    }
    case I_RMMOVQ:
    {
        if (parse_reg(&ctmp, &rA) != PARSE_REG)
        {
            err_print("Invalid REG");
            return TYPE_ERR;
        }

        if (parse_delim(&ctmp, ',') != PARSE_DELIM)
        {
            err_print("Invalid \',\'");
            return TYPE_ERR;
        }
        if (parse_mem(&ctmp, &memory, &rB) != PARSE_MEM)
        {
            err_print("Invalid MEM");
            return TYPE_ERR;
        }
        line->y64bin.codes[1] = HPACK(rA, rB);
        longToLittleEndian(&line->y64bin.codes[2], memory, 8);
        return line->type;
    }
    case I_MRMOVQ:
    {
        if (parse_mem(&ctmp, &memory, &rB) != PARSE_MEM)
        {
            err_print("Invalid MEM");
            return TYPE_ERR;
        }
        if (parse_delim(&ctmp, ',') != PARSE_DELIM)
        {
            err_print("Invalid \',\'");
            return TYPE_ERR;
        }
        if (parse_reg(&ctmp, &rA) != PARSE_REG)
        {
            err_print("Invalid REG");
            return TYPE_ERR;
        }
        line->y64bin.codes[1] = HPACK(rA, rB);
        longToLittleEndian(&line->y64bin.codes[2], memory, 8);
        return line->type;
    }
    case I_JMP:
    case I_CALL:
    {
        if (parse_symbol(&ctmp, &name) != PARSE_SYMBOL)
        {
            err_print("Invalid DEST");
            return TYPE_ERR;
        }
        add_reloc(name, &line->y64bin);
        return line->type;
    }
    case I_PUSHQ:
    case I_POPQ:
    {
        if (parse_reg(&ctmp, &rA) != PARSE_REG)
        {
            err_print("Invalid REG");
            return TYPE_ERR;
        }
        rB = REG_NONE;
        line->y64bin.codes[1] = HPACK(rA, rB);
        return line->type;
    }
    case I_DIRECTIVE:
    {
        switch (LOW(inst->code))
        {
            long value;
        case D_DATA:
        {
            if (parse_digit(&ctmp, &value) == PARSE_DIGIT)
            {
                longToLittleEndian(&line->y64bin.codes[0], value, inst->bytes);
                return line->type;
            }
            else if (parse_symbol(&ctmp, &name) == PARSE_SYMBOL)
            {
                add_reloc(name, &line->y64bin);
                return line->type;
            }
            else
            {
                err_print("Invalid Value");
                return TYPE_ERR;
            }
        }
        case D_POS:
        {
            if (parse_digit(&ctmp, &value) != PARSE_DIGIT)
            {
                err_print("Invalid position");
                return TYPE_ERR;
            }
            line->y64bin.addr = value;
            vmaddr = value;
            return line->type;
        }
        case D_ALIGN:
        {
            if (parse_digit(&ctmp, &value) != PARSE_DIGIT)
            {
                err_print("Invalid alignment");
                return TYPE_ERR;
            }
            for (; (vmaddr % value) != 0; vmaddr++)
            {
            }
            line->y64bin.addr = vmaddr;
            return line->type;
        }
        }
    }
    default:
        line->type = TYPE_ERR;
        err_print("Unknown instr");
    }
    line->type = TYPE_ERR;
    return line->type;
}

/*
 * assemble: assemble an y64 file (e.g., 'asum.ys')
 * args
 *     in: point to input file (an y64 assembly file)
 *
 * return
 *     0: success, assmble the y64 file to a list of line_t
 *     -1: error, try to print err information (e.g., instr type and line number)
 */
int assemble(FILE *in)
{
    static char asm_buf[MAX_INSLEN]; /* the current line of asm code */
    line_t *line;
    int slen;
    char *y64asm;

    /* read y64 code line-by-line, and parse them to generate raw y64 binary code list */
    while (fgets(asm_buf, MAX_INSLEN, in) != NULL)
    {
        slen = strlen(asm_buf);
        while ((asm_buf[slen - 1] == '\n') || (asm_buf[slen - 1] == '\r'))
        {
            asm_buf[--slen] = '\0'; /* replace terminator */
        }

        /* store y64 assembly code */
        y64asm = (char *)malloc(sizeof(char) * (slen + 1)); // free in finit
        strcpy(y64asm, asm_buf);

        line = (line_t *)malloc(sizeof(line_t)); // free in finit
        memset(line, '\0', sizeof(line_t));

        line->type = TYPE_COMM;
        line->y64asm = y64asm;
        line->next = NULL;

        line_tail->next = line;
        line_tail = line;
        lineno++;

        if (parse_line(line) == TYPE_ERR)
        {
            return -1;
        }
    }

    lineno = -1;
    return 0;
}

/*
 * relocate: relocate the raw y64 binary code with symbol address
 *
 * return
 *     0: success
 *     -1: error, try to print err information (e.g., addr and symbol)
 */
int relocate(void)
{
    reloc_t *rtmp = NULL;
    rtmp = reltab->next;
    while (rtmp)
    {
        /* find symbol */
        symbol_t *stmp = find_symbol(rtmp->name);
        if (!stmp)
        {
            err_print("Unknown symbol:\'%s\'", rtmp->name);
            return -1;
        }
        /* relocate y64bin according itype */
        switch (HIGH(rtmp->y64bin->codes[0]))
        {
        case I_IRMOVQ:
            longToLittleEndian(&rtmp->y64bin->codes[2], stmp->addr, 8);
            break;
        case I_JMP:
        case I_CALL:
            longToLittleEndian(&rtmp->y64bin->codes[1], stmp->addr, 8);
            break;
        case I_DIRECTIVE:
            longToLittleEndian(&rtmp->y64bin->codes[0], stmp->addr, 8);
            break;
        }
        /* next */
        rtmp = rtmp->next;
    }
    return 0;
}

/*
 * binfile: generate the y64 binary file
 * args
 *     out: point to output file (an y64 binary file)
 *
 * return
 *     0: success
 *     -1: error
 */
int binfile(FILE *out)
{
    /* prepare image with y64 binary code */
    line_t *line = line_head->next;
    /* binary write y64 code to output file (NOTE: see fwrite()) */
    int curr_size = 0;
    for (; line; line = line->next)
    {
        fseek(out, line->y64bin.addr, 0);
        fwrite(line->y64bin.codes, 1, line->y64bin.bytes, out);
        curr_size = line->y64bin.addr + line->y64bin.bytes;
    }
    return 0;
}

/* whether print the readable output to screen or not ? */
bool_t screen = FALSE;

static void hexstuff(char *dest, int value, int len)
{
    int i;
    for (i = 0; i < len; i++)
    {
        char c;
        int h = (value >> 4 * i) & 0xF;
        c = h < 10 ? h + '0' : h - 10 + 'a';
        dest[len - i - 1] = c;
    }
}

void print_line(line_t *line)
{
    char buf[32];

    /* line format: 0xHHH: cccccccccccc | <line> */
    if (line->type == TYPE_INS)
    {
        bin_t *y64bin = &line->y64bin;
        int i;

        strcpy(buf, "  0x000:                      | ");

        hexstuff(buf + 4, y64bin->addr, 3);
        if (y64bin->bytes > 0)
            for (i = 0; i < y64bin->bytes; i++)
                hexstuff(buf + 9 + 2 * i, y64bin->codes[i] & 0xFF, 2);
    }
    else
    {
        strcpy(buf, "                              | ");
    }
    printf("%s%s\n", buf, line->y64asm);
}

/* 
 * print_screen: dump readable binary and assembly code to screen
 * (e.g., Figure 4.8 in ICS book)
 */
void print_screen(void)
{
    line_t *tmp = line_head->next;
    while (tmp != NULL)
    {
        print_line(tmp);
        tmp = tmp->next;
    }
}

/* init and finit */
void init(void)
{
    reltab = (reloc_t *)malloc(sizeof(reloc_t)); // free in finit
    memset(reltab, 0, sizeof(reloc_t));

    symtab = (symbol_t *)malloc(sizeof(symbol_t)); // free in finit
    memset(symtab, 0, sizeof(symbol_t));

    line_head = (line_t *)malloc(sizeof(line_t)); // free in finit
    memset(line_head, 0, sizeof(line_t));
    line_tail = line_head;
    lineno = 0;
}

void finit(void)
{
    reloc_t *rtmp = NULL;
    do
    {
        rtmp = reltab->next;
        if (reltab->name)
            free(reltab->name);
        free(reltab);
        reltab = rtmp;
    } while (reltab);

    symbol_t *stmp = NULL;
    do
    {
        stmp = symtab->next;
        if (symtab->name)
            free(symtab->name);
        free(symtab);
        symtab = stmp;
    } while (symtab);

    line_t *ltmp = NULL;
    do
    {
        ltmp = line_head->next;
        if (line_head->y64asm)
            free(line_head->y64asm);
        free(line_head);
        line_head = ltmp;
    } while (line_head);
}

static void usage(char *pname)
{
    printf("Usage: %s [-v] file.ys\n", pname);
    printf("   -v print the readable output to screen\n");
    exit(0);
}

int main(int argc, char *argv[])
{
    int rootlen;
    char infname[512];
    char outfname[512];
    int nextarg = 1;
    FILE *in = NULL, *out = NULL;

    if (argc < 2)
        usage(argv[0]);

    if (argv[nextarg][0] == '-')
    {
        char flag = argv[nextarg][1];
        switch (flag)
        {
        case 'v':
            screen = TRUE;
            nextarg++;
            break;
        default:
            usage(argv[0]);
        }
    }

    /* parse input file name */
    rootlen = strlen(argv[nextarg]) - 3;
    /* only support the .ys file */
    if (strcmp(argv[nextarg] + rootlen, ".ys"))
        usage(argv[0]);

    if (rootlen > 500)
    {
        err_print("File name too long");
        exit(1);
    }

    /* init */
    init();

    /* assemble .ys file */
    strncpy(infname, argv[nextarg], rootlen);
    strcpy(infname + rootlen, ".ys");
    in = fopen(infname, "r");
    if (!in)
    {
        err_print("Can't open input file '%s'", infname);
        exit(1);
    }

    if (assemble(in) < 0)
    {
        err_print("Assemble y64 code error");
        fclose(in);
        exit(1);
    }
    fclose(in);

    /* relocate binary code */
    if (relocate() < 0)
    {
        err_print("Relocate binary code error");
        exit(1);
    }

    /* generate .bin file */
    strncpy(outfname, argv[nextarg], rootlen);
    strcpy(outfname + rootlen, ".bin");
    out = fopen(outfname, "wb");
    if (!out)
    {
        err_print("Can't open output file '%s'", outfname);
        exit(1);
    }

    if (binfile(out) < 0)
    {
        err_print("Generate binary file error");
        fclose(out);
        exit(1);
    }
    fclose(out);

    /* print to screen (.yo file) */
    if (screen)
        print_screen();

    /* finit */
    finit();
    return 0;
}

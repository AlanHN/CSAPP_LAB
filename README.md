# CS:APP3e Lab

My Implementation of [CS:APP3e](https://csapp.cs.cmu.edu/) Labs, also as the labs of the **ICS** series of courses of SJTU SE (SE118,SE119,SE120).

## Lab1: Manipulating Bits

The purpose of this assignment is to become more familiar with bit-level representations and manipulations. You’ll do this by solving a series of programming “puzzles.”Many of these puzzles are quite artificial, but you’ll find yourself thinking much more about bits in working your way through them.

## Lab2: Defusing a Binary Bomb

The nefarious Dr. Evil has planted a slew of “binary bombs” on our machines. A binary  bomb  is a  program that  consists  of  a  sequence  of  phases.  Each  phase expects you to type a particular string on stdin. If you type the correct string, then the phase is defused and the bomb proceeds to the next phase. Otherwise, the bomb explodes by printing "BOOM!!!" and then terminating. The bomb is defused when every phase has been defused. There are too many bombs for us to deal with, so we are giving each student a bomb to defuse. Your mission, whom you have no choice but to accept, is to defuse your bomb before the due date. Good luck,and welcome to the bomb squad!

## Lab3: The Attack Lab——Understanding Buffer Overflow Bugs

This assignment involves generating a total of five attacks on two programs having different security vulnerabilities. Outcomes you will gain from this lab include:

- You will learn different ways that attackers can exploit security vulnerabilities when programs do not safe guard themselves well enough against buffer overflows.
- Through this, you will get a better understanding of how to write programs that are more secure, as well as some of the features provided by compilers and operating systems to make programs less vulnerable.
- You  will  gain  a  deeper  understanding  of  the  stack  and  parameter-passing  mechanisms  of  x86-64machine code.
- You will gain a deeper understanding of how x86-64 instructions are encoded.
- You will gain more experience with debugging tools such as GDB and OBJDUMP.

## Lab4: Y86-64 Simulator

The purpose of this lab is to have a deep insight into Y86-64 instruction function. You will do this by implementing a simulator which simulates the behavior of a machine running Y86-64binary codes. A skeleton code of simulator is already prepared and you are required to make it support all Y86-64instructions step by step.

## Lab5: Y86-64 Assembler

The purpose of this lab is to have a deep insight into Y86-64 instruction architecture. You will do this by implementing an assembler which transforms Y86-64 assembly codes into Y86-64 binary codes. A skeleton code of assembler is already prepared and you are required to make it support all Y86-64 instructions step by step.

## Lab6: Optimizing the Performance of a Pipelined Processor

In this lab, you will learn about the design and implementation of a pipelined Y86-64 processor, optimizing both it and a benchmark program to maximize performance.  You are allowed to make any semantics preserving transformations to the benchmark program, or to make enhancements to the pipelined processor,or both.  When you have completed the lab, you will have a keen appreciation for the interactions between code and hardware that affect the performance of your programs. 

The lab is organized into three parts, each with its own handin. In Part A you will write some simple Y86-64programs and become familiar with the Y86-64 tools. In Part B, you will extend the SEQ simulator with two new instructions. These two parts will prepare you for Part C, the heart of the lab, where you will optimize the Y86-64 benchmark program and the processor design.

## Lab7: Tiny Shell

The purpose of this lab is to become more familiar with the concepts of process control and signaling. You’ll do this by writing a simple Unix shell program that supports job control.

## Lab8: Cache Lab——Understanding Cache Memories

This lab will help you understand the impact that cache memories can have on the performance of your C programs. The lab consists of two parts.  In the first part you will write a small C program (about 200-300 lines) that simulates the behavior of a cache memory.  In the second part, you will optimize a small matrix transpose function, with the goal of minimizing the number of cache misses.

## Lab9:  Web Proxy

A Web proxy is a program that acts as a middleman between a Web browser and an end server. Instead of contacting the end server directly to get a Web page, the browser contacts the proxy, which forwards there quest on to the end server. When the end server replies to the proxy, the proxy sends the reply on to the browser. 

Proxies are used for many purposes. Sometimes proxies are used in firewalls, such that the proxy is the only way for a browser inside the firewall to contact an end server outside. The proxy may do translation on the page, for instance, to make it viewable on a Web-enabled cellphone. Proxies are also used as anonymizers. By stripping a request of all identifying information, a proxy can make the browser anonymous to the end server. Proxies can even be used to cache Web objects, by storing a copy of, say, an image when a request for it is first made, and then serving that image in response to future requests rather than going to the end server. 

In this lab, you will write a concurrent Web proxy that logs requests. In the first part of the lab, you will write a simple sequential proxy that repeatedly waits for a request, forwards the request to the end server,and returns the result back to the browser, keeping a log of such requests in a disk file. This part will help you understand basics about network programming and the HTTP protocol. 

In the second part of the lab, you will upgrade your proxy so that it uses threads to deal with multiple clients concurrently. This part will give you some experience with concurrency and synchronization, which are crucial computer systems concepts

## Lab10: Malloc Lab——Writing a Dynamic Storage Allocator

In this lab you will be writing a dynamic storage allocator for C programs, i.e., your own version of the `malloc`,`free` and `realloc` routines. You are encouraged to explore the design space creatively and implement an allocator that is correct, efficient and fast.
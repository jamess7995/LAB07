#!/bin/bash
sudo gcc stack.c -o stack_gdb -g -z execstack -fno-stack-protector;
sudo touch badfile;
gdb stack_gdb;

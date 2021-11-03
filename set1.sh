#!/bin/bash
sudo touch myprog;
sudo chown root myprog;
sudo chmod 4755 myprog;
ls -ls myprog;

sudo git clone https://github.com/ndctdmh/cyber262;
cd cyber262;
sudo gcc stack.c -o stack -z execstack -fno-stack-protector;
sudo chown root stack;
sudo chmod 4755 stack;

sudo sysctl -w kernel.randomize_va_space=0;
sudo rm /bin/sh;
sudo ln -s /bin/zsh /bin/sh;

sudo touch badfile;
./stack;

sudo bash -c 'for i in {1..10}; do echo $i >> badfile; echo $i; sudo ./stack ; done;';


#!/bin/sh -l

sh -c "echo $*"

sh -c "echo $* > /github/home/test.txt"

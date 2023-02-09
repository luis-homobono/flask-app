#!/bin/bash

if [ $1 = "install" ]
then
    shift
    exec pip install $@
elif [ $1 = "runtests" ]
then
    exec python pytest -v 2
elif [ $1 = "run" ]
then
    exec python main.py
else
    exec $@
fi

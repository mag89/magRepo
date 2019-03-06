#!/bin/bash

for i in{1..6}
do
	ssh user@qaserver$i "uname -a | wall; lsmod | wall"

done

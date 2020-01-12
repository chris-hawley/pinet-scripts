#!/bin/bash

for i in $(seq 1  15)
do
	ssh-keyscan -H 192.168.2.$i >> ~/.ssh/known_hosts
done


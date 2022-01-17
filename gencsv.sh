#!/bin/bash

rm inputFile

if [[ "${1}" -eq 0 ]]
then
	for INDEX in {0..9}
	do
		VALUE=$(echo ${RANDOM}|head -c2)
		echo "${INDEX}, ${VALUE}" >> inputFile
	done
	exit 1
fi

if [[ "${1}" -gt 0 ]]
then
	for INDEX in $(seq 0 ${1})
	do
		VALUE=$(echo ${RANDOM}|head -c2)
                echo "${INDEX}, ${VALUE}" >> inputFile
        done
        exit 1
fi


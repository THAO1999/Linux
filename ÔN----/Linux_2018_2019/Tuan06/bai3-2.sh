#!/bin/bash
for file in *.doc
do
	mv "$file" "${file%doc}txt"
done

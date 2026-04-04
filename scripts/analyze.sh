#!/bin/bash

echo "---- Log Analyzer Report ----" > ../output/report.txt

echo "Total lines in app.log:" >> ../output/report.txt
wc -l ../logs/app.log >> ../output/report.txt

echo "----------------------" >> ../output/report.txt

echo "Errors in app.log:" >> ../output/report.txt
grep "ERROR" ../logs/app.log >> ../output/report.txt

echo "----------------------" >> ../output/report.txt

echo "Warnings in system.log:" >> ../output/report.txt
grep "WARNING" ../logs/system.log >> ../output/report.txt

echo "----------------------" >> ../output/report.txt

echo "Analysis completed!"

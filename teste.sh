#!/bin/bash

HOST=10.0.0.4


echo "====================" >> log.txt
echo "Inicio do teste List" >> log.txt
echo "16 conexões" >> log.txt
wrk -t 16 -c 16 -d 10s http://$HOST:5000/api/benchmark/list >> log.txt

echo "-----------" >> log.txt
echo "32 conexões" >> log.txt
wrk -t 16 -c 32 -d 10s http://$HOST:5000/api/benchmark/list >> log.txt

echo "-----------" >> log.txt
echo "64 conexões" >> log.txt
wrk -t 16 -c 64 -d 10s http://$HOST:5000/api/benchmark/list >> log.txt

echo "------------" >> log.txt
echo "128 conexões" >> log.txt
wrk -t 16 -c 128 -d 10s http://$HOST:5000/api/benchmark/list >> log.txt

echo "------------" >> log.txt
echo "256 conexões" >> log.txt
wrk -t 16 -c 256 -d 10s http://$HOST:5000/api/benchmark/list >> log.txt

echo "------------" >> log.txt
echo "512 conexões" >> log.txt
wrk -t 16 -c 512 -d 10s http://$HOST:5000/api/benchmark/list >> log.txt

echo "------------" >> log.txt
echo "1024 conexões" >> log.txt
wrk -t 16 -c 1024 -d 10s http://$HOST:5000/api/benchmark/list >> log.txt

echo "------------" >> log.txt
echo "2048 conexões" >> log.txt
wrk -t 16 -c 2048 -d 10s http://$HOST:5000/api/benchmark/list >> log.txt




echo "====================" >> log.txt
echo "Inicio do teste FILE" >> log.txt
echo "16 conexões" >> log.txt
wrk -t 16 -c 16 -d 10s http://$HOST:5000/api/benchmark/file >> log.txt

echo "-----------" >> log.txt
echo "32 conexões" >> log.txt
wrk -t 16 -c 32 -d 10s http://$HOST:5000/api/benchmark/file >> log.txt

echo "-----------" >> log.txt
echo "64 conexões" >> log.txt
wrk -t 16 -c 64 -d 10s http://$HOST:5000/api/benchmark/file >> log.txt

echo "------------" >> log.txt
echo "128 conexões" >> log.txt
wrk -t 16 -c 128 -d 10s http://$HOST:5000/api/benchmark/file >> log.txt

echo "------------" >> log.txt
echo "256 conexões" >> log.txt
wrk -t 16 -c 256 -d 10s http://$HOST:5000/api/benchmark/file >> log.txt

echo "------------" >> log.txt
echo "512 conexões" >> log.txt
wrk -t 16 -c 512 -d 10s http://$HOST:5000/api/benchmark/file >> log.txt

echo "------------" >> log.txt
echo "1024 conexões" >> log.txt
wrk -t 16 -c 1024 -d 10s http://$HOST:5000/api/benchmark/file >> log.txt

echo "------------" >> log.txt
echo "2048 conexões" >> log.txt
wrk -t 16 -c 2048 -d 10s http://$HOST:5000/api/benchmark/file >> log.txt

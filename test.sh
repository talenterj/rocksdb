#!/bin/sh
#db_bench workload type test
echo "db_bench started!"
./db_bench -benchmarks="fillrandom" -statistics -duration=3 | grep "micros/op"
./db_bench -benchmarks="fillseq" -statistics -duration=3 | grep "micros/op"
./db_bench -benchmarks="readseq" -statistics -duration=3 | grep "micros/op"

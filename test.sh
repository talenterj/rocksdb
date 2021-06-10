#!/bin/sh
#db_bench workload type test
echo "db_bench test started!"
result_fillrandom=$(./db_bench -benchmarks="fillrandom" -statistics -duration=180 | grep "micros/op")
result_fillseq=$(./db_bench -benchmarks="fillseq" -statistics   -duration=180 | grep "micros/op")
result_readseq=$(./db_bench -benchmarks="readseq" -statistics   -duration=180 | grep "micros/op")
result_seekrandom=$(./db_bench -benchmarks="seekrandom" -statistics   -duration=180 | grep "micros/op")
result_deleterandom=$(./db_bench -benchmarks="deleterandom" -statistics   -duration=180 | grep "micros/op")
echo "db_bench test finished! "
echo $result_fillrandom
echo $result_fillseq
echo $result_readseq
echo $result_seekrandom
echo $result_deleterandom

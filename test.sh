#!/bin/bash
httperf --port 4567 --server="localhost" --uri="/" --num-conns=10000 --num-calls=6

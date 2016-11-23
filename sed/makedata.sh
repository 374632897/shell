#! /bin/bash
cat /dev/null > data;
for file in {1..10}; do
  echo "The quick brown fox jumps over the lazy dog." >> data;
done;

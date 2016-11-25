#! /bin/bash
cat /dev/null > data;
cat /dev/null > data7;
for file in {1..10}; do
  echo "The quick brown fox jumps over the lazy dog." >> data;
done;
for i in {1..4}; do
  echo "This is line number $i" >> data7;
done;
echo "This is line number 1 again" >> data7;
echo "Thi is stext you want to keep." >> data7;
echo "This is the last line in t he file" >> data7; 

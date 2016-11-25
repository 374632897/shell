#! /usr/bin/env bash
_path=`echo $PATH | sed 's/:/ /g'`;
# echo $_path;
for file in $_path; do
  count=0;
  _files=`ls $file`;
  for _file in $_files; do
    (( count++ ));
  done;
  echo "$file - $count";
done;


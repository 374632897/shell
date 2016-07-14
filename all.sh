default_commit_message=':smirk:';
if [ $1 ]
  then default_commit_message=$1;
fi;
git add .;
git commit -m $default_commit_message;
git push;

#!/bin/bash
 if [[ -z "${1+present}" ]]; then 
	echo "COMMIT MESSAGE MISSING"
	exit 1
fi

git checkout dev
echo "STAGING COMMIT"
git add .
echo "COMMITING WITH MESSAGE " $1
git commit -m "$1"
echo "PUSHING TO REMOTE dev BRANCH"
git pull origin dev --no-edit
git push origin dev

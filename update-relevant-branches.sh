#!/usr/bin/bash

GIT_BRANCHES=$( git branch | cut -c 3- | sort )
for branch in ${GIT_BRANCHES}; do
    git checkout ${branch};
    git pull main ${branch}
    # git push origin ${branch} --tags -v
    # git push origin ${branch} -v
done



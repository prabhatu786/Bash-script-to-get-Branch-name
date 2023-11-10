#!/bin/bash

Directory="/home/slashrtc/Desktop/task/"
for dir in "$Directory"*/; 
do basename "$dir"
	if [ -d "$dir" ];then
		cd "$dir"

		# Get the Git remote URL
		git_remote_url=$(git config --get remote.origin.url)

		# Get Active Branch name
		branch=$(git branch | grep "*"|awk '{print $2}')
		

		# Print the results
                echo "Repository: $dir"
                echo "Branch: $branch"
                echo "Remote URL: $git_remote_url"
                echo "---------------------------------------------------------------"

                # Go back to the original directoryi
		cd ..
	fi
done



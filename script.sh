#!/bin/bash
		getName(){
			# delimiter = "/"
			file="$(find . -name "*.mydsl")"
			# name = $file
			name=$(echo $file | tr "/" "")
			name=$(echo $name | tr "." "")
			name=$(echo $file | tr "mydsl" "")
			echo "Nouveau DSL : $name" 
		}
		msg=$(getName)
		echo $msg
		# git init
		git add .
		git commit -m "$msg"
		# git remote add origin https://github.com/Karlito44/tes_dsl
		# git push -f --set-upstream origin master
		git push -f
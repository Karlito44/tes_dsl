#!/bin/bash
		getName(){
			# delimiter = "/"
			file="$(find ../ -name "*.mydsl")"
			# name = $file
			name=$(echo $file | tr "./" " ")
			for word in $name
				do
    				echo "Nouveau DSL : $word" 
					break
				done
		}
		msg=$(getName)
		# git init
		git add .
		git commit -m "$msg"
		git remote add origin https://github.com/Karlito44/tes_dsl
		# git push -f --set-upstream origin master
		git push -f
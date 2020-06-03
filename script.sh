#!/bin/bash
		getName(){
			# delimiter = "/"
			file="$(find . -name "*.mydsl")"
			# name = $file
			echo "Nouveau DSL : $file" 
		}
		# getName > sortie.txt
		msg=$(getName)
		echo $msg
		# git init
		git add .
		git commit -m "$msg"
		# git remote add origin https://github.com/Karlito44/tes_dsl
		git push -f
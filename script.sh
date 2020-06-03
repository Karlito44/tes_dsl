#!/bin/bash
		getName(){
			# delimiter = "/"
			file="$(find . -name "*.mydsl")"
			# name = $file
			return "Nouvelle version $file" 
		}
		# getName > sortie.txt
		git init
		git add .
		git commit -m getName
		git remote add origin https://github.com/Karlito44/tes_dsl
		git push -f --set-upstream origin master
		
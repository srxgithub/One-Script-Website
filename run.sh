#!/bin/bash
#PATH_INDEX is a variable that contains the path where the index.html file will be created
PATH_INDEX="/var/www/html/"
#PATH_INDEX is a variable that contains the path where the A.html file will be created
PATH_A="${PATH_INDEX}A/"
#read -r -d '' VAR << 'EOM' ... EOM reads multiple lines between EOM and stores in variable VAR
#CONTENT_INDEX is the content of the index.html file
read -r -d '' CONTENT_INDEX << 'EOM'
<!DOCTYPE html>
	<html>
		<body>
			<center><h2>Welcome!</h2>
			<p><a href="./A/A.html">Link to A</a></p></center>
		</body>
	</html>
EOM
#CONTENT_A is the content of the A.html file
read -r -d '' CONTENT_A << 'EOM'
<!DOCTYPE html>
	<html>
		<body>
			<center><h2>Welcome <br/> to A!</h2></center>
		</body>
	</html>
EOM
#mkdir -p creates the directory structure, if it does not exist
mkdir -p ${PATH_A}
#creates the index.html file with the proper predetermined content and path
echo "$CONTENT_INDEX" > ${PATH_INDEX}index.html
#creates the A.html file with the proper predetermined content and path
echo "$CONTENT_A" > ${PATH_A}A.html

#!/bin/bash
PATH_INDEX="/var/www/html/"
PATH_A="${PATH_INDEX}A/"
read -r -d '' CONTENT_INDEX << 'EOM'
<!DOCTYPE html>
	<html>
		<body>
			<center><h2>Welcome!</h2>
			<p><a href="./A/A.html">Link to A</a></p></center>
		</body>
	</html>
EOM
read -r -d '' CONTENT_A << 'EOM'
<!DOCTYPE html>
	<html>
		<body>
			<center><h2>Welcome <br/> to A!</h2></center>
		</body>
	</html>
EOM
mkdir -p ${PATH_A}
echo "$CONTENT_INDEX" > ${PATH_INDEX}index.html
echo "$CONTENT_A" > ${PATH_A}A.html

<?php
function execPrint($command) {
	$result=array();
	exec($command, $result);
	foreach ($result as $line) {
		print($line . "\n");
	}
};
//$path="/home/admincbt/ujian2/Spin/$_POST[project]";
//chdir($path);
//exec("git pull https://github.com/tetsunero/Spin.git master");
//echo "<h3>asdfg</h3>";
print("<h3> Pull sukses" . execPrint("git pull https://github.com/tetsunero/squp.git master") . "</h3>");
?>
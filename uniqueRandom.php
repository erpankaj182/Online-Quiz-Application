<?php

require_once("connection.php");

/*
function UniqueRandomNumbersWithinRange($min, $max, $quantity) {
    $numbers = range($min, $max);
    shuffle($numbers);
    return array_slice($numbers, 0, $quantity);
}


for($i=0;$i<5;$i++)
{
	$aa=print_r( UniqueRandomNumbersWithinRange(0,5,5) );
	
	$q=mysqli_query($mysqli,"select * from quiz WHERE qno = '".$aa."'");
	
	$a=mysqli_fetch_row($q);var_dump($a);
}
*/
/*
$offset_result = mysql_query("SELECT FLOOR(RAND() * COUNT(*)) AS offset FROM quiz");
$offset_row = mysql_fetch_object($offset_result); 
$offset = $offset_row->offset;
$result = mysql_query("SELECT * FROM `quiz` LIMIT $offset,1");
	
//	$n1=rand(1,150);
	//$q=mysqli_query($mysqli,"select DISTINCT qno from quiz where qno='".$n1."' " );

//$a=mysqli_fetch_row($q);
			var_dump($result);
			echo "<br />";
		*/
		
$servedQuestions = array();
while(count($servedQuestions) <= 14) {
    $n1 = mt_rand(1,150);		//for random questions from 150 pool of questions
    if (in_array($n1, $servedQuestions)) continue;
	for($i=0;$i<=14;$i++)
	{
	$q = mysqli_query($mysqli,"select * from quiz WHERE qno = '".$servedQuestions[$i]."'");
    }
	$servedQuestions[] = $n1;
}
	echo $a[1];
	echo "<br />";
echo "<br />";
print_r($servedQuestions);

?>

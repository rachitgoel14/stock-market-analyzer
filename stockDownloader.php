<?php 
include("includes/connect.php");

function createURL($ticker) {
	$currentMonth = date("n");
	$currentMonth= $currentMonth - 1;
	$currentDay = date("j");
	$currentYear = date("Y");
	
	return "https://ichart.finance.yahoo.com/table.csv?s=$ticker&a=02&b=27&c=2014&d=$currentMonth&e=$currentDay&f=$currentYear&g=d&ignore=.csv";
}

function getCSVFile($url, $opfile) {
	$content = file_get_contents($url);
	$content = str_replace("Date,Open,High,Low,Close,Volume,Adj Close" , "", $content);
	$content = trim($content);
	file_put_contents($opfile, $content);
}

function fileToDatabase($txtFile , $tableName) {
	$file = fopen($txtFile ,"r");
	
	while(!feof($file)) {
		$line = fgets($file);
		$pieces = explode("," , $line);
		
		$date = $pieces[0];
		$open = $pieces[1];
		$high = $pieces[2];
		$low = $pieces[3];
		$close = $pieces[4];
		$volume = $pieces[6];
		$amount_change = $close-$open;
		$percent_change = ($amount_change/$open)*100;
		
		$sql = "SELECT * FROM $tableName";
		$result = mysql_query($sql);
		
		if(!$result) {
			$sqlcreate = "CREATE TABLE $tableName (date DATE, PRIMARY KEY(date) , open FLOAT, high FLOAT, low FLOAT, close FLOAT, volume INT, amount_change FLOAT, percent_change FLOAT)";
			mysql_query($sqlcreate);
		}
		
		$sql3 = "INSERT INTO $tableName(date, open, high, low, close, volume, amount_change, percent_change) VALUES ('$date', '$open', '$high', '$low' ,'$close', '$volume', '$amount_change', '$percent_change')";
		mysql_query($sql3);
	}
	
	fclose($file);
	
}

function main() {
	$mainTickerFile = fopen("tickerMaster.txt", "r");
	while(!feof($mainTickerFile)){
		$companyTicker = fgets($mainTickerFile);
		$companyTicker = trim($companyTicker);
		
		$fileURL = createURL($companyTicker);
		$companyTxtFile = "txtFiles/".$companyTicker.".txt";
		
		getCSVFile($fileURL, $companyTxtFile);
		
		fileToDatabase($companyTxtFile , $companyTicker);
		
		
		
	}
}

main();

?>
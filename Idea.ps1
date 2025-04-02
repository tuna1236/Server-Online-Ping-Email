https://petri.com/creating-colorful-emails-with-powershell/

$head = @"
<Title>$ReportTitle</Title>
<style>
body { background-color:#FFFFFF;
font-family:Tahoma;
font-size:12pt; }
td, th { border:1px solid black;
border-collapse:collapse; }
th { color:white;
background-color:black; }
table, tr, td, th { padding: 2px; margin: 0px }
table { width:95%;margin-left:5px; margin-bottom:20px;}
.stopped {color: Red }
.running {color: Green }
.pending {color: #DF01D7 }
.paused {color: #FF8000 }
.other {color: Black }
</style>
<br>
<H1>$ReportTitle</H1>
"@
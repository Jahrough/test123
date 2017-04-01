<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>LexisNexis&#174; Listen to Numbers</title>
<style type="text/css">
<!--
.style1 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
	color: #000000;
}

.whitelink {   
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
	color: #000000; text-decoration: underline
	
}

body {
	background-color: #FFFFFF;
}
-->
</style>
</head>

<body>
<div align="center">
  <p class="style1">Your browser should automatically play this sound file for you. If you cannot hear any sound, you will need to verify that your computer is configured to play .mp3 audio files.
</p>
  <p class="whitelink"><a href="javascript:window.close();">Close Window </a></p>
</div>
<div align=center>
    <audio src='<TMPL_VAR NAME=ACTION_SOUND>?EVENT=SOUND/STREAM_SOUND&_ST=<TMPL_VAR _ST>' autoplay="true" controls="true">
		<EMBED src='<TMPL_VAR NAME=ACTION_SOUND>?EVENT=SOUND/STREAM_SOUND&_ST=<TMPL_VAR _ST>' AUTOSTART='TRUE' BORDER="0" WIDTH="145" HEIGHT="50"></EMBED>
    </audio>
</div>
</body>
</html>

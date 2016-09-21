<?php
header("charset=utf-8");
/*
 * записывает в текстовый файл данные из rss
 * */
$xml = new DOMDocument();
$xml->load('news.rss');

$xsl = new DOMDocument();
$xsl->load('parser.xsl');

$proc = new XSLTProcessor();
$proc->importStylesheet($xsl);

$txt = $proc->transformToXML($xml);
file_put_contents("foo.txt", $txt);
//echo $txt;
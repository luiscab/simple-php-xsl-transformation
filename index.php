 <?php
 // a single simple XSLT processor resource instruction
 $xp = new XsltProcessor();

 // a DOM document and load the XSL stylesheet
  $xsl = new DomDocument;
  $xsl->load('index.xsl');
  
  // import the XSL styelsheet into the XSLT process
  $xp->importStylesheet($xsl);

  // a DOM document and load the XML datat
  $xml_doc = new DomDocument;
  $xml_doc->load('index.xml');

  // transform the XML into HTML using the XSL file
  if ($html = $xp->transformToXML($xml_doc)) {
      echo $html;
  } else {
      trigger_error('XSL transformation failed.', E_USER_ERROR);
  } // if 
?>
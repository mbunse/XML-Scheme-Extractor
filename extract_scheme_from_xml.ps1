$schemaInf = New-Object System.Xml.Schema.XmlSchemaInference 
$schemaSet = New-Object System.Xml.Schema.XmlSchemaSet
$reader = [System.Xml.XmlReader]::create("Filename.xml")
$schemaSet = $schemaInf.InferSchema($reader,$schemaSet)
$stream = New-Object System.IO.StringWriter
foreach ($schema in $schemaSet.Schemas()) {
   $schema.Write($stream)
}

Write-Output $stream.ToString()
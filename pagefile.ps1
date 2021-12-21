if (Get-WmiObject -Query "select * from Win32_PageFileSetting where name='d:\\pagefile.sys'"){
    $CurrentPageFile = Get-WmiObject -Query "select * from Win32_PageFileSetting where name='d:\\pagefile.sys'"
    $CurrentPageFile.delete()
    Set-WmiInstance -Class win32_pagefilesetting -Arguments @{name="c:\pagefile.sys"}
}

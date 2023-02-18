#!/bin/bash

# Run PowerShell command to retrieve list of installed software and save to a file

powershell.exe Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName | Sort-Object DisplayName | Out-File installed_apps.txt -Encoding UTF8

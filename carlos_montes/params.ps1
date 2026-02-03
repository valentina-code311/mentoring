param (
  [string]$name = $env:USER_NAME,
  [int]$age = $(if ($env:USER_AGE) { [int]$env:USER_AGE } else { 0 }),
  [string]$gender = $env:USER_GENDER,
  [bool]$single = $(if ($env:USER_SINGLE) { [System.Convert]::ToBoolean($env:USER_SINGLE) } else { $false })
)

Write-Output "Name: $name"
Write-Output "Age: $age"
Write-Output "Gender: $gender"
Write-Output "Single: $single"

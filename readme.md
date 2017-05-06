# PowerShell

## Sources

- [http://powershelltutorial.net/](http://powershelltutorial.net/)
- [https://www.pdq.com/blog/powershell-how-to-write-your-first-powershell-script/](https://www.pdq.com/blog/powershell-how-to-write-your-first-powershell-script/)
- [https://technet.microsoft.com/en-us/library/bb963733.aspx](https://technet.microsoft.com/en-us/library/bb963733.aspx)

## Introduction

Open the powerShell (should be a command line screen with a blue background when opened from the windows start up menu). Or you can use cmd and type `start powershell` to launch it.

type the following command to see the current execution policy on the computer
    
    Get-ExecutionPolicy
    
Fo security reason, you might want to check the policy level required. Unrestricted, Allsigned, RemoteSigned, Restricted.
Let's set it to Unrestricted to do some tests.

    Set-ExecutionPolicy -ExecutionPolicy Unrestricted
    
Now we can run the hello.ps1 script, first let's go to the repository it has been saved, then run it.

    Set-Location 'Documents\GitHub\PowerShell\src'
    ./Hello
    
One tips if you need to run something that needs your credential multiple times is to save it in a value:
    
        $global:Credential = Get-Credential
        
The global keyword makes this value available from anywhere
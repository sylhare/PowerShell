# PowerShell

## Sources

- [http://powershelltutorial.net/](http://powershelltutorial.net/)
- [https://www.pdq.com/blog/powershell-how-to-write-your-first-powershell-script/](https://www.pdq.com/blog/powershell-how-to-write-your-first-powershell-script/)
- [https://technet.microsoft.com/en-us/library/bb963733.aspx](https://technet.microsoft.com/en-us/library/bb963733.aspx)
- [http://www.computerperformance.co.uk/powershell/powershell_example_basic.htm](http://www.computerperformance.co.uk/powershell/powershell_example_basic.htm)

## Experiment with ISE

To start developping script you can use the Powershell ISE that is by default installed.
You can open it by looking for [Windows PowerShell ISE](https://msdn.microsoft.com/en-us/powershell/reference/5.1/microsoft.powershell.core/about/about_powershell_ise_exe) or use cmd to launch any file or the ISE directly:

	PowerShell_ISE –file "file1.ps1,file2.ps1"

Here both files `file1.ps1` and `file2.ps1` will be opened in *Windows PowerShell ISE*.

:warning: If you have trouble running a script, try running:

	get-help about_signing

You might not have allowed running powershell script on your computer.

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
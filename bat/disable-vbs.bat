::https://learn.microsoft.com/en-us/windows/security/identity-protection/credential-guard/configure
::https://kanren3.github.io/posts/vbs-disable-failure-reason

@mountvol X: /s
@copy %WINDIR%\System32\SecConfig.efi X:\EFI\Microsoft\Boot\SecConfig.efi /Y
@bcdedit /create {0cb3b571-2f2e-4343-a879-d86a476d7215} /d "DebugTool" /application osloader
@bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} path "\EFI\Microsoft\Boot\SecConfig.efi"
@bcdedit /set {bootmgr} bootsequence {0cb3b571-2f2e-4343-a879-d86a476d7215}
@bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} loadoptions DISABLE-VBS
@bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} device partition=X:
@mountvol X: /d
@bcdedit /set hypervisorlaunchtype off
@pause
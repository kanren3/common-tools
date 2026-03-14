@title KMS Activation
@cscript //nologo slmgr.vbs /upk

:: https://learn.microsoft.com/en-us/windows-server/get-started/kms-client-activation-keys

::[Windows 11 Pro] W269N-WFGWX-YVC9B-4J6C9-T83GX
::[Windows 11 Enterprise LTSC] M7XTQ-FN8P6-TTKYV-9D4CC-J462D

@cscript //nologo slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
@cscript //nologo slmgr.vbs /skms kms.03k.org
@cscript //nologo slmgr.vbs /ato
@pause

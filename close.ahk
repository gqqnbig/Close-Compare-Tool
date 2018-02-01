#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

RegRead, regValue, HKEY_CURRENT_USER, Software\TortoiseGit, Diff
if(regValue ~="^#.+" || StrLen(reg)==0)
	path:= "TortoiseGitMerge.exe"
else if(SubStr(regValue,1,1)=="""")
{
	index:=InStr(regValue, """", true, 2)
	path:= SubStr(regValue, 2, index-2)
}
else
{

	index:=InStr(regValue, " ", true, 2)
	path:= SubStr(regValue, 2, index-2)
}



If WinExist("ahk_exe" . path)
{
	WinClose, ahk_exe %path%
}

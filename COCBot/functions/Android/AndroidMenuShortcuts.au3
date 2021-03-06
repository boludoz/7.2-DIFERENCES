;
; #FUNCTION# ====================================================================================================================
; Name ..........: AndroidBackButton
; Description ...: Sends ESC key shorcut to BS for back button on menu
; Syntax ........: AndroidBackButton()
; Parameters ....:
; Return values .: False if controlsend error
; Author ........: MonkeyHunter (12-2015)
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2018

;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: checkMainscreen, isProblemAffect
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================
Func AndroidBackButton($bCheckRunState = True)
	If $bCheckRunState And Not $g_bRunState Then Return False
	;SendAdbCommand("shell input keyevent 4", False)
	AndroidAdbSendShellCommand("input keyevent 4", Default, Default, False)
	If $g_iDebugSetlog = 1 Then Setlog("Used Adb to press back button", $COLOR_INFO)
	Return True
EndFunc   ;==>AndroidBackButton

;
; #FUNCTION# ====================================================================================================================
; Name ..........: AndroidHomeButton
; Description ...: Sends Home key shorcut to BS for Home button on menu
; Syntax ........: AndroidHomeButton()
; Parameters ....:
; Return values .: False if controlsend error
; Author ........: MonkeyHunter (2015-12)
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2018

;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: checkMainscreen, isProblemAffect
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================
Func AndroidHomeButton()
	If Not $g_bRunState Then Return False
	;SendAdbCommand("shell input keyevent 3", False)
	AndroidAdbSendShellCommand("input keyevent 3", Default, Default, False)
	If $g_iDebugSetlog = 1 Then Setlog("Used Adb to press home button", $COLOR_INFO)
	Return True
EndFunc   ;==>AndroidHomeButton

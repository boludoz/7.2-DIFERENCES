; #FUNCTION# ====================================================================================================================
; Name ..........: Pico Config
; Description ...: This file Read/Save/Apply Pico MODs settings
; Syntax ........: ---
; Parameters ....: ---
; Return values .: ---
; Author ........: RoroTiti
; Modified ......: 08/05/2017
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2018

;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: ---
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: ---
; ===============================================================================================================================

Func ReadConfig_PicoMod()

	IniReadS($g_iChkRequestUnicode, $g_sProfileConfigPath, "Pico Unicode", "ChkRequestUnicode", $g_iChkRequestUnicode, "Int")

	; ================================================== SWITCH ACCOUNT PART ================================================== ;

	IniReadS($g_ichkSwitchAccount, $g_sSwitchAccountConfig, "Pico Switch Account", "chkEnableSwitchAccount", $g_ichkSwitchAccount, "Int")
	IniReadS($g_icmbAccountsQuantity, $g_sSwitchAccountConfig, "Pico Switch Account", "cmbAccountsQuantity", $g_icmbAccountsQuantity, "Int")
	For $i = 1 To 8
		IniReadS($g_iachkCanUse[$i], $g_sSwitchAccountConfig, "Pico Switch Account", "chkCanUse[" & $i & "]", $g_iachkCanUse[$i], "Int")
		IniReadS($g_iachkDonateAccount[$i], $g_sSwitchAccountConfig, "Pico Switch Account", "chkDonateAccount[" & $i & "]", $g_iachkDonateAccount[$i], "Int")
		IniReadS($g_iacmbAccount[$i], $g_sSwitchAccountConfig, "Pico Switch Account", "cmbAccount[" & $i & "]", $g_iacmbAccount[$i], "Int")
		If $g_iacmbAccount[$i] = -1 Then $g_iacmbAccount[$i] = 0
	Next
	IniReadS($g_icmbMaxStayDelay, $g_sSwitchAccountConfig, "Pico Switch Account", "cmbMaxStayDelay", $g_icmbMaxStayDelay, "Int")
	IniReadS($g_icmbMinDelayToSwitch, $g_sSwitchAccountConfig, "Pico Switch Account", "cmbMinDelayToSwitch", $g_icmbMinDelayToSwitch, "Int")

	; ================================================== TREASURY COLLECT PART ================================================== ;

	IniReadS($g_ichkEnableTrCollect, $g_sProfileConfigPath, "Pico Treasury Collect", "chkEnableTrCollect", $g_ichkEnableTrCollect, "Int")
	IniReadS($g_ichkForceTrCollect, $g_sProfileConfigPath, "Pico Treasury Collect", "chkForceTrCollect", $g_ichkForceTrCollect, "Int")
	IniReadS($g_ichkGoldTrCollect, $g_sProfileConfigPath, "Pico Treasury Collect", "chkGoldTrCollect", $g_ichkGoldTrCollect, "Int")
	IniReadS($g_ichkElxTrCollect, $g_sProfileConfigPath, "Pico Treasury Collect", "chkElxTrCollect", $g_ichkElxTrCollect, "Int")
	IniReadS($g_ichkDarkTrCollect, $g_sProfileConfigPath, "Pico Treasury Collect", "chkDarkTrCollect", $g_ichkDarkTrCollect, "Int")
	IniReadS($g_itxtMinGoldTrCollect, $g_sProfileConfigPath, "Pico Treasury Collect", "txtMinGoldTrCollect", $g_itxtMinGoldTrCollect, "Int")
	IniReadS($g_itxtMinElxTrCollect, $g_sProfileConfigPath, "Pico Treasury Collect", "txtMinElxTrCollect", $g_itxtMinDarkTrCollect, "Int")
	IniReadS($g_itxtMinDarkTrCollect, $g_sProfileConfigPath, "Pico Treasury Collect", "txtMinDarkTrCollect", $g_itxtMinDarkTrCollect, "Int")
	IniReadS($g_ichkFullGoldTrCollect, $g_sProfileConfigPath, "Pico Treasury Collect", "chkFullGoldTrCollect", $g_ichkFullGoldTrCollect, "Int")
	IniReadS($g_ichkFullElxTrCollect, $g_sProfileConfigPath, "Pico Treasury Collect", "chkFullElxTrCollect", $g_ichkFullElxTrCollect, "Int")
	IniReadS($g_ichkFullDarkTrCollect, $g_sProfileConfigPath, "Pico Treasury Collect", "chkFullDarkTrCollect", $g_ichkFullDarkTrCollect, "Int")

	; ================================================== BOT HUMANIZATION PART ================================================== ;

	IniReadS($g_ichkUseBotHumanization, $g_sProfileConfigPath, "Pico Bot Humanization", "chkUseBotHumanization", $g_ichkUseBotHumanization, "Int")
	IniReadS($g_ichkUseAltRClick, $g_sProfileConfigPath, "Pico Bot Humanization", "chkUseAltRClick", $g_ichkUseAltRClick, "Int")
	IniReadS($g_ichkCollectAchievements, $g_sProfileConfigPath, "Pico Bot Humanization", "chkCollectAchievements", $g_ichkCollectAchievements, "Int")
	IniReadS($g_ichkLookAtRedNotifications, $g_sProfileConfigPath, "Pico Bot Humanization", "chkLookAtRedNotifications", $g_ichkLookAtRedNotifications, "Int")
	For $i = 0 To 12
		IniReadS($g_iacmbPriority[$i], $g_sProfileConfigPath, "Pico Bot Humanization", "cmbPriority[" & $i & "]", $g_iacmbPriority[$i], "Int")
	Next
	For $i = 0 To 1
		IniReadS($g_iacmbMaxSpeed[$i], $g_sProfileConfigPath, "Pico Bot Humanization", "cmbMaxSpeed[" & $i & "]", $g_iacmbMaxSpeed[$i], "Int")
	Next
	For $i = 0 To 1
		IniReadS($g_iacmbPause[$i], $g_sProfileConfigPath, "Pico Bot Humanization", "cmbPause[" & $i & "]", $g_iacmbPause[$i], "Int")
	Next
	For $i = 0 To 1
		IniReadS($g_iahumanMessage[$i], $g_sProfileConfigPath, "Pico Bot Humanization", "humanMessage[" & $i & "]", $g_iahumanMessage[$i])
	Next
	IniReadS($g_icmbMaxActionsNumber, $g_sProfileConfigPath, "Pico Bot Humanization", "cmbMaxActionsNumber", $g_icmbMaxActionsNumber, "Int")
	IniReadS($g_ichallengeMessage, $g_sProfileConfigPath, "Pico Bot Humanization", "challengeMessage", $g_ichallengeMessage)

	; ================================================== CSV SPEED PART ================================================== ;

	IniReadS($icmbCSVSpeed[$LB], $g_sProfileConfigPath, "Pico CSV Speed", "cmbCSVSpeed[LB]", $icmbCSVSpeed[$LB], "Int")
	IniReadS($icmbCSVSpeed[$DB], $g_sProfileConfigPath, "Pico CSV Speed", "cmbCSVSpeed[DB]", $icmbCSVSpeed[$DB], "Int")

	; ================================================== CUSTOM DROP ORDER ================================================== ;kychera

	IniReadS($g_bCustomTrainDropOrderEnable, $g_sProfileConfigPath, "Pico DropOrder", "chkTroopDropOrder", $g_bCustomTrainDropOrderEnable, "Bool")
	For $p = 0 To UBound($icmbDropTroops) - 1
		IniReadS($icmbDropTroops[$p], $g_sProfileConfigPath, "Pico DropOrder", "cmbDropTroops[" & $p & "]", $icmbDropTroops[$p] , "Int")
	Next

	; ================================================== Super XP PART ================================================== ;

	IniReadS($ichkEnableSuperXP, $g_sProfileConfigPath, "Pico GoblinXP", "EnableSuperXP", 0, "int")
	IniReadS($irbSXTraining, $g_sProfileConfigPath, "Pico GoblinXP", "SXTraining", 1, "int")
	IniReadS($itxtMaxXPtoGain, $g_sProfileConfigPath, "Pico GoblinXP", "MaxXptoGain", 500, "int")
	IniReadS($ichkSXBK, $g_sProfileConfigPath, "Pico GoblinXP", "SXBK", $eHeroNone)
	IniReadS($ichkSXAQ, $g_sProfileConfigPath, "Pico GoblinXP", "SXAQ", $eHeroNone)
	IniReadS($ichkSXGW, $g_sProfileConfigPath, "Pico GoblinXP", "SXGW", $eHeroNone)

EndFunc   ;==>ReadConfig_PicoMod

Func SaveConfig_PicoMod()

	_Ini_Add("Pico Unicode", "ChkRequestUnicode", $g_iChkRequestUnicode ? 1 : 0)

	; ================================================== SWITCH ACCOUNT PART ================================================== ;

	IniWrite($g_sSwitchAccountConfig, "Pico Switch Account", "chkEnableSwitchAccount", $g_ichkSwitchAccount)
	IniWrite($g_sSwitchAccountConfig, "Pico Switch Account", "cmbAccountsQuantity", $g_icmbAccountsQuantity)
	For $i = 1 To 8
		IniWrite($g_sSwitchAccountConfig, "Pico Switch Account", "chkCanUse[" & $i & "]", $g_iachkCanUse[$i])
		IniWrite($g_sSwitchAccountConfig, "Pico Switch Account", "chkDonateAccount[" & $i & "]", $g_iachkDonateAccount[$i])
		IniWrite($g_sSwitchAccountConfig, "Pico Switch Account", "cmbAccount[" & $i & "]", $g_iacmbAccount[$i])
	Next
	IniWrite($g_sSwitchAccountConfig, "Pico Switch Account", "cmbMaxStayDelay", $g_icmbMaxStayDelay)
	IniWrite($g_sSwitchAccountConfig, "Pico Switch Account", "cmbMinDelayToSwitch", $g_icmbMinDelayToSwitch)

	; ================================================== TREASURY COLLECT PART ================================================== ;

	_Ini_Add("Pico Treasury Collect", "chkEnableTrCollect", $g_ichkEnableTrCollect)
	_Ini_Add("Pico Treasury Collect", "chkForceTrCollect", $g_ichkForceTrCollect)
	_Ini_Add("Pico Treasury Collect", "chkGoldTrCollect", $g_ichkGoldTrCollect)
	_Ini_Add("Pico Treasury Collect", "chkElxTrCollect", $g_ichkElxTrCollect)
	_Ini_Add("Pico Treasury Collect", "chkDarkTrCollect", $g_ichkDarkTrCollect)
	_Ini_Add("Pico Treasury Collect", "txtMinGoldTrCollect", GUICtrlRead($g_txtMinGoldTrCollect))
	_Ini_Add("Pico Treasury Collect", "txtMinElxTrCollect", GUICtrlRead($g_txtMinElxTrCollect))
	_Ini_Add("Pico Treasury Collect", "txtMinDarkTrCollect", GUICtrlRead($g_txtMinDarkTrCollect))
	_Ini_Add("Pico Treasury Collect", "chkFullGoldTrCollect", $g_ichkFullGoldTrCollect)
	_Ini_Add("Pico Treasury Collect", "chkFullElxTrCollect", $g_ichkFullElxTrCollect)
	_Ini_Add("Pico Treasury Collect", "chkFullDarkTrCollect", $g_ichkFullDarkTrCollect)

	; ================================================== BOT HUMANIZATION PART ================================================== ;

	_Ini_Add("Pico Bot Humanization", "chkUseBotHumanization", $g_ichkUseBotHumanization)
	_Ini_Add("Pico Bot Humanization", "chkUseAltRClick", $g_ichkUseAltRClick)
	_Ini_Add("Pico Bot Humanization", "chkCollectAchievements", $g_ichkCollectAchievements)
	_Ini_Add("Pico Bot Humanization", "chkLookAtRedNotifications", $g_ichkLookAtRedNotifications)
	For $i = 0 To 12
		_Ini_Add("Pico Bot Humanization", "cmbPriority[" & $i & "]", _GUICtrlComboBox_GetCurSel($g_acmbPriority[$i]))
	Next
	For $i = 0 To 1
		_Ini_Add("Pico Bot Humanization", "cmbMaxSpeed[" & $i & "]", _GUICtrlComboBox_GetCurSel($g_acmbMaxSpeed[$i]))
	Next
	For $i = 0 To 1
		_Ini_Add("Pico Bot Humanization", "cmbPause[" & $i & "]", _GUICtrlComboBox_GetCurSel($g_acmbPause[$i]))
	Next
	For $i = 0 To 1
		_Ini_Add("Pico Bot Humanization", "humanMessage[" & $i & "]", GUICtrlRead($g_ahumanMessage[$i]))
	Next
	_Ini_Add("Pico Bot Humanization", "cmbMaxActionsNumber", _GUICtrlComboBox_GetCurSel($g_cmbMaxActionsNumber))
	_Ini_Add("Pico Bot Humanization", "challengeMessage", GUICtrlRead($g_challengeMessage))

	; ================================================== CSV SPEED PART ================================================== ;

	_Ini_Add("Pico CSV Speed", "cmbCSVSpeed[LB]", _GUICtrlComboBox_GetCurSel($cmbCSVSpeed[$LB]))
	_Ini_Add("Pico CSV Speed", "cmbCSVSpeed[DB]", _GUICtrlComboBox_GetCurSel($cmbCSVSpeed[$DB]))

	; ================================================== CUSTOM DROP ORDER ================================================== ;kychera

	_Ini_Add("Pico DropOrder", "chkTroopDropOrder", $g_bCustomTrainDropOrderEnable)
	For $p = 0 To UBound($icmbDropTroops) - 1
		_Ini_Add("Pico DropOrder", "cmbDropTroops[" & $p & "]", _GUICtrlComboBox_GetCurSel($cmbDropTroops[$p]))
	Next

	; ================================================== Super XP PART ================================================== ;

	_Ini_Add("Pico GoblinXP", "EnableSuperXP", $ichkEnableSuperXP)
	_Ini_Add("Pico GoblinXP", "SXTraining",  $irbSXTraining)
	_Ini_Add("Pico GoblinXP", "SXBK", $ichkSXBK)
	_Ini_Add("Pico GoblinXP", "SXAQ", $ichkSXAQ)
	_Ini_Add("Pico GoblinXP", "SXGW", $ichkSXGW)
	_Ini_Add("Pico GoblinXP", "MaxXptoGain", GUICtrlRead($txtMaxXPtoGain))

EndFunc   ;==>SaveConfig_PicoMod

Func ApplyConfig_PicoMod($TypeReadSave)

	Switch $TypeReadSave

		Case "Save"

			$g_iChkRequestUnicode = GUICtrlRead($g_hChkRequestUnicode) = $GUI_CHECKED ? 1 : 0

			; ================================================== SWITCH ACCOUNT PART ================================================== ;

			$g_ichkSwitchAccount = GUICtrlRead($chkEnableSwitchAccount) = $GUI_CHECKED ? 1 : 0
			$g_icmbAccountsQuantity = _GUICtrlComboBox_GetCurSel($g_cmbAccountsQuantity)
			For $i = 1 To 8
				$g_iachkCanUse[$i] = GUICtrlRead($g_achkCanUse) = $GUI_CHECKED ? 1 : 0
				$g_iachkDonateAccount[$i] = GUICtrlRead($g_achkDonateAccount) = $GUI_CHECKED ? 1 : 0
				$g_iacmbAccount[$i] = _GUICtrlComboBox_GetCurSel($g_acmbAccount[$i])
			Next
			$g_icmbMaxStayDelay = _GUICtrlComboBox_GetCurSel($g_cmbMaxStayDelay)
			$g_icmbMinDelayToSwitch = _GUICtrlComboBox_GetCurSel($g_cmbMinDelayToSwitch)

			; ================================================== TREASURY COLLECT PART ================================================== ;

			$g_ichkEnableTrCollect = GUICtrlRead($g_chkEnableTrCollect) = $GUI_CHECKED ? 1 : 0
			$g_ichkForceTrCollect = GUICtrlRead($g_chkForceTrCollect) = $GUI_CHECKED ? 1 : 0
			$g_ichkGoldTrCollect = GUICtrlRead($g_chkGoldTrCollect) = $GUI_CHECKED ? 1 : 0
			$g_ichkElxTrCollect = GUICtrlRead($g_chkElxTrCollect) = $GUI_CHECKED ? 1 : 0
			$g_ichkDarkTrCollect = GUICtrlRead($g_chkDarkTrCollect) = $GUI_CHECKED ? 1 : 0
			$g_ichkFullGoldTrCollect = GUICtrlRead($g_chkFullGoldTrCollect) = $GUI_CHECKED ? 1 : 0
			$g_ichkFullElxTrCollect = GUICtrlRead($g_chkFullElxTrCollect) = $GUI_CHECKED ? 1 : 0
			$g_ichkFullDarkTrCollect = GUICtrlRead($g_chkFullDarkTrCollect) = $GUI_CHECKED ? 1 : 0
			$g_itxtMinGoldTrCollect = GUICtrlRead($g_txtMinGoldTrCollect)
			$g_itxtMinElxTrCollect = GUICtrlRead($g_txtMinElxTrCollect)
			$g_itxtMinDarkTrCollect = GUICtrlRead($g_txtMinDarkTrCollect)

			; ================================================== BOT HUMANIZATION PART ================================================== ;

			$g_ichkUseBotHumanization = GUICtrlRead($g_chkUseBotHumanization) = $GUI_CHECKED ? 1 : 0
			$g_ichkUseAltRClick = GUICtrlRead($g_chkUseAltRClick) = $GUI_CHECKED ? 1 : 0
			$g_ichkCollectAchievements = GUICtrlRead($g_chkCollectAchievements) = $GUI_CHECKED ? 1 : 0
			$g_ichkLookAtRedNotifications = GUICtrlRead($g_chkLookAtRedNotifications) = $GUI_CHECKED ? 1 : 0
			For $i = 0 To 12
				$g_iacmbPriority[$i] = _GUICtrlComboBox_GetCurSel($g_acmbPriority[$i])
			Next
			For $i = 0 To 1
				$g_iacmbMaxSpeed[$i] = _GUICtrlComboBox_GetCurSel($g_acmbMaxSpeed[$i])
			Next
			For $i = 0 To 1
				$g_iacmbPause[$i] = _GUICtrlComboBox_GetCurSel($g_acmbPause[$i])
			Next
			For $i = 0 To 1
				$g_iahumanMessage[$i] = GUICtrlRead($g_ahumanMessage[$i])
			Next
			$g_icmbMaxActionsNumber = _GUICtrlComboBox_GetCurSel($g_icmbMaxActionsNumber)
			$g_ichallengeMessage = GUICtrlRead($g_challengeMessage)

			; ================================================== CSV SPEED PART ================================================== ;

			$icmbCSVSpeed[$LB] = _GUICtrlComboBox_GetCurSel($cmbCSVSpeed[$LB])
			$icmbCSVSpeed[$DB] = _GUICtrlComboBox_GetCurSel($cmbCSVSpeed[$DB])

			; ================================================== CUSTOM DROP ORDER ================================================== ;

			$g_bCustomTrainDropOrderEnable = GUICtrlRead($g_hChkCustomTrainDropOrderEnable) = $GUI_CHECKED ? True : False
			For $p = 0 To UBound($icmbDropTroops) - 1
				$icmbDropTroops[$p] = _GUICtrlComboBox_GetCurSel($cmbDropTroops[$p])
			Next

			; ================================================== Super XP PART ================================================== ;

			$ichkEnableSuperXP = GUICtrlRead($chkEnableSuperXP) = $GUI_CHECKED ? 1 : 0
			$irbSXTraining = GUICtrlRead($rbSXTraining) = $GUI_CHECKED ? 1 : 2
			$ichkSXBK = (GUICtrlRead($chkSXBK) = $GUI_CHECKED) ? $eHeroKing : $eHeroNone
			$ichkSXAQ = (GUICtrlRead($chkSXAQ) = $GUI_CHECKED) ? $eHeroQueen : $eHeroNone
			$ichkSXGW = (GUICtrlRead($chkSXGW) = $GUI_CHECKED) ? $eHeroWarden : $eHeroNone
			$itxtMaxXPtoGain = Int(GUICtrlRead($txtMaxXPtoGain))

		Case "Read"

			GUICtrlSetState($g_hChkRequestUnicode, $g_iChkRequestUnicode = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)

			; ================================================== SWITCH ACCOUNT PART ================================================== ;

			GUICtrlSetState($chkEnableSwitchAccount, $g_ichkSwitchAccount = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			_GUICtrlComboBox_SetCurSel($g_cmbAccountsQuantity, $g_icmbAccountsQuantity)
			For $i = 1 To 8
				GUICtrlSetState($g_achkCanUse[$i], $g_iachkCanUse[$i] = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
				GUICtrlSetState($g_achkDonateAccount[$i], $g_iachkDonateAccount[$i] = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
				_GUICtrlComboBox_SetCurSel($g_acmbAccount[$i], $g_iacmbAccount[$i])
			Next
			_GUICtrlComboBox_SetCurSel($g_cmbMaxStayDelay, $g_icmbMaxStayDelay)
			_GUICtrlComboBox_SetCurSel($g_cmbMinDelayToSwitch, $g_icmbMinDelayToSwitch)
			cmbMaxStayDelay()
			cmbMinDelayToSwitch()
			chkSwitchAccount()

			; ================================================== TREASURY COLLECT PART ================================================== ;

			GUICtrlSetState($g_chkEnableTrCollect, $g_ichkEnableTrCollect = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_chkForceTrCollect, $g_ichkForceTrCollect = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_chkGoldTrCollect, $g_ichkGoldTrCollect = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_chkElxTrCollect, $g_ichkElxTrCollect = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_chkDarkTrCollect, $g_ichkDarkTrCollect = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_chkFullGoldTrCollect, $g_ichkFullGoldTrCollect = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_chkFullElxTrCollect, $g_ichkFullElxTrCollect = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_chkFullDarkTrCollect, $g_ichkFullDarkTrCollect = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetData($g_txtMinGoldTrCollect, $g_itxtMinGoldTrCollect)
			GUICtrlSetData($g_txtMinElxTrCollect, $g_itxtMinElxTrCollect)
			GUICtrlSetData($g_txtMinDarkTrCollect, $g_itxtMinDarkTrCollect)
			chkEnableTrCollect()

			; ================================================== BOT HUMANIZATION PART ================================================== ;

			GUICtrlSetState($g_chkUseBotHumanization, $g_ichkUseBotHumanization = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_chkUseAltRClick, $g_ichkUseAltRClick = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_chkCollectAchievements, $g_ichkCollectAchievements = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_chkLookAtRedNotifications, $g_ichkLookAtRedNotifications = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			chkUseBotHumanization()
			For $i = 0 To 12
				_GUICtrlComboBox_SetCurSel($g_acmbPriority[$i], $g_iacmbPriority[$i])
			Next
			For $i = 0 To 1
				_GUICtrlComboBox_SetCurSel($g_acmbMaxSpeed[$i], $g_iacmbMaxSpeed[$i])
			Next
			For $i = 0 To 1
				_GUICtrlComboBox_SetCurSel($g_acmbPause[$i], $g_iacmbPause[$i])
			Next
			For $i = 0 To 1
				GUICtrlSetData($g_ahumanMessage[$i], $g_iahumanMessage[$i])
			Next
			_GUICtrlComboBox_SetCurSel($g_cmbMaxActionsNumber, $g_icmbMaxActionsNumber)
			GUICtrlSetData($g_challengeMessage, $g_ichallengeMessage)
			cmbStandardReplay()
			cmbWarReplay()

			; ================================================== CSV SPEED PART ================================================== ;

			_GUICtrlComboBox_SetCurSel($cmbCSVSpeed[$LB], $icmbCSVSpeed[$LB])
			_GUICtrlComboBox_SetCurSel($cmbCSVSpeed[$DB], $icmbCSVSpeed[$DB])

			; ================================================== CUSTOM DROP ORDER ================================================== ;

			GUICtrlSetState($g_hChkCustomTrainDropOrderEnable, $g_bCustomTrainDropOrderEnable = True ? $GUI_CHECKED : $GUI_UNCHECKED)
			For $p = 0 To UBound($icmbDropTroops) - 1
				_GUICtrlComboBox_SetCurSel($cmbDropTroops[$p], $icmbDropTroops[$p])
				GUICtrlSetImage($g_ahImgTroopDropOrder[$p], $g_sLibIconPath, $g_aiTroopOrderDropIcon[$icmbDropTroops[$p] + 1])
			Next
			; process error
			If $g_bCustomTrainDropOrderEnable = True Then ; only update troop train order if enabled
				If ChangeTroopDropOrder() = False Then ; process error
					;SetDefaultTroopGroup()
					GUICtrlSetState($g_hChkCustomTrainDropOrderEnable, $GUI_UNCHECKED)
					$g_bCustomTrainDropOrderEnable = False
					GUICtrlSetState($g_hBtnTroopOrderSet2, $GUI_DISABLE) ; disable button
					GUICtrlSetState($g_hBtnRemoveTroops2, $GUI_DISABLE)
					For $i = 0 To UBound($cmbDropTroops) - 1
						GUICtrlSetState($cmbDropTroops[$i], $GUI_DISABLE) ; disable combo boxes
					Next
				EndIf
			EndIf
			chkTroopDropOrder()

			; ================================================== Super XP PART ================================================== ;

			GUICtrlSetState($chkEnableSuperXP, $ichkEnableSuperXP = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)

			chkEnableSuperXP()

			GUICtrlSetState($rbSXTraining, ($irbSXTraining = 1) ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($rbSXIAttacking, ($irbSXTraining = 2) ? $GUI_CHECKED : $GUI_UNCHECKED)

			GUICtrlSetData($txtMaxXPtoGain, $itxtMaxXPtoGain)

			GUICtrlSetState($chkSXBK, $ichkSXBK = $eHeroKing ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($chkSXAQ, $ichkSXAQ = $eHeroQueen ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($chkSXGW, $ichkSXGW = $eHeroWarden ? $GUI_CHECKED : $GUI_UNCHECKED)

	EndSwitch

EndFunc   ;==>ApplyConfig_PicoMod

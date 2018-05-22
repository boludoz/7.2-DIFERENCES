; #FUNCTION# ====================================================================================================================
; Name ..........: Pico MOD Global Variables
; Description ...: This file Includes several files in the current script and all Declared variables, constant, or create an array.
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

; ================================================== BOT DocOc Version PART ================================================= ;

Global $g_sLastModversion = "" ;latest version from GIT
Global $g_sLastModmessage = "" ;message for last version
Global $g_sOldModversmessage = "" ;warning message for old bot

; ================================================== TREASURY COLLECT PART ================================================== ;

Global $g_ichkEnableTrCollect = 0, $g_ichkForceTrCollect = 0
Global $g_ichkGoldTrCollect = 0, $g_ichkElxTrCollect = 0, $g_ichkDarkTrCollect = 0
Global $g_ichkFullGoldTrCollect = 0, $g_ichkFullElxTrCollect = 0, $g_ichkFullDarkTrCollect = 0
Global $g_itxtMinGoldTrCollect = 150000, $g_itxtMinElxTrCollect = 150000, $g_itxtMinDarkTrCollect = 1500

; ================================================== BOT HUMANIZATION PART ================================================== ;

Global $g_iacmbPriority[13] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
Global $g_iacmbMaxSpeed[2] = [1, 1]
Global $g_iacmbPause[2] = [0, 0]
Global $g_iahumanMessage[2] = ["Hello !", "Hello !"]
Global $g_ichallengeMessage = "Can you beat my village?"

Global $g_iMinimumPriority, $g_iMaxActionsNumber, $g_iActionToDo
Global $g_aSetActionPriority[13] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

Global $g_sFrequenceChain = "Never|Sometimes|Frequently|Often|Very Often"
Global $g_sReplayChain = "1|2|4"
Global $g_ichkUseBotHumanization = 0, $g_ichkUseAltRClick = 0, $g_icmbMaxActionsNumber = 1, $g_ichkCollectAchievements = 0, $g_ichkLookAtRedNotifications = 0

Global $g_aReplayDuration[2] = [0, 0] ; An array, [0] = Minute | [1] = Seconds
Global $g_bOnReplayWindow, $g_iReplayToPause

Global $g_iQuickMISX = 0, $g_iQuickMISY = 0
Global $g_iLastLayout = 0

; ================================================== SWITCH ACCOUNT PART ================================================== ;

Global $g_ichkSwitchAccount = 0

Global $g_bFirstInit = True
Global $g_sSwitchAccountConfig = $g_sProfilePath & "\Profile.ini"
Global $g_sSwitchAccountAtkLog = $g_sProfilePath & "\PicoSwitchAccount_Attack_Report.txt"
Global $g_iachkCanUse[9] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
Global $g_iachkDonateAccount[9] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
Global $g_iacmbAccount[9] = [0, 0, 0, 0, 0, 0, 0, 0, 0]

Global $g_iaAllAccountsWaitTimeDiff[9] = [0, 0, 0, 0, 0, 0, 0, 0, 0] ; stored as Milli sec ;Updated time left to train
Global $g_iaAllAccountsWaitTime[9] = [0, 0, 0, 0, 0, 0, 0, 0, 0] ; Stored as min time ;reported as time needed to train troops
Global $g_iaTimerDiffStart[9] = [0, 0, 0, 0, 0, 0, 0, 0, 0] ;the start and stop timer counters
Global $g_iaTimerDiffEnd[9] = [0, 0, 0, 0, 0, 0, 0, 0, 0] ;the start and stop timer counters
Global $g_iCurrentAccountWaitTime = 0

Global $g_iTotalAccountsOnEmu = 0, $g_icmbAccountsQuantity = 0, $g_iCurrentAccount = 0, $g_iCurrentDAccount = 0
Global $g_bMustGoToDonateAccount = 0, $g_iSwitchAccountLoop = 0

Global $g_iSwitchAccountYCoord, $g_iTotalAccountsInUse, $g_iTotalDonateAccountsInUse, $g_iNextAccount, $g_iNextProfile
Global $g_bAlreadyConnected, $g_bIsLoadButton, $g_iSwitchAccountNextStep, $g_sSwitchAccountLastDate = ""

Global $g_iOnAccountSince = 0
Global $g_icmbMaxStayDelay = 2, $g_bForceSwitch = False, $g_icmbMinDelayToSwitch = 2
Global $g_iMaxStayDelay = 0, $g_iMinDelayToSwitch

; ================================================== AUTO UPGRADE PART ================================================== ;

Global $g_ichkAutoUpgrade = 0
Global $g_iSmartMinGold = 150000, $g_iSmartMinElixir = 150000, $g_iSmartMinDark = 1500
Global $g_ichkUpgradesToIgnore[13] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
Global $g_ichkResourcesToIgnore[3] = [0, 0, 0]
Global $g_iCurrentLineOffset = 0, $g_iNextLineOffset = 0
Global $g_aUpgradeNameLevel ; [Nb of elements in Array, Name, Level]
Global $g_aUpgradeResourceCostDuration[3] = ["", "", ""] ; Resource, Cost, Duration

; ================================================== CSV SPEED PART ================================================== ;

Global $cmbCSVSpeed[2] = [$LB, $DB]
Global $icmbCSVSpeed[2] = [2, 2]
Global $g_CSVSpeedDivider = 1

; ================================================== BB FEATURES PART ================================================== ;

Global $g_iAttacksAvailable = 0
Global $g_ichkCollectBldGE = 0, $g_ichkCollectBldGems = 0
Global $g_ichkActivateClockTower = 0
Global $g_iGoldBB = 0, $g_iElixirBB = 0, $g_iTrophiesBB = 0, $g_aBuilder[2] = [0,0]

; ================================================== UNICODE SEND TEXT PART ================================================== ;

Global $bCanUseUnicodeKeyboard = False
Global $g_iChkRequestUnicode = 0

; ================================================== Drop order troops by Kychera ================================================== ;

Global Enum $eTroopBarbarianS, $eTroopArcherS, $eTroopGiantS, $eTroopGoblinS, $eTroopWallBreakerS, $eTroopBalloonS, _
		$eTroopWizardS, $eTroopHealerS, $eTroopDragonS, $eTroopPekkaS, $eTroopBabyDragonS, $eTroopMinerS, _
		$eTroopMinionS, $eTroopHogRiderS, $eTroopValkyrieS, $eTroopGolemS, $eTroopWitchS, _
		$eTroopLavaHoundS, $eTroopBowlerS, $eHeroeS, $eCCS, $eTroopCountDrop
;Global Enum $eTroopCountDrop = 21
Global $icmbDropTroops[$eTroopCountDrop] = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
Global Const $g_asTroopNamesPluralDrop[$eTroopCountDrop] = ["Barbarians", "Archers", "Giants", "Goblins", "Wall Breakers", "Balloons", "Wizards", "Healers", "Dragons", "Pekkas", "Baby Dragons", "Miners", "Minions", "Hog Riders", "Valkyries", "Golems", "Witches", "Lava Hounds", "Bowlers", "Clan Castle", "Heroes"]

Global Const $g_aiTroopOrderDropIcon[23] = [ _
		$eIcnOptions, $eIcnBarbarian, $eIcnArcher, $eIcnGiant, $eIcnGoblin, $eIcnWallBreaker, $eIcnBalloon, _
		$eIcnWizard, $eIcnHealer, $eIcnDragon, $eIcnPekka, $eIcnBabyDragon, $eIcnMiner, $eIcnMinion, _
		$eIcnHogRider, $eIcnValkyrie, $eIcnGolem, $eIcnWitch, $eIcnLavaHound, $eIcnBowler, $eIcnCC, $eIcnHeroes]

Global $g_hChkCustomTrainDropOrderEnable = 0
Global $g_bCustomTrainDropOrderEnable = False
Global $g_hBtnRemoveTroops2, $g_hBtnTroopOrderSet2
Global $g_ahImgTroopDropOrderSet = 0
Global $g_ahImgTroopDropOrder[$eTroopCountDrop] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
Global $cmbDropTroops = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
Global Const $g_asTroopDropList[] = [ "", _
  "Barbarians", "Archers","Giants", "Goblins", _
   "Wall Breakers", "Balloons", "Wizards", "Healers", _
   "Dragons", "Pekkas", "Baby Dragons", "Miners", _
   "Minions", "Hog Riders", "Valkyries", "Golems", _
   "Witches","Lava Hounds", "Bowlers", "Clan Castle", "Heroes"]

GloBal $g_iSlotsGiants

; Ezeck0001

Global $g_hCurrentDonateButtonBitMap = 0

; ================================================== Goblin XP PART ================================================== ;

;SuperXP / GoblinXP
Global $ichkEnableSuperXP = 0, $irbSXTraining = 1, $ichkSXBK = 0, $ichkSXAQ = 0, $ichkSXGW = 0, $iStartXP = 0, $iCurrentXP = 0, $iGainedXP = 0, $iGainedXPHour = 0, $itxtMaxXPtoGain = 500
Global $DebugSX = 0

; [0] = Queen, [1] = Warden, [2] = Barbarian King
; [0][0] = X, [0][1] = Y, [0][2] = XRandomOffset, [0][3] = YRandomOffset
Global $g_DpGoblinPicnic[3][4] = [[300, 205, 5, 5], [340, 140, 5, 5], [290, 220, 5, 5]]
Global $g_BdGoblinPicnic[3] = [0, "5000-7000", "6000-8000"] ; [0] = Queen, [1] = Warden, [2] = Barbarian King
Global $g_ActivatedHeroes[3] = [False, False, False] ; [0] = Queen, [1] = Warden, [2] = Barbarian King , Prevent to click on them to Activate Again And Again
Global Const $g_minStarsToEnd = 1
Global $g_canGainXP = False

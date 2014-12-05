; #### SUPER IMPORTANT #### DO NOT SHARE THIS SCRIPT! Be careful when sharing, because it contains usernames/passwords!


; ### IMPORTANT ### : Mini-client position: 
;                                          must be centered/maximized in a 1920x1080 screen for the script to work. 
;                                          The function "Fighting mode" does not require this, since it can be 
;                                          used anywhere (also in browsers).
; ### IMPORTANT ### : Character location:  
;                                          must be somewhere in Cloud City at the beginning of each action.
;                                          He should return there after each action automatically by the script.
; ### IMPORTANT ### : Timings: 
;                                          I am kind of generous in the waiting/sleeping times, but still, 
;                                                                 lags may cancel/confuse some operations.
;                                          The sleeping times or the number of repetitions are based on 
;                                                                 my computer and more importantly for a VIP character! 
;                                          Hence, if you make any change to fit your configuration, tell it to me in order to 
;                                                                 implement it and not confuse different script versions.
; ### IMPORTANT ### : Accidents:
;                                          Although it does not do complicated things, bear in mind that balens 
;                                                                 may be spent accidentally.
;                                          However, I am using the "optimized" algorithms/way of doing things that use in my normal
;                                                                 script it has not spent any balanes since a lot lot of months.

; ### Short Instructions ###
; ESC keyboard key            Exits script
; Ctrl+Alt+x                  Shows mouse position. So, if you want to change some coordinates
;                                            just type this key combination and a mouse tooltip will appear
;                                            under the "GUI interface".
; Ctrl+Alt+c                  Shows pixel color under mouse position ***2 seconds before!***. 
; PAUSE keyboard key          Pauses script.
;                                           
; 01. Sylph arena 10 times:       COMPLETE! Does sylph arena 10 times. 
; 02. Solo arena 10 times:        COMPLETE! Duels 10 times.
; 03. Farm: Harvest               COMPLETE! Goes for harvesting after a user-defined period 
;                                             of time. 
; 04. Astrals, ~3m gold:          COMPLETE! Spends around 3m gold in astrals. 3m, if you sell the white and below.
; 05. Fighting mode:              COMPLETE! I am very proud of it! This clicks at the current mouse location every ~300ms. 
;                                            In-between it types different arrow combinations, following a De Bruijn sequence 
;                                            ( http://en.wikipedia.org/wiki/De_Bruijn_sequence ) so as to cover any combination
;                                            of QTE skills with a maximum length of 3. On my computer it works nice when
;                                            I am using a browser, but not so much with the mini-client. Hence, I will probably 
;                                            have to change the timings.
;                                            It can be paused with PAUSE and un-paused with the same key combination.
;                                            Pause could be useful when, e.g., you want to change skills, but I do not bother
;                                            pausing it: I just hover it over the skill buttons and that's all.
;                                            It is also useful when you want to "click something" multiple times consecutively.
;                                            How to use it during a fight? It is simple: just **HOVER** the mouse cursor
;                                                                          above the corresponding skill and it will QTE automatically.
;                                                                          I also use it for runes, awakening and during WB, without 
;                                                                          destroying the "fast attack" mode, since it clicks rather
;                                                                          quickly.
;                                            Why do I like it? Because I complete, e.g., Nirvana without having to click or press any
;                                                                          QTE not even one time!! Amazing, uh? I just hover the mouse 
;                                                                          over the skills or the areas I want my character to move and
;                                                                          that's it! :))) This was my secret on 4x playing our team!
; 06. Pseudo AFK:                 COMPLETE! Clicks on screen and types a sequence of numbers/skills with QTE.
;                                            Suppose you have a long time ahead of you and you want to leave the computer for a while
;                                            without stopping the attacks (e.g. treasure hunt): this command will help you.
;                                            When you return just Terminate/Exit the script to make it stop.
; 07. Catacombs:                  incomplete. Goes to catacombs and returns to Cloud City after they end. Then, you have to go and kill
;                                            last Faye manually. For this command to work, the Catacombs' progress/level must be clear.
;                                            I mean you must have ***completedly*** completed the catacombs the previous day.
; 08. A/F Spins, Horns'n'Maps:    COMPLETE! Does Academy Blessing/Spins, Fate Spins, gets your Horns from Sky Trail and 
;                                            5 treasure maps from Berdim.
; 09. World Boss:                 incomplete. Waits for World Boss, and when it's time it enters the battle and attacks without skills.
;                                            TODO: click on AFK button. 
; 10. Altar of Ennoblement:       COMPLETE! Goes to the Altar for gaining stamina and returns to Cloud City after 2 hours and some minutes.
; 11. Amethyst Mines:             COMPLETE! Waits for the Amethyst Mines Event, and when it's time it enters the mines and collets/dumps 
;                                            amethyst. It does this ***three*** times and not only two, so if somebody attacks you 
;                                            ***one*** time you will not lose the cart.
; 12. Group Arena:                incomplete. This does not work.
; 13. Tanks:                      COMPLETE! Waits for the Tanks Event, and when it's about to end it enters to a random battleground.
;                                            It moves and attacks randomly, so you will be most probably placed on last position.
; 20. Wishing Wall:               COMPLETE! You have to manually double click on a Horn, so as to open the Wishing Wall. 
;                                            Then run this command in order to get rewards (clicks on fixed points). 
;                                            When your horns end, terminate/exit the script so as to make it stop.
; 21. God Descent:                incomplete. You have to manually open the God Descent window.  Then click on this command
;                                            in order to eternally attack the current monster. When you want to end the fights,
;                                            terminate/exit the script. TODO: click on AFK button.
; 22. Clicking:                   COMPLETE! Clicks on current mouse position every 300ms. Useful for multiple clicks, like in the event
;                                            rewards. When you want to stop it terminate/exit the script.


; ### Log-in players: ###         COMPLETE! It log-ins the selected player.
; autologin: First you must configure windows to begin mini-client with the Ctrl+Alt+A shortcut. In Windows XP this is: 
; 1. Right click mini-client icon > Create shortcut
; 2. Right click "shortcut to mini-client" icon > Properties
; 3. There is a "Shortcut key" on the "Shortcut" tab. Set it to Ctrl + Alt + A (just press the buttons)
; 4. Apply/Ok

; ### Action sequences: ###       I HOPE COMPLETE! It combines the above commands. Given that every command should make your character
;                                            return to the Cloud City, this is easy. Of course the sequences can be interrupted after
;                                            terminating/exiting the script or for some other reason, like connection problems/another login/etc.


#include <GUIConstants.au3>

HotKeySet("{ESC}", Terminate)
HotKeySet("^!x", mouse_position)
HotKeySet("^!c", mouse_position_pixel_color) ; place the mouse somewhere. then click ctrl+alt+c. It returns the color under the mouse 2 seconds ago
HotKeySet("^!o", ___pause) ; especially useful for fighting mode
; HotKeySet("^!d", ___astrals_arrows) ; astral

Func Terminate()
Exit 0
EndFunc

Func mouse_position()
   $aPos = MouseGetPos()
   Tooltip($aPos[0] & ", " & $aPos[1], 1750, 900)
   Sleep (200)
EndFunc

Func mouse_position_pixel_color()
   $aPos = MouseGetPos()
   Sleep(2000)
   $iColor = PixelGetColor($aPos[0], $aPos[1])
   Tooltip(Hex($iColor, 6), 1750, 1000)
   Sleep (200)
EndFunc

GUICreate("Bot for Wartune", 250, 650, 1660, 10)
GUICtrlCreateLabel("My_Username: The ultimate WB fighter :)", 40, 10)
GUICtrlCreateLabel("ESC: Exits script   -   Ctrl + Alt + o: pause toggle", 40, 30)

$dailies_sylph_arena = GUICtrlCreateButton("01*. Sylph Arena", 01, 60, 85)
$dailies_solo_arena = GUICtrlCreateButton("02*. Solo Arena ", 88, 60, 80)
$farm_harvest = GUICtrlCreateButton("03*. Harvest", 170, 60, 65)
$astrals = GUICtrlCreateButton("04. Astrals: 5m,", 01, 90, 80)
$astrals_2m = GUICtrlCreateButton("2m", 83, 90, 20)
$fighting_mode  = GUICtrlCreateButton("05. Fight mode: QTE:2x,", 105, 90, 120)
$fighting_mode_3x  = GUICtrlCreateButton("3x", 227, 90, 20)
$pseudo_AFK  = GUICtrlCreateButton("06. Pseudo AFK", 01, 120, 85)
; $dailies_treasure_maps  = GUICtrlCreateButton("06. Get 5 treausure maps", 100, 120, 145)
$dailies_does_catacombs  = GUICtrlCreateButton("07*. Catacombs", 88, 120, 80)
$dailies_academy_fate_horns  = GUICtrlCreateButton("08*. Spins et al.", 170, 120, 78)
$dailies_WB  = GUICtrlCreateButton("09*. World Boss", 01, 150, 82)
$dailies_altar = GUICtrlCreateButton("10*. Altar", 85, 150, 48)
$dailies_amethyst_mines  = GUICtrlCreateButton("11. Amethyst,", 135, 150, 72)
$dailies_amethyst_mines_now  = GUICtrlCreateButton("Now", 210, 150, 27)
$dailies_group_arena = GUICtrlCreateButton("12*. Group Arena", 01, 180, 90)
$dailies_tanks = GUICtrlCreateButton("13*. Tanks", 93,180, 56)
$following_mode = GUICtrlCreateButton("14. Following mode", 155,180, 86)

$wishing_wall = GUICtrlCreateButton("20. Wishing Wall", 01, 240, 90)
$god_descent = GUICtrlCreateButton("21*. God Descent", 93, 240, 90)
$clicking_mode  = GUICtrlCreateButton("22. Clicking", 185, 240, 60)
$VIP_wheel  = GUICtrlCreateButton("23. VIP Wheel x6", 01, 270, 95)

GUICtrlCreateLabel("NOTE: incomplete commands are annotated", 01, 620)
GUICtrlCreateLabel("            with an asterisk!", 01, 635)

GUICtrlCreateLabel("Log-in players:", 40, 380)
$login_ME = GUICtrlCreateButton("ME", 5, 400, 50)
$login_player1 = GUICtrlCreateButton("player1", 60, 400, 50)
$login_player2 = GUICtrlCreateButton("player2", 115, 400, 50)
$login_player3 = GUICtrlCreateButton("player3", 170, 400, 50)
$login_playerA1 = GUICtrlCreateButton("Player1", 5, 430, 50)
$login_playerA2 = GUICtrlCreateButton("Player2", 60, 430, 50)
$login_playerA3 = GUICtrlCreateButton("Player3", 115, 430, 50)
$login_playerA4 = GUICtrlCreateButton("Player4", 170, 430, 50)

GUICtrlCreateLabel("Action sequences:", 40, 480)
$seq_01_02 = GUICtrlCreateButton("01+02", 1, 500, 35)
$seq_01_02_04 = GUICtrlCreateButton("01+02+04", 38, 500, 53)
$seq_01_02_08_10 = GUICtrlCreateButton("01+02+08+10", 93, 500, 71)
$seq_08_10_07 = GUICtrlCreateButton("08+10+07", 166, 500, 54)
$seq_01_02_08_10_07_09 = GUICtrlCreateButton("01+02+08+10+07+09", 1, 530, 107)
$seq_11_13 = GUICtrlCreateButton("11+13", 109, 530, 35)

$timer_a = GUICtrlCreateButton("Timer to stop sylph farming", 1, 570, 135)
$test = GUICtrlCreateButton("Test button", 1, 595, 135)









GUISetState(@SW_SHOW)

Func ___dailies_sylph_arena()
   Sleep(1000)
   MouseClick("primary", 268, 331) ; enter
   Sleep(500)
   Dim $i
   For $i=1 to 80 ; It needs ~75 for 10 attempts. I put 80 just in case it takes longer.
	  Tooltip("Round: " & $i, 1750, 800)
	  MouseClick("primary", 960, 623) ; confirm
	  Sleep(500)
	  MouseClick("primary", 809, 671) ; fight
	  Sleep(500)
	  MouseClick("primary", 958, 923) ; finish
	  Sleep(500)
   Next
   MouseClick("primary", 1003, 603) ; cancel balen spending
   Sleep(500)
   MouseClick("primary", 1408, 296) ; exit window
   Sleep(500)
EndFunc

Func ___wishing_wall()
   While 1
     Sleep(1000)
     MouseClick("primary", 984, 721) ; Start/Once More
     Sleep(1000)
     MouseClick("primary", 1024, 640) ; card
   WEnd
EndFunc


Func ___fight_activate_AFK_button() ; 1418 883 to 1469 936 643F00
   $afk_coord = PixelSearch(1418, 883, 1469, 936, 0x643F00)
   If Not @error Then
   For $i=1 to 3
      ToolTip("AFK button found: " & $afk_coord[0] & " and " & $afk_coord[1], 500,500)
      MouseClick("primary", $afk_coord[0], $afk_coord[1], 1, 0) 
	  Sleep(1000)
	  Next
    Else	  
     ToolTip("AFK button NOT NOT NOT found", 500,500)
   EndIf
EndFunc

Func ___VIP_wheel()
dim $i
   For $i=1 To 7
     Sleep(1000)
     MouseClick("primary", 877, 551) ; click activate
     Sleep(8000)
 Next
 EndFunc

Func ___god_descent()
   While 1
   Dim $i
   For $i=1 to 6
     Sleep(2000)
     MouseClick("primary", 1022, 657) ; Click Boss
     Sleep(2000)
     MouseClick("primary", 868, 583) ; confirm
     Sleep(2000)
     MouseClick("primary", 1255, 486) ; do not recharge
	 Sleep(1000)
	 Send("x") ; hp rune coz auto of hp points :)
     MouseClick("primary", 1443, 911) ; afk button
	 Sleep(1000)
	 Send("x")
     MouseClick("primary", 1443, 911) ; afk button
	 Sleep(1000)
	 Send("x")
     MouseClick("primary", 1443, 911) ; afk button
	 Sleep(1000)
	 Send("x")
     MouseClick("primary", 1443, 911) ; afk button
	 Sleep(1000)
	 Send("x")
     MouseClick("primary", 1443, 911) ; afk button
	 Sleep(4 * 60 * 1000)
   Next
   Sleep(5 * 15 * 60 * 1000) 
   WEnd
EndFunc

Func ___dailies_solo_arena()
   Sleep(1000)
   MouseClick("primary", 249, 312) ; enter
   Sleep(3000)
   Dim $i
   Dim $j
   For 	$i=1 to 18
	  MouseClick("primary", 1283, 587) ; fight
	  Sleep(1000)
	  MouseClick("primary", 1283, 587) ; fight
	  Sleep(1000)
	  For $j=1 to 30
		 Tooltip("Round, attack: " & $i & ", " & $j, 1750, 800)
		 Send("{Space}x54321") ; do not use z button for rune, it goes to campaign :)
		 Sleep(300)
		 Send("{UP}{DOWN}{LEFT}{RIGHT}")
		 Sleep(1500)
	  Next
   Next
   Tooltip("")
   MouseClick("primary", 1039, 596) ; cancel balen spending
   Sleep(500)
   MouseClick("primary", 1608, 168) ; Back/exit window
   Sleep(500)
EndFunc

Func ___farm_click_fields()
		 Sleep(300)
		 MouseClick("primary", 787, 598)
		 Sleep(300)
		 MouseClick("primary", 860, 551)
		 Sleep(300)
		 MouseClick("primary", 951, 496)
		 Sleep(300)
		 MouseClick("primary", 903, 676)
		 Sleep(300)
		 MouseClick("primary", 978, 600)
		 Sleep(300)
		 MouseClick("primary", 1053, 551)
		 Sleep(300)
		 MouseClick("primary", 1005, 733)
		 Sleep(300)
		 MouseClick("primary", 1087, 667)
		 Sleep(300)
		 MouseClick("primary", 1175, 613)
		 Sleep(300)
EndFunc

Func ___farm_click_fields_reverse()
		 Sleep(300)
		 MouseClick("primary", 1175, 613)
		 Sleep(300)
		 MouseClick("primary", 1087, 667)
		 Sleep(300)
		 MouseClick("primary", 1005, 733)
		 Sleep(300)
		 MouseClick("primary", 1053, 551)
		 Sleep(300)
		 MouseClick("primary", 978, 600)
		 Sleep(300)
		 MouseClick("primary", 903, 676)
		 Sleep(300)
		 MouseClick("primary", 951, 496)
		 Sleep(300)
		 MouseClick("primary", 860, 551)
		 Sleep(300)
		 MouseClick("primary", 787, 598) ; first
		 Sleep(300)
EndFunc

Func ___farm_plant()
   Sleep(1000)
   ; MouseClick("primary", 1391, 789) ; farm vault not necessary to click on it, since already opened coz of empty fields
   Sleep(1000)
   MouseClick("primary", 1431, 439) ; top left seed
   ___farm_click_fields()
   MouseClick("primary", 1431, 439) ; top left seed
   ___farm_click_fields_reverse()
EndFunc

Func ___dailies_treasure_maps()
   Sleep(1000)
   MouseClick("primary", 1564, 553) ; clicks map button
   Sleep(1000)
   MouseClick("primary", 1206, 553) ; clicks Berdim
   Sleep(45000)
   MouseClick("primary", 914, 653) ; gets the maps
   Sleep(3000)
   MouseClick("primary", 939, 721) ; claims
   Sleep(2000)
   MouseClick("primary", 879, 542) ; checkbox
   Sleep(2000)
   MouseClick("primary", 878, 582) ; confirms
   Sleep(2000)
   MouseClick("primary", 940, 726) ; claims the rest four maps
   Sleep(1000)
   MouseClick("primary", 940, 726) ; claims the rest four maps
   Sleep(1000)
   MouseClick("primary", 940, 726) ; claims the rest four maps
   Sleep(1000)
   MouseClick("primary", 940, 726) ; claims the rest four maps
   Sleep(1000)   
   MouseClick("primary", 1254, 355) ; close window
   Sleep(1000)
EndFunc

Func ___timer_a()
   $timer_minutes = InputBox("Minutes till end of Sylph Farming", "How many minutes till I start the sequence 01+02+08+10+07+09?")
   Sleep($timer_minutes * 60 * 1000)
   Sleep(2000)
   Send("^!b")
   Sleep(2000)
   Send("^!b")
   Sleep(60000)
   MouseClick("primary", 1678, 946) ; Return to Old City
   Sleep(7000)
   MouseClick("primary", 1564, 553) ; clicks map button
   Sleep(7000)
   MouseClick("primary", 943, 546) ; click center of Cloud City
   Sleep(2000)
   MouseClick("primary", 1337, 312) ; close map
      ; MouseClick("primary", 1191, 103) ; closeses MiniClient to Open a New One
   Sleep(45000)
     ___dailies_sylph_arena()
	 ___dailies_solo_arena()
	 ___dailies_academy_and_fate_and_sky_horns()
	 ___dailies_treasure_maps()
  	 ___dailies_altar()
     ___dailies_does_catacombs()
     ___dailies_WB()
EndFunc

Func ___farm_harvest()
   $farm_minutes = InputBox("Minutes till harvesting", "How many minutes till I go harvesting? I will go there and then harvest for around 10 minutes, so you can be flexible in input.")
   Sleep($farm_minutes * 60 * 1000)
   Sleep(2000)
   MouseClick("primary", 1614, 155) ; go to old city
   Sleep(3000)
   MouseClick("primary", 1434, 291) ; go to farm
   Sleep(3000)
   Dim $i
   Dim $j
	  For $j=1 to 50
		 Tooltip("Clicking Fields: " & $j, 1750, 800)
		 ___farm_click_fields()
	  Next
   ;___farm_plant()
   MouseClick("primary", 1678, 946) ; Return to Old City
   Sleep(2000)
   MouseClick("primary", 1620, 154) ; Return to Cloud City
   Sleep(2000)
EndFunc

Func ___astrals_colors_magus()
   $am_coord = PixelSearch(550, 711, 1222, 780, 0xECECD4)
   If Not @error Then
      MouseClick("primary", $am_coord[0], $am_coord[1], 1, 0) 
	  Sleep(10)
    Else	  
     ToolTip("Astral-Coordinates NOT NOT NOT found", 500,500)
   EndIf
EndFunc

Func ___astrals_deactivated_5m()
$delay = 600
   Sleep(2000)
   MouseClick("primary", 1373, 953) ; astrals
   Sleep(2000)
dim $i
dim $j
For $j = 0 to 80 ; 15=1m 45=3m selling greens & blues
For $i = 0 to 16
___astrals_deactivated_check()
Sleep($delay)
Next

	  MouseClick("primary", 798, 695) ; Sell
	  Sleep(500)
	  MouseClick("primary", 891, 685) ; Synthesis
	  Sleep(500)
	  MouseClick("primary", 834, 601) ; Synthesis, confirm
	  Sleep(500)
	  Next
	     MouseClick("primary",1035, 291) ; Exits astrals

EndFunc

Func ___astrals_deactivated_2m()
$delay = 600
   Sleep(2000)
   MouseClick("primary", 1373, 953) ; astrals
   Sleep(2000)
dim $i
dim $j
For $j = 0 to 32  ;  15=1m 45=3m selling greens & blues
For $i = 0 to 16
___astrals_deactivated_check()
Sleep($delay)
Next

	  MouseClick("primary", 798, 695) ; Sell
	  Sleep(500)
	  MouseClick("primary", 891, 685) ; Synthesis
	  Sleep(500)
	  MouseClick("primary", 834, 601) ; Synthesis, confirm
	  Sleep(500)
	  Next
	     MouseClick("primary",1035, 291) ; Exits astrals

EndFunc

Func ___astrals_deactivated_check()
; ToolTip("0: ", 500,500 )
; Sleep(2000)
; $ceres = PixelGetColor(739, 742)
; ToolTip("I compare" & $ceres & " and " & Hex($ceres, 6) & " and results is " & StringCompare(Hex($ceres, 6), "4A4B4B"), 500,500 )
; Sleep(6000)
; ; ToolTip("2: " & Hex($ceres, 6), 500,500)
; ; Sleep(2000)
; ToolTip("3: " & StringCompare(Hex($ceres, 6), "4A4B4B"), 500,500)
; Sleep(2000)
$ceres = PixelGetColor(563, 779)
$result_ceres = StringCompare(Hex($ceres, 6), "6B6C6C")

$pallas = PixelGetColor(666, 776)
$result_pallas = StringCompare(Hex($pallas, 6), "6A6C31")

$satum = PixelGetColor(765,776)
$result_satum = StringCompare(Hex($satum, 6), "6C566B")

$chiron = PixelGetColor(860, 777)
$result_chiron = StringCompare(Hex($chiron, 6), "35626B")

; ceres:   8
; pallas:  4
; satum:   2
; chiron:  1
$result_astral = 0
Sleep(100)
If $result_ceres = 0 Then
   $result_astral = $result_astral + 8
EndIF
If $result_pallas = 0 Then
   $result_astral = $result_astral + 4
EndIF
If $result_satum = 0 Then
   $result_astral = $result_astral + 2
EndIF
If $result_chiron = 0 Then
   $result_astral = $result_astral + 1
EndIF
; ToolTip($result_astral, 500, 500)
; 7: ceres
;11: pallas
; 15: magus
Sleep(100)
If $result_astral = 7 Then
		MouseClick("primary", 563, 779, 1, 0)  ; Ceres
ElseIf $result_astral = 14 Then
    	    MouseClick("primary", 860, 777, 1, 0)  ; Chiron
ElseIf $result_astral = 13 Then
            MouseClick("primary", 765,776, 1, 0)  ; Saturn
ElseIf $result_astral = 11 Then
            MouseClick("primary", 666, 776, 1, 0)  ; Pallas
ElseIf $result_astral = 15 Then
       	 ; MouseClick("primary", 1184, 741, 1, 0) ; Chiron
		 ; MouseClick("primary", 1024, 741, 1, 0) ; Saturn
		 ; MouseClick("primary", 882, 741, 1, 0)  ; Pallas
		 ; MouseClick("primary", 727, 741, 1, 0)  ; Ceres
		 MouseClick("primary", 484,778, 1, 0)  ; Magus Star
   EndIf	
; Sleep(500)
; ToolTip("")
EndFunc

; Ceres: PixelGetColor(739, 742, 0x4A4B4B)
; Pallas: PixelGetColor(882, 740, 0x674E20)
; Satum: PixelGetColor(1037, 737, 0x562A61)
; Chiron: PixelGetColor(1178, 741, 0x145E67)


Func ___dailies_arena_group()
; Sleep(2000)
; start ready to press: 1626 657 5EABC5
; start ready to press: 1647, 701 FFEFCE
; 1654 705 
; 1588, 704 FFF0D4
; 1576, 618  to 1588, 629 675026
; 1612, 667, 1645, 684 70A8BE
While 1
; $start_button = PixelGetColor(1588, 704)
; $result_start_button = StringCompare(Hex($start_button, 6), "FFE0D4")

Sleep(300)
   $am_coord = PixelSearch(1612, 667, 1645, 684, 0x70A8BE)
   If Not @error Then
   Sleep(1000)
      ; MouseClick("primary", $am_coord[0], $am_coord[1], 1, 0) 
	  Sleep(10)

; If $result_start_button = 0 Then
ToolTip("ready ready to press", 500,500)
Sleep(500)
      MouseClick("primary", 1625, 678) 
	  ToolTip("ready PRESSED", 500,500)

	     Sleep(6000)
		 Else
		 MouseClick("primary", 1252, 350) 
		 ToolTip("ready NOT NOT NOT ready to press, so I'm fighting ", 500,500)
		  Send("{Space}x54321") ; do not use z button for rune, it goes to campaign :)
		 Sleep(500)
		 Send("{UP}{UP}{DOWN}{UP}{LEFT}{UP}{RIGHT}{DOWN}{DOWN}{LEFT}{DOWN}{RIGHT}{LEFT}{LEFT}{RIGHT}{RIGHT}")
		 Sleep(1500)
EndIF
Sleep(2000)
   $am_coord = PixelSearch(1612, 667, 1645, 684, 0x43545D)
   If Not @error Then
; If $result_start_button = 0 Then
ToolTip("start ready to press", 500,500)
Sleep(500)
      MouseClick("primary", 1625, 678) 
	  	  ToolTip("start PRESSED", 500,500)

	     Sleep(6000)
		 
		 Else
		 MouseClick("primary", 1252, 350) 
		 ToolTip("start NOT NOT NOT ready to press, so I'm fighting ", 500,500)
		  Send("{Space}x54321") ; do not use z button for rune, it goes to campaign :)
		 Sleep(500)
		 Send("{UP}{UP}{DOWN}{UP}{LEFT}{UP}{RIGHT}{DOWN}{DOWN}{LEFT}{DOWN}{RIGHT}{LEFT}{LEFT}{RIGHT}{RIGHT}")
		 Sleep(1500)
EndIF
Wend
EndFunc

Func ___astrals_colors_ceres()
   $am_coord = PixelSearch(550, 711, 1222, 780, 0xE6E7E7)
   If Not @error Then
      MouseClick("primary", $am_coord[0], $am_coord[1], 1, 0) 
	  Sleep(10)
    Else	  
     ToolTip("Astral-Coordinates NOT NOT NOT found", 500,500)
   EndIf
EndFunc

Func ___astrals_colors_pallas()
   $am_coord = PixelSearch(550, 711, 1222, 780, 0xFEF7AE)
   If Not @error Then
      MouseClick("primary", $am_coord[0], $am_coord[1], 1, 0) 
	  Sleep(10)
    Else	  
     ToolTip("Astral-Coordinates NOT NOT NOT found", 500,500)
   EndIf
EndFunc

Func ___astrals_colors_satum()
   $am_coord = PixelSearch(550, 711, 1222, 780, 0xEA81F7)
   If Not @error Then
      MouseClick("primary", $am_coord[0], $am_coord[1], 1, 0) 
	  Sleep(10)
    Else	  
     ToolTip("Astral-Coordinates NOT NOT NOT found", 500,500)
   EndIf
EndFunc

Func ___astrals_colors_testing()
   $delay = 1000 
   Sleep(1000)
   ; 0xECECD4 ; Magus ; Mind the priorities!
   ; 0xE6E7E7 ; Ceres
   ; 0xFEF7AE ; Pallas
   ; 0xEA81F7 ; 0xEA96FB ; 0xCE61EE  ; Satum
   $am_coord = PixelSearch(550, 711, 1222, 780, 0xEA81F7)
   If Not @error Then
      MouseClick("primary", $am_coord[0], $am_coord[1], 1, 0) 
	  Sleep(3 * $delay)
    Else	  
     ToolTip("Astral-Coordinates NOT NOT NOT found", 500,500)
   EndIf
 EndFunc
 
 Func ___astrals_colors()
 dim $i
 For $i=1 to 10
 ___astrals_colors_satum()
 ___astrals_colors_satum()
 ___astrals_colors_satum()

 ___astrals_colors_pallas()
 ___astrals_colors_pallas()
 ___astrals_colors_pallas()

 ___astrals_colors_ceres()
 ___astrals_colors_ceres()
 ___astrals_colors_ceres()

 ___astrals_colors_magus()
 ___astrals_colors_magus()
 ___astrals_colors_magus()
 ToolTip("Iteration Ended", 500, 500)
 Next
 EndFunc
 
  Func ___astrals_arrows()
  $delay_fast=50
 ; 0x9D2418 ;  red arrow color
   ; ToolTip("Iteration Started", 500, 500)
   ; $am_coord = PixelSearch(1074, 711, 1131, 766, 0x9D2418)
   ; If Not @error Then
       ; MouseClick("primary", 1184, 741, 1, 0)  ; Chiron
	   ; Sleep($delay_fast)
   ; EndIf
   ; $am_coord = PixelSearch(925, 711, 761, 766, 0x9D2418)
   ; If Not @error Then
        ; MouseClick("primary", 1024, 741, 1, 0)  ; Saturn
	   ; Sleep($delay_fast)
   ; EndIf
   ; $am_coord = PixelSearch(776, 711, 831, 766, 0x9D2418)
   ; If Not @error Then
       ; MouseClick("primary", 882, 741, 1, 0)  ; Pallas
	   ; Sleep($delay_fast)
   ; EndIf
   ; $am_coord = PixelSearch(635, 711, 687, 766, 0x9D2418)
   ; If Not @error Then
       ; MouseClick("primary", 727, 741, 1, 0)  ; Ceres
	   ; Sleep($delay_fast)
   ; EndIf
   ToolTip("")
   $am_coord = PixelSearch(637, 723, 1124, 745, 0x802712) ; arrow: 0x9D2418
   
   Sleep($delay_fast * 1000)
   If Not IsArray($am_coord) Then
       MouseClick("primary", 581, 741, 1, 0)  ; Magus Star
   Else
    ToolTip("$am_coord[0]", 500, 500)
      If $am_coord[0] > 1030 Then
	        ToolTip("Chiron", 500, 500)
    	    MouseClick("primary", 1184, 741, 1, 0)  ; Chiron
      ElseIf $am_coord[0] > 877 Then
	        ToolTip("Saturn", 500, 500)
            MouseClick("primary", 1024, 741, 1, 0)  ; Saturn
      ElseIf $am_coord[0] > 736 Then
	        ToolTip("Pallas", 500, 500)
            MouseClick("primary", 882, 741, 1, 0)  ; Pallas
      Else ;If $am_coord[0] > 592 Then
	        ToolTip("Ceres", 500, 500)
			MouseClick("primary", 727, 741, 1, 0)  ; Ceres
	   EndIf
  	; Else
    ; MouseClick("primary", 581, 741, 1, 0)  ; Magus Star
   EndIf
   ; $am_coord = PixelSearch(1074, 711, 1131, 766, 0x9D2418)
   ; If Not @error Then
       ; MouseClick("primary", 1184, 741, 1, 0)  ; Chiron
	   ; Sleep($delay_fast)
   ; EndIf
   ; $am_coord = PixelSearch(925, 711, 761, 766, 0x9D2418)
   ; If Not @error Then
        ; MouseClick("primary", 1024, 741, 1, 0)  ; Saturn
	   ; Sleep($delay_fast)
   ; EndIf
   ; $am_coord = PixelSearch(776, 711, 831, 766, 0x9D2418)
   ; If Not @error Then
       ; MouseClick("primary", 882, 741, 1, 0)  ; Pallas
	   ; Sleep($delay_fast)
   ; EndIf
   ; $am_coord = PixelSearch(635, 711, 687, 766, 0x9D2418)
   ; If Not @error Then
       ; MouseClick("primary", 727, 741, 1, 0)  ; Ceres
	   ; Sleep($delay_fast)
   ; EndIf
    ; MouseClick("primary", 581, 741, 1, 0)  ; Magus Star
	   ; Sleep($delay_fast)
   ; ToolTip("Iteration Ended", 500, 500)

   		 ; MouseClick("primary", 1184, 741, 1, 0) ; Chiron
		 ; MouseClick("primary", 1024, 741, 1, 0) ; Saturn
		 ; MouseClick("primary", 882, 741, 1, 0)  ; Pallas
		 ; MouseClick("primary", 727, 741, 1, 0)  ; Ceres
		 ; MouseClick("primary", 581, 741, 1, 0)  ; Magus Star
 EndFunc

Func ___astrals()
   Sleep(2000)
   MouseClick("primary", 1373, 953) ; astrals
   Sleep(2000)
   Dim $i
   Dim $j
   For $j=1 to 30
	  For $i=1 to 8
		 MouseClick("primary", 1184, 741, 1, 0) ; Chiron
		 MouseClick("primary", 1024, 741, 1, 0) ; Saturn
		 MouseClick("primary", 882, 741, 1, 0)  ; Pallas
		 MouseClick("primary", 727, 741, 1, 0)  ; Ceres
		 MouseClick("primary", 581, 741, 1, 0)  ; Magus Star
		 MouseClick("primary", 1184, 741, 1, 0) ; Chiron
		 MouseClick("primary", 1024, 741, 1, 0) ; Saturn
		 MouseClick("primary", 882, 741, 1, 0)  ; Pallas
		 MouseClick("primary", 727, 741, 1, 0)  ; Ceres
		 MouseClick("primary", 1184, 741, 1, 0) ; Chiron
		 MouseClick("primary", 1024, 741, 1, 0) ; Saturn
		 MouseClick("primary", 882, 741, 1, 0)  ; Pallas
		 MouseClick("primary", 1184, 741, 1, 0) ; Chiron
		 MouseClick("primary", 1024, 741, 1, 0) ; Saturn
		 MouseClick("primary", 1184, 741, 1, 0) ; Chiron
	  Next
	  MouseClick("primary", 1342, 647) ; Sell
	  Sleep(500)
	  MouseClick("primary", 1058, 643) ; Synthesis
	  Sleep(500)
	  MouseClick("primary", 792, 588) ; Synthesis, confirm
	  Sleep(500)
   	  MouseClick("primary", 1184, 741, 1, 0) ; Chiron
   	  MouseClick("primary", 1024, 741, 1, 0) ; Saturn
   	  MouseClick("primary", 882, 741, 1, 0)  ; Pallas
	  MouseClick("primary", 727, 741, 1, 0)  ; Ceres
	  MouseClick("primary", 1184, 741, 1, 0) ; Chiron
   	  MouseClick("primary", 1024, 741, 1, 0) ; Saturn
   	  MouseClick("primary", 882, 741, 1, 0)  ; Pallas
	  MouseClick("primary", 1184, 741, 1, 0) ; Chiron
   	  MouseClick("primary", 1024, 741, 1, 0) ; Saturn
	  MouseClick("primary", 1184, 741, 1, 0) ; Chiron
	  Sleep(500)
   Next
   MouseClick("primary", 1387, 339) ; Exits astrals
EndFunc

Global $Paused

Func ___pause()
	$Paused = NOT $Paused
	While $Paused
		Sleep(100)
		Tooltip('Script is "Paused"', 1750, 800)
	WEnd
	ToolTip("")
EndFunc

Func ___pseudo_AFK()
; bruijn, 2: {UP}{UP}{DOWN}{UP}{LEFT}{UP}{RIGHT}{DOWN}{DOWN}{LEFT}{DOWN}3{LEFT}{LEFT}{RIGHT}{RIGHT}
     While 1
	    MouseClick("primary", 1690, 816, 1, 0)
		Sleep(300)
		Send("x{Space}54321")
		Sleep(300)
		Send("{UP}{UP}{DOWN}{UP}{LEFT}{UP}{RIGHT}{DOWN}{DOWN}{LEFT}{DOWN}3{LEFT}{LEFT}{RIGHT}{RIGHT}")
		Sleep(1000)
	WEnd
EndFunc

Func ___following_mode()
; bruijn, 2: {UP}{UP}{DOWN}{UP}{LEFT}{UP}{RIGHT}{DOWN}{DOWN}{LEFT}{DOWN}3{LEFT}{LEFT}{RIGHT}{RIGHT}
     While 1
	    ; MouseClick("primary", 1690, 816, 1, 0)
		Sleep(300)
		Send("x{Space}54321")
		Sleep(300)
		Send("{UP}{UP}{DOWN}{UP}{LEFT}{UP}{RIGHT}{DOWN}{DOWN}{LEFT}{DOWN}3{LEFT}{LEFT}{RIGHT}{RIGHT}")
		Sleep(1000)
	WEnd
EndFunc

Func ___fighting_mode_3x()
    Sleep(1000)
    While 1
	    $aPos = MouseGetpos()
        MouseClick("primary", $aPos[0], $aPos[1], 1, 0)
		Sleep(300)
		Send("{UP}{UP}{UP}{DOWN}{UP}{UP}{LEFT}{UP}{UP}{RIGHT}{UP}{DOWN}{DOWN}{UP}{DOWN}{LEFT}{UP}{DOWN}{RIGHT}{UP}{LEFT}{DOWN}{UP}")
		Sleep(300)
	    $aPos = MouseGetpos()
        MouseClick("primary", $aPos[0], $aPos[1], 1, 0)
        Send("{DOWN}{UP}{LEFT}{LEFT}{UP}{LEFT}{RIGHT}{UP}{RIGHT}{DOWN}{UP}{RIGHT}{LEFT}{UP}{RIGHT}{RIGHT}{DOWN}{DOWN}{DOWN}{LEFT}{DOWN}{DOWN}")
		Sleep(300)
	    $aPos = MouseGetpos()
        MouseClick("primary", $aPos[0], $aPos[1], 1, 0)
        Send("{DOWN}{DOWN}{RIGHT}{DOWN}{LEFT}{LEFT}{DOWN}{LEFT}{RIGHT}{DOWN}{RIGHT}{LEFT}{DOWN}{RIGHT}{RIGHT}{LEFT}{LEFT}{LEFT}{RIGHT}{LEFT}{RIGHT}{RIGHT}{RIGHT}{UP}{UP}")
		Sleep(300)
	WEnd
EndFunc

Func ___fighting_mode()
    Sleep(1000)
    While 1
	    $aPos = MouseGetpos()
        MouseClick("primary", $aPos[0], $aPos[1], 1, 0)
		Sleep(300)
		Send("{UP}{UP}{DOWN}{UP}{LEFT}{UP}{RIGHT}{DOWN}{DOWN}{LEFT}{DOWN}{RIGHT}{LEFT}{LEFT}{RIGHT}{RIGHT}{UP}")
		Sleep(300)
	WEnd
EndFunc


Func ___clicking_mode()
    Sleep(1000)
    While 1
	    $aPos = MouseGetpos()
        MouseClick("primary", $aPos[0], $aPos[1], 1, 0)
		Sleep(300)
	WEnd
EndFunc

Func ___dailies_does_catacombs()
   Sleep(2000)
   MouseClick("primary", 1614, 155) ; go to old city
   Sleep(3000)
   MouseClick("primary", 1235, 201) ; go to catacombs
   Sleep(3000)
   ; MouseClick("primary", 1064, 636) ; does NOT use crypt key - uncomment this line to NOT use a crypt key
   Sleep(2000)
   MouseClick("primary", 1080, 730) ; Blitz button
   Sleep(2000)
   MouseClick("primary", 1069, 623) ; Starts blitz
   Sleep(52 * 60 * 1000)
   MouseClick("primary", 1225, 437) ; Close blitz window
   Sleep(2000)
   ; MouseClick("primary", 1173, 201) ; go to catacombs
   ; Sleep(3000)
   ; MouseClick("primary", 1090, 737) ; Continue button
   ; Sleep(8000)
   ; MouseClick("primary", 885, 655) ; Attack Faye
   ; Sleep(90000)
   ; MouseClick("primary", 1080, 730) ; collect normal chest
   ; Sleep(5000)
   ; MouseClick("primary", 869, 399) ; collect bonus chest
   ; Sleep(5000)
   ; MouseClick("primary", 950, 688) ; collect all from bonus chest - Inventory must have some empty spaces
   ; Sleep(5000)
   ; MouseClick("primary", 1172, 798) ; exit catacombs
   ; Sleep(3000)
   ; MouseClick("primary", 1095, 428) ; closes window with received items.
   ; Sleep(2000)
   MouseClick("primary", 1620, 154) ; Return to Cloud City
   Sleep(2000)
EndFunc

Func ___dailies_academy_and_fate_and_sky_horns()
   Sleep(2000)
   MouseClick("primary", 652, 145) ; academy icon
   Sleep(2000)
   MouseClick("primary", 937, 668) ; spin
   Sleep(2000)
   MouseClick("primary", 871, 533) ; checkbox
   Sleep(2000)
   MouseClick("primary", 876, 573) ; confirm
   Sleep(2000)
   MouseClick("primary", 937, 668) ; spin
   Sleep(8000)
   MouseClick("primary", 937, 668) ; spin
   Sleep(8000)
   MouseClick("primary", 937, 668) ; spin
   Sleep(8000)
   MouseClick("primary", 937, 668) ; spin
   Sleep(8000)
   MouseClick("primary", 937, 668) ; spin
   Sleep(8000)
   MouseClick("primary", 937, 668) ; spin
   Sleep(8000)
   MouseClick("primary", 937, 668) ; spin
   Sleep(8000)
   MouseClick("primary", 937, 668) ; spin
   Sleep(8000)
   MouseClick("primary", 937, 668) ; spin
   Sleep(8000)
   MouseClick("primary", 937, 668) ; spin
   Sleep(8000)
   MouseClick("primary", 937, 668) ; spin
   Sleep(8000)
   MouseClick("primary", 937, 668) ; spin
   Sleep(8000)
   MouseClick("primary", 1123, 418) ; close window
   Sleep(2000)
   MouseClick("primary", 259, 170) ; click avatar
   Sleep(2000)
   MouseClick("primary", 767, 517) ; fate
   Sleep(6000)
   MouseClick("primary", 1151, 533) ; spin
   Sleep(1000)
   MouseClick("primary", 1067, 587) ; cancel
   ; Sleep(8000)
   Sleep(8000)
   MouseClick("primary", 1338, 327) ; close window
   Sleep(2000)
   MouseClick("primary", 1537, 555) ; map
   Sleep(2000)
   MouseClick("primary", 1234, 576) ; sky_trail
   Sleep(60000)
   MouseClick("primary", 879, 659) ; sky trail select
   Sleep(2000)
   MouseClick("primary", 695, 756) ; claim horns
   Sleep(2000)
   MouseClick("primary", 1303, 317) ; close_window
   Sleep(2000)
EndFunc

Func ___explore_hunt_cards()
   MouseClick("primary", 259, 170) ; click avatar
   Sleep(2000)
   MouseClick("primary", 765, 442) ; explore maps
   Sleep(6000)
   MouseClick("primary", 883, 781) ; Explore
   Sleep(2000)
   MouseClick("primary", 935, 803) ; Explore
   Sleep(2000)
   dim $i
   For $i=1 To 5
   MouseClick("primary", 883, 781) ; Explore
   Sleep(10000)
   MouseClick("primary", 877, 648) ; Confirm
   Sleep(2000)
      Next

   MouseClick("primary", 1403, 293) ; close window
   Sleep(2000)
EndFunc

Func ___login_ME()
   $delay = 1000  ; I set to delay to 1 second. If system/network is fast, you can change it to make logins faster.
   Sleep(2 * $delay)
   Send("^!a") ; opens miniclient with pre-configured shortcut
   Sleep(11.1 * $delay)
   MouseClick("primary", 1006, 597) ; clicks username
   Sleep(2 * $delay)
   Send("^a") ; selects everything in username
   Sleep(2 * $delay)
   Send("player1@gmail.com") ; types username
   Sleep(2 * $delay)
   MouseClick("primary", 1006, 643) ; clicks password
   Sleep(2 * $delay)
   Send("^a") ; selects everything in password
   Sleep(2 * $delay)
   ClipPut("player1password$%^")
   ; Send("player1password{$}{%}{ASC 094}"); another way
   Sleep(1 * $delay)
   $password = ClipGet()
   Sleep(1 * $delay)
   Send("^v") ; types password
   ; Send("+{456}") ; player1 pass special characters :D
   Sleep(2 * $delay)
   MouseClick("primary", 1204, 618) ; clicks Login button
   Sleep(3 * $delay)
   MouseClick("primary", 1204, 453) ; clicks second Login button
   Sleep(30.12 * $delay)
   MouseClick("primary", 1310, 364) ; closes check-in-window
EndFunc

Func ___login_player1()
   $delay = 1000  ; I set to delay to 1 second. If system/network is fast, you can change it to make logins faster.
   Sleep(2 * $delay)
   Send("^!a") ; opens miniclient with pre-configured shortcut
   Sleep(11.1 * $delay)
   MouseClick("primary", 1006, 597) ; clicks username
   Sleep(2 * $delay)
   Send("^a") ; selects everything in username
   Sleep(2 * $delay)
   Send("player1@gmail.com") ; types username
   Sleep(2 * $delay)
   MouseClick("primary", 1006, 643) ; clicks password
   Sleep(2 * $delay)
   Send("^a") ; selects everything in password
   Sleep(2 * $delay)
   ClipPut("password")
   Sleep(1 * $delay)
   $password = ClipGet()
   Sleep(1 * $delay)
   Send("^v") ; types password
   Sleep(2 * $delay)
   MouseClick("primary", 1204, 618) ; clicks Login button
   Sleep(3 * $delay)
   MouseClick("primary", 1204, 453) ; clicks second Login button
   Sleep(30.12 * $delay)
   MouseClick("primary", 1310, 364) ; closes check-in-window
EndFunc

Func ___login_player2()
   $delay = 1000  ; I set to delay to 1 second. If system/network is fast, you can change it to make logins faster.
   Sleep(2 * $delay)
   Send("^!a") ; opens miniclient with pre-configured shortcut
   Sleep(11.1 * $delay)
   MouseClick("primary", 1006, 597) ; clicks username
   Sleep(2 * $delay)
   Send("^a") ; selects everything in username
   Sleep(2 * $delay)
   Send("playr2@gmail.com") ; types username
   Sleep(2 * $delay)
   MouseClick("primary", 1006, 643) ; clicks password
   Sleep(2 * $delay)
   Send("^a") ; selects everything in password
   Sleep(2 * $delay)
   ClipPut("password")
   Sleep(1 * $delay)
   $password = ClipGet()
   Sleep(1 * $delay)
   Send("^v") ; types password
   Sleep(2 * $delay)
   MouseClick("primary", 1204, 618) ; clicks Login button
   Sleep(3 * $delay)
   MouseClick("primary", 1204, 453) ; clicks second Login button
   Sleep(30.12 * $delay)
   MouseClick("primary", 1310, 364) ; closes check-in-window
EndFunc

Func ___login_player3()
   $delay = 1000  ; I set to delay to 1 second. If system/network is fast, you can change it to make logins faster.
   Sleep(2 * $delay)
   Send("^!a") ; opens miniclient with pre-configured shortcut
   Sleep(11.1 * $delay)
   MouseClick("primary", 1006, 597) ; clicks username
   Sleep(2 * $delay)
   Send("^a") ; selects everything in username
   Sleep(2 * $delay)
   Send("player3@gmail.com") ; types username
   Sleep(2 * $delay)
   MouseClick("primary", 1006, 643) ; clicks password
   Sleep(2 * $delay)
   Send("^a") ; selects everything in password
   Sleep(2 * $delay)
   ClipPut("password")
   Sleep(1 * $delay)
   $password = ClipGet()
   Sleep(1 * $delay)
   Send("^v") ; types password
   Sleep(2 * $delay)
   MouseClick("primary", 1204, 618) ; clicks Login button
   Sleep(3 * $delay)
   MouseClick("primary", 1204, 453) ; clicks second Login button
   Sleep(30.12 * $delay)
   MouseClick("primary", 1310, 364) ; closes check-in-window
EndFunc


Func ___login_playerA1()
   $delay = 1000  ; I set to delay to 1 second. If system/network is fast, you can change it to make logins faster.
   Sleep(2 * $delay)
   Send("^!a") ; opens miniclient with pre-configured shortcut
   Sleep(11.1 * $delay)
   MouseClick("primary", 1006, 597) ; clicks username
   Sleep(2 * $delay)
   Send("^a") ; selects everything in username
   Sleep(2 * $delay)
   Send("playrA1password") ; types username
   Sleep(2 * $delay)
   MouseClick("primary", 1006, 643) ; clicks password
   Sleep(2 * $delay)
   Send("^a") ; selects everything in password
   Sleep(2 * $delay)
   ClipPut("password!")
   Sleep(1 * $delay)
   $password = ClipGet()
   Sleep(1 * $delay)
   Send("^v") ; types password
   Sleep(2 * $delay)
   MouseClick("primary", 1204, 618) ; clicks Login button
   Sleep(3 * $delay)
   MouseClick("primary", 1204, 453) ; clicks second Login button
   Sleep(30.12 * $delay)
   MouseClick("primary", 1310, 364) ; closes check-in-window
EndFunc

Func ___login_playerA2()
   $delay = 1000  ; I set to delay to 1 second. If system/network is fast, you can change it to make logins faster.
   Sleep(2 * $delay)
   Send("^!a") ; opens miniclient with pre-configured shortcut
   Sleep(11.1 * $delay)
   MouseClick("primary", 1006, 597) ; clicks username
   Sleep(2 * $delay)
   Send("^a") ; selects everything in username
   Sleep(2 * $delay)
   Send("playrA2@gmail.com") ; types username
   Sleep(2 * $delay)
   MouseClick("primary", 1006, 643) ; clicks password
   Sleep(2 * $delay)
   Send("^a") ; selects everything in password
   Sleep(2 * $delay)
   ClipPut("password")
   Sleep(1 * $delay)
   $password = ClipGet()
   Sleep(1 * $delay)
   Send("^v") ; types password
   Sleep(2 * $delay)
   MouseClick("primary", 1204, 618) ; clicks Login button
   Sleep(3 * $delay)
   MouseClick("primary", 1204, 453) ; clicks second Login button
   Sleep(30.12 * $delay)
   MouseClick("primary", 1310, 364) ; closes check-in-window
EndFunc

Func ___login_playerA3()
   $delay = 1000  ; I set to delay to 1 second. If system/network is fast, you can change it to make logins faster.
   Sleep(2 * $delay)
   Send("^!a") ; opens miniclient with pre-configured shortcut
   Sleep(11.1 * $delay)
   MouseClick("primary", 1006, 597) ; clicks username
   Sleep(2 * $delay)
   Send("^a") ; selects everything in username
   Sleep(2 * $delay)
   Send("playrA2@gmail.com") ; types username
   Sleep(2 * $delay)
   MouseClick("primary", 1006, 643) ; clicks password
   Sleep(2 * $delay)
   Send("^a") ; selects everything in password
   Sleep(2 * $delay)
   ClipPut("playrA1password")
   Sleep(1 * $delay)
   $password = ClipGet()
   Sleep(1 * $delay)
   Send("^v") ; types password
   Sleep(2 * $delay)
   MouseClick("primary", 1204, 618) ; clicks Login button
   Sleep(3 * $delay)
   MouseClick("primary", 1204, 453) ; clicks second Login button
   Sleep(30.12 * $delay)
   MouseClick("primary", 1310, 364) ; closes check-in-window
EndFunc


Func ___login_playerA4()
   $delay = 1000  ; I set to delay to 1 second. If system/network is fast, you can change it to make logins faster.
   Sleep(2 * $delay)
   Send("^!a") ; opens miniclient with pre-configured shortcut
   Sleep(11.1 * $delay)
   MouseClick("primary", 1006, 597) ; clicks username
   Sleep(2 * $delay)
   Send("^a") ; selects everything in username
   Sleep(2 * $delay)
   Send("playrA4@gmail.com") ; types username
   Sleep(2 * $delay)
   MouseClick("primary", 1006, 643) ; clicks password
   Sleep(2 * $delay)
   Send("^a") ; selects everything in password
   Sleep(2 * $delay)
   ClipPut("password")
   Sleep(1 * $delay)
   $password = ClipGet()
   Sleep(1 * $delay)
   Send("^v") ; types password
   Sleep(2 * $delay)
   MouseClick("primary", 1204, 618) ; clicks Login button
   Sleep(3 * $delay)
   MouseClick("primary", 1204, 453) ; clicks second Login button
   Sleep(30.12 * $delay)
   MouseClick("primary", 1310, 364) ; closes check-in-window
EndFunc

Func ___dailies_amethyst_mines()
   $delay = 1000 
   dim $i
   Sleep(1000)
   $am_coord = PixelSearch(919, 130, 1510, 187, 0x4003E5)
   If Not @error Then
   For $i=1 to 3
      ; ToolTip("WBCoordinates are " & $wb_coord[0] & " and " & $wb_coord[1], 500,500)
      MouseClick("primary", $am_coord[0], $am_coord[1], 1, 0) 
	  Sleep(3 * $delay)
	  MouseClick("primary", $am_coord[0], $am_coord[1], 1, 0) 
	  Sleep(3 * $delay)
	  MouseClick("primary", 1601, 484) ; map
	  Sleep(3 * $delay)
	  MouseClick("primary", 1227, 360) ; get
	  Sleep(8 * $delay)
	  MouseClick("primary", 916, 658) ; get
	  Sleep(3 * $delay)
	  MouseClick("primary", 1199, 435) ; ore
	  Sleep(180 * $delay)
	  MouseClick("primary", 1230, 385) ; dump
	  Sleep(200 * $delay)
	  MouseClick("primary", 942, 655) ; dump
	  Sleep(3 * $delay)
	  MouseClick("primary", 1678, 947) ; return to city
	  Sleep(3 * $delay)
	  ; MouseClick("primary", 1204, 618) ; 
	  Next
    Else	  
     ToolTip("AM-Coordinates NOT NOT NOT found", 500,500)
   EndIf
EndFunc

Func ___dailies_amethyst_mines_now()
   $delay = 1000 
      MouseClick("primary", 1566, 553) ; CC map
	  Sleep(3 * $delay)
	  MouseClick("primary", 679, 726), ; location near mines
	  Sleep(3 * $delay)
      MouseClick("primary", 1336, 314) ; close CC map
	  	  Sleep(45 * $delay)   
	  dim $i
   Sleep(1000)
   For $i=1 to 3
      MouseClick("primary", 1566, 553) ;CC map
	  Sleep(3 * $delay)
	  MouseClick("primary", 1228, 608), ; mines
	  Sleep(10 * $delay)
	  MouseClick("primary", 1601, 484) ; map
	  Sleep(3 * $delay)
	  MouseClick("primary", 1227, 360) ; get
	  Sleep(8 * $delay)
	  MouseClick("primary", 916, 658) ; get
	  Sleep(3 * $delay)
	  MouseClick("primary", 1199, 435) ; ore
	  Sleep(180 * $delay)
	  MouseClick("primary", 1230, 385) ; dump
	  Sleep(200 * $delay)
	  MouseClick("primary", 942, 655) ; dump
	  Sleep(3 * $delay)
	  MouseClick("primary", 1678, 947) ; return to city
	  ; Sleep(3 * $delay)
	  ; MouseClick("primary", 1204, 618) ; 
	  Next
EndFunc

Func ___dailies_tanks() ; First time I ran this command my tank was 7th out of 8. lol :D
   Sleep(1000)
   $delay = 1000  ; I set to delay to 1 second. If system/network is fast, you can change it to make logins faster.
   While 1
   Sleep(1 * $delay)
   ; Tooltip('Time is ' & @HOUR & @MIN, 1750, 950)
   If @HOUR = 22  And @MIN = 45 Then
      Tooltip('Time for 2nd Tanks!!', 1750, 1000)
	  ___dailies_Tanks_enter_and_attack()
   ElseIf @HOUR = 11 And @MIN = 15 Then
      Tooltip('Time for 1st Tanks!!', 1750, 1000)
	  ___dailies_Tanks_enter_and_attack()
   Else
      Tooltip('Waiting for Tanks...', 1750, 1000)
	  Sleep(1 * $delay)
	  Tooltip('', 1750, 1000)
   EndIf  
   WEnd
EndFunc

Func ___dailies_Tanks_enter_and_attack()
   $delay = 1000  ; I set to delay to 1 second. If system/network is fast, you can change it to make logins faster.
   Tooltip('')
   $wb_coord = PixelSearch(919, 130, 1510, 187, 0x77777A) ; tanks: 77777A
   If Not @error Then
      ; ToolTip("WBCoordinates are " & $wb_coord[0] & " and " & $wb_coord[1], 500, 500)
      MouseClick("primary", $wb_coord[0], $wb_coord[1], 1, 0) 
	  Sleep(5000)
	        MouseClick("primary", 1142, 697, 1, 0) ; quick fight
       While 1
	   $xrandom = Random(560, 1355)
	   $yrandom = Random(246, 726)
	   MouseClick("primary", $xrandom, $yrandom, 1, 0) 
	   Send("1")
	   Sleep(1000)
	   MouseClick("primary", $xrandom, $yrandom, 1, 0) 
	   Sleep(1000)
	   Send("1")
	   Sleep(1000)
	   WEnd
   Else	  
     ToolTip("WBCoordinates NOT NOT NOT found", 500,500)
   EndIf
   Sleep(5 * $delay)
   MouseClick("primary", 1084, 501) ; Join
   Sleep(5 * $delay)
   $i = 1
   $j = 60 * 20 ; seconds * mins (duration of WB)
   For $i=1 to $j 
    MouseClick("primary", 1398, 198) ; Go closer to the WB
    Tooltip('Approximating WB!!', 1350, 1000)
    Sleep(2.5 * $delay)
	___fight_activate_AFK_button()
   Next
   MouseClick("primary", 967, 602) ; Confirm End of WB
   Sleep($delay)
EndFunc

Func ___dailies_WB()
   Sleep(1000)

   ; $afk_coord = PixelSearch(919, 130, 1510, 187, 0xC33106) 442506 1384,856 to 1525,964
   ; If Not @error Then
      ; ToolTip("AFKCoordinates are " & $afk_coord[0] & " and " & $afk_coord[1], 500, 500)
      ; MouseClick("primary", $afk_coord[0], $afk_coord[1], 1, 0) 
   ; Else	  
     ; ToolTip("AFKCoordinates NOT NOT NOT found", 500,500)
   ; EndIf
   $delay = 1000  ; I set to delay to 1 second. If system/network is fast, you can change it to make logins faster.
   While 1
   Sleep(1 * $delay)
   ; Tooltip('Time is ' & @HOUR & @MIN, 1750, 950)
   If @HOUR = 12  And @MIN = 27 Then
      Tooltip('Time for 1st WB!!', 1750, 1000)
	  ___dailies_WB_enter_and_attack()
   ElseIf @HOUR = 23  And @MIN = 06 Then
      Tooltip('Time for 2nd WB!!', 1750, 1000)
	  ___dailies_WB_enter_and_attack()
   Else
      Tooltip('Waiting for WB...', 1750, 1000)
	  Sleep(1 * $delay)
	  Tooltip('', 1750, 1000)
   EndIf  
   WEnd
EndFunc

Func ___dailies_WB_enter_and_attack()
   $delay = 1000  ; I set to delay to 1 second. If system/network is fast, you can change it to make logins faster.
   Tooltip('')
   $wb_coord = PixelSearch(919, 130, 1510, 187, 0x957F67) ; tanks: 77777A
   If Not @error Then
      ToolTip("WBCoordinates are " & $wb_coord[0] & " and " & $wb_coord[1], 500, 500)
      MouseClick("primary", $wb_coord[0], $wb_coord[1], 1, 0) 
   Else	  
     ToolTip("WBCoordinates NOT NOT NOT found", 500,500)
   EndIf
   Sleep(5 * $delay)
   MouseClick("primary", 1084, 501) ; Join
   Sleep(5 * $delay)
   $i = 1
   $j = 60 * 15 ; seconds * mins (duration of WB)
   For $i=1 to $j 
    MouseClick("primary", 1398, 198) ; Go closer to the WB
    Tooltip('Approximating WB!!', 1350, 1000)
    Sleep(2.5 * $delay)
	___fight_activate_AFK_button()
   Next
   
   MouseClick("primary", 967, 602) ; Confirm End of WB
   Tooltip('Just Clicked Confirm!!', 1350, 1000)
   Sleep($delay)
EndFunc


Func ___dailies_altar()
   Sleep(2000)
   MouseClick("primary", 1614, 155) ; go to old city
   Sleep(5000)
   MouseClick("primary", 983, 454) ; go to altar 
   Sleep(4000)
   MouseClick("primary", 1202, 695) ; go to wisdom
   Sleep(6000)
   MouseClick("primary", 1076, 445) ; go to statue
   Sleep(10000)
   MouseClick("primary", 933, 598) ; go to confirm
   Sleep(122 * 60 * 1000)
   MouseClick("primary", 1678, 946) ; Return to Old City
   Sleep(2000)
   MouseClick("primary", 811, 585) ; Confirm
   Sleep(4000)
   MouseClick("primary", 1620, 154) ; Return to Cloud City
   Sleep(2000)
EndFunc


While 1
  $msg = GUIGetMsg()

  Select
  Case $msg = $dailies_sylph_arena
	 ___dailies_sylph_arena()
	 
  Case $msg = $VIP_wheel
	 ___VIP_wheel()

  Case $msg = $dailies_solo_arena
	 ___dailies_solo_arena()

  Case $msg = $farm_harvest
	 ___farm_harvest()

  Case $msg = $astrals
	 ; ___astrals()
	 ; ___astrals_arrows()
     ; ___astrals_colors()
	 ___astrals_deactivated_5m()
	 
  Case $msg = $astrals_2m
	 ; ___astrals()
	 ; ___astrals_arrows()
     ; ___astrals_colors()
	 ___astrals_deactivated_2m()

	 
  Case $msg = $fighting_mode
	 ___fighting_mode()
	 
  Case $msg = $fighting_mode_3x
	 ___fighting_mode_3x()
	 
  ; Case $msg = $dailies_treasure_maps
	 ; ___dailies_treasure_maps()

  Case $msg = $dailies_does_catacombs
	 ___dailies_does_catacombs()

  Case $msg = $dailies_academy_fate_horns 
     ___dailies_academy_and_fate_and_sky_horns()
	 ___dailies_treasure_maps()
	 ___explore_hunt_cards()
	 
  Case $msg = $dailies_WB
     ___dailies_WB()
	 
  Case $msg = $dailies_altar
	 ___dailies_altar()

  Case $msg = $pseudo_AFK
	 ___pseudo_AFK()
	 
  Case $msg = $wishing_wall
     ___wishing_wall()
	 
  Case $msg = $clicking_mode
     ___clicking_mode()
	 
	   Case $msg = $following_mode
     ___following_mode()
	 
  Case $msg = $god_descent
     ___god_descent()

	
  Case $msg = $login_ME
	 ___login_ME()

  Case $msg = $login_player1
	 ___login_player1()
	 
  Case $msg = $login_player2
	 ___login_player2()
	 
  Case $msg = $login_player3
	 ___login_player3()
	 
  Case $msg = $login_playerA1
	 ___login_playerA1()
	 
  Case $msg = $login_playerA2
	 ___login_playerA2()
	 
  Case $msg = $login_playerA3
	 ___login_playerA3()
	 
  Case $msg = $login_playerA4
	 ___login_playerA4()

  Case $msg = $dailies_amethyst_mines
	 ___dailies_amethyst_mines()
  Case $msg = $dailies_amethyst_mines_now
	 ___dailies_amethyst_mines_now()

  Case $msg = $dailies_group_arena
     ___dailies_arena_group()

  Case $msg = $dailies_tanks
     ___dailies_tanks()
  
  Case $msg = $seq_01_02
	 ___dailies_sylph_arena()
	 ___dailies_solo_arena()
	 
  Case $msg = $seq_01_02_04
	 ___dailies_sylph_arena()
	 ___dailies_solo_arena()
	 ___astrals_deactivated_5m()
	 
  Case $msg = $seq_01_02_08_10
 	 ___dailies_sylph_arena()
	 ___dailies_solo_arena()
	 ___dailies_academy_and_fate_and_sky_horns()
	 ___dailies_treasure_maps()
  	 ___dailies_altar()
	 
  Case $msg = $seq_08_10_07
	 ___dailies_academy_and_fate_and_sky_horns()
	 ___explore_hunt_cards()
	 ___dailies_treasure_maps()
  	 ___dailies_altar()
     ___dailies_does_catacombs()

  Case $msg = $seq_01_02_08_10_07_09
  	 ___dailies_sylph_arena()
	 ___dailies_solo_arena()
	 ___dailies_academy_and_fate_and_sky_horns()
	 ___dailies_treasure_maps()
  	 ___dailies_altar()
     ___dailies_does_catacombs()
     ___dailies_WB()
	 
  Case $msg = $seq_11_13
     ___dailies_amethyst_mines()
	 ___dailies_tanks()
	   
  Case $msg = $timer_a
	 ___timer_a()
	 
	   Case $msg = $test
	 ___dailies_arena_group()
  Case $msg = $GUI_EVENT_CLOSE
      MsgBox(0, "GUI Event", "Bye bye")
      ExitLoop
  EndSelect
WEnd

;While 1
;WEnd
; Ignore the following; ### IMPORTANT ### : For the Commands that require the system clock, like entering World Boss, Tanks or Amethyst Mines, 
;                                          you must set the following Global variable:
; Global $time_difference_with_ME = -1
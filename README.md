Wartune-AutoIt
==============

This is a significantly reduced version for AutoIt/Windows users of the Wartune (https://github.com/cmoang/Wartune-EarlyCloud) automization script that runs in Linux.
It does not have the degree of automization of the GNU/Linux prementioned script but it is sufficient for a lot of daily tasks.
The fighting modes and the action sequences are quite useful ones.
After the last patch some "COMPLETE"d functionality needs minor customizations to work and this is up-to-you.

However, astrals certainly work right now, following the script's guidelines that I quote below:

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


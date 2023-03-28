#NoEnv
;warn
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
#MaxThreadsPerHotkey, 99000000
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
#singleinstance Force

global selection, rnd, randnum
global emojiflag

emojiflag = 1


SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

OnMessage(0x115, "OnScroll") ; WM_VSCROLL
OnMessage(0x114, "OnScroll") ; WM_HSCROLL
;numX = 1
Gui, +Resize +0x300000 ; WS_VSCROLL | WS_HSCROLL
;Loop, %numX%
;    Gui, Add, Edit, R5 W160 vEd%A_Index%, Edit %A_Index%
Gui, Add, text, vTxt,To show this window again press rCtrl + rAlt + H`n`nTo toggle on or off this tool just press Lctrl + Lalt + E.`n`nDefault is on`n`n`n`n`tAfter you type an emoji indicator`n`n`tpress space and it will do the rest for you`n`n`n`nrandom happy facing right emoji: type happy_right`n`nrandom happy facing left emoji: type happy_left`n`nrandom excited facing right emoji:  type ex_right`n`nrandom excited facing left emoji: type ex_left`n`nrandom excited emoji with no arms: type exnoarms_`n`nrandom excited with arms emoji: type exarms_`n`nrandom elaborate excited emoji: type exel_`n`nrandom excited right and left facing emoji: type exlr_`n`nrandom giant excited emoji: type exg_`n`nrandom triangle mouth emoji: type thappy_`n`nrandom upside down mouth emoji: type udhappy_`n`nrandom squiggle mouth emoji: type sqhappy_`n`nrandom	V mouth happy emoji: type vhappy_`n`nrandom	flat mouth happy emoji: type fhappy_`n`nrandom	w mouth happy emoji: type whappy_`n`nrandom smiley mouth happy emoji: type shappy_`n`nrandom no mouth happy emoji: type nhappy_`n`nrandom wide or O mouth emoji: type ohappy_`n`nrandom high energy happy emoji: type hehappy_`n`nrandom grabby hands happy emoji: type ghhappy_`n`nrandom prayer hands happy emoji: type phhappy_`n`nrandomg tongue emoji: type tonguehappy_
Gui, Add, Button,x10 w160 h30 vBut2 gGo, Exit
Gui, Show, W300 H600

Gui, +LastFound
GroupAdd, MyGui, % "ahk_id " . WinExist()

return


>^>!h::
OnMessage(0x115, "OnScroll") ; WM_VSCROLL
OnMessage(0x114, "OnScroll") ; WM_HSCROLL
;numX = 1
Gui, +Resize +0x300000 ; WS_VSCROLL | WS_HSCROLL
;Loop, %numX%
;    Gui, Add, Edit, R5 W160 vEd%A_Index%, Edit %A_Index%
Gui, Add, text, vTxt,To show this window again press rCtrl + rAlt + H`n`nTo toggle on or off this tool just press Lctrl + Lalt + E.`n`nDefault is on`n`n`n`n`tAfter you type an emoji indicator`n`n`tpress space and it will do the rest for you`n`n`n`nrandom happy facing right emoji: type happy_right`n`nrandom happy facing left emoji: type happy_left`n`nrandom excited facing right emoji:  type ex_right`n`nrandom excited facing left emoji: type ex_left`n`nrandom excited emoji with no arms: type exnoarms_`n`nrandom excited with arms emoji: type exarms_`n`nrandom elaborate excited emoji: type exel_`n`nrandom excited right and left facing emoji: type exlr_`n`nrandom giant excited emoji: type exg_`n`nrandom triangle mouth emoji: type thappy_`n`nrandom upside down mouth emoji: type udhappy_`n`nrandom squiggle mouth emoji: type sqhappy_`n`nrandom	V mouth happy emoji: type vhappy_`n`nrandom	flat mouth happy emoji: type fhappy_`n`nrandom	w mouth happy emoji: type whappy_`n`nrandom smiley mouth happy emoji: type shappy_`n`nrandom no mouth happy emoji: type nhappy_`n`nrandom wide or O mouth emoji: type ohappy_`n`nrandom high energy happy emoji: type hehappy_`n`nrandom grabby hands happy emoji: type ghhappy_`n`nrandom prayer hands happy emoji: type phhappy_
Gui, Add, Button,x10 w160 h30 vBut2 gGo, Exit
Gui, Show, W300 H600

Gui, +LastFound
GroupAdd, MyGui, % "ahk_id " . WinExist()

return

>^>!E::
if emojiflag = 1
	{
		emojiflag = 2
		tooltip, Intellimoji Off & EmojiGen On
		settimer, removetooltip, -3000
	}
else
	{
		if emojiflag = 2
			{
				emojiflag = 0
				tooltip, Intellimoji Off & EmojiGen On
				settimer, removetooltip, -3000
			}
		else
			{
				if emojiflag = 0
					{
						emojiflag = 1
						tooltip, Intellimoji On & EmojiGen Off
						settimer, removetooltip, -3000
					}
			}
	}
return

#if emojiflag = 1

::happy_right::
rndhappyright()
send, %selection%
return

::happy_left::
rndhappyleft()
send, %selection%
return

::ex_right::
rndExcitedright()
send, %selection%
return

::ex_left::
rndExcitedleft()
send, %selection%
return

::exnoarms_::
rndNAExcited()
send, %selection%
return

::exarms_::
rndAExcited()
send, %selection%
return

::exel_::
rndELExcited()
send, %selection%
return

::exlr_::
rndlrExcited()
send, %selection%
return

::exg_::
rndgExcited()
send, %selection%
return

::tHappy_::
rndtHappy()
send, %selection%
return

::udhappy_::
rndudHappy()
send, %selection%
return

::sqhappy_::
rndsqHappy()
send, %selection%
return

::vhappy_::
rndvHappy()
send, %selection%
return

::fhappy_::
rndfHappy()
send, %selection%
return

::whappy_::
rndwHappy()
send, %selection%
return

::shappy_::
rndsHappy()
send, %selection%
return

::nhappy_::
rndnHappy()
send, %selection%
return

::ohappy_::
rndoHappy()
send, %selection%
return

::hehappy_::
rndHEHappy()
send, %selection%
return

::ghhappy_::
rndghhappy()
send, %selection%
return

::phappy_::
rndphappy()
send, %selection%
return

::tonguehappy_::
rndtonguehappy()
send, %selection%
return

::var_::
rndvar()
send, %selection%
return

::var_::
rndvar()
send, %selection%
return

::tonguehappy_::
rndtonguehappy()
send, %selection%
return


RemoveTooltip(){
removetooltip:
tooltip, 
return
}

rndhappyright(){
rnd :=
rnd := ["`( ´ ▽ ` `)ﾉ"
		,"`(*^▽^*`)"
		,"`(´∇ﾉ｀*`)ノ"
		,"`(ノ^∇^`)"
		,"⊂`(`(・▽・`)`)⊃"
		,"`(　＾∇＾`)"
		,"`( ﾟ▽ﾟ`)/"
		,"（‐＾▽＾‐）"
		,"`(“⌒∇⌒”`)"
		,"（*´▽｀*）"
		,"`(*＾▽＾`)／"
		,"`(*^▽^*`)"
		,"`(*~▽~`)"
		,"`(*≧▽≦`)"
		,"`(*⌒∇⌒*`)"
		,"`(*⌒▽⌒*`)θ～♪"
		,"`(/^▽^`)/"
		,"`(^∇^`)"
		,"`(＾▽＾`)"
		,"`(￣▽￣`)ノ"
		,"`(≧∇≦`)/"
		,"（=´∇｀=）"
		,"（⌒▽⌒ゞ"
		,"`(ノ*゜▽゜*`)"
		,"ー`( ´ ▽ ` `)ﾉ"
		,"o`(〃＾▽＾〃`)o"
		,"๑꒪▿꒪`)*"
		,"ﾍ`(=￣∇￣`)ﾉ"
		,"φ`(*⌒▽⌒`)ﾉ"
		,"〔´∇｀〕"
		,"≡`(*′▽``)っ"
		,"`(｡´∀｀`)ﾉ"
		,"`(　´∀｀`)"
		,"`(・∀・`)"
		,"`(´∀``)"
		,"`(°∀°`)b"
		,"`(●´∀｀●`)"
		,"`(✌ﾟ∀ﾟ`)☞"
		,"*`(*´∀｀*`)☆"
		,"`( ´ ∀ ` `)"
		,"`(ノ・∀・`)ノ"
		,"`(ﾉ `･∀･`)ﾉﾞ"
		,"Ψ`(　ﾟ∀ﾟ`)Ψ"
		,"`(*´･∀･`)"
		,"（★￣∀￣★）"
		,"`(m*´∀``)m"
		,"=͟͟͞͞`( ✌°∀° `)☛"
		,"∩`( ´∀` `)∩"	
		,"`(∩´∀``)∩"
		,"⊂`( ・ ̫・`)⊃"
		,"`(*′☉.̫☉`)"
		,"`(๑★ .̫ ★๑`) "
		,"`(⌯⚈ै〰̇⚈ै`) "
		,"`( ‾ʖ̫‾`)"
		,"`(̂ ˃̥̥̥ ˑ̫ ˂̥̥̥ `)̂ "
		,"੭व`(๑• .̫ •๑`) ✧"
		,"`(*ꅔ ˙̫̮ ꅔ*`)"
		,"ᗧʻ̑ ˙̫ ʻ̑ᗤ"	
		,"`( •́ .̫ •̀ `)"
		,"`(*´・ｖ・`)"
		,"`(*＾v＾*`) "
		,"♡✧`( ु•⌄• `)"
		,"`(′ʘ⌄ʘ‵`)"
		,"`( ^_^`)／"
		,"`(^ _ ^`)/"
		,"（` ￣ー￣）"
		,"`(` ∩_∩`)"
		,"`(` ∩▂∩`)"
		,"`(` ☆^ー^☆`)"
		,"（ｖ＾＿＾）ｖ"
		,"`(` =^-ω-^=`)" 
		,"`(=^･ω･^`)y＝"
		,"`( ﾉ^ω^`)ﾉﾟ "
		,"（＿´ω｀）"
		,"∩`( ・ω・`)∩"
		,"ｏ（Ｕ・ω・）⊃"
		,"V`(=^･ω･^=`)v"
		,"川´･ω･`川"
		,"`(` *´꒳`*`)"
		,"`(` *^ω^*`)"
		,"`(` ❁´ω`❁`)"
		,"`( ´-ω-``)" 
		,"ଘ`(੭ˊ꒳ˋ`)੭✧"
		,"`(`　^ω^）"
		,"（`　＾ω＾）"
		,"`(✌’ω’`)✌"
		,"✾`(〜 ☌ω☌`)〜✾"
		,"`(•̀ᴗ•́`)و ̑̑"
		,"`(◍•ᴗ•◍`)❤"
		,"`(✿´‿``)"
		,"`(❀◦‿◦`)"
		,"`(•ˇ‿ˇ•`)-→ "
		,"♪`(๑ᴖ◡ᴖ๑`)♪"
		,"`(๑•͈ᴗ•͈`) "
		,"₍՞◌′ᵕ‵ू◌₎♡"
		,"`(੭ˊ͈ ꒵ˋ͈`)੭̸*✧⁺˚"
		,"꒰⁎ᵉ̷͈ ॣ꒵ ॢᵉ̷͈⁎꒱໊"
		,"`(⑅˘͈ ᵕ ˘͈ `)"
		,":: ೖ`(⑅σ̑ᴗσ̑`)ೖ ::"
		,"三⊂`( っ⌒◡|"
		,"`(人 •͈ᴗ•͈`)"
		,"`(*˙︶˙*`)☆*°"
		,"`(୨୧ ❛ᴗ❛`)✧"
		,"`(人 •͈ᴗ•͈✿ฺ`) "
		,"`(⋓ื◡⋓ื`)"
		,"（。≖ิ‿≖ิ）"
		,"ˆ̭̭͙`(๑ ົ̅ ͔৹͜ ົ̅๑`)"
		,"`(*☌ᴗ☌`)｡*ﾟ"
		,"◟`(๑•͈ᴗ•͈`)◞"
		,"`(⋈･◡･`)✰"
		,"`( ்ૂ౧͜ ்`) "
		,"`( °̥̥̥̥̥̥̥̥◡͐°̥̥̥̥̥̥̥̥`)"
		,"`(` ´͈ ◡` ``͈ `)"
		,"`,､’``(`(`(`;ŏᴗŏ`)`)`)`,､’``’``,"
		,"`(✿◕ ‿◕ฺ`)ノ`)`)`。`₀`*゜" 
		,"-`(๑`☆`‿ `☆#`)>"
		,"`(๑❝᷀ົཽ ⁐̵ ❝᷀ົཽ`)`✧"]
	Random, randNUM, 1, rnd.Length()
selection = % rnd[randNUM]
return
}
																
rndhappyleft(){

rnd :=
rnd := ["(゜▽゜`;)"
		,"`(ヾ(´▽｀;)ゝ"
		,"(ᅌᴗᅌ* )ゝ"
		,"♫꒰･‿･๑꒱"
		,"o (^‿^✿)"
		,"(ؑᵒᵕؑ̇ᵒ)◞✧"
		,"(ㆁᴗㆁ✿)"
		,"ల(*´= ◡ =｀*)"
		,"(๑`･ᴗ･´๑) "
		,"(︶.̮︶✽)"
		,"(≖ᴗ≖๑)"
		,"ෆ⃛(ට◡ට⁎)ფ"
		,"৵( °͜ °৵)"
		,"( ‾̮‿͂‾̮ ꐦ)"
		,"✩*॰ ( ¨̮ ) ॰*✩"
		,"ヽ(;^o^ヽ)" 	
		,"╰(✧∇✧╰)" 	
		,"٩(◕ั ∀◕ั๑٩)"
		,"٩(•౪•٩)三"	
		,"₍•͟ ͜ • ₎" 	
		,"q(^-^q)"
		,"＼（・c＿・●）ゞ" 	
		,"۹⌤_⌤۹" 	
		,"ヾ(０∀０*★)ﾟ*･.｡"
		,"ヾ│・ェ・ヾ│" 	
		,"╰(・∇・╰)" 	
		,"。（＞ω＜。）"
		,"ヾ(･ω･｡)ｼ"	
		,"ヾ(･д･ヾ)"
		,"ヽ(´∀｀ヽ)"
		,"ヽ(´ω｀○)ﾉ.+ﾟ*｡:ﾟ+"
		,"ヾ(≧∇≦*)ゝ"
		,"`((≧.≦*)"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}


rndexcitedright(){

rnd :=
rnd := ["(ﾉ･ｪ･)ﾉ"
,"(/^▽^)/"
,"(ﾉ´ヮ´)ﾉ*:･ﾟ✧"
,"(ﾉ≧∀≦)ﾉ"
,"(ﾉ^ヮ^)ﾉ*:・ﾟ✧"
,"(/ ‘з’)/"
,"(۶ꈨຶꎁꈨຶ )۶ʸᵉᵃʰᵎ"
,"⁽(◍˃̵͈̑ᴗ˂̵͈̑)⁽"
,"(╯✧∇✧)╯"
,"Σ(ノ°▽°)ノ"
,"( ƅ°ਉ°)ƅ "
,"ヽ(　･∀･)ﾉ"
,"˭̡̞(◞⁎˃ᆺ˂)◞*✰ 	"
,"(p^-^)p"
,"(ﾉ^∇^)ﾉﾟ"
,"ヽ(〃･ω･)ﾉ"
,"(۶* ‘ꆚ’)۶”"
,"（。＞ω＜）。"
,"（ﾉ｡≧◇≦）ﾉ"
,"ヾ(｡･ω･)ｼ"
,"(ﾉ･д･)ﾉ"
,".+:｡(ﾉ･ω･)ﾉﾞ"
,"Σ(*ﾉ´>ω<｡`)ﾉ"
,"ヾ（〃＾∇＾）ﾉ♪"
,".ﾟ☆(ノё∀ё)ノ☆ﾟ."
,"⌒ﾟ(❀>◞౪◟<)ﾟ⌒"
,"ヽ/❀o ل͜ o\ﾉ"
,"⤴︎ ε=ε=(ง ˃̶͈̀ᗨ˂̶͈́)۶ ⤴︎"
,"୧༼✿ ͡◕ д ◕͡ ༽୨ "]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndexcitedleft(){

rnd :=
rnd := ["ヽ(;^o^ヽ)"
,"╰(✧∇✧╰)"
,"٩(◕ั ∀◕ั๑٩)"
,"٩(•౪•٩)三"
,"₍•͟ ͜ • ₎"
,"q(^-^q)"
,"＼（・c＿・●）ゞ"
,"۹⌤_⌤۹ 	"
,"ヾ(０∀０*★)ﾟ*･.｡"
,"ヾ│・ェ・ヾ│"
,"╰(・∇・╰)"
,"。（＞ω＜。）"
,"ヾ(･ω･｡)ｼ"
,"ヾ(･д･ヾ)"
,"ヽ(´∀｀ヽ)"
,"ヽ(´ω｀○)ﾉ.+ﾟ*｡:ﾟ+"
,"	ヾ(≧∇≦*)ゝ"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndNAexcited(){

rnd :=
rnd := ["(*>ω<)"
,"(*≧▽≦)"
,"(๑>ᴗ<๑)"
,"(˃̶ω˂̶ૃ)"
,"(٭°̧̧̧ω°̧̧̧٭)"
,"⸍⚙̥ꇴ⚙̥⸌"
,"(⊙ꇴ⊙)"
,"(*≧∀≦*)"
,"(≧∇≦*)"
,"（๑✧∀✧๑）"
,"(★^O^★)"
,"(ᗒᗨᗕ)"
,"(⌯꒪͒ꌂ̇꒪͒)"
,"(≧∀≦)"
,"(⌬̀⌄⌬́)"
,"₊·*◟(˶╹̆ꇴ╹̆˵)◜‧*･"
,"(ᗒᏬᗕ)ˡ̵˖✮⃛"
,"(ؑ⸍⸍ᵕؑ̇⸍⸍)◞✧"
,"✮⃛(◞´•௰•`)✮⃛"
,"(ؑᵒᵕؑ̇ᵒ)◞✧"
,"₍₍◝(●˙꒳˙●)◜₎₎"
,"(´｡✪ω✪｡｀)"
,"｡;+*(★`∪´☆)*+;｡"
,"(๑˃̶͈̀o˂̶͈́๑)"
,"≧ω≦"
,"(✧꒪◞౪◟꒪)"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndAexcited(){

rnd :=
rnd := ["٩(^ᴗ^)۶"
,"٩(๑꒦ິȏ꒦ິ๑)۶"
,"٩(●˙▿˙●)۶…⋆ฺ"
,"٩(๑ơలơ)۶♡"
,"୧(﹒︠ᴗ﹒︡)୨"
,"٩(ó｡ò۶♡)))♬"
,"ε٩(ºωº)۶з"
,"٩(๑òωó๑)۶"
,"٩(๑^ꇴ^)۶"
,"٩(๑˃́ꇴ˂̀๑)۶"
,"٩(๑∂▿∂๑)۶♡"
,"٩(♡ε♡)۶"
,"۹(ÒہÓ)۶"
,"٩(⚙ȏ⚙)۶"
,"٩(✿∂‿∂✿)۶"
,"୧⍢⃝୨"
,"⁽⁽٩(๑˃̶͈̀ᗨ˂̶͈́)۶⁾⁾"
,"(୨৩́ಐ৩̀੧)"
,"٩(;ʘ¿ʘ;)۶"
,"=。:.ﾟ٩(๑>ω<๑)۶:.｡+ﾟ"
,"٩(˘◊˘)۶"
,"٩(*ゝڡゝ๑)۶♥"
,"٩(｡θᗨθ｡)۶"
,"٩(⚙ᴗ⚙)۶"
,"୧(˃◡ु˂)୨"
,"۹(˒௰˓)۶"
,"٩(●ᴗ●)۶"
,"♡〜٩(˃́▿˂̀)۶〜♡"
,"٩(º౪º๑)۶"
,"=。:.ﾟ٩(๑>◊<๑)۶:.｡+ﾟ"
,"٩(๑❛ᴗ❛๑)۶"
,"୧|͡ᵔ﹏͡ᵔ|୨"
,"୧〳”ʘ̆ᗜʘ̆”〵୨"
,"٩(๑❛ʚ❛๑)۶"
,"٩(இ⌓இ๑)۶"
,"୧|”•̀ل͜•́”|୨"
,"୧(,＾〰＾,)୨"
,"٩|ര‿ര|╯"
,"୧〳＾౪＾〵୨"
,"୧(˵°~°˵)୨"
,"୧།☉౪☉།୨"
,"୧༼ヘᗜヘ༽୨"
,"❣࿌ིྀ྇°˚࿅୧(॑ധ॑)୨࿅˳०࿌ིྀ྇"
,"٩(◦`꒳´◦)۶"
,"٩(๑˃̌ۿ˂̌๑)۶"
,"٩(θ‿θ)۶"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndELexcited(){

rnd :=
rnd := ["˚₊*(ˊॢo̶̶̷̤◡ुo̴̶̷̤ˋॢ)*₊˚⁎"
,"•ू(ᵒ̴̶̷ωᵒ̴̶̷*•ू)​)੭ु⁾"
,"(❛ัॢᵕ❛ัॢ)✩*ೃ.⋆"
,"␟␏(ɲ˃ˈ̫̮˂ɳ)␟␏ෆ"
,"ෆ⃛(ٛ⌯ॢ˃ɪ˂ٛ⌯ॢ)"
,"˚‧*♡ॢ˃̶̤̀◡˂̶̤́♡ॢ*‧˚"
,"⁺✧.(˃̶ॣ⌣ॣ˂̶∗̀)ɞ⁾"
,"₊*ˈ˚·(๑˃̶̡̢̥ॣಐॣ˂̶̡̢̥๑)·˚ˈ*₊"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndLRexcited(){

rnd :=
rnd := ["\(●⁰౪⁰●\)(//●⁰౪⁰●)//"
		,"(´ ↂ⃙⃙⃚ꇴↂ⃙⃙⃚ `≡´ ↂ⃙⃙⃚ꇴↂ⃙⃙⃚ `)"
		,"✩⃛∗·⁽⁽◞(˃◟̵◞̵˂⁎=͟͟͞͞ ⁎˃◟̵◞̵˂)◟⁾⁾·∗✩⃛"
		,"o(^O^*=*^O^)o"
		,"✧(๑✪д✪)۶ㅂ٩(✪д✪๑)✧"
		,"⁽⁽◞(꒪ͦᴗ̵̍꒪ͦ=͟͟͞͞ ꒪ͦᴗ̵̍꒪ͦ)◟⁾⁾"
		,"ヾ(ﾟ∀ﾟ○)ﾂ三ヾ(●ﾟ∀ﾟ)ﾉ"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndgexcited(){

rnd :=
rnd := ["☆*･゜ﾟ･*(^O^)/*･゜ﾟ･*☆"
		,"☆*:.｡.o(≧▽≦)o.｡.:*☆"
		,"*✲ﾟ*｡✧٩(･ิᴗ･ิ๑)۶*✲ﾟ*｡✧"
		,"｡.ﾟ+:((ヾ(｡･ω･)ｼ)).:ﾟ+｡"
		,"＼（　●　⌒　∇　⌒　●　）／"
		,"☆ミヾ(∇≦((ヾ(≧∇≦)〃))≧∇)ノ彡☆"
		,"ﾟ･✿ヾ╲(｡◕‿◕｡)╱✿･ﾟ"
		,"＼＼(゜ロ＼＼)Ξ(／／ロ゜)／／"
		,"o͡͡͡͡͡͡͡͡͡͡͡͡͡͡╮(^ਊ^)╭o͡͡͡͡͡͡͡͡͡͡͡͡͡͡"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}


rndtHappy(){

rnd :=
rnd := ["(´▽`)ﾉ"
		,"(*^▽^*)"
		,"(´∇ﾉ｀*)ノ"
		,"(ノ^∇^)"
		,"⊂((・▽・))⊃"
		,"(　＾∇＾)"
		,"(ﾟ▽ﾟ)/"
		,"（‐＾▽＾‐）"
		,"(“⌒∇⌒”)"
		,"（*´▽｀*）"
		,"(*＾▽＾)／"
		,"(*^▽^*)"
		,"(*~▽~)"
		,"(*≧▽≦)"
		,"(*⌒∇⌒*)"
		,"(*⌒▽⌒*)θ～♪"
		,"(/^▽^)/"
		,"(^∇^)"
		,"(＾▽＾)"
		,"(￣▽￣)ノ"
		,"(￣▽+￣*)"
		,"(゜▽゜;)"
		,"（=´∇｀=）"
		,"(＝⌒▽⌒＝)"
		,"(≡^∇^≡)"
		,"(≧∇≦)/"
		,"(⌒▽⌒)☆"
		,"（⌒▽⌒ゞ"
		,"(●⌒∇⌒●)"
		,"(❁´▽`❁)*✲ﾟ*"
		,"(ノ*゜▽゜*)"
		,"°˖✧◝(⁰▿⁰)◜✧˖°"
		,"~ヾ(＾∇＾)"
		,"∩(︶▽︶)∩"
		,"≧(´▽｀)≦"
		,"ー(´▽`)ﾉ"
		,"ヾ(´▽｀;)ゝ"
		,"ヾ(＾∇＾)"
		,"d=(´▽｀)=b"
		,"o(〃＾▽＾〃)o"
		,"o(^▽^)o"
		,"Ｏ(≧∇≦)Ｏ"
		,"o(≧∇≦o)"
		,"(๑꒪▿꒪)*"
		,"(⁎⚈᷀᷁▿⚈᷀᷁⁎)"
		,"(≧∇≦*)"
		,"(=^▽^=)"
		,"o(*^▽^*)o"
		,"೭੧(❛▿❛✿)੭೨"
		,"☜(⌒▽⌒)☞"
		,"☜(˚▽˚)☞"
		,"ɾ⚈▿⚈ɹ"
		,"ﾍ(=￣∇￣)ﾉ"
		,"φ(*⌒▽⌒)ﾉ"
		,"(*･▽･*)"
		,"(☆▽☆)"
		,"≡(*′▽`)っ"
		,"」(￣▽￣」)"
		,"(〃⌒∇⌒)"
		,"〔´∇｀〕"
		,"(゜▼゜＊）"
		,"໒(͡ᵔ▾͡ᵔ)७"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndUDhappy(){

rnd :=
rnd := ["(｡´∀｀)ﾉ"
		,"(　´∀｀)"
		,"(・∀・)"
		,"(´∀`)"
		,"(°∀°)b"
		,"(●´∀｀●)"
		,"(✌ﾟ∀ﾟ)☞"
		,"*(*´∀｀*)☆"
		,"( ´ ∀ ` )"
		,"ヽ(･∀･)ﾉ"
		,"(。≖ˇ∀ˇ≖。)"
		,"((o(´∀｀)o))"
		,"o(´∀｀*)"
		,"(ﾟ∀ﾟ　)"
		,"(*≧∀≦*)"
		,"(*ﾟ∀ﾟ*)"
		,"ヾ(*´∀｀*)ﾉ"
		,"(o^∀^o)"
		,"ヾ(^ิ∀^ิ)"
		,"o(｀・∀・´)○"
		,"(ᗒᗊᗕ)"
		,"(ノ・∀・)ノ"
		,"o((◕ฺ∀ ◕✿ฺ))o"
		,"～̎̎٩(⌒͡∀⌒͡⌯̊)̥̊◦"
		,"(´･∀･`)"
		,"∩(´∀｀∩)"
		,"(ﾉ `･∀･)ﾉﾞ"
		,"( ﾟ∀ ﾟ)"
		,"Ψ(ﾟ∀ﾟ )Ψ"
		,"Ψ(　ﾟ∀ﾟ)Ψ"
		,"Ψ(ﾟ∀ﾟ)Ψ"
		,"d┃･∀･┃b"
		,"(*´･∀･)"
		,"(･∀･○)"
		,"【°∀°】"
		,"（★￣∀￣★）"
		,"(m*´∀`)m"
		,"=͟͟͞͞( ✌°∀° )☛"
		,"∩(´∀`∩)"
		,"∩( ´∀` )∩"
		,"(∩´∀`)∩"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndsqhappy(){

rnd :=
rnd := ["⊂( ・ ̫・)⊃"
		,"(*′☉.̫☉)"
		,"((ඏ.̫ඏ*))"
		,"⁽͑˙ˆ˙̫ˆ˙⁾̉"
		,"(๑★ .̫ ★๑)"
		,"‧⁺◟( ᵒ̴̶̷̥́ ·̫ ᵒ̴̶̷̣̥̀ )"
		,"(^～^)"
		,"(⌯⚈ै〰̇⚈ै)"
		,"( ‾ʖ̫‾)"
		,"(̂ ˃̥̥̥ ˑ̫ ˂̥̥̥ )̂"
		,"⁽ˇ́˙̫ˇ̀˵⁾"
		,"( ᵕ̤ ‧̫̮ ᵕ̤ )"
		,"⁽͑΅ ˙̫ ῭⁾̉"
		,"(⋆ʾ ˙̫̮ ʿ⋆)"
		,"੭व(๑• .̫ •๑) ✧"
		,"(*′☉.̫☉)"
		,"⁽͑˙՞˙̫՞˙⁾̉"
		,"(´•.̫ • ⋈)"
		,"( ❝̆ ·̫̮ ❝̆ )✧"
		,"((⚆·̫⚆‧̣̥̇ ))"
		,"(⚭⃚⃙̛·̫⚭⃚⃙̛)"
		,"(*ꅔ ˙̫̮ ꅔ*)"
		,"₍꒵꒱ꂶ ˙̫ ꂶ꒰꒵₎⌕"
		,"(Θ̎Ͻ̫̥Θ̎)"
		,"⚈้̤͡ ˌ̫̮ ⚈้̤͡"
		,"ᗧʻ̑ ˙̫ ʻ̑ᗤ"
		,"( •́ .̫ •̀ )"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndvhappy(){

rnd :=
rnd := ["(*´・ｖ・)"
		,"(*＾v＾*)"
		,"（＾ｖ＾）"
		,"(▰˘v˘▰)"
		,"(n˘v˘•)¬"
		,"(´｡･v･｡｀)"
		,"♡✧( ु•⌄• )"
		,"( •⌄• ू )✧"
		,"(⌯⌅⌄⌅)"
		,"῍̩̞(∗ɞ⌄ɞ∗)◞"
		,"(′ʘ⌄ʘ‵)"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndfhappy(){

rnd :=
rnd := ["( ^_^)／"
		,"(^ _ ^)/"
		,"（＾_＾）"
		,"(^-^*)/"
		,"（￣ー￣）"
		,"(∩_∩)"
		,"(∩▂∩)"
		,"(☆^ー^☆)"
		,"（ｖ＾＿＾）ｖ"
		,"p(*＾-＾*)q"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndwhappy(){

rnd :=
rnd := ["(^・ω・^ )"
		,"(=^-ω-^=)"
		,"(=^･ω･^)y＝"
		,"( ﾉ^ω^)ﾉﾟ"
		,"（＿´ω｀）"
		,"(｡･ω･｡)"
		,"(︶ω︶)"
		,"(｀・ω・´)”"
		,"(´ω｀★)"
		,"(＾ω＾)"
		,"(◐ω◑ )"
		,"∩( ・ω・)∩"
		,"ヾ(｡･ω･｡)"
		,"୧( ॑ധ ॑)୨"
		,"d(=^･ω･^=)b"
		,"ｏ（Ｕ・ω・）⊃"
		,"V(=^･ω･^=)v"
		,"川´･ω･`川"
		,"(*´꒳`*)"
		,"(*^ω^*)"
		,"(❁´ω`❁)"
		,"(´-ω-`)"
		,"ଘ(੭ˊ꒳ˋ)੭✧"
		,"(´へωへ`*)"
		,"(　^ω^）"
		,"（　＾ω＾）"
		,"(✌’ω’)✌"
		,"✌(‘ω’)✌"
		,"✌(‘ω’✌)"
		,"٩(ↁωↁ❀)"
		,"˚✧₊⁎( ˘ω˘ )⁎⁺˳✧༚"
		,"(◜௰◝)"
		,"✾(〜 ☌ω☌)〜✾"
		,"(´∩ω∩｀)"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndshappy(){

rnd :=
rnd := ["(¬‿¬)"
		,"( ⋂‿⋂’)"
		,"(-‿◦☀)"
		,"(*‿*✿)"
		,"(•‿•)"
		,"(•̀ᴗ•́)و ̑̑"
		,"(─‿─)"
		,"(◍•ᴗ•◍)❤"
		,"(◑‿◐)"
		,"(✿´‿`)"
		,"(❀◦‿◦)"
		,"(❁´‿`❁)*✲ﾟ*"
		,"(ᅌᴗᅌ* )"
		,"(•ˇ‿ˇ•)-→"
		,"♫꒰･‿･๑꒱"
		,"o (^‿^✿)"
		,"(◑‿◐✿)"
		,"(◡‿◡✿)"
		,"(✿◠‿◠)"
		,"(◕‿◕✿)"
		,"(๑>ᴗ<๑)"
		,"(๑✧◡✧๑) "
		,"(๑>◡<๑)"
		,"♪(๑ᴖ◡ᴖ๑)♪"
		,"(｡◝‿◜｡)"
		,"(๑^ں^๑)"
		,"( ்ͦˏ౦͜ˎ ்ͦ)"
		,"(ෆ ͒•∘̬• ͒)◞"
		,"(•⚗৺⚗•)"
		,"(ට˓˳̮ට๑)"
		,"(๑•͈ᴗ•͈)"
		,"₍՞◌′ᵕ‵ू◌₎♡"
		,"(੭ˊ͈ ꒵ˋ͈)੭̸*✧⁺˚"
		,"꒰⁎ᵉ̷͈ ॣ꒵ ॢᵉ̷͈⁎꒱໊"
		,"(⑅˘͈ ᵕ ˘͈ )"
		,":: ೖ(⑅σ̑ᴗσ̑)ೖ ::"
		,"三⊂( っ⌒◡|"
		,"(ؑᵒᵕؑ̇ᵒ)◞✧"
		,"꒰•́ॢ৺•̀ॢ๑͒꒱"
		,"(｡≍ฺ‿ฺ≍ฺ)"
		,"(⚈᷁‿᷇⚈᷁)"
		,"(๑◕ฺ‿ฺ◕ฺ๑)"
		,"⁽(◍˃̵͈̑ᴗ˂̵͈̑)"
		,"(人 •͈ᴗ•͈)"
		,"(*˙︶˙*)☆*°"
		,"(୨୧ ❛ᴗ❛)✧"
		,"( ¨̮ )"
		,"(＊◕ᴗ◕＊)"
		,"(*´╰╯`๓)♬"
		,"(∗❛ัᴗ❛ั∗)"
		,"⊂(◉‿◉)つ"
		,"(人 •͈ᴗ•͈✿ฺ)"
		,"( ･ᴗ･̥̥̥ )"
		,"(≖ ‿ ≖)"
		,"(๑˃͈꒵˂͈๑)"
		,"(⑅‾̥̥̥̥̥̑⌣‾̥̥̥̥̥̑⑅)"
		,"(>̯-̮<̯)"
		,"(⁎⚈᷀᷁ᴗ⚈᷀᷁⁎)	"
		,"(⁰ੌ⌣⁰ੌ๑)"
		,"(⚈᷀᷁ᴗ⚈᷀᷁⁎)"
		,"✌(-‿-)✌"
		,"(⋓ื◡⋓ื)"
		,"（。≖ิ‿≖ิ）"
		,"(๑￫‿ฺ￩๑)"
		,"ˆ̭̭͙(๑ ົ̅ ͔৹͜ ົ̅๑)"
		,"(∗ᵕ̴᷄◡ᵕ̴᷅∗)՞"
		,"( •॒◞ ͜◟•॒ )"
		,"(ㆁᴗㆁ✿)"
		,"(๑’◡͐’๑)"
		,"(⌒⃝৺⌒⃝)"
		,"{´◕ ◡ ◕｀}"
		,"(ට ̥̆ ට) "
		,"⁽͑˙˚̀ᵕ˚́˙⁾̉ "
		,"(*☌ᴗ☌)｡*ﾟ"
		,"( ´◡‿ゝ◡`)"
		,"(　◠ ◡ ◠　) "
		,"ల(*´= ◡ =｀*)"
		,"₊⚛⁺(ؔ꒨◡ؔ꒨)ᵌ"
		,"( ்ͧˏ౦͜ˎ ்ͧ)"
		,"꒰⁎❛⃘ੌ ᵕ ❛⃘ੌ⁎꒱"
		,"( ́⋅⃘ˬ̇⋅⃘ ̀ˋ)"
		,"(. ົ̅ ੭͜ ົ̅.)"
		,"( ᵘ ᵕ ᵘ ⁎)"
		,"( ᵘ ᵕ ᵘ ⁎) "
		,"(๑`･ᴗ･´๑)"
		,"❀.(*´◡`*)❀."
		,"◟(๑•͈ᴗ•͈)◞"
		,"₍ఠ ͜ఠ₎"
		,"(•‾̑⌣‾̑•)"
		,"(∗ᒩ͜∗) "
		,"( ்ૂ౧͜ ்)"
		,"(⋈･◡･)✰"
		,"(⁝̥ꑦᴗꑦ)"
		,"(︶.̮︶✽)"
		,"(❍❛‿❛❍❋)"
		,"₍•͈ᴗ•͈₎"
		,"(ͼ ̥̆ ͽ)"
		,"(≖ᴗ≖๑)"
		,"( °̥̥̥̥̥̥̥̥◡͐°̥̥̥̥̥̥̥̥)"
		,"( ´͈ ◡ `͈ )"
		,"( ๑॔•◡ુ•๑॓)"
		,"(๑･`◡´･๑)"
		,",､’`(((;ŏᴗŏ))),､’`’`,､"
		,"ෆ⃛(ට◡ට⁎)ფ"
		,"੬ჴ❛‿❛ჴჱ̒̒"
		,"৵( °͜ °৵)"
		,"(✿◕ ‿◕ฺ)ノ))。₀: *゜"
		,"☆(❁‿❁)☆"
		,"◃┆◉◡◉┆▷"
		,"q(❂‿❂)p"
		,"☆(◒‿◒)☆"
		,"⊂◉‿◉つ"
		,"(｡✿‿✿｡)"
		,"໒( ﹒ ͜ر ﹒ )७"
		,"( ‾̮‿͂‾̮ ꐦ)"
		,"(˘･ᴗ･˘)"
		,"(ό‿ὸ)ﾉ"
		,"ヾ|๑　╹　◡　╹　๑|ﾉ"
		,"(((;◔ᴗ◔;)))"
		,"໒( ” ¤ ‿ ¤ ” )७"
		,"✩*॰ ( ¨̮ ) ॰*✩"
		,"(✧≖‿ゝ≖)"
		,"☝( ◠‿◠ )☝"
		,"(*´◡｀​*)"
		,"(๑◔‿◔๑)"
		,"(◕‿‿◕｡)"
		,"(✿╹◡╹)"
		,"(◕ฺ ◡ฺ ◕ฺ)"
		,"(✿ฺ◡ฺ‿ฺ◡ฺ)"
		,"（◞‿◟）"
		,"(o˘◡˘o)"
		,"ꉂꉂ ( ˆᴗˆ )"
		,"₊·(ϱ॔⌄ᵕ๑॓)‧*"
		,"-(๑☆‿ ☆#)ᕗ"
		,"╭ (oㅇ‿ o#)ᕗ "
		,"／人◕ ‿‿ ◕人＼"
		,"(o◞ิ‿◟ิo)"
		,"(•_ ͜_•)"
		,"(´>‸⚲͜<)"
		,"(๑❝᷀ົཽ ⁐̵ ❝᷀ົཽ)✧"
		,"(• ̥̆ •) "]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndnhappy(){

rnd :=
rnd := ["(o^^)o"
		,"ヾ(^^ゞ"
		,"o(^^o)"
		,"(o^^o)♪"
		,"(o⌒．⌒o)"
		,"(=^･^=)"
		,"。(⌒.⌒。)"
		,"(ﾉ^.^)ﾉﾟ"
		,"(“⌒.⌒”)"
		,"(≧.≦*)"
		,"(*^^*)"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndohappy(){

rnd :=
rnd := ["(ꐦ ´͈ ᗨ `͈ )"
		,"( ´͈ ॢꇴ  `͈)੭ु"
		,"（ꉺᗜꉺ）"
		,"(･ัᗜ･ั)و"
		,"✌✌(➲ ᗜ ➲)✌✌"
		,"✌✌(˵¯̴͒ꇴ¯̴͒˵)✌✌"
		,"( ˙̣̣̣ↂ⃙⃙⃚᷄ᗨↂ⃙⃙⃚ )ꋧ"
		,"(ᗒᗨᗕ)"
		,"(๑’ᗢ’๑)ฅ"
		,"(✤❛⃘ͫ Ʉ̮ ❛⃘ͫ)"
		,"┌༼ ˵ ° ᗜ ° ˵ ༽┐"
		,"ˉ̶̡̭̭ ( ´͈ ᗨ `͈ ) ˉ̶̡̭̭"
		,"(□ᗜ□)"
		,"(:D)┼─┤"
		,"ヽ〳 ՞ ᗜ ՞ 〵ง"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndhehappy(){

rnd :=
rnd := ["(★^O^★)"
		,"(((o(*ﾟ▽ﾟ*)o))) "
		,"	＼（＠￣∇￣＠）／"
		,"ヽ(；▽；)ノ"
		,"ヾ(@^▽^@)ノ"
		,"o((*^▽^*))o"
		,"Ｏ(≧▽≦)Ｏ"
		,"– =͟͟͞͞ ( ꒪౪꒪)ฅ✧"
		,"“ヽ(´▽｀)ノ”"
		,"(((＼（＠v＠）／)))"
		,"(ﾉ´ヮ´)ﾉ*:･ﾟ✧"
		,"(ノ^_^)ノ"
		,"(ノ＞▽＜。)ノ"
		,"(ﾉﾟ▽ﾟ)ﾉ"
		,"〈( ^.^)ノ"
		,"＼(*T▽T*)／"
		,"＼（＾▽＾）／"
		,"＼(^ω^＼)"
		,"＼（Ｔ∇Ｔ）／"
		,"☆*:.｡. o(≧▽≦)o .｡.:*☆"
		,"ヽ(;^o^ヽ)"
		,"ヽ(；▽；)ノ"
		,"ヽ(‘ ∇‘ )ノ"
		,"ヾ(＠† ▽ †＠）ノ"
		,"ヾ(＠^∇^＠)ノ"
		,"ヾ(＠^▽^＠)ﾉ"
		,"ヾ（＠＾▽＾＠）ノ"
		,"ヾ(@゜∇゜@)ノ"
		,"ヾ(＠゜▽゜＠）ノ"
		,"ヾ(@°▽°@)ノ"
		,"ヾ(＠⌒ー⌒＠)ノ"
		,"ヽ(*≧ω≦)ﾉ"
		,"ヽ(*・ω・)ﾉ"
		,"ヽ(*⌒∇⌒*)ﾉ "
		,"ヾ(＾-＾)ノ"
		,"ヽ(^。^)丿"
		,"ヽ(＾Д＾)ﾉ"
		,"ヽ(=^･ω･^=)丿"
		,"٩(^ᴗ^)۶"
		,"о(ж＞▽＜)ｙ ☆"
		,"ヘ(^_^ヘ)"
		,"ヘ(^o^ヘ)"
		,"へ(゜∇、°)へ"
		,"＼＼\ ٩(`(エ)´ )و //／／"
		,"(／・ω・)／"
		,"୧(﹒︠ᴗ﹒︡)୨"
		,"(☝ ՞ਊ ՞)☝"
		,"⸂⸂⸜(രᴗര๑)⸝⸃⸃"
		,"˛˛ƪ(⌾⃝ ౪ ⌾⃝ ๑)و ̉ ̉"
		,"ヾ(๑╹ヮ╹๑)ﾉ”"
		,"ヾ(๑╹ꇴ◠๑)ﾉ”"
		,"ヾ(๑ㆁᗜㆁ๑)ﾉ”"
		,"⁽⁽◞(꒪ͦᴗ̵̍꒪ͦ=͟͟͞͞ ꒪ͦᴗ̵̍꒪ͦ)◟⁾⁾"
		,"ヾ(Ő∀Ő๑)ﾉ"
		,"(੭ु｡╹▿╹｡)੭ु⁾⁾"
		,"₍₍ (ง Ŏ౪Ŏ)ว ⁾⁾"
		,"(ง •ૅ౪•᷄)ว"
		,"₍₍⁽⁽(ી(^‿ゝ^)ʃ)₎₎⁾⁾"
		,"(´ ↂ⃙⃙⃚ꇴↂ⃙⃙⃚ `≡´ ↂ⃙⃙⃚ꇴↂ⃙⃙⃚ `)"
		,"(ﾉ^_^)ﾉ"
		,"◦°˚\(*❛‿❛)/˚°◦"
		,"⌒°(ᴖ◡ᴖ)°⌒"
		,"⌒(o＾▽＾o)ノﾟ"
		,"｡:.ﾟヽ(´∀`｡)ﾉﾟ.:｡+ﾟ"
		,"ﾟ+｡:.ﾟヽ(*´∀`)ﾉﾟ.:｡+ﾟ"
		,"ヾ(○･ω･)ﾉ☆"
		,"୧( “̮ )୨✧ "
		,"✌(๑˃̶͈̀◡˂̶͈́๑)✌"
		,"✩◝(◍⌣̎◍)◜✩"
		,"∕∕∕ ∕ ∕∕˛₍˴◅ˋ)੭✧∕∕∕ ∕∕"
		,"(◜▿‾ ≡‾▿◝)"
		,"୧[ ˵ ͡ᵔ ͜ʟ ͡ᵔ ˵ ]୨"
		,"ヾ( ~▽~)ﾂ"
		,"(ﾉ*´▽)ﾉ"
		,"ヽ(^◇^*)/"
		,"ヾ（ ❀◕◡◕ฺฺ ）ノ"
		,"ヽ（◕◡◕❀ฺ ）ノ"
		,"ヾ(^▽^ヾ)"
		,"୧〳 ＾ ౪ ＾ 〵୨"
		," =͟͟͞͞٩(๑☉ᴗ☉)੭ु⁾⁾"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndGHhappy(){

rnd :=
rnd := ["ლ(⌒▽⌒ლ)"
		,"(ღ˘⌣˘ღ)"
		,"(ღ˘⌣˘ღ) ♫･*:.｡. .｡.:*･"
		,"(ॢ˘⌣˘ ॢ⑅)"
		,"꒰ღ˘‿˘ற꒱❤⃛"
		,"ლ(́◉◞౪◟◉‵ლ)"
		,"ლ(๏‿๏ ◝ლ)"
		,"(•ૢꆤ ˙̫̮ ꆤ•ૢ)"
		,"(๑ᵕॢ૩ᵕॢ)*౨˚ൗ"
		,"*.⋆( ˘̴͈́ ॢ꒵ॢ ˘̴͈̀ )⋆.* "
		,"῍̻̩✧(´͈ ૢᐜ `͈ૢ)˖῍̻̩"
		,"( ᵕ́ૢ‧̮ᵕ̀ૢ)‧̊·*"
		,"⁎⁙꒰⋓(༶∙ .̌ ∙༶ૢ)⋓꒱⁕⁛"
		,"꒰⌗´͈ ᵕ ॣ`͈⌗꒱৩"
		,"(•́ ॣ·̫ ॣ•̀,)՞"
		,"(*๓´╰╯`๓)"
		,"(ू• ౪•ू ) "
		,"ლ(╹◡╹ლ)"
		,"ლ(o◡oლ)"
		,"(ღ′◡‵)"
		,"(*ฅ́˘ฅ̀*)"
		,"(⋆ॢʾ ˙̫̮ ʿ⋆ॢ) "
		,"*(Ü*ૢ)*"
		,"✿(′ॢᵕ‵*ॢ)"
		,"˓˓(๑ॢ₎ӧ ͜ ӧ₍๑ॢ)˒˒"
		,"(❝᷀ੌ ˙̮ ❝᷀ੌॢ●)✧"
		,"ღවꇳවღ"
		,"(•ૢ⚈͒⌄⚈͒•ૢ)·"
		,"◌̊ˈ*(⁰̶̶̷ ˙̮ ⁰̴̷̷๑ॢ॓).°◌̊"
		,"✧.*ධ̎ૢ ˒̫̮ ධ̎ૢ*·✧"
		,"ಞ(ల˙◡˙ల)ಞ"
		,"(ٛ⁎꒪̕ॢ ˙̫ ꒪ٛ̕ॢ⁎)"
		,"(◖̑◡ॢ◖̑⋆)⁎❀∗"
		,"( ღ’ᴗ’ღ )"
		,"(⋆ૢʾ ˙̫̮ ʿ⋆ૢ) "
		,"✧.*(⁎❝͋॔ ˙̫ॢ ॢ❝͋॓⁎)*·✧"
		,"(ლ◖◡◗ ლ)"
		,"ლↂ‿‿ↂლ"
		,"୨୧ •ॢ◡-ॢ⑅•ॢ◡-ॢ*｡."
		,"(๑ॢ❛ꆚ❛๑ॢ)"
		,"ლ(- ◡ -ლ)"
		,"( ꒵͒◡ु꒵ ॣ)"
		,"( •ॢᴗ•ॢ⋈)"
		,"( •ॢ◡-ॢ)"
		,"ლ(❛◡❛✿)ლ"
		,"ლ(･ิω･ิლ)"
		,"ლ(＾ω＾ლ)"
		,"ლ(・∀・ )ლ"
		,"ლ（´∀`ლ）"
		,"(*ुම̤ᴗම̤*ू)꒭꒱꒹꒟✩⃛"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndphappy(){

rnd :=
rnd := ["(´⌣`ʃƪ)"
		,"(´▽`ʃƪ)"
		,"(º̩̩́⌣º̩̩̀ʃƪ)"
		,"(ʃƪ・∀・)"
		,"(＾ω＾ʃƪ)"
		,"(ʃƪ˘･ᴗ･˘)"
		,"(ʃƪ˘⌣˘)"
		,"(ʃƪ¬‿¬)"
		,"(＾▽＾ʃƪ)"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndtonguehappy(){

rnd :=
rnd := ["(∩❛ڡ❛∩)"
		,"(っ˘ڡ˘ς)"
		,"(⁎⁍̴ڡ⁍̴⁎)"
		,"(≧ڡ≦*)"
		,"(*＾ڡ＾*)"
		,"(∩ڡ∩)"
		,"（〜^ڡ^)〜"
		,"o((*^ڡ^*))o"
		,"(・ڡ・)"
		,"(　＾ڡ＾)"
		,"(*⌒ڡ⌒*)"
		,"∩(︶ڡ︶)∩"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndhdhappy(){

rnd :=
rnd := ["〜(^∇^〜）"
		,"〜(￣▽￣〜) "
		,"。(⌒∇⌒。)"
		,"（〜^∇^)〜"
		,"(〜￣▽￣)〜"
		,"(。⌒∇⌒)。"
		,"((┌|o^▽^o|┘))♪"
		,"(~‾⌣‾)~"
		,"(~￣▽￣)~"
		,"(~˘▾˘)~"
		,"~(⁰▿⁰)~"
		,"~(‾⌣‾~)"
		,"~(˘▾˘)~"
		,"~(˘▾˘~)"
		,"┌(˘⌣˘)ʃ"
		,"ƪ(˘⌣˘)ʃ"
		,"ƪ(˘⌣˘)┐"
		,"♪((└|o^▽^o|┐))"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

rndvar(){

rnd :=
rnd := [""]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}

GuiSize:
    UpdateScrollBars(A_Gui, A_GuiWidth, A_GuiHeight)
return

go:
GuiEscape:
GuiClose:
    gui, destroy
return

#IfWinActive ahk_group MyGui
WheelUp::
WheelDown::
+WheelUp::
+WheelDown::
    ; SB_LINEDOWN=1, SB_LINEUP=0, WM_HSCROLL=0x114, WM_VSCROLL=0x115
    OnScroll(InStr(A_ThisHotkey,"Down") ? 1 : 0, 0, GetKeyState("Shift") ? 0x114 : 0x115, WinExist())
return
#IfWinActive

UpdateScrollBars(GuiNum, GuiWidth, GuiHeight)
{
    static SIF_RANGE=0x1, SIF_PAGE=0x2, SIF_DISABLENOSCROLL=0x8, SB_HORZ=0, SB_VERT=1
   
    Gui, %GuiNum%:Default
    Gui, +LastFound
   
    ; Calculate scrolling area.
    Left := Top := 9999
    Right := Bottom := 0
    WinGet, ControlList, ControlList
    Loop, Parse, ControlList, `n
    {
        GuiControlGet, c, Pos, %A_LoopField%
        if (cX < Left)
            Left := cX
        if (cY < Top)
            Top := cY
        if (cX + cW > Right)
            Right := cX + cW
        if (cY + cH > Bottom)
            Bottom := cY + cH
    }
    Left -= 8
    Top -= 8
    Right += 8
    Bottom += 8
    ScrollWidth := Right-Left
    ScrollHeight := Bottom-Top
   
    ; Initialize SCROLLINFO.
    VarSetCapacity(si, 28, 0)
    NumPut(28, si) ; cbSize
    NumPut(SIF_RANGE | SIF_PAGE, si, 4) ; fMask
   
    ; Update horizontal scroll bar.
    NumPut(ScrollWidth, si, 12) ; nMax
    NumPut(GuiWidth, si, 16) ; nPage
    DllCall("SetScrollInfo", "uint", WinExist(), "uint", SB_HORZ, "uint", &si, "int", 1)
   
    ; Update vertical scroll bar.
;     NumPut(SIF_RANGE | SIF_PAGE | SIF_DISABLENOSCROLL, si, 4) ; fMask
    NumPut(ScrollHeight, si, 12) ; nMax
    NumPut(GuiHeight, si, 16) ; nPage
    DllCall("SetScrollInfo", "uint", WinExist(), "uint", SB_VERT, "uint", &si, "int", 1)
   
    if (Left < 0 && Right < GuiWidth)
        x := Abs(Left) > GuiWidth-Right ? GuiWidth-Right : Abs(Left)
    if (Top < 0 && Bottom < GuiHeight)
        y := Abs(Top) > GuiHeight-Bottom ? GuiHeight-Bottom : Abs(Top)
    if (x || y)
        DllCall("ScrollWindow", "uint", WinExist(), "int", x, "int", y, "uint", 0, "uint", 0)
}

OnScroll(wParam, lParam, msg, hwnd)
{
    static SIF_ALL=0x17, SCROLL_STEP=10
   
    bar := msg=0x115 ; SB_HORZ=0, SB_VERT=1
   
    VarSetCapacity(si, 28, 0)
    NumPut(28, si) ; cbSize
    NumPut(SIF_ALL, si, 4) ; fMask
    if !DllCall("GetScrollInfo", "uint", hwnd, "int", bar, "uint", &si)
        return
   
    VarSetCapacity(rect, 16)
    DllCall("GetClientRect", "uint", hwnd, "uint", &rect)
   
    new_pos := NumGet(si, 20) ; nPos
   
    action := wParam & 0xFFFF
    if action = 0 ; SB_LINEUP
        new_pos -= SCROLL_STEP
    else if action = 1 ; SB_LINEDOWN
        new_pos += SCROLL_STEP
    else if action = 2 ; SB_PAGEUP
        new_pos -= NumGet(rect, 12, "int") - SCROLL_STEP
    else if action = 3 ; SB_PAGEDOWN
        new_pos += NumGet(rect, 12, "int") - SCROLL_STEP
    else if (action = 5 || action = 4) ; SB_THUMBTRACK || SB_THUMBPOSITION
        new_pos := wParam>>16
    else if action = 6 ; SB_TOP
        new_pos := NumGet(si, 8, "int") ; nMin
    else if action = 7 ; SB_BOTTOM
        new_pos := NumGet(si, 12, "int") ; nMax
    else
        return
   
    min := NumGet(si, 8, "int") ; nMin
    max := NumGet(si, 12, "int") - NumGet(si, 16) ; nMax-nPage
    new_pos := new_pos > max ? max : new_pos
    new_pos := new_pos < min ? min : new_pos
   
    old_pos := NumGet(si, 20, "int") ; nPos
   
    x := y := 0
    if bar = 0 ; SB_HORZ
        x := old_pos-new_pos
    else
        y := old_pos-new_pos
    ; Scroll contents of window and invalidate uncovered area.
    DllCall("ScrollWindow", "uint", hwnd, "int", x, "int", y, "uint", 0, "uint", 0)
   
    ; Update scroll bar.
    NumPut(new_pos, si, 20, "int") ; nPos
    DllCall("SetScrollInfo", "uint", hwnd, "int", bar, "uint", &si, "int", 1)
}
#if
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
;-------------------------------------------------------------------------------------------------------------------	
;-------------------------------------------------------------------------------------------------------------------	
;------------------------------------------      emoji       generator      ----------------------------------------	
;-------------------------------------------------------------------------------------------------------------------	
;-------------------------------------------------------------------------------------------------------------------
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
#if emojiflag = 2

~<^C::
tooltip
yeet:
changed =
sleep 100
send, ^c
flag = 0
skip = 1
clipboard = %clipboard%
if errorlevel
{
try(28)
}
changed = %clipboard%
sendemoji()
return

!c::
flag = 1
GetSelectedText()
if errorlevel
{
	try(27)
	}
else
	{

		clipboard = %tmp%
		}
			returnfail:
			if FAIL = 1
		{
			TOOLTIP, FAIL
			SetTimer, RemoveToolTip, -5000
		return
	}
return:
return

emojihr()
{


	rndhappyright2()

	a1  := "`:happy_right`:"i just 

	
;-----dictionary

    sd := ComObjCreate("Scripting.Dictionary")
    sd.item(a1) := selection
	
;-----replace with	

	array :=	CSobj()
	array[a1] := selection

	

sleep 400
changed := str_(clipboard,array)
clipboard = %changed%
	clipwait, 400
	sleep, 100	
}

emojihl()
{


	rndhappyleft2()	
	

	a2  := "`:happy_left`:"
	
;-----dictionary

    sd := ComObjCreate("Scripting.Dictionary")
    sd.item(a2) := selection

	
;-----replace with	

	array :=	CSobj()
	array[a2] := selection

	

sleep 400
changed := str_(clipboard,array)
clipboard = %changed%
	clipwait, 400
	sleep, 100
}


rndhappyright2(){
Sleep 100
rnd := ["`( ´ ▽ ` `)ﾉ"
		,"`(*^▽^*`)"
		,"`(´∇ﾉ｀*`)ノ"
		,"`(ノ^∇^`)"
		,"⊂`(`(・▽・`)`)⊃"
		,"`(　＾∇＾`)"
		,"`( ﾟ▽ﾟ`)/"
		,"（‐＾▽＾‐）"
		,"`(“⌒∇⌒”`)"
		,"（*´▽｀*）"
		,"`(*＾▽＾`)／"
		,"`(*^▽^*`)"
		,"`(*~▽~`)"
		,"`(*≧▽≦`)"
		,"`(*⌒∇⌒*`)"
		,"`(*⌒▽⌒*`)θ～♪"
		,"`(/^▽^`)/"
		,"`(^∇^`)"
		,"`(＾▽＾`)"
		,"`(￣▽￣`)ノ"
		,"`(≧∇≦`)/"
		,"（=´∇｀=）"
		,"（⌒▽⌒ゞ"
		,"`(ノ*゜▽゜*`)"
		,"ー`( ´ ▽ ` `)ﾉ"
		,"o`(〃＾▽＾〃`)o"
		,"๑꒪▿꒪`)*"
		,"ﾍ`(=￣∇￣`)ﾉ"
		,"φ`(*⌒▽⌒`)ﾉ"
		,"〔´∇｀〕"
		,"≡`(*′▽``)っ"
		,"`(｡´∀｀`)ﾉ"
		,"`(　´∀｀`)"
		,"`(・∀・`)"
		,"`(´∀``)"
		,"`(°∀°`)b"
		,"`(●´∀｀●`)"
		,"`(✌ﾟ∀ﾟ`)☞"
		,"*`(*´∀｀*`)☆"
		,"`( ´ ∀ ` `)"
		,"`(ノ・∀・`)ノ"
		,"`(ﾉ `･∀･`)ﾉﾞ"
		,"Ψ`(　ﾟ∀ﾟ`)Ψ"
		,"`(*´･∀･`)"
		,"（★￣∀￣★）"
		,"`(m*´∀``)m"
		,"=͟͟͞͞`( ✌°∀° `)☛"
		,"∩`( ´∀` `)∩"	
		,"`(∩´∀``)∩"
		,"⊂`( ・ ̫・`)⊃"
		,"`(*′☉.̫☉`)"
		,"`(๑★ .̫ ★๑`) "
		,"`(⌯⚈ै〰̇⚈ै`) "
		,"`( ‾ʖ̫‾`)"
		,"`(̂ ˃̥̥̥ ˑ̫ ˂̥̥̥ `)̂ "
		,"੭व`(๑• .̫ •๑`) ✧"
		,"`(*ꅔ ˙̫̮ ꅔ*`)"
		,"ᗧʻ̑ ˙̫ ʻ̑ᗤ"	
		,"`( •́ .̫ •̀ `)"
		,"`(*´・ｖ・`)"
		,"`(*＾v＾*`) "
		,"♡✧`( ु•⌄• `)"
		,"`(′ʘ⌄ʘ‵`)"
		,"`( ^_^`)／"
		,"`(^ _ ^`)/"
		,"（` ￣ー￣）"
		,"`(` ∩_∩`)"
		,"`(` ∩▂∩`)"
		,"`(` ☆^ー^☆`)"
		,"（ｖ＾＿＾）ｖ"
		,"`(` =^-ω-^=`)" 
		,"`(=^･ω･^`)y＝"
		,"`( ﾉ^ω^`)ﾉﾟ "
		,"（＿´ω｀）"
		,"∩`( ・ω・`)∩"
		,"ｏ（Ｕ・ω・）⊃"
		,"V`(=^･ω･^=`)v"
		,"川´･ω･`川"
		,"`(` *´꒳`*`)"
		,"`(` *^ω^*`)"
		,"`(` ❁´ω`❁`)"
		,"`( ´-ω-``)" 
		,"ଘ`(੭ˊ꒳ˋ`)੭✧"
		,"`(`　^ω^）"
		,"（`　＾ω＾）"
		,"`(✌’ω’`)✌"
		,"✾`(〜 ☌ω☌`)〜✾"
		,"`(•̀ᴗ•́`)و ̑̑"
		,"`(◍•ᴗ•◍`)❤"
		,"`(✿´‿``)"
		,"`(❀◦‿◦`)"
		,"`(•ˇ‿ˇ•`)-→ "
		,"♪`(๑ᴖ◡ᴖ๑`)♪"
		,"`(๑•͈ᴗ•͈`) "
		,"₍՞◌′ᵕ‵ू◌₎♡"
		,"`(੭ˊ͈ ꒵ˋ͈`)੭̸*✧⁺˚"
		,"꒰⁎ᵉ̷͈ ॣ꒵ ॢᵉ̷͈⁎꒱໊"
		,"`(⑅˘͈ ᵕ ˘͈ `)"
		,":: ೖ`(⑅σ̑ᴗσ̑`)ೖ ::"
		,"三⊂`( っ⌒◡|"
		,"`(人 •͈ᴗ•͈`)"
		,"`(*˙︶˙*`)☆*°"
		,"`(୨୧ ❛ᴗ❛`)✧"
		,"`(人 •͈ᴗ•͈✿ฺ`) "
		,"`(⋓ื◡⋓ื`)"
		,"（。≖ิ‿≖ิ）"
		,"ˆ̭̭͙`(๑ ົ̅ ͔৹͜ ົ̅๑`)"
		,"`(*☌ᴗ☌`)｡*ﾟ"
		,"◟`(๑•͈ᴗ•͈`)◞"
		,"`(⋈･◡･`)✰"
		,"`( ்ૂ౧͜ ்`) "
		,"`( °̥̥̥̥̥̥̥̥◡͐°̥̥̥̥̥̥̥̥`)"
		,"`(` ´͈ ◡` ``͈ `)"
		,"`,､’``(`(`(`;ŏᴗŏ`)`)`)`,､’``’``,"
		,"`(✿◕ ‿◕ฺ`)ノ`)`)`。`₀`*゜" 
		,"-`(๑`☆`‿ `☆#`)>"
		,"`(๑❝᷀ົཽ ⁐̵ ❝᷀ົཽ`)`✧"]
	Random, randNUM, 1, rnd.Length()
selection = % rnd[randNUM]
}

rndhappyleft2(){

rnd :=
rnd := ["(゜▽゜`;)"
		,"`(ヾ(´▽｀;)ゝ"
		,"(ᅌᴗᅌ* )ゝ"
		,"♫꒰･‿･๑꒱"
		,"o (^‿^✿)"
		,"(ؑᵒᵕؑ̇ᵒ)◞✧"
		,"(ㆁᴗㆁ✿)"
		,"ల(*´= ◡ =｀*)"
		,"(๑`･ᴗ･´๑) "
		,"(︶.̮︶✽)"
		,"(≖ᴗ≖๑)"
		,"ෆ⃛(ට◡ට⁎)ფ"
		,"৵( °͜ °৵)"
		,"( ‾̮‿͂‾̮ ꐦ)"
		,"✩*॰ ( ¨̮ ) ॰*✩"
		,"ヽ(;^o^ヽ)" 	
		,"╰(✧∇✧╰)" 	
		,"٩(◕ั ∀◕ั๑٩)"
		,"٩(•౪•٩)三"	
		,"₍•͟ ͜ • ₎" 	
		,"q(^-^q)"
		,"＼（・c＿・●）ゞ" 	
		,"۹⌤_⌤۹" 	
		,"ヾ(０∀０*★)ﾟ*･.｡"
		,"ヾ│・ェ・ヾ│" 	
		,"╰(・∇・╰)" 	
		,"。（＞ω＜。）"
		,"ヾ(･ω･｡)ｼ"	
		,"ヾ(･д･ヾ)"
		,"ヽ(´∀｀ヽ)"
		,"ヽ(´ω｀○)ﾉ.+ﾟ*｡:ﾟ+"
		,"ヾ(≧∇≦*)ゝ"
		,"`((≧.≦*)"]
	Random, randNUM, 1, rnd.Length()
	selection = % rnd[randNUM]

}


GetSelectedText() {

			tooltip, Please wait while your text is changed`.`n`nల(*´= ◡ =｀*)`WHILE THIS MESSAGE IS HERE IT IS RECOMMENDED YOU DONT TOUCH ANYTHING(๑❝᷀ົཽ ⁐̵ ❝᷀ົཽ)✧`n`n`nThis will paste your generated text to any active text field`.`n`tThis may take a minutedepending on the length of your text`.

	tmp = %ClipboardAll% ; save clipboard
	Clipboard =  ; clear clipboard
	sleep, 50
	Sendinput ^c ; simulate Ctrl+C (=selection in clipboard)
	ClipWait, 0, 1 ; wait until clipboard contains data
	EL := ErrorLevel ; Zero if clipboard not empty, else one
	if (EL = 0) 
		{
				
				loop:
				
					if instr(clipboard, "`:happy_right`:")
					{
					loop = 1
					emojihr()
					sleep, 100
					;if ErrorLevel
					;	{
					;		gosub, returnFail
					;		return
					;	}
					}
					if instr(clipboard, "`:happy_left`:")
						{
					loop = 1
					emojihl()
					sleep, 100
					;	if ErrorLevel
					;	{
					;		msgbox, Couldnt Accomplish `(emojihl`(`)`),,,,
					;		FAIL=1
					;		gosub, returnFail
					}
				if !instr(clipboard, "`:happy_right`:") & !instr(clipboard, "`:happy_left`:")
					{
						sendemoji()

					}
				else
					{
					gosub, loop
					}
					return
				}

	;send:
	;sendemoji()
	;		;if ErrorLevel
	;		;{
	;		;	msgbox, Couldnt Accomplish `(sendemoji`(`)`),,,,
	;		;	FAIL=1
	;		;	gosub, returnFail
	;		;}
	;		}
	;else
	;	{
	;		clipboard = %tmp%
	;		FAIL=1
	;		gosub, returnFail
		
}

sendemoji()
{

	clipboard = %changed%
	ClipWait, 0, 1 ; wait until clipboard contains data
	EL := ErrorLevel ; Zero if clipboard not empty, else one
	if EL = 0
		{
		ToolTip, %Changed% copied, timed tooltip
		send, ^v
		sleep, 400
		SetTimer, RemoveToolTip, -5000
		}
	
}
;else
;{
;clipboard = %tmp%
;msgbox, Couldnt Accomplish `(FUNCTION sendemoji`(`)`) LINE 306
;			FAIL=1
;			gosub, returnFail
;}


CSobj() {

   static base := object("_NewEnum","__NewEnum", "Next","__Next", "__Set","__Setter", "__Get","__Getter")
   return, object("__sd_obj__", ComObjCreate("Scripting.Dictionary"), "base", base)
}


__Getter(self, key) {
   return, self.__sd_obj__.item(key)
}

__Setter(self, key, value) {
   self.__sd_obj__.item(key) := value
   return, false
}

__NewEnum(self) {
   return, self
}

__Next(self, ByRef key = "", ByRef val = "") {
static Enum
if not Enum
   Enum := self.__sd_obj__._NewEnum

if Not Enum[key], val:=self[key]
   return, Enum:=false
return, true
}

str_(data,array){
   for k,v in array
   StringReplace, data,data,%k%,%v%,
return data
}

SubStrCt(Haystack, String)
{
    RegExReplace(Haystack, String, String, ChrCt)
    Return ChrCt
}

try(LineNumber)
	{
	try 
		{ 
			inst := ComObjCreate(spacecadet) ; <---- Put here 
		} 
	catch e
		{
			tooltip, % "Exception thrown!`n`nwhat: " e.what "`nfile: " e.file 
			. "`nline: " LineNumber "`nmessage: " e.message "`nextra: " e.extra
			settimer, removetooltip, -4000
			
		}
}
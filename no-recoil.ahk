; Apex Legends No Recoil Script v2.0 - 17042019
; use ahkhider.
#NoEnv
SetWorkingDir %A_ScriptDir%
#SingleInstance force
#MaxThreadsBuffer on
SetTitleMatchMode, 2
#IfWinActive r5apex.exe
SetBatchLines -1						;removes default 10ms delay between lines
#MaxHotkeysPerInterval 99000000asdasd
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1

if not A_IsAdmin
    {
       Run *RunAs "%A_ScriptFullPath%"  
       ExitApp
    }

GoSub, IniRead
Hotkey,%key_pause%,lblPause
if (script_version="narrator")
Selected:="Say"
else if (script_version="tooltip")
Selected:="Tooltip"

;SAPI.voice := SAPI.GetVoices().Item(1) 	; uncomment this line to get female voice.
gun1:=0
, gun2:=0
, sec:=0
, FreeMode:=0
, firstrun:=0
, sauto:=0
, key_shoot:="LButton"
, key_zoom:="RButton"
, modifier:=2.50/sens
, SAPI := ComObjCreate("SAPI.SpVoice")
, SAPI.rate := rate
, SAPI.volume := volume
loop {
sleep, 10
if GetKeyState(key_freemode)
{
if freemode = 1
{
freemode:=0
, manualdisable:=1
%Selected%("auto off")
sleep 150
}
else
{
freemode:=1
, manualdisable:=0
%Selected%("auto on")
sleep 150
}
}
if GetKeyState(key_1)
{
disable:=true
, disable2:=true
, sec:=0
if gun1 = 1
{
if firstrun = 1
{
m16a4:=false
, m416:=false
, uzi:=false
, akm:=false
, scar:=false
, ump:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
}
if	mhemlock = 1
{
if manualdisable = 0
{
FreeMode:=1
}
m16a4:=true
, m416:=false
, uzi:=false
, akm:=false
, scar:=false
, ump:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("m hemlock")
}
else if	mr301 = 1
{
FreeMode:=0
, uzi:=true
, m416:=false
, akm:=false
, scar:=false
, ump:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("m r301")
}
else if  mr45 = 1
{
FreeMode:=0
, ump:=true
, m416:=false
, uzi:=false
, akm:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("m r45")
}
else if mwingman = 1
{
if manualdisable = 0
{
FreeMode:=1
}
akm:=true
, m416:=false
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("m wingman")
}
else if mvector = 1
{
FreeMode:=0
, akm:=false
, m416:=false
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=true
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("m r99")
}
else if mspitfire = 1
{
FreeMode:=0
, akm:=false
, m416:=true
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("m spitfire")
}
else if mscout = 1
{
akm:=false
, m416:=false
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=true
, Tgun:=false
, peacekeeper:=false
%Selected%("m scout")
if manualdisable = 0
{
FreeMode:=1
}
}
else if mflatline = 1
{
FreeMode:=0
, akm:=false
, m416:=false
, uzi:=false
, ump:=false
, scar:=true
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("m flatline")
}
else if m2020 = 1
{
akm:=false
, m416:=false
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=true
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("m p2020")
if manualdisable = 0
{
FreeMode:=1
}
}
else if malt = 1
{
FreeMode:=0
, akm:=false
, m416:=false
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=true
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("m alternator")
}

else if mhavoc = 1
{
FreeMode:=0
, akm:=false
, m416:=false
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=true
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("m havoc")
}

else if mpeacekeeper = 1
{
FreeMode:=0
, akm:=false
, m416:=false
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=true
%Selected%("m peacekeeper")
}
else
{
disable2:=false
}		   
}
} 
if GetKeyState(key_2)
{
sec:=1
, disable:=true
, disable2:=true
{
if firstrun = 1
{
FreeMode:=0
, m16a4:=false
, m416:=false
, uzi:=false
, akm:=false
, scar:=false
, ump:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
}
if shemlock = 1
{
if manualdisable = 0
{
FreeMode:=1
}
m16a4:=true
, m416:=false
, uzi:=false
, akm:=false
, scar:=false
, ump:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("s hemlock")
}
else if	sr301 = 1
{
uzi:=true
, m416:=false
, akm:=false
, scar:=false
, ump:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("s r301")
if manualdisable = 0
{
FreeMode:=1
}
}
else if  sr45 = 1
{
FreeMode:=0
, ump:=true
, m416:=false
, uzi:=false
, akm:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("s r45")
}
else if swingman = 1
{
akm:=true
, m416:=false
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("s wingman")
if manualdisable = 0
{
FreeMode:=1
}
}
else if svector = 1
{
FreeMode:=0
, akm:=false
, m416:=false
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=true
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("s r99")
}
else if sspitfire = 1
{
FreeMode:=0
, akm:=false
, m416:=true
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("s spitfire")
}
else if sscout = 1
{
akm:=false
, m416:=false
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=true
, Tgun:=false
, peacekeeper:=false
%Selected%("s scout")
if manualdisable = 0
{
FreeMode:=1
}
}
else if sflatline = 1
{
FreeMode:=0
, akm:=false
, m416:=false
, uzi:=false
, ump:=false
, scar:=true
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("s flatline")
}
else if s2020 = 1
{
akm:=false
, m416:=false
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=true
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("s p2020")
if manualdisable = 0
{
FreeMode:=1
}
}
else if salt = 1
{
FreeMode:=0
, akm:=false
, m416:=false
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=true
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("s alternator")
}

else if shavoc = 1
{
FreeMode:=0
, akm:=false
, m416:=false
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=true
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
%Selected%("s havoc")
}

else if speacekeeper = 1
{
FreeMode:=0
, akm:=false
, m416:=false
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=true
%Selected%("s peacekeeper")
}
else
{
disable2:=false
}			   
}
}
if GetKeyState(key_x)
{
disable2:=false
}
if GetKeyState(key_g)
{
disable2:=false
}
if GetKeyState(key_4)
{
disable:=true
}
if GetKeyState(key_ump)
{
if sec = 1
{
gun2:=1
, sr301:=0
, swingman:=0
, shemlock:=0
, sr45:=1
, svector:=0
, sspitfire:=0
, sscout:=0
, sflatline:=0
, firstrun:=0
, salt:=0
, speacekeeper:=0
%Selected%("s r45")
}
else
{
gun1:=1
, mr301:=0
, mwingman:=0
, mhemlock:=0
, mr45:=1
, mvector:=0
, mspitfire:=0
, mscout:=0
, mflatline:=0
, malt:=0
, mpeacekeeper:=0
, firstrun:=0
%Selected%("m r45")
}
FreeMode:=0
, ump:=true
, m416:=false
, uzi:=false
, akm:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
}
if GetKeyState(key_glock)
{
if sec = 1
{
gun2:=1
, gun1:=1
, sr301:=0
, swingman:=0
, shemlock:=0
, sr45:=0
, svector:=0
, sspitfire:=0
, sscout:=0
, sflatline:=0
, firstrun:=0
, salt:=0
, s2020:=1
, speacekeeper:=0
%Selected%("s p2020")
}
else
{
gun1:=1
, mr301:=0
, mwingman:=0
, mhemlock:=0
, mr45:=0
, mvector:=0
, mspitfire:=0
, mscout:=0
, mflatline:=0
, malt:=0
, m2020:=1
, mpeacekeeper:=0
, firstrun:=0
%Selected%("m p2020")
}
FreeMode:=0
, glock:=true
, ump:=false
, m416:=false
, uzi:=false
, akm:=false
, scar:=false
, m16a4:=false
, groza:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
}
if GetKeyState(key_m16a4)
{
if sec = 1
{
gun2:=1
, gun1:=1
, sr301:=0
, swingman:=0
, shemlock:=1
, sr45:=0
, svector:=0
, sspitfire:=0
, sscout:=0
, sflatline:=0
, salt:=0
, firstrun:=0
, s2020:=0
, speacekeeper:=0
%Selected%("s hemlock")
}
else
{
gun1:=1
, mr301:=0
, mwingman:=0
, mhemlock:=1
, mr45:=0
, mvector:=0
, mspitfire:=0
, mscout:=0
, mflatline:=0
, malt:=0
, m2020:=0
, mpeacekeeper:=0
, firstrun:=0
%Selected%("m hemlock")
}
FreeMode:=0
, m16a4:=true
, m416:=false
, uzi:=false
, akm:=false
, scar:=false
, ump:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
}
if GetKeyState(key_scar)
{
if sec = 1
{
gun2:=1
, gun1:=1
, sr301:=0
, swingman:=0
, shemlock:=0
, sr45:=0
, svector:=0
, sspitfire:=0
, sscout:=0
, sflatline:=1
, s2020:=0
, firstrun:=0
, salt:=0
, speacekeeper:=0
%Selected%("s flatline")
}
else
{
gun1:=1
, mr301:=0
, mwingman:=0
, mhemlock:=0
, mr45:=0
, mvector:=0
, mspitfire:=0
, mscout:=0
, m2020:=0
, mflatline:=1
, malt:=0
, mpeacekeeper:=0
, firstrun:=0
%Selected%("m flatline")
}
FreeMode:=0
, scar:=true
, m416:=false
, uzi:=false
, akm:=false
, ump:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
}
if GetKeyState(key_m416)
{
if sec = 1
{
gun2:=1
, gun1:=1
, sr301:=0
, swingman:=0
, shemlock:=0
, sr45:=0
, svector:=0
, sspitfire:=1
, sscout:=0
, sflatline:=0
, firstrun:=0
, s2020:=0
, salt:=0
, speacekeeper:=0
%Selected%("s spitfire")
}
else
{
gun1:=1
, mr301:=0
, mwingman:=0
, mhemlock:=0
, mr45:=0
, mvector:=0
, m2020:=0
, mspitfire:=1
, mscout:=0
, mflatline:=0
, malt:=0
, mpeacekeeper:=0
, firstrun:=0
%Selected%("m spitfire")
}
m416:=true
, FreeMode:=0
, ump:=false
, uzi:=false
, akm:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
}
if GetKeyState(key_akm)
{
if sec = 1
{
gun2:=1
, sr301:=0
, swingman:=1
, shemlock:=0
, sr45:=0
, svector:=0
, sspitfire:=0
, sscout:=0
, sflatline:=0
, firstrun:=0
, s2020:=0
, salt:=0
, speacekeeper:=0
%Selected%("s wingman")
}
else
{
gun1:=1
, mr301:=0
, mwingman:=1
, mhemlock:=0
, mr45:=0
, mvector:=0
, mspitfire:=0
, mscout:=0
, mflatline:=0
, m2020:=0
, malt:=0
, mpeacekeeper:=0
, firstrun:=0
%Selected%("m wingman")
}
akm:=true
, m416:=false
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, m2020:=0
, peacekeeper:=false
}
if GetKeyState(key_uzi)
{
if sec = 1
{
gun2:=1
, sr301:=1
, swingman:=0
, shemlock:=0
, sr45:=0
, svector:=0
, sspitfire:=0
, sscout:=0
, sflatline:=0
, s2020:=0
, firstrun:=0
, salt:=0
, speacekeeper:=0
%Selected%("s r301")
}
else
{
gun1:=1
, mr301:=1
, mwingman:=0
, mhemlock:=0
, mr45:=0
, mvector:=0
, mspitfire:=0
, mscout:=0
, mflatline:=0
, m2020:=0
, malt:=0
, mpeacekeeper:=0
, firstrun:=0
%Selected%("m r301")
}
uzi:=true
, m416:=false
, akm:=false
, scar:=false
, ump:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
}
if GetKeyState(key_groza)
{
if sec = 1
{
gun2:=1
, sr301:=0
, swingman:=0
, shemlock:=0
, sr45:=0
, svector:=0
, sspitfire:=0
, sscout:=0
, sflatline:=0
, s2020:=0
, firstrun:=0
, salt:=1
, speacekeeper:=0
%Selected%("s alternator")
}
else
{
gun1:=1
, mr301:=0
, mwingman:=0
, mhemlock:=0
, mr45:=0
, mvector:=0
, mspitfire:=0
, mscout:=0
, mflatline:=0
, m2020:=0
, malt:=1
, mpeacekeeper:=0
, firstrun:=0
%Selected%("m alternator")
}
groza:=true
, uzi:=false
, m416:=false
, akm:=false
, scar:=false
, ump:=false
, m16a4:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
}
if GetKeyState(key_m249)
{

if sec = 1
{
gun2:=1
, shavoc:=1
, sr301:=0
, swingman:=0
, shemlock:=0
, sr45:=0
, svector:=0
, sspitfire:=0
, sscout:=0
, sflatline:=0
, s2020:=0
, firstrun:=0
, salt:=0
, speacekeeper:=0
%Selected%("s havoc")
}
else
{
gun1:=1
, mhavoc:=1
, mr301:=0
, mwingman:=0
, mhemlock:=0
, mr45:=0
, mvector:=0
, mspitfire:=0
, mscout:=0
, mflatline:=0
, m2020:=0
, malt:=0
, mpeacekeeper:=0
, firstrun:=0
%Selected%("m havoc")
}

m249:=true
, groza:=false
, uzi:=false
, m416:=false
, akm:=false
, scar:=false
, ump:=false
, m16a4:=false
, glock:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
}
if GetKeyState(key_vector)
{
if sec = 1
{
gun2:=1
, sr301:=0
, swingman:=0
, shemlock:=0
, sr45:=0
, svector:=1
, sspitfire:=0
, sscout:=0
, sflatline:=0
, s2020:=0
, firstrun:=0
, salt:=0
, speacekeeper:=0
%Selected%("s r99")
}
else
{
gun1:=1
, mr301:=0
, mwingman:=0
, mhemlock:=0
, mr45:=0
, mvector:=1
, mspitfire:=0
, mscout:=0
, m2020:=0
, mflatline:=0
, malt:=0
, mpeacekeeper:=0
, firstrun:=0
%Selected%("m r99")
}
vector:=true
, m249:=false
, groza:=false
, uzi:=false
, m416:=false
, akm:=false
, scar:=false
, ump:=false
, m16a4:=false
, glock:=false
, skspubg:=false
, mk14pubg:=false
, Tgun:=false
, peacekeeper:=false
}
if GetKeyState(key_skspubg)
{
if sec = 1
{
gun2:=1
, sr301:=0
, swingman:=0
, shemlock:=0
, sr45:=0
, svector:=0
, sspitfire:=0
, sscout:=1
, sflatline:=0
, firstrun:=0
, s2020:=0
, salt:=0
, speacekeeper:=0
%Selected%("s scout")
}
else
{
gun1:=1
, mr301:=0
, mwingman:=0
, mhemlock:=0
, mr45:=0
, mvector:=0
, mspitfire:=0
, mscout:=1
, m2020:=0
, mflatline:=0
, malt:=0
, mpeacekeeper:=0
, firstrun:=0
%Selected%("m scout")
}
vector:=false
, m249:=false
, groza:=false
, uzi:=false
, m416:=false
, akm:=false
, scar:=false
, ump:=false
, m16a4:=false
, glock:=false
, skspubg:=true
, Tgun:=false
, peacekeeper:=false
}
if GetKeyState(key_Tgun)
{
Tgun:=true
, vector:=false
, m249:=false
, groza:=false
, uzi:=false
, m416:=false
, akm:=false
, scar:=false
, ump:=false
, m16a4:=false
, glock:=false
, skspubg:=false
, peacekeeper:=false
}
if GetKeyState(key_peacekeeper)
{
if sec = 1
{
gun2:=1
, speacekeeper:=1
, vpeaceslot:=2
, sr301:=0
, swingman:=0
, shemlock:=0
, sr45:=0
, svector:=0
, sspitfire:=0
, sscout:=0
, sflatline:=0
, firstrun:=0
, s2020:=0
, salt:=0
%Selected%("s peacekeeper")
}
else
{
gun1:=1
, mpeacekeeper:=1
, vpeaceslot:=1
, mr301:=0
, mwingman:=0
, mhemlock:=0
, mr45:=0
, mvector:=0
, mspitfire:=0
, mscout:=0
, mflatline:=0
, m2020:=0
, malt:=0
, firstrun:=0
%Selected%("m peacekeeper")
}
peacekeeper:=true
, akm:=false
, m416:=false
, uzi:=false
, ump:=false
, scar:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, m2020:=0
}
if GetKeyState(key_Terminate)
{
sleep 2000
ExitApp
}
if GetKeyState(key_RCoff)
{
firstrun:=1
, akm:=false
, uzi:=false
, scar:=false
, ump:=false
, m416:=false
, m16a4:=false
, groza:=false
, glock:=false
, m249:=false
, vector:=false
, skspubg:=false
, Tgun:=false
, peacekeeper:=false
, sr301:=0
, swingman:=0
, shemlock:=0
, sr45:=0
, svector:=0
, sspitfire:=0
, sscout:=0
, sflatline:=0
, speacekeeper:=0
, shavoc:=0
, mr301:=0
, mwingman:=0
, mhemlock:=0
, mr45:=0
, mvector:=0
, mspitfire:=0
, mscout:=0
, mflatline:=0
, mpeacekeeper:=0
, mhavoc:=0
, m2020:=0
, s2020:=0
, malt:=0
, salt:=0
%Selected%("disabled")
}
{
isMouseShown()
{
StructSize := A_PtrSize + 16
VarSetCapacity(InfoStruct, StructSize)
NumPut(StructSize, InfoStruct)
DllCall("GetCursorInfo", UInt, &InfoStruct)
Result := NumGet(InfoStruct, 8)
if Result > 1
return 1
else
return 0
}
{
if isMouseShown() == 1		; checks if mouse cursor is visible and disables script
disable:=false				; set to true for testing on desktop
else
disable:=true
}
if GetKeyState(key_shoot)
{
sauto:=1
if disable && disable2
{
if ump
{
loop {
sleep, 10
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 8*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 8*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 3*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 3*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 3*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 3*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if akm
{
loop {
sleep, 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 100
}
else if uzi
{
loop {
sleep, 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 12*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 12*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 6*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if m416
{
loop {
sleep, 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 14*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 2*modifier)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if groza
{
loop {
sleep, 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 40*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if glock
{
loop {
sleep, 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 18*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 14*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 14*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 14*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 14*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 18*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 5*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if scar
{
loop {
sleep, 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", 18*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 18*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 18*modifier)
sleep 20
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 8*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 8*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 8*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 6*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 6*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 6*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 120
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if m249
{
loop {
sleep, 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 450
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 1*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 1*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 1*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 1*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 1*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 1*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 1*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 1*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 1*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 1*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 1*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 1*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 1000
}
}
else if Tgun
{
loop {
sleep, 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 40*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 40*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 45*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 45*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 45*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 45*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 65*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 65*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 65*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 65*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 60*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 70*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if vector
{
loop {
sleep, 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)1
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -9*modifier, "UInt", 11*modifier)2
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 11*modifier)3
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", 14*modifier)4
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 7*modifier)5
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -5*modifier, "UInt", 17*modifier)6
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -7*modifier, "UInt", 12*modifier)7
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 16*modifier)8
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 11*modifier)9
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)10
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 11*modifier)11
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 12*modifier)12
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 8*modifier)13
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 9*modifier)14
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -5*modifier, "UInt", 4*modifier)15
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 4*modifier)16
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if m16a4
{
loop {
sleep, 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 65
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 65
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 65
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 65
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
}
}
else if peacekeeper
{
loop {
sleep, 10
if GetKeyState(key_shoot)
{
peacekeeperglitch(vpeaceslot, key_x)
Sleep, 40
}
else if havoc
{
loop {
sleep, 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 450
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 1*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 15*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 15*modifier)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}																			 
sleep 1000
}
}
break
}
sleep 100
}
}
}
else
{
sauto:=0
}
}
}
peacekeeperglitch(vpeaceslot, key_x) {
Sleep, 10
Send, {r Down}
Sleep, 60
Send, {r up}
Sleep, 210
Send, {%key_x% Down}
Sleep, 30
Send, {%key_x% Up}
Sleep, 30
Send, {%vpeaceslot% Down}
Sleep, 30
Send, {%vpeaceslot% Up}
Sleep, 130
return
}
Say(text) {
global SAPI
SAPI.Speak(text, 1)
sleep 150
return
}
Tooltip(Text) {
activeMonitorInfo(X, Y, Width, Height)
xPos := Width / 2 - 50
yPos := Height / 2 + (Height / 10)
Tooltip, %Text%, xPos, yPos
SetTimer, RemoveTooltip, 500
return
RemoveTooltip:
SetTimer, RemoveTooltip, Off
Tooltip
return
}
activeMonitorInfo( ByRef X, ByRef Y, ByRef Width,  ByRef  Height  ) {
CoordMode, Mouse, Screen
MouseGetPos, mouseX , mouseY
SysGet, monCount, MonitorCount
Loop %monCount% {
SysGet, curMon, Monitor, %a_index%
if ( mouseX >= curMonLeft and mouseX <= curMonRight and mouseY >= curMonTop and mouseY <= curMonBottom ) {
X      := curMonTop
y      := curMonLeft
Height := curMonBottom - curMonTop
Width  := curMonRight  - curMonLeft
return
}
}
}
lblPause:
pause
Return
IniRead:
IfNotExist, settings.ini
{
MsgBox, Couldn't find settings.ini. I'll create one for you.
IniWrite, "F1", settings.ini, keybinds, key_wingman
IniWrite, "F2", settings.ini, keybinds, key_hemlok
IniWrite, "F3", settings.ini, keybinds, key_scout
IniWrite, "F4", settings.ini, keybinds, key_r301
IniWrite, "F5", settings.ini, keybinds, key_r99
IniWrite, "F6", settings.ini, keybinds, key_spitfire
IniWrite, "F7", settings.ini, keybinds, key_flatline
IniWrite, "F8", settings.ini, keybinds, key_r45
IniWrite, "F9", settings.ini, keybinds, key_alternator
IniWrite, "F10", settings.ini, keybinds, key_p2020
IniWrite, "F11", settings.ini, keybinds, key_peacekeeper
IniWrite, "F12", settings.ini, keybinds, key_havoc
IniWrite, "9", settings.ini, keybinds, key_disable
IniWrite, "Del", settings.ini, keybinds, key_terminate
IniWrite, "1", settings.ini, keybinds, key_1
IniWrite, "2", settings.ini, keybinds, key_2
IniWrite, "4", settings.ini, keybinds, key_heal
IniWrite, "G", settings.ini, keybinds, key_grenade
IniWrite, "3", settings.ini, keybinds, key_holster
IniWrite, "Home", settings.ini, keybinds, key_autofire
IniWrite, "INS"`n, settings.ini, keybinds, key_pause
IniWrite, "5.0", settings.ini, mouse settings, sens
IniWrite, "1.0"`n, settings.ini, mouse settings, zoom_sens
IniWrite, "80", settings.ini, voice settings, volume
IniWrite, "7"`n, settings.ini, voice settings, rate
IniWrite, "narrator", settings.ini, script configs, script_version
IniWrite, "no-recoil.ahk"`n, settings.ini, script configs, script_name
IniWrite, "", settings.ini, window position, gui_position
IniRead, script_name, settings.ini, script configs, script_name
Run, %script_name%
}
Else
{
IniRead, key_RCoff, settings.ini, keybinds, key_disable
IniRead, key_Terminate, settings.ini, keybinds, key_terminate
IniRead, key_1, settings.ini, keybinds, key_1
IniRead, key_2, settings.ini, keybinds, key_2
IniRead, key_4, settings.ini, keybinds, key_heal
IniRead, key_g, settings.ini, keybinds, key_grenade
IniRead, key_x, settings.ini, keybinds, key_holster
IniRead, key_freemode, settings.ini, keybinds, key_autofire
IniRead, key_akm, settings.ini, keybinds, key_wingman
IniRead, key_m16a4, settings.ini, keybinds, key_hemlok
IniRead, key_skspubg, settings.ini, keybinds, key_scout
IniRead, key_uzi, settings.ini, keybinds, key_r301
IniRead, key_vector, settings.ini, keybinds, key_r99
IniRead, key_m416, settings.ini, keybinds, key_spitfire
IniRead, key_scar, settings.ini, keybinds, key_flatline
IniRead, key_ump, settings.ini, keybinds, key_r45
IniRead, key_groza, settings.ini, keybinds, key_alternator
IniRead, key_glock, settings.ini, keybinds, key_p2020
IniRead, key_peacekeeper, settings.ini, keybinds, key_peacekeeper
IniRead, key_m249, settings.ini, keybinds, key_havoc
IniRead, key_pause, settings.ini, keybinds, key_pause
IniRead, sens, settings.ini, mouse settings, sens
IniRead, zoom_sens, settings.ini, mouse settings, zoom_sens
IniRead, volume, settings.ini, voice settings, volume
IniRead, rate, settings.ini, voice settings, rate
IniRead, script_version, settings.ini, script configs, script_version
IniRead, script_name, settings.ini, script configs, script_name
IniRead, gui_position, settings.ini, window position, gui_position
}
return

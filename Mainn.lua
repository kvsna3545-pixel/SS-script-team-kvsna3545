-- kvsna3545 SS - Full GUI (safe mode: buttons insert loadstring text; execution only via Execute button)

local Players = game:GetService("Players")

local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer

local scripts = {

	{"Addict.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Addict"},	{"ANDRFIX.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/ANDRFIX"},

	{"Anti V7.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/AntiV7"},

	{"Assassin (broken).txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/assassin"},

	{"Ban Hammer.txt","https://raw.githubusercontent.com/nicolasbarbosa323/ban-hammer/refs/heads/main/ban"},

	{"Bird Wings.txt","https://pastebin.com/raw/zm3e6eFT"},

	{"Bladed Lightning Dark Titan.txt","https://raw.githubusercontent.com/gitezgitgit/Dark-Titan/refs/heads/main/DARK%20TITAN%20SCRIPT%20SUPER%20RARE.txt"},

	{"Caducus.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/CADUCUS%20(FIXED)"},

	{"Chara.txt","https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Chara.lua"},

	{"Chrono Sentinel.txt","https://raw.githubusercontent.com/Lock1213/Scripts/refs/heads/main/Chrono%20Sentinel%20(Converted%20With%20Music)"},

	{"DB ShotGun.txt","https://pastefy.app/1RhJtgDi/raw"},

	{"DISTORTED.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/The%20Distorted"},

	{"Dominus Scythe.txt","https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/Scythe.txt"},

	{"Dual Tentacle Railgun Demon.txt","https://raw.githubusercontent.com/TEST19983/Assigment/refs/heads/main/Assignment"},

	{"Ender.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Ender"},

	{"Gaster Hands.txt","https://raw.githubusercontent.com/nicolasbarbosa323/good-cop-bad-coop/refs/heads/main/GasterHands.txt"},

	{"Good Cop Bad Cop.txt","https://raw.githubusercontent.com/nicolasbarbosa323/good-cop-bad-coop/refs/heads/main/KwuminKa.txt"},

	{"Goner.txt","https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Goner.lua"},

	{"Grab Knife v1.txt","https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Grab%20Knife%20V1.lua"},

	{"Grab Knife v2.txt","https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Grab%20Knife%20V2.lua"},

	{"Grab Knife v3.txt","https://rawscripts.net/raw/Universal-Script-grab-knife-v3-9232"},

	{"Grab Knife v4.txt","https://raw.githubusercontent.com/Icalock/Server/refs/heads/main/Grab%20V4.txt"},

	{"Grakkeda.txt","https://raw.githubusercontent.com/nicolasbarbosa323/grakkeda/refs/heads/main/Roblox%20Genkadda%20omega%20leaked.txt"},

	{"Incension.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Incension%20Reborn"},

	{"Internal War.txt","https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Internal%20War.lua"},

	{"John Doe.txt","https://rawscripts.net/raw/Client-Replication-Join-doe-script-uploaded-by-gojohdkaisenkt-me-34101"},

	{"KillBot.txt","https://pastebin.com/raw/yraarJ7m"},

	{"Kirito Blades.txt","https://raw.githubusercontent.com/nicolasbarbosa323/the-angel/refs/heads/main/Kirito%20Blades.txt"},

	{"Kitchen Gun.txt","https://raw.githubusercontent.com/nicolasbarbosa323/rare/refs/heads/main/kitcher%20gun.lua"},

	{"Lost Hope Scythe.txt","https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Lost%20Hope%20Scythe.lua"},

	{"Lua Hammer.txt","https://pastefy.app/Nh7FVtvC/raw"},

	{"Majora's Mask.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Mask"},

	{"Minecraft Steve.txt","https://raw.githubusercontent.com/Test4267/steve/refs/heads/main/rare"},

	{"MLG GUN.txt","https://rawscripts.net/raw/Client-Replication-the-ss-loadstring-script-27393"},

	{"Mr ByeBye.txt","https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Mr.Bye%20Bye.lua"},

	{"Mr Pixels.txt","https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Mr.Pixels.lua"},

	{"Mystic.txt","https://pastefy.app/7R72UhO9/raw"},

	{"Nebula Star.txt","https://pastebin.com/raw/j09BnGB3"},

	{"Omni God.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Omni%20God"},

	{"Pandora.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/pandora"},

	{"Placeholder.txt","https://pastefy.app/CtVFoMMq/raw"},

	{"Primadon.txt","https://pastebin.com/raw/37iQzQp3"},

	{"Project 44033514.txt","https://raw.githubusercontent.com/gitezgitgit/Project-2044033514/refs/heads/main/Project%2044033514.lua.txt"},

	{"Rainbow King.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Rainbow%20Banisher"},

	{"Ravanger Claws.txt","https://raw.githubusercontent.com/nicolasbarbosa323/sin-dragon/refs/heads/main/reevenge%20hands.txt"},

	{"Red Sword Pickaxe.txt","https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/Red%20Sword%20Pickaxe.txt"},

	{"Red Trail Scythe.txt","https://pastebin.com/raw/KPYbrH1C"},

	{"Robot.txt","https://pastefy.app/ur8n4dc6/raw"},

	{"RUIN EX.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/RUIN%20EX"},

	{"RUIN IX.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/RUIN%20IX"},

	{"SCP-106.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/SCP-106"},

	{"Scary Ronald McDonald.txt","https://raw.githubusercontent.com/HappyCow91/RobloxScripts/refs/heads/main/ClientSided/clown.lua"},

	{"Server Admin.txt","https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Server%20Admin.lua"},

	{"Shadow Ravanger Claws.txt","https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Shadow%20Ravager.lua"},

	{"Sin Dragon.txt","https://raw.githubusercontent.com/gitezgitgit/Sin-Dragon/refs/heads/main/Sin%20Dragon.lua.txt"},

	{"Sin Unleashed.txt","https://raw.githubusercontent.com/gitezgitgit/Sin-Unleashed/refs/heads/main/Sin%20Unleashed.lua.txt"},

	{"Soul Reaper.txt","https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Soul%20Reaper.lua"},

	{"Spectrum Glitcher.txt","https://raw.githubusercontent.com/nicolasbarbosa323/SCPECTRUMGLITCHER/refs/heads/main/SpectrumG%20(1).txt"},

	{"SpiderBot.txt","https://pastebin.com/raw/XNVWznPH"},

	{"Studio Dummy.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Studio%20Dummy"},

	{"Sutart.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Sutart"},

	{"The Angel.txt","https://raw.githubusercontent.com/nicolasbarbosa323/the-angel/refs/heads/main/The%20Angel.txt"},

	{"The Assasian.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/The%20Assasian"},

	{"The Banisher.txt","https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Banisher.lua"},

	{"The Boys.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Boys"},

	{"The Sun Is A Deadly Laser.txt","https://raw.githubusercontent.com/gObl00x/Pendulum-Fixed-AND-Others-Scripts/refs/heads/main/The%20Sun%20Is%20A%20Deadly%20Laser"},

	{"Thomas.txt","https://raw.githubusercontent.com/Sugm4Bullet1/LuaXXccL/refs/heads/main/Thomas"},

	{"Titan.txt","https://raw.githubusercontent.com/TEST19983/Reslasjd/refs/heads/main/attac"},

	{"True Hero ULTIMATE.txt","https://pastebin.com/raw/m7r4Qeu1"},

	{"Vereus.txt","https://raw.githubusercontent.com/nicolasbarbosa323/xester/refs/heads/main/fLrx77PM.txt"},

	{"Void Boss.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/come%20back"},

	{"White And Dark Titan.txt","https://pastebin.com/raw/Tf8zhZ4w"},

	{"Xester.txt","https://raw.githubusercontent.com/nicolasbarbosa323/xester/refs/heads/main/qC7MUFRJ.txt"},

	{"PROJECT Hacker 1.0.txt","https://raw.githubusercontent.com/kvsna3545-pixel/Hacker_Project_1/refs/heads/main/Project_Hacker_1.0.lua"},

	{"Script Primadon.txt","https://pastebin.com/raw/37iQzQp3"},

	{"Thank you Project.txt","https://raw.githubusercontent.com/kvsna3545-pixel/Thank-you-project/refs/heads/main/Main.lua"},

	{"hacking by WQS_Hax7L8.txt","https://pastebin.com/raw/8Dq9i6we"},

    {"R6.txt","https://pastebin.com/raw/nP15eqg4"},

	{"Nebula Star Glitcher (by fancykid)", "https://pastebin.com/raw/j09BnGB3"},
	
	{"Lua Hammer", "https://pastefy.app/Nh7FVtvC/raw"},
	
	{"Ak47", "https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/ak47"}, 
	
	{"Private Gui", "https://ghostplayer352.github.io/Authorization/"}, 
	
	{"My Old Gui", "https://pastebin.com/raw/MMUX0irp"}, 
	
	{"Mlg Particles", "https://pastebin.com/raw/ZPzjyL1M"},
	
	{"Good Cop Bad Cop", "https://raw.githubusercontent.com/nicolasbarbosa323/good-cop-bad-coop/refs/heads/main/KwuminKa.txt"}, 
	
	{"Xester", "https://raw.githubusercontent.com/nicolasbarbosa323/xester/refs/heads/main/qC7MUFRJ.txt"}, 
	
	{"Vereus", "https://raw.githubusercontent.com/nicolasbarbosa323/xester/refs/heads/main/fLrx77PM.txt"}, 
	
	{"SpiderBot", "https://pastebin.com/raw/XNVWznPH"},

    {"Lalol hub", "https://raw.githubusercontent.com/Its-LALOL/LALOL-Hub/main/Backdoor-Scanner/script"},

    {"backdoor v8.0.0", "https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua"},

    {"Backdoor.Exe V6X", "https://raw.githubusercontent.com/iK4oS/backdoor.exe/v6x/source.lua"},

    {"Stigma Logo", "https://raw.githubusercontent.com/c-1-23/c-1-23/refs/heads/main/K"},

    {"Stigma Ultimate Logo", "https://pastebin.com/raw/VbMpnRRy"},

    {"SadRc7 Logo", "https://pastebin.com/raw/Gf5qPQbV"},

    {"Lua Logo", "https://pastebin.com/raw/HTBxzUaq"},

    {"T0pk3k", "https://raw.githubusercontent.com/c-1-23/c-1-23/refs/heads/main/T0PK3K%204.0"},

    {"Titan", "https://pastefy.app/jR7Pxpdq/raw"},

    {"Robot", "https://pastefy.app/ur8n4dc6/raw"},

    {"Thomas The Dank Engine", "https://rawscripts.net/raw/Client-Replication-Fe-thomas-28335"},

    {"Titan Absolm", "https://raw.githubusercontent.com/TEST19983/Assigment/refs/heads/main/Assignment"},

    {"Spooky MC Donalds", "https://rawscripts.net/raw/Universal-Script-Spooky-Scary-MCDonalds-Script-28270"},

    {"Mario.Exe", "https://pastebin.com/raw/Ljz3fwU2"},

    {"Shedletsky", "https://pastebin.com/raw/RX3pt98p"},

    {"Skeleton Skybox", "https://rawscripts.net/raw/Universal-Script-skeleton-sky-10383"},

    {"Snoop Dogg Skybox", "https://pastefy.app/vIeHZgSK/raw"},

    {"Rc7 Cloud", "https://pastefy.app/veRlpuMC/raw"},

    {"John Doe", "https://rawscripts.net/raw/Universal-Script-John-doe-v2-29135"},

    {"Steve", "https://pastebin.com/raw/a8WV8PiG"},

    {"Ravenger Claws", "https://pastebin.com/raw/hwnwvdFy"},

    {"Mr Bean Admin", "https://raw.githubusercontent.com/Test4267/mrbean/refs/heads/main/hh"},

    {"SSP", "https://pastebin.com/raw/Eu81WV9S"},

    {"SSP Dex Explorer", "https://raw.githubusercontent.com/AbuRiffian/None-of-youre-buissness/refs/heads/main/idk"},

    {"Obunga", "https://pastebin.com/raw/nLJkW0s1"},

    {"Bomb Vest V2", "https://rawscripts.net/raw/Universal-Script-Bomb-Vest-v1-35089"},

    {"Mobile Keyboard", "https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt"},

    {"Red Sword Pickaxe", "https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/Red%20Sword%20Pickaxe.txt"}, 
	
    {"Bombvest v2","https://raw.githubusercontent.com/ProBypasserHax1/Ussjzbwusbdlq/refs/heads/main/Luafile33Xc3eww"},
	
    {"Bombvest v1","https://raw.githubusercontent.com/LuaGunsX/LuasLegacyScripts/refs/heads/main/%5BRecharacter%5D%20Bomb%20Vest"},
	
    {"SSP Dex Explorer Version", "https://raw.githubusercontent.com/AbuRiffian/None-of-youre-buissness/refs/heads/main/idk"},
	
    {"SSP","https://pastebin.com/raw/Eu81WV9S"},
	
    {"SSP Made by Erased_Luah4x","https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/SSP%20BY%20ME.lua"},
    
    {"Red Sword PicAxe","https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/Red%20Sword%20Pickaxe.txt"},
    
    {"Stummy Guns","https://pastebin.com/raw/3XPaYv08"},
    
    {"Polaria By 00de0l","https://pastefy.app/agqEB2qs/raw"},
    
    {"MLG 2520 Gun","https://rawscripts.net/raw/Client-Replication-the-ss-loadstring-script-27393"},
    
    {"LuaMayG*y v4.1","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/LuaMayGayV4.1.lua"},
    
    {"Elsyian Executor","https://pastebin.com/raw/CsFAQyXr"},
    
    {"Mario.exe","https://pastebin.com/raw/Ljz3fwU2"},
   
    {"Proxy Hub","https://pastebin.com/raw/JgnY49aq"},
    
    {"Project Shiba","https://pastebin.com/raw/2b6xi6dd"},
    
    {"Project Duck Ultimate","https://pastefy.app/RX1PYZs1/raw"},
   
    {"FE Hax GUI V2.0.2.1","https://pastebin.com/raw/gr3XZwUY"},
    
    {"The Two Brothers {Private Gui}","https://pastebin.com/raw/1sRPZUvM"},
    
    {"Super Uper Duper Private Gui by c00lkid","https://pastebin.com/raw/nTCk1iMw"},
    
    {"Superx and L00L Private Gui (No Trade!)","https://pastebin.com/raw/DmM6JmsH"},
    
    {"L00L X Superx Gui (No Trade and No Script!)","https://pastebin.com/raw/Q02wdXef"},
    
    {"Private Gui By Cle0n","https://pastebin.com/raw/dPMidMa3"},
    
    {"Private Gui by 005n5n77","https://pastebin.com/raw/MPNijDsd"},
    
    {"L00L Super Duper Private GUI V3","https://pastebin.com/raw/1nM6pGVM"},
    
    {"L00L Private Gui V1","https://pastebin.com/raw/9iQErXHG"},
    
    {"Sznkidd Private Gui","https://pastebin.com/raw/Ub6QVJXn"},
    
    {"Private Gui Super Private Gui by Anonymous","https://pastebin.com/raw/BDguUuUx"},
    
    {"Project Fire V1.1 By Polemenus","https://pastebin.com/raw/a79VQ4ex"},
    
    {"Private Gui 1.35","https://raw.githubusercontent.com/Hanif290/DigsaeyAiijjllnvv/refs/heads/main/Aiisisndndsn"},
    
    {"Super Private Gui by Sigmaz","https://raw.githubusercontent.com/Hanif290/SigmaHubV2/refs/heads/main/SigmaHubV2"},
    
    {"Private Gui by Hanif","https://raw.githubusercontent.com/Hanif290/SigmaHub/refs/heads/main/SigmaHub"},
    
    {"Sigma Gui (Private GUI)","https://pastes.io/raw/private-53"},
    
    {"Asder10065 Gui","https://pastebin.com/raw/56j42jkA"},
    
    {"Private Gui by 005n5n77 1.5","https://pastebin.com/raw/9XSYjVrm"},
	
    {"1x1x1x1x1 Super Private Gui v5.40","https://pastebin.com/raw/ERRk4rvM"},
	
    {"1x1x1x1x1 Ultimate Private Gui v7.10", "https://pastefy.app/tsPrm5Ky/raw"},
	
    {"Testing Hub By QnDx aka Polpy_Kid","https://pastebin.com/raw/ERRk4rvM"},
	
    {"sugma_v1","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/Sugma%20V1.txt"},
	
    {"Project LuaCore Serverside","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/yesking"},
	
    {"R15 to R6","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/AOIWruw823rpo8n30"},
	
    {"Project LuaCore SS","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/Project%20LuaCore%20SS"},
	
    {"Prison Life Hub By Shedletsky","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/Shed%20Prison%20Hax"},
	
    {"Anonymous Gui Reborn","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/Anonymous%20Reborn%20By%2007n7z"},
	
    {"LuaMayGay V2 Made By 07n7z","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/LuaMayGayV2.txt"},
	
    {"LuaMayGay Made By LuaCore","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/LuaMayGay%204"},
	
    {"Erased_Luah4x Gui Private","https://pastebin.com/raw/yARPDt3k"},
    
    {"Thomas The Dank Engine","https://raw.githubusercontent.com/Sugm4Bullet1/LuaXXccL/refs/heads/main/Thomas"},
	
    {"John Doe SS","https://raw.githubusercontent.com/Sugm4Bullet1/LuaXXccL/refs/heads/main/johndoeSS.txt"},
	
    {"Nazz Gui","https://raw.githubusercontent.com/Sugm4Bullet1/LuaXXccL/refs/heads/main/nazz%20gui.txt"},
	
    {"Polaria By 00de0l [UPDATED]","https://raw.githubusercontent.com/Sugm4Bullet1/LuaXXccL/refs/heads/main/pol%20(2).txt"},
	
    {"Syntex Backdoor V1.2.0","https://raw.githubusercontent.com/etgaby33/sb1.2.0/refs/heads/main/sb1.2.0lua.txt"},
	
    {"Dominat v5.0.1","https://raw.githubusercontent.com/Sugm4Bullet1/LuaXXccL/refs/heads/main/dominatv5.0.1.txt"},
	
    {"c00lgui","https://raw.githubusercontent.com/LuaGunsX/LuasLegacyScripts/refs/heads/main/%5BGUI%5D%20c00lgui"},
	
    {"Project Lua","https://rawscripts.net/raw/Universal-Script-Project-Lua-Inspired-by-Project-Ligma-26224"},
	
    {"Project Ligma", "https://rawscripts.net/raw/Universal-Script-Project-Ligma-REMADE-31235"},
	
    {"Project Euphoria [Old]","https://raw.githubusercontent.com/TEST19983/Realrhejrj/refs/heads/main/Refjf"},
    
    {"Rc7 Cloud","https://pastebin.com/raw/DK9PK8Xu"},
	
    {"Bladed Lightning Dark Titan","https://raw.githubusercontent.com/gitezgitgit/Dark-Titan/refs/heads/main/DARK%20TITAN%20SCRIPT%20SUPER%20RARE.txt"},
	
    {"Hatai Gui","https://gist.githubusercontent.com/hataifnx/009dc18d58f8f7044fbc08c353f2f058/raw/9224a43566424ec2edd2f9286855acf004fc4c54/Hatai%2520Gui"},
	
    {"Dreambull Gui","https://rawscripts.net/raw/Universal-Script-FE-Bypass-idk-32121"},
	
    {"Jeff The Killer Jumpscare","https://rawscripts.net/raw/Universal-Script-Jeff-The-Killer-JumpScare-27384"},
	
    {"Shedletsky","https://pastebin.com/raw/QaGn1ekv"},
	
    {"Mr Bean Admin","https://raw.githubusercontent.com/Test4267/mrbean/refs/heads/main/hh"},
	
    {"Ro-xploit VH","https://gist.githubusercontent.com/hataifnx/0b72277731e6bc6a0f05ef90aa4ba9ab/raw/a5ebe0184ca9acbf8af79f3c0e943f3457b95247/Ro-xploit%2520vh"},
	
    {"External GU1! By Anonymous XR","https://pastefy.app/4GLMKcft/raw"},
	
    {"SG GUI RED EDITION Fixed Verion","https://raw.githubusercontent.com/gitezgitgit/SG-GUI-RED-EDITION/refs/heads/main/FixedVersion"},
	
    {"SG GUI BLUE EDITION", "https://raw.githubusercontent.com/gitezgitgit/SG-GUI-COLOR-EDITIONS/refs/heads/main/Blue%20Edition"},
	
    {"Robot","https://pastefy.app/ur8n4dc6/raw"},
	
    {"Titan","https://raw.githubusercontent.com/TEST19983/Reslasjd/refs/heads/main/attac"},
	
    {"Big Smoke","https://raw.githubusercontent.com/LuaGunsX/LuasLegacyScripts/refs/heads/main/%5BRecharacter%5D%20Big%20Smoke"},
	
    {"Lua Hammer","https://pastefy.app/Nh7FVtvC/raw"},
	
    {"Dual Tentacle Railgun Demon Monster","https://raw.githubusercontent.com/TEST19983/Assigment/refs/heads/main/Assignment"},
	
    {"Nebula Star Glitcher","https://pastebin.com/raw/j09BnGB3"},
	
    {"John Doe","https://rawscripts.net/raw/Client-Replication-Join-doe-script-uploaded-by-gojohdkaisenkt-me-34101"},
	
    {"AK-47","https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/ak47"},
	
    {"Minecraft Steve","https://raw.githubusercontent.com/Test4267/steve/refs/heads/main/rare"},
	
    {"Proximity Hub Max 15 [Proximity6H]","https://raw.githubusercontent.com/HyperionV8/Proximity-Private-Hub/refs/heads/main/obfuscated_script-1745069419608.lua.txt"},
	
    {"Private GUI By 00de0l","loadstring(game:HttpGet(\"https://ghostplayer352.github.io/Authorization/\"))()Ioad(\"0d730785a30393bb8bc13e9a8d72a0d3\")"},
	
    {"Private GUI By 00de0l [UPDATED]","https://pastefy.app/cVm0LBiJ/raw"},
	
    {"3xen0kidd GUI [3xen0guibyl1000l]", "https://pastebin.com/raw/MMUX0irp"},
	
    {"MLG Particles", "https://pastebin.com/raw/ZPzjyL1M"},
	
    {"Spookyify", "https://pastefy.app/OvBb8y2T/raw"},
	
    {"1x1x1x1's FE GUI (Client-Sided)","https://raw.githubusercontent.com/MrWitzbold/1x1x1x1-Gui/refs/heads/main/main.lua"},
	
    {"Elysian 2.0 GUI (Client-Sided)","https://raw.githubusercontent.com/MrWitzbold/Elysian-2.0-GUI/refs/heads/main/main.lua"},
	
    {"Bill Cipher GUI (Client-Sided)","https://raw.githubusercontent.com/MrWitzbold/Bill-Cipher-GUI/refs/heads/main/Bill%20Cipher%20GUI%20(Client-Sided).lua"},
	
    {"RC7 Reawakened (Cilent-Sided)", "https://raw.githubusercontent.com/MrWitzbold/RC7_GUI/refs/heads/main/main.lua"},
	
    {"Sirhurt GUI (Cilent-Sided)", "https://raw.githubusercontent.com/MrWitzbold/sirhurt_GUI/refs/heads/main/main.lua"},
	
    {"Good Cop Bad Cop", "https://raw.githubusercontent.com/nicolasbarbosa323/good-cop-bad-coop/refs/heads/main/KwuminKa.txt"},
	
    {"Gaster Hands", "https://raw.githubusercontent.com/nicolasbarbosa323/good-cop-bad-coop/refs/heads/main/GasterHands.txt"},
	
    {"Ban Hammer", "https://raw.githubusercontent.com/nicolasbarbosa323/ban-hammer/refs/heads/main/ban"},
	
    {"Xester", "https://raw.githubusercontent.com/nicolasbarbosa323/xester/refs/heads/main/qC7MUFRJ.txt"},
    {"Grakkeda", "https://raw.githubusercontent.com/nicolasbarbosa323/grakkeda/refs/heads/main/Roblox%20Genkadda%20omega%20leaked.txt"},
	
    {"Spectrum Glitcher", "https://raw.githubusercontent.com/nicolasbarbosa323/SCPECTRUMGLITCHER/refs/heads/main/SpectrumG%20(1).txt"},
	
    {"Kirito Blades", "https://raw.githubusercontent.com/nicolasbarbosa323/the-angel/refs/heads/main/Kirito%20Blades.txt"},
	
    {"The Angel", "https://raw.githubusercontent.com/nicolasbarbosa323/the-angel/refs/heads/main/The%20Angel.txt"},
	
    {"Vereus", "https://raw.githubusercontent.com/nicolasbarbosa323/xester/refs/heads/main/fLrx77PM.txt"},
	
    {"SpiderBot", "https://pastebin.com/raw/XNVWznPH"},
	
    {"Ravanger Claws", "https://raw.githubusercontent.com/nicolasbarbosa323/sin-dragon/refs/heads/main/reevenge%20hands.txt"},
	
    {"Kitchen Gun", "https://raw.githubusercontent.com/nicolasbarbosa323/rare/refs/heads/main/kitcher%20gun.lua"},
	
    {"Suicide Gun", "https://pastebin.com/raw/TQGaAivj"},
	
    {"Touch Me For Boom", "https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/Touch%20Me%20For%20Boom.txt"},
	
    {"Master Hand", "https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/MasterHand.txt"},
	
    {"Green Tank", "https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/Green%20Tank.txt"},
	
    {"Bridge Tool", "https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/Bridge%20Tool.txt"},
	
    {"PipeBomb Launcher", "https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/PipeBomb%20Launcher.txt"},
	
    {"Spawn KillBot", "https://raw.githubusercontent.com/GooberDoesStuff/RandomClientRep/refs/heads/main/Killbot.lua"},
	
    {"D!CK_Gun", "https://pastefy.app/Tq7G80Tr/raw"},
	
    {"S#s Neko", "https://raw.githubusercontent.com/GooberDoesStuff/RandomClientRep/refs/heads/main/Neko.lua"},
	
    {"Yellow Man", "https://pastebin.com/raw/funfBi9a"},
	
    {"True Hero ULTIMATE", "https://pastebin.com/raw/m7r4Qeu1"},
	
    {"Warhammer", "https://pastebin.com/raw/XcpT3qyM"},
	
    {"Neko Knuckles", "https://pastebin.com/raw/gYt5K4k5"},
	
    {"Sin Dragon", "https://raw.githubusercontent.com/gitezgitgit/Sin-Dragon/refs/heads/main/Sin%20Dragon.lua.txt"},
	
    {"Sin Unleashed", "https://raw.githubusercontent.com/gitezgitgit/Sin-Unleashed/refs/heads/main/Sin%20Unleashed.lua.txt"},
	
    {"Project 44033514", "https://raw.githubusercontent.com/gitezgitgit/Project-2044033514/refs/heads/main/Project%2044033514.lua.txt"},
	
    {"Goner", "https://raw.githubusercontent.com/nicolasbarbosa323/crytasl/refs/heads/main/goner.lua.txt"},
	
    {"Plasma Cutters", "https://rawscripts.net/raw/Prison-Life-Plasma-Cutters-18936"},
	
    {"DB Shotgun", "https://pastefy.app/1RhJtgDi/raw"},
	
    {"Lightsaber [Q to use]", "https://pastefy.app/bpIeO2df/raw"},
	
    {"Noob Bat", "https://pastefy.app/Dnifbxu1/raw"},
	
    {"White And Dark Titan", "https://pastebin.com/raw/Tf8zhZ4w"},
	
    {"Explosive Robot", "https://pastefy.app/ebiRyCkx/raw"},
	
    {"3D Maneuver Gear Script [Based off Attack on Titan]", "https://pastebin.com/raw/Hh1ghmb9"},
	
    {"Gay Face", "https://pastebin.com/raw/Maai0Pxu"},
	
    {"9/11 Plane [W to move forward]", "https://pastebin.com/raw/5saVhNKb"},
	
    {"One Punch Man", "https://pastebin.com/raw/QySEAhP5"},
	
    {"Pennywise The Dancing Clown [Q to be Invisible E to Laugh]", "https://pastebin.com/raw/A4f22qvS"},
	
    {"Psychopath", "https://pastebin.com/raw/UQU0BB95"},
	
    {"Bloody Knight", "https://pastebin.com/raw/QLYF1nbt"},
	
    {"Red Trail Scythe", "https://pastebin.com/raw/KPYbrH1C"},
	
    {"Dev-Uzi", "https://pastebin.com/raw/PCuUb3jm"},
	
    {"Goofy Sans", "https://pastebin.com/raw/PCeZC5MV"},
	
    {"Absalom [Armored]", "https://pastebin.com/raw/vQnEfN7K"},
	
    {"Bird Wings", "https://pastebin.com/raw/zm3e6eFT"},
	
    {"Shadow Ravanger Claws", "https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Shadow%20Ravager.lua"},
	
    {"Trap Gun", "https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Trap%20Gun.lua"},
	
    {"The Banisher", "https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Banisher.lua"},
	
    {"Death Note", "https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Death%20Note.lua"},
	
    {"Time Blast", "https://pastefy.app/ULKMFpKj/raw"},
	
    {"TF2 Spy", "https://pastefy.app/hhIgut1H/raw"},
	
    {"Book Of Wisdom", "https://pastefy.app/ozN3eBE6/raw"},
	
    {"Freddy Fazbear", "https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/FreddyFazBear.txt"},
	
    {"Dual Pistols", "https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/Dual%20Pistols.txt"},
	
    {"Spawn Giant Cannoneer Nub", "https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/Cannoneer%20Noob.txt"},
	
    {"Dominus Scythe", "https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/Scythe.txt"},
	
    {"Lemonade Drink", "https://pastefy.app/NO77ODmW/raw"},
	
    {"Placeholder", "https://pastefy.app/CtVFoMMq/raw"},
	
    {"Project Ligma By goodRc7", "https://raw.githubusercontent.com/gitezgitgit/Project-Ligma-Remake/refs/heads/main/ProjectLigmaRemakeObfuscated.txt"},
	
    {"STIGMA DUD GUI", "https://pastebin.com/raw/fryTaDhZ"},
	
    {"YourMom By SethMilkman Gui", "https://pastebin.com/raw/cfxYDH0N"},
	
    {".x.n0 g.i.", "https://pastebin.com/raw/L9Tw2uBw"},
	
    {"Proximity Hub [M16]", "https://raw.githubusercontent.com/16visionzXTA/proxipizza/refs/heads/main/proxihvc9928.txt"},
	
    {"16visionzX Scripts Tab", "https://raw.githubusercontent.com/16visionzXTA/proxiwaffle/refs/heads/main/obfuscated_script-1746577182464.lua.txt"},
	
    {"Rocky2u's Admin", "https://pastebin.com/raw/zzNfYtEh"},
	
    
    {"Project SonicElijahMania", "https://raw.githubusercontent.com/gitezgitgit/Project-SonicElijahMania/refs/heads/main/By%20SonicElijahMania%20On%20YouTube"},

    {"Unnamed Script", "https://pastebin.com/raw/DmM6JmsH"},

    {"Private NexusX", "https://fromhatai.neocities.org/Private/NexusX.lua"},

    {"thebloxerman64_team666 Gui", "https://pastebin.com/raw/ewg5hpqN"},

    {"Cle0n Normal Gui", "https://pastefy.app/Rumvf4tQ/raw"}, 

    {"project baller", "https://pastefy.app/t6W9lM9x/raw"}, 

    {"Grandosla", "https://pastefy.app/Kql9VClT/raw"},

    {"G00by Troll Face Sky", "https://pastefy.app/qSX9DXqJ/raw"},
	

}

table.sort(scripts, function(a,b) return string.lower(a[1]) < string.lower(b[1]) end)

-- Logo (persistent, rotating, on top)

local logoGui = Instance.new("ScreenGui")

logoGui.Name = "executorLogo"

logoGui.ResetOnSpawn = false

logoGui.IgnoreGuiInset = true

logoGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

logoGui.Parent = player:WaitForChild("PlayerGui")

local lel = Instance.new("ImageButton")

lel.Name = "Logo"

lel.Size = UDim2.new(0, 100, 0, 100)

lel.Position = UDim2.new(-0.127000004, 0, 0.407999992, 0)

lel.BackgroundColor3 = Color3.new(0,0,0)

lel.ImageColor3 = Color3.new(1,1,1)

lel.Image = "rbxassetid://99168471635791"

lel.Parent = logoGui

lel.BackgroundTransparency = 1

lel.ZIndex = 10000

local Ring = Instance.new("ImageLabel")

Ring.Name = "Ring"

Ring.Size = UDim2.new(1,0,1,0)

Ring.Position = UDim2.new(0,0,0,0)

Ring.BackgroundColor3 = Color3.new(0,0,0)

Ring.ImageColor3 = Color3.new(0,0,0)

Ring.Image = "rbxassetid://137668646242348"

Ring.Parent = lel

Ring.BackgroundTransparency = 1

Ring.ZIndex = 10001

local Orbit = Instance.new("ImageLabel")

Orbit.Name = "Orbit"

Orbit.Size = UDim2.new(0,21,0,21)

Orbit.Position = UDim2.new(0,0,0,10)

Orbit.BackgroundColor3 = Color3.new(0,0,0)

Orbit.ImageColor3 = Color3.new(1,1,1)

Orbit.Image = "rbxassetid://0"

Orbit.Parent = Ring

Orbit.BackgroundTransparency = 1

Orbit.ZIndex = 10002

task.spawn(function()

	lel:TweenPosition(UDim2.new(0.458, 0, 0.408, 0), "Out", "Linear", 0.4, true)

	task.wait(3)

	lel:TweenPosition(UDim2.new(0, 9, 0, 190), "Out", "Sine", 0.7, true)

end)

task.spawn(function()

	while true do

		task.wait(0.03)

		Ring.Rotation = Ring.Rotation + 1

		Orbit.Rotation = Orbit.Rotation - 1

	end

end)

-- Main GUI (persistent)

local gui = Instance.new("ScreenGui")

gui.Name = "kvsna3545 SS"

gui.ResetOnSpawn = false

gui.IgnoreGuiInset = true

gui.Parent = player:WaitForChild("PlayerGui")

gui.Enabled = true

local frame = Instance.new("Frame")

frame.Name = "MainFrame"

frame.Size = UDim2.new(0, 600, 0, 350)

frame.Position = UDim2.new(0.2, 0, 0.25, 0)

frame.BackgroundColor3 = Color3.fromRGB(0,0,0)

frame.BorderSizePixel = 2

frame.BorderColor3 = Color3.fromRGB(0,0,0)

frame.Active = true

frame.Parent = gui

local titleBar = Instance.new("TextLabel")

titleBar.Name = "TitleBar"

titleBar.Size = UDim2.new(1, 0, 0, 25)

titleBar.Position = UDim2.new(0,0,0,0)

titleBar.BackgroundColor3 = Color3.fromRGB(0,0,0)

titleBar.Text = "   kvsna3545 SS V.1.23"

titleBar.TextColor3 = Color3.fromRGB(255,255,255)

titleBar.Font = Enum.Font.SourceSansBold

titleBar.TextSize = 17

titleBar.TextXAlignment = Enum.TextXAlignment.Left

titleBar.Parent = frame

local scriptHubFrame = Instance.new("ScrollingFrame")

scriptHubFrame.Name = "ScriptHub"

scriptHubFrame.Size = UDim2.new(0, 150, 1, -2)

scriptHubFrame.Position = UDim2.new(1, -152, 0, 1)

scriptHubFrame.BackgroundColor3 = Color3.fromRGB(240,240,240)

scriptHubFrame.BorderSizePixel = 2

scriptHubFrame.BorderColor3 = Color3.fromRGB(0,0,0)

scriptHubFrame.ScrollBarThickness = 8

scriptHubFrame.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)

scriptHubFrame.CanvasSize = UDim2.new(0,0,0,0)

scriptHubFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

scriptHubFrame.Parent = frame

local scriptBox = Instance.new("TextBox")

scriptBox.Name = "ScriptBox"

scriptBox.Size = UDim2.new(1, -170, 1, -95)

scriptBox.Position = UDim2.new(0, 10, 0, 35)

scriptBox.BackgroundColor3 = Color3.fromRGB(0,0,0)

scriptBox.TextColor3 = Color3.fromRGB(255,255,255)

scriptBox.Font = Enum.Font.Code

scriptBox.TextSize = 16

scriptBox.MultiLine = true

scriptBox.ClearTextOnFocus = false

scriptBox.TextXAlignment = Enum.TextXAlignment.Left

scriptBox.TextYAlignment = Enum.TextYAlignment.Top

scriptBox.TextWrapped = true

scriptBox.ClipsDescendants = true

scriptBox.Text = "script by kvsna3545 V.1.23 :)"

scriptBox.Parent = frame

local padding = Instance.new("UIPadding")

padding.PaddingLeft = UDim.new(0,8)

padding.PaddingTop = UDim.new(0,8)

padding.PaddingRight = UDim.new(0,8)

padding.PaddingBottom = UDim.new(0,8)

padding.Parent = scriptBox

local executeButton = Instance.new("TextButton")

executeButton.Name = "ExecuteButton"

executeButton.Size = UDim2.new(0, 120, 0, 30)

executeButton.Position = UDim2.new(0, 10, 1, -45)

executeButton.BackgroundColor3 = Color3.fromRGB(255,255,255)

executeButton.BorderColor3 = Color3.fromRGB(0,0,0)

executeButton.BorderSizePixel = 2

executeButton.Text = "Execute"

executeButton.TextColor3 = Color3.fromRGB(0,0,0)

executeButton.Font = Enum.Font.SourceSansBold

executeButton.TextSize = 15

executeButton.AutoButtonColor = false

executeButton.Parent = frame

local clearButton = Instance.new("TextButton")

clearButton.Name = "ClearButton"

clearButton.Size = UDim2.new(0, 120, 0, 30)

clearButton.Position = UDim2.new(0, 140, 1, -45)

clearButton.BackgroundColor3 = Color3.fromRGB(255,255,255)

clearButton.BorderColor3 = Color3.fromRGB(0,0,0)

clearButton.BorderSizePixel = 2

clearButton.Text = "Clear"

clearButton.TextColor3 = Color3.fromRGB(0,0,0)

clearButton.Font = Enum.Font.SourceSansBold

clearButton.TextSize = 15

clearButton.AutoButtonColor = false

clearButton.Parent = frame

local function pressEffect(button)

	button.MouseButton1Down:Connect(function()

		button.BackgroundColor3 = Color3.fromRGB(180,220,255)

	end)

	button.MouseButton1Up:Connect(function()

		button.BackgroundColor3 = Color3.fromRGB(255,255,255)

	end)

	button.MouseLeave:Connect(function()

		button.BackgroundColor3 = Color3.fromRGB(255,255,255)

	end)

end

pressEffect(executeButton)

pressEffect(clearButton)

local function makeLoadstringText(url)

	if not url or url == "" then return "-- no url provided" end

	return "-- Remote script URL (inspect before running)\n-- To run manually after review, paste this into the editor and press Execute:\nloadstring(game:HttpGet(\"" .. url:gsub("\"","\\\"") .. "\"))()\n\n"

end

local y = 10

for _, entry in ipairs(scripts) do

	local name, url = entry[1], entry[2]

	local btn = Instance.new("TextButton")

	btn.Name = name

	btn.Size = UDim2.new(1, -10, 0, 30)

	btn.Position = UDim2.new(0, 5, 0, y)

	btn.BackgroundColor3 = Color3.fromRGB(255,255,255)

	btn.BorderColor3 = Color3.fromRGB(0,0,0)

	btn.BorderSizePixel = 2

	btn.Text = name

	btn.TextColor3 = Color3.fromRGB(0,0,0)

	btn.Font = Enum.Font.SourceSans

	btn.TextScaled = true

	btn.TextWrapped = true

	btn.TextSize = 14

	btn.ClipsDescendants = true

	btn.AutoButtonColor = false

	btn.ZIndex = 2

	btn.Parent = scriptHubFrame

	btn.MouseButton1Down:Connect(function()

		btn.BackgroundColor3 = Color3.fromRGB(180,220,255)

	end)

	btn.MouseButton1Up:Connect(function()

		btn.BackgroundColor3 = Color3.fromRGB(255,255,255)

	end)

	btn.MouseLeave:Connect(function()

		btn.BackgroundColor3 = Color3.fromRGB(255,255,255)

	end)

	btn.MouseButton1Click:Connect(function()

		scriptBox.Text = makeLoadstringText(url)

	end)

	y = y + 35

end

scriptHubFrame.CanvasSize = UDim2.new(0,0,0, math.max(0, y))

executeButton.MouseButton1Click:Connect(function()

	local code = scriptBox.Text

	if code and code ~= "" then

		local ok, err = pcall(function()

			local func, loadErr = loadstring(code)

			if not func then error("loadstring error: "..tostring(loadErr)) end

			func()

		end)

		if not ok then warn("Executor error:", err) end

	end

end)

clearButton.MouseButton1Click:Connect(function()

	scriptBox.Text = ""

end)

lel.MouseButton1Click:Connect(function()

	gui.Enabled = not gui.Enabled

end)

local dragging = false

local dragInput, dragStart, startPos

local function update(input)

	local delta = input.Position - dragStart

	frame.Position = UDim2.new(

		startPos.X.Scale, startPos.X.Offset + delta.X,

		startPos.Y.Scale, startPos.Y.Offset + delta.Y

	)

end

titleBar.InputBegan:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then

		dragging = true

		dragStart = input.Position

		startPos = frame.Position

		input.Changed:Connect(function()

			if input.UserInputState == Enum.UserInputState.End then

				dragging = false

			end

		end)

	end

end)

titleBar.InputChanged:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then

		dragInput = input

	end

end)

UserInputService.InputChanged:Connect(function(input)

	if dragging and input == dragInput then

		update(input)

	end

end)

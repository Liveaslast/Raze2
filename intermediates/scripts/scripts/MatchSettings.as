package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2MouseJointDef;
   import §\x1c\x10§.b2PrismaticJointDef;
   import §\x1c\x10§.b2PulleyJointDef;
   import §\x1c\x10§.b2RevoluteJointDef;
   import §\x1c\x10§.b2WeldJointDef;
   import §\x1c\x11§.§\x1e\b§;
   import §\x1c\x11§.§\x1e\t§;
   import §\x1c\x12§.§\x1e\x11§;
   import §\x1c\x12§.§\x1e\x13§;
   import §\x1c\x12§.b2Contact;
   import §\x1c\x13§.*;
   import §\x1c\x14§.*;
   import §\x1c\x15§.§\x1e\x14§;
   import §\x1c\x15§.b2Settings;
   import §\x1c\x16§.*;
   import §\x1c\x17§.*;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.filters.GlowFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;
   import flash.system.Security;
   import flash.text.TextField;
   
   public class MatchSettings
   {
      
      public static var teams:int;
      
      public static var team0amt:int;
      
      public static var team1amt:int;
      
      public static var team2amt:int;
      
      public static var team3amt:int;
      
      public static var team4amt:int;
      
      public static var team0diff:int;
      
      public static var team1diff:int;
      
      public static var team2diff:int;
      
      public static var team3diff:int;
      
      public static var team4diff:int;
      
      public static var type:String;
      
      public static var winScore:uint;
      
      public static var elimTeamScore1:uint;
      
      public static var elimTeamScore2:uint;
      
      public static var elimTeamScore3:uint;
      
      public static var elimTeamScore4:uint;
      
      public static var bots:Array;
      
      public static var player:Object;
      
      public static var map:Object;
      
      public static var botnames:*;
      
      public static var isCampaign:Boolean;
      
      public static var preCutSong:*;
      
      public static var preCutFrames:Array;
      
      public static var postCutSong:*;
      
      public static var postCutFrames:Array;
      
      public static var creditMod:Number;
      
      public static var song:*;
      
      public static var matchName:String;
      
      public static var matchDesc:String;
      
      public static var matchExtra:String;
      
      public static var matchType:uint;
      
      public static var matchLevel:uint;
      
      public static var overallDiff:uint;
      
      public static var specialMode:String;
      
      public static var weaponsUsed:String;
      
      public static var abilitiesOn:Boolean;
      
      public static var equipsOn:Boolean;
      
      public static var qmBackup:Object;
      
      private var game:Game;
      
      public var canRageQuit:Boolean;
      
      public var topFFaScore:int;
      
      public var topFFaScoreUnit:§\t§;
      
      public var topTeam:int;
      
      public var topTeamScore:int;
      
      public var team1score:int;
      
      public var team2score:int;
      
      public var team3score:int;
      
      public var team4score:int;
      
      private var fc:uint;
      
      public function MatchSettings(param1:Game)
      {
         super();
         game = param1;
         §§push(§§findproperty(elimTeamScore1));
         if(false)
         {
            return false;
         }
         §§pop().elimTeamScore1 = 0;
         elimTeamScore2 = 0;
         elimTeamScore3 = 0;
         elimTeamScore4 = 0;
      }
      
      public static function Init() : void
      {
         botnames = ["AddisonR","Juice-Tin"];
         botnames.push("ArmorGames","MaestroRage","Slevanator","Dabor","WaterFlame","zircon","T-Free","NemesisTheory","Jon Beam");
         botnames.push("Aethos","Xelu");
         botnames.push("__M@yK__","Toxic Hazmat","Lt.Jeffery","Tr0llTehZ0rz!","XxTalonxX","Dark_potato57","DaMhillz","XxBlackWolfxX","Tigermund3","xX-Gamer-Xx");
         §§push(botnames);
         §§push("maxwell118");
         §§push("ToxiC KilleR");
         §§push("Mr.Mau5");
         §§push("Mr.Mau5");
         §§push("NEMISIS");
         if(false)
         {
            return;
         }
         §§pop().push(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),"Dj Sonic56","ShAdOw","Noobinator","El Ducko","Tr00p3r","Lt. Boehlke","DB2016");
         botnames.push("Darknight000","EvilSteel","Reignscythe","Da Machinima","Spartan-525","W1nn3r","Mr. Platypus","GameBuilder15");
         §§push(botnames);
         §§push("_Maximum_");
         §§push("Johnny87");
         §§push("Yo Mamma");
         §§push("XxkillaxX");
         if(false)
         {
            return;
         }
         §§pop().push(§§pop(),§§pop(),§§pop(),§§pop(),"SonicX","Scorpio","McBain","Krum","PROTECT ME","Mordekaiser","Ezreal","Garen","Bieber");
         player = {};
         teams = 1;
         team0amt = 3;
         §§push(§§findproperty(team1amt));
         §§push(§§findproperty(team2amt));
         §§push(§§findproperty(team3amt));
         if(false)
         {
            return;
         }
         §§pop().team1amt = §§pop().team2amt = §§pop().team3amt = team4amt = 0;
         §§push(§§findproperty(team0diff));
         §§push(§§findproperty(team1diff));
         §§push(team2diff = team3diff = team4diff = 6);
         if(false)
         {
            return;
         }
         §§pop().team0diff = §§pop().team1diff = §§pop();
         creditMod = 1;
         type = "死亡赛\x1f";
         winScore = 20;
         specialMode = "无\x1f";
         weaponsUsed = "All";
         abilitiesOn = true;
         equipsOn = true;
         map = Stats_Maps.getMap(Stats_Maps.mapOrder[0]);
         updatePlayer();
         bots = [];
      }
      
      public static function backupQm() : void
      {
         if(!qmBackup)
         {
            trace("Backing up Quickmatch");
            if(false)
            {
               return;
            }
            qmBackup = {};
            qmBackup.type = type;
            qmBackup.winScore = winScore;
            qmBackup.specialMode = specialMode;
            qmBackup.weaponsUsed = weaponsUsed;
            qmBackup.abilitiesOn = abilitiesOn;
            qmBackup.equipsOn = equipsOn;
            qmBackup.map = map;
            qmBackup.teams = teams;
            return;
         }
      }
      
      public static function restoreQm() : void
      {
         if(qmBackup)
         {
            trace("Restoring Quickmatch");
            type = qmBackup.type;
            if(false)
            {
               return;
            }
            winScore = qmBackup.winScore;
            specialMode = qmBackup.specialMode;
            weaponsUsed = qmBackup.weaponsUsed;
            abilitiesOn = qmBackup.abilitiesOn;
            equipsOn = qmBackup.equipsOn;
            map = qmBackup.map;
            teams = qmBackup.teams;
            setQuickmatchBots();
            qmBackup = null;
            preCutFrames = null;
            preCutSong = null;
            postCutFrames = null;
            postCutSong = null;
            return;
         }
      }
      
      public static function updatePlayer() : void
      {
         player.name = SD.name;
         player.skin = SD.skin;
         player.extra = {};
         player.weapons = SD.gunList.concat();
         player.ability = Stats_Abilities.abilityOrder[SD.ability];
         player.equip0 = SD.equips[0];
         player.equip1 = SD.equips[1];
         player.equip2 = SD.equips[2];
      }
      
      public static function §\x16§(param1:uint, param2:uint = 0) : void
      {
         var _loc3_:String = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc4_:Boolean = false;
         while(!_loc4_)
         {
            _loc4_ = true;
            _loc3_ = UT.randEl(botnames);
            _loc6_ = 0;
            while(_loc6_ < bots.length)
            {
               if(bots[_loc6_].name == _loc3_)
               {
                  _loc4_ = false;
               }
               _loc6_++;
            }
         }
         while(true)
         {
            _loc5_ = uint(UT.irand(0,Stats_Skins.skinAr.length - 1));
            if(!(_loc5_ == 12 || _loc5_ == 13 || Stats_Skins.skinAr[_loc5_].cost < 0))
            {
               break;
            }
         }
         if(_loc3_ == "AddisonR")
         {
            _loc5_ = 12;
         }
         if(_loc3_ == "Juice-Tin")
         {
            _loc5_ = 13;
         }
         §§push(bots);
         §§push("name");
         §§push(_loc3_);
         §§push("diff");
         §§push(param1);
         §§push("skin");
         §§push(_loc5_);
         §§push("team");
         §§push(param2);
         §§push("weapons");
         §§push(§§findproperty(§\x12\f§));
         if(false)
         {
            return false;
         }
         §§push(§§pop().§\x12\f§());
         §§push("ability");
         §§push(UT.randEl(["static","heal","cloak","sword","mine","grenade"]));
         §§push("equip0");
         §§push(param1 < 7 ? 0 : UT.irand(1,5));
         §§push("equip1");
         §§push(param1 < 5 ? 0 : UT.irand(1,5));
         §§push("equip2");
         §§push(param1);
         §§push(9);
         if(false)
         {
            return;
         }
         §§pop().push(null);
      }
      
      public static function §\x12\f§() : Array
      {
         §§push(UT);
         §§push(0);
         §§push(Stats_Armory.gunsAr[0].length - 2);
         if(false)
         {
            return;
         }
         §§push(§§pop().irand(§§pop(),§§pop()));
         §§push(UT.irand(0,Stats_Armory.gunsAr[1].length - 1));
         §§push(UT.irand(0,Stats_Armory.gunsAr[2].length - 1));
         §§push(UT.irand(0,Stats_Armory.gunsAr[3].length - 1));
         §§push(UT.irand(0,Stats_Armory.gunsAr[4].length - 1));
         §§push(UT);
         §§push(0);
         §§push(Stats_Armory.gunsAr[5].length);
         if(false)
         {
            throw true;
         }
         return null;
      }
      
      public static function setQuickmatchBots() : void
      {
         var _loc1_:uint = 0;
         bots = [];
         switch(teams)
         {
            case 0:
            case 1:
               _loc1_ = 0;
               while(_loc1_ < team0amt)
               {
                  §\x16§(team0diff,0);
                  _loc1_++;
               }
               player.team = 0;
               break;
            case 4:
               _loc1_ = 0;
               while(true)
               {
                  if(_loc1_ < team4amt)
                  {
                     §\x16§(team4diff,4);
                     _loc1_++;
                     continue;
                  }
               }
            case 3:
               _loc1_ = 0;
               while(true)
               {
                  if(_loc1_ < team3amt)
                  {
                     §\x16§(team3diff,3);
                     _loc1_++;
                     continue;
                  }
               }
            case 2:
               _loc1_ = 0;
               while(_loc1_ < team1amt)
               {
                  §\x16§(team1diff,1);
                  if(false)
                  {
                     return;
                  }
                  _loc1_++;
               }
               _loc1_ = 0;
               while(_loc1_ < team2amt)
               {
                  §\x16§(team2diff,2);
                  _loc1_++;
               }
               player.team = 1;
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         §§push(§§findproperty(fc));
         if(false)
         {
            return;
         }
         ++§§pop().fc;
         if(MatchSettings.type == "控制赛\x1f" && fc % (30 * 3) == 0)
         {
            _loc1_ = 0;
            while(true)
            {
               §§push(_loc1_);
               §§push(game.arena.holdpoints.length);
               if(false)
               {
                  break;
               }
               if(§§pop() < §§pop())
               {
                  if(game.arena.holdpoints[_loc1_].curTeam)
                  {
                     ++game.arena.holdpoints[_loc1_].unitCaptured.pscore;
                  }
                  _loc1_++;
                  continue;
               }
               updateScores();
            }
            return;
         }
      }
      
      public function updateScores() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:Boolean = false;
         var _loc3_:* = MatchSettings.teams;
         switch(_loc3_)
         {
            case 0:
               §§push(0);
               break;
            case 1:
               §§push(1);
               break;
            case 2:
               §§push(2);
               break;
            default:
               §§push(3);
               if(false)
               {
                  throw true;
               }
               switch(_loc3_)
               {
                  case §§pop():
                     §§push(3);
                     break;
                  case 4:
                     §§push(4);
                     break;
                  default:
                     §§push(5);
               }
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               topFFaScore = -999;
               topFFaScoreUnit = null;
               _loc1_ = 0;
               while(_loc1_ < game.units.length)
               {
                  if(game.units[_loc1_] != game.player)
                  {
                     if(game.units[_loc1_].pscore > topFFaScore)
                     {
                        topFFaScore = game.units[_loc1_].pscore;
                        if(false)
                        {
                           return;
                        }
                        topFFaScoreUnit = game.units[_loc1_];
                     }
                  }
                  _loc1_++;
               }
               canRageQuit = game.player.pscore > 5 && game.player.pscore * 1.5 <= topFFaScore;
               game.hud.setScore(game.player.pscore,topFFaScore,topFFaScoreUnit.name);
               switch(MatchSettings.type)
               {
                  case "淘汰赛\x1f\x1f":
                     if(game.player.pscore != 0)
                     {
                        if(topFFaScore == 0)
                        {
                           game.§\x19\x1b§(true);
                        }
                     }
                     else
                     {
                        game.§\x19\x1b§(false);
                     }
                     break;
                  default:
                     §§push(game.player.pscore);
                     §§push(winScore);
                     if(false)
                     {
                        return false;
                     }
                     if(§§pop() < §§pop())
                     {
                        if(topFFaScore >= winScore)
                        {
                           game.§\x19\x1b§(false);
                        }
                     }
                     else
                     {
                        game.§\x19\x1b§(true);
                     }
               }
               break;
            case 2:
            case 3:
            case 4:
               _loc3_ = MatchSettings.type;
               switch(0)
               {
               }
               team1score = 0;
               team2score = 0;
               team3score = 0;
               if(false)
               {
                  return;
               }
               team4score = 0;
               _loc1_ = 0;
               while(_loc1_ < game.units.length)
               {
                  §§push(this);
                  §§push("team" + game.units[_loc1_].team + "score");
                  §§push(this["team" + game.units[_loc1_].team + "score"]);
                  §§push(game.units);
                  §§push(_loc1_);
                  if(false)
                  {
                     return;
                  }
                  §§pop()[§§pop()] = §§pop() + §§pop()[§§pop()].pscore;
                  _loc1_++;
               }
               topTeam = 2;
               topTeamScore = team2score;
               if(MatchSettings.teams >= 3 && team3score > team2score)
               {
                  topTeam = 3;
                  topTeamScore = team3score;
               }
               if(MatchSettings.teams >= 4 && team4score > team3score)
               {
                  topTeam = 4;
                  topTeamScore = team4score;
                  if(false)
                  {
                     return false;
                  }
               }
               canRageQuit = team1score > 5 && team1score * 1.5 <= topTeamScore;
               game.hud.setScore(team1score,topTeamScore,"Team",topTeam);
               switch(MatchSettings.type)
               {
                  case "淘汰赛\x1f\x1f":
                     _loc2_ = true;
                     _loc1_ = 2;
                     while(_loc1_ <= MatchSettings.teams)
                     {
                        if(this["team" + _loc1_ + "score"] > 0)
                        {
                           _loc2_ = false;
                           if(false)
                           {
                              return;
                           }
                        }
                        _loc1_++;
                     }
                     if(team1score <= 0)
                     {
                        game.§\x19\x1b§(false);
                     }
                     else if(_loc2_)
                     {
                        game.§\x19\x1b§(true);
                     }
                     break;
                  default:
                     if(team1score < winScore)
                     {
                        if(topTeamScore >= winScore)
                        {
                           game.§\x19\x1b§(false);
                           if(false)
                           {
                              return;
                           }
                        }
                     }
                     else
                     {
                        game.§\x19\x1b§(true);
                     }
               }
         }
      }
   }
}


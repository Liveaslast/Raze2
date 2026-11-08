package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x14§;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2GearJointDef;
   import §\x1c\x10§.b2MouseJointDef;
   import §\x1c\x10§.b2PrismaticJointDef;
   import §\x1c\x10§.b2PulleyJointDef;
   import §\x1c\x10§.b2RevoluteJointDef;
   import §\x1c\x10§.b2WeldJointDef;
   import §\x1c\x11§.§\x1e\b§;
   import §\x1c\x11§.§\x1e\t§;
   import §\x1c\x12§.§\x1e\n§;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol73")]
   public class §\t\x06§ extends MovieClip
   {
      
      public var txt_msg:TextField;
      
      public var bar_en:MovieClip;
      
      public var bar_hurt:MovieClip;
      
      public var txt_name:TextField;
      
      public var bar_hp:MovieClip;
      
      public var navarrow:MovieClip;
      
      public var backbar_hp:MovieClip;
      
      public var game:Game;
      
      public var race:String;
      
      public var isJug:Boolean;
      
      public var mDown:Boolean;
      
      public var human:Boolean;
      
      public var matchInfo:Object;
      
      public var flip:Boolean;
      
      public var aimX:Number;
      
      public var aimY:Number;
      
      public var aimRoation:Number;
      
      public var target:*;
      
      public var capturing:Boolean;
      
      public var sEvent:uint = 1;
      
      public var mov:§\x0f\x10§;
      
      public var gun:§\x11\x12§;
      
      public var status:§\t\x14§;
      
      public var score:积分;
      
      public var hasFlag:NodeCtfFlag;
      
      public var treeShoot:uint = 0;
      
      public var keys:uint = 0;
      
      public const UP:uint = 1;
      
      public const DOWN:uint = 2;
      
      public const LEFT:uint = 4;
      
      public const RIGHT:uint = 8;
      
      public var MC:UnitMC;
      
      public var spinMC:Sprite;
      
      public var skin:Stats_Skins;
      
      public var nextAnim:String;
      
      private var surface:String;
      
      private var fc:uint;
      
      private var rotArm:Number;
      
      private var rotReload:Number = 0;
      
      public var respawnTimer:uint = 0;
      
      public var dead:§\x0e\x18§;
      
      public var team:uint = 0;
      
      public var ability:Object;
      
      public var equips:Object;
      
      private var firstSpawn:Boolean = true;
      
      public var pscore:int = 0;
      
      public var diff:uint;
      
      public var abilityPause:Boolean;
      
      public var shootPause:Boolean;
      
      private var msgTimer:uint;
      
      public var permInvis:Boolean;
      
      private var greenBar:ColorTransform;
      
      private var greenBarBack:ColorTransform;
      
      private var blueBar:ColorTransform;
      
      private var blueBarBack:ColorTransform;
      
      private var redBar:ColorTransform;
      
      private var redBarBack:ColorTransform;
      
      private var yellowBar:ColorTransform;
      
      private var yellowBarBack:ColorTransform;
      
      private var navFocus:*;
      
      public var onPoint:Boolean;
      
      public var defendingFlag:Boolean;
      
      public var scale:*;
      
      public function §\t\x06§(param1:Game, param2:Object, param3:Boolean = false)
      {
         var _loc4_:* = 0;
         super();
         game = param1;
         human = param3;
         §§push(§§findproperty(matchInfo));
         if(false)
         {
            return;
         }
         §§pop().matchInfo = param2;
         §\x0b\b§("");
         name = param2.name;
         race = param2.race;
         team = param2.team;
         if(MatchSettings.isCampaign || MatchSettings.abilitiesOn)
         {
            ability = Stats_Abilities.getAbility(param2.ability);
         }
         else
         {
            §§push(§§findproperty(ability));
            §§push(Stats_Abilities);
            §§push("none");
            if(false)
            {
               return;
            }
            §§pop().ability = §§pop().getAbility(§§pop());
         }
         equips = {};
         if(MatchSettings.isCampaign || MatchSettings.equipsOn)
         {
            §§push(0);
            if(false)
            {
               return;
            }
            _loc4_ = §§pop();
            while(_loc4_ < 3)
            {
               equips[Stats_Equipment.getEquipment(_loc4_,param2["equip" + _loc4_]).type] = Stats_Equipment.getEquipment(_loc4_,param2["equip" + _loc4_]).value;
               _loc4_++;
            }
         }
         spinMC = new Sprite();
         addChild(spinMC);
         MC = new UnitMC(this);
         spinMC.addChild(MC);
         spinMC.y = -50;
         §§push(MC);
         §§push(50);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop();
         MC.§\n\x1b§(param2.skin);
         §§push(§§findproperty(gotoAndStop));
         §§push(1);
         if(false)
         {
            return;
         }
         §§pop().gotoAndStop(§§pop() + team * 2 + (!human ? 1 : 0));
         txt_name.text = name;
         mov = new §\x0f\x10§(this);
         gun = new §\x11\x12§(this);
         status = new §\t\x14§(this);
         score = new 积分(this);
         if(Boolean(matchInfo.extra) && Boolean(matchInfo.extra.permInvis))
         {
            permInvis = true;
         }
         if(!(Boolean(matchInfo.extra) && Boolean(matchInfo.extra.noSpawn)))
         {
            if(!(Boolean(matchInfo.extra) && Boolean(matchInfo.extra.spawn)))
            {
               spawn();
            }
            else
            {
               spawn(matchInfo.extra.spawn.x,matchInfo.extra.spawn.y,matchInfo.extra.spawn.node);
            }
         }
         else
         {
            visible = false;
            x = -4000;
            y = -4000;
         }
         greenBar = new ColorTransform();
         greenBar.color = 65280;
         greenBarBack = new ColorTransform();
         greenBarBack.color = 26112;
         blueBar = new ColorTransform();
         blueBar.color = 52479;
         blueBarBack = new ColorTransform();
         blueBarBack.color = 13209;
         redBar = new ColorTransform();
         redBar.color = 16750848;
         redBarBack = new ColorTransform();
         redBarBack.color = 6697728;
         if(false)
         {
            return;
         }
         yellowBar = new ColorTransform();
         yellowBar.color = 16776960;
         yellowBarBack = new ColorTransform();
         yellowBarBack.color = 10053120;
         focusArrow();
      }
      
      public function §\x0b\b§(param1:String = "") : void
      {
         if(param1)
         {
            msgTimer = 2 * 30;
         }
         txt_msg.text = param1;
      }
      
      public function §\x1b\x01§(param1:§\t\x06§, param2:Stats_Guns, param3:Object) : void
      {
         var _loc4_:* = undefined;
         if(score.spree >= 5)
         {
            §§push(param3);
            §§push(score);
            if(false)
            {
               return;
            }
            §§pop().spreeEnd = §§pop().spree;
         }
         if(!game.gameEnded)
         {
            game.hud.addKillFeed(this,param1,param2);
            score.§\x13§();
            if(this != param1)
            {
               if(!param3.teamkill)
               {
                  param1.score.addKill();
                  if(param3.headMult)
                  {
                     ++param1.score.headshots;
                     game.playScreenSound(UT.randEl([S_Headshot1,S_Headshot2,S_Headshot3]),x,y);
                  }
                  if(param3.crotchMult)
                  {
                     var _loc5_:积分 = param1.score;
                     §§push(_loc5_.crotchshots);
                     if(false)
                     {
                        return;
                     }
                     var _loc6_:* = §§pop() + 1;
                     _loc5_.crotchshots = _loc6_;
                     §§push(game);
                     §§push(UT);
                     if(false)
                     {
                        return false;
                     }
                     §§pop().playScreenSound(§§pop().randEl([S_Headshot1,S_Headshot2,S_Headshot3]),x,y);
                  }
                  if(param3.buttMult)
                  {
                     ++param1.score.buttshots;
                     §§push(game);
                     §§push(UT);
                     if(false)
                     {
                        return;
                     }
                     §§pop().playScreenSound(§§pop().randEl([S_Headshot1,S_Headshot2,S_Headshot3]),x,y);
                  }
                  _loc5_ = param1.score;
                  var _loc7_:Number = _loc5_[_loc6_ = "killed" + skin.race] + 1;
                  _loc5_[_loc6_] = _loc7_;
                  if(false)
                  {
                     throw true;
                  }
                  if(isJug)
                  {
                     param3.jugKill = true;
                     param1.setJug();
                  }
                  if(hasFlag)
                  {
                     param3.hasFlag = true;
                  }
               }
               else
               {
                  score.§\x19§();
               }
            }
            else
            {
               score.§\x0b§();
               if(isJug)
               {
                  while(true)
                  {
                     _loc4_ = UT.randEl(game.units);
                     if(_loc4_ != this)
                     {
                        break;
                     }
                  }
                  _loc4_.setJug();
               }
            }
         }
         §§push(hasFlag);
         if(false)
         {
            return;
         }
         if(§§pop())
         {
            game.createEffect(x,y - 50,"flagReset" + hasFlag.team);
            hasFlag.reset();
            hasFlag = null;
            if(false)
            {
               return;
            }
            MC.body.ability.gotoAndStop(ability.sprite);
         }
         dead = game.physWorld.createCorpse(this,param1,param2,param3);
         visible = false;
         respawnTimer = 30 * 5;
         if(human)
         {
            game.aimer.x = -5000;
            game.aimer.y = -5000;
         }
      }
      
      public function setJug() : void
      {
         var _loc1_:uint = 0;
         if(!human)
         {
            game.player.focusArrow(this);
            game.playScreenSound(S_Powerup,x,y);
            §§push(game);
            §§push(x);
            §§push(y - 40);
            §§push("getJug");
            §§push("idle");
            if(false)
            {
               throw true;
            }
            §§pop().createEffect(§§pop(),§§pop(),§§pop(),§§pop(),true);
            _loc1_ = 0;
            while(_loc1_ < game.units.length)
            {
               game.units[_loc1_].changeTeam(1);
               §§push(game.units);
               if(false)
               {
                  return;
               }
               §§pop()[_loc1_].isJug = false;
               _loc1_++;
            }
            changeTeam(2);
            status.heal(999,false);
            isJug = true;
            §§push(§§findproperty(gotoAndStop));
            if(false)
            {
               return;
            }
            §§pop().gotoAndStop("aJug");
         }
         else
         {
            focusArrow();
            game.hud.setDisplay(0,"Juggernaught!");
            game.playScreenSound(S_Powerup,x,y);
            game.createEffect(x,y - 40,"spawn","idle",true);
            _loc1_ = 0;
            while(_loc1_ < game.units.length)
            {
               game.units[_loc1_].changeTeam(2);
               game.units[_loc1_].isJug = false;
               _loc1_++;
            }
            changeTeam(1);
            isJug = true;
            gotoAndStop("pJug");
         }
         game.hud.addCustomFeed(this," has become the Juggernaught!");
      }
      
      public function focusArrow(param1:* = null) : void
      {
         if(param1)
         {
            navarrow.visible = true;
            navFocus = param1;
            if(false)
            {
               return false;
            }
         }
         else
         {
            navarrow.visible = false;
            navFocus = null;
         }
      }
      
      public function changeTeam(param1:uint) : void
      {
         team = param1;
         §§push(§§findproperty(gotoAndStop));
         §§push(1 + team * 2);
         if(!human)
         {
            §§push(1);
         }
         else
         {
            §§push(0);
            if(false)
            {
               return false;
            }
         }
         §§pop().gotoAndStop(§§pop() + §§pop());
         var _loc2_:uint = team;
         switch(_loc2_)
         {
            case 0:
               §§push(0);
               break;
            case 4:
               if(false)
               {
                  return;
               }
               §§push(1);
               break;
            case 1:
               §§push(2);
               break;
            case 2:
               §§push(3);
               break;
            default:
               §§push(3);
               §§push(_loc2_);
               if(false)
               {
                  return;
               }
               if(§§pop() !== §§pop())
               {
                  §§push(5);
                  break;
               }
               §§push(4);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               bar_hp.transform.colorTransform = greenBar;
               backbar_hp.transform.colorTransform = greenBarBack;
               break;
            case 2:
               bar_hp.transform.colorTransform = blueBar;
               backbar_hp.transform.colorTransform = blueBarBack;
               break;
            case 3:
               bar_hp.transform.colorTransform = redBar;
               backbar_hp.transform.colorTransform = redBarBack;
               break;
            case 4:
               bar_hp.transform.colorTransform = yellowBar;
               backbar_hp.transform.colorTransform = yellowBarBack;
         }
      }
      
      public function spawn(param1:Number = 0, param2:Number = 0, param3:String = "") : void
      {
      }
      
      public function getNextWaypoint(param1:NodeWaypoint = null, param2:Boolean = false) : void
      {
      }
      
      public function §\t\x03§(param1:Number, param2:Number, param3:String) : void
      {
         var _loc4_:uint = 0;
         var _loc5_:NodeSpawn = null;
         if(Boolean(matchInfo.extra) && Boolean(matchInfo.extra.noSpawn))
         {
            matchInfo.extra.noSpawn = false;
         }
         MC.goto("idle");
         dead = null;
         visible = true;
         shootPause = abilityPause = false;
         status.reset();
         mov = new §\x0f\x10§(this);
         gun = new §\x11\x12§(this);
         if(Boolean(param1) && Boolean(param2) && Boolean(param3))
         {
            if(!human)
            {
               _loc4_ = 0;
               while(_loc4_ < game.arena.waypoints.length)
               {
                  if(game.arena.waypoints[_loc4_].id == param3)
                  {
                     §§push(§§findproperty(getNextWaypoint));
                     §§push(game.arena.waypoints);
                     §§push(_loc4_);
                     if(false)
                     {
                        return;
                     }
                     §§pop().getNextWaypoint(§§pop()[§§pop()],true);
                     break;
                  }
                  _loc4_++;
               }
            }
            x = param1;
            y = param2;
         }
         else
         {
            _loc5_ = §\x12\x06§();
            setAiSpawnNode(_loc5_);
            x = _loc5_.x + UT.rand(-5,5);
            y = _loc5_.y;
         }
         MC.rotation = 0;
         spinMC.rotation = 0;
         game.createEffect(x,y - 40,"spawn","idle",true);
      }
      
      protected function §\x12\x06§() : NodeSpawn
      {
         var _loc1_:Array = null;
         var _loc2_:NodeSpawn = null;
         if(MatchSettings.type == "夺旗赛\x1f\x1f\x1f\x1f\x1f\x1f\x1f" && Boolean(team))
         {
            _loc1_ = game.arena["spawnsT" + team];
         }
         else
         {
            §§push(game);
            if(false)
            {
               return;
            }
            _loc1_ = §§pop().arena.spawns;
         }
         if(!firstSpawn)
         {
            return UT.randEl(_loc1_);
         }
         do
         {
            _loc2_ = UT.randEl(_loc1_);
         }
         while(_loc2_.initialSpawned);
         _loc2_.initialSpawned = true;
         firstSpawn = false;
         return _loc2_;
      }
      
      protected function setAiSpawnNode(param1:NodeSpawn) : void
      {
      }
      
      public function §\t\x05§() : void
      {
         var _loc1_:uint = 0;
         ++fc;
         if(msgTimer)
         {
            --msgTimer;
         }
         if(msgTimer == 1)
         {
            §\x0b\b§();
         }
         var _temp_3:* = x < 0;
         §§push(_temp_3);
         if(!_temp_3)
         {
            §§pop();
            §§push(y);
            §§push(0);
            if(false)
            {
               return;
            }
            §§push(§§pop() < §§pop());
         }
         if(§§pop() || x > 2880 || y > 2880)
         {
            if(MatchSettings.map.map == "tut")
            {
               game.§\x19\x1b§(false);
            }
            else
            {
               §§push(status);
               §§push(9999);
               if(false)
               {
                  return;
               }
               §§pop().damage(§§pop(),this,Stats_Guns.gunOb["env"],{},true);
            }
         }
         status.EnterFrame();
         gun.EnterFrame();
         MC.EnterFrame();
         if(!abilityPause)
         {
            §§push(mov);
            if(false)
            {
               return;
            }
            §§pop().EnterFrame();
         }
         _loc1_ = 0;
         while(true)
         {
            §§push(_loc1_);
            §§push(game.arena.pickups.length);
            if(false)
            {
               break;
            }
            if(§§pop() >= §§pop())
            {
               onPoint = false;
               capturing = false;
               _loc1_ = 0;
               while(_loc1_ < game.arena.holdpoints.length)
               {
                  if(UT.inBox(x,y,game.arena.holdpoints[_loc1_].x - 120,game.arena.holdpoints[_loc1_].y - 150,240,200))
                  {
                     onPoint = true;
                     capturing = game.arena.holdpoints[_loc1_].curTeam != team;
                     §§push(game);
                     if(false)
                     {
                        return false;
                     }
                     §§pop().arena.holdpoints[_loc1_].capture(this);
                  }
                  _loc1_++;
               }
               _loc1_ = 0;
               while(_loc1_ < game.arena.ctfflags.length)
               {
                  if(UT.inBox(x,y,game.arena.ctfflags[_loc1_].x - 40,game.arena.ctfflags[_loc1_].y - 70,80,95))
                  {
                     game.arena.ctfflags[_loc1_].capture(this);
                  }
                  _loc1_++;
               }
               if(hasFlag)
               {
                  §§push(game);
                  §§push(x + UT.rand(-10,10));
                  §§push(y);
                  §§push(UT);
                  if(false)
                  {
                     return;
                  }
                  §§pop().createParticle(§§pop(),§§pop() + §§pop().rand(-60,0),"raise",{"spd":0.6},"fairy","idle",hasFlag.team != 1 ? 5 : 3);
               }
               mov.§\r\x0e§();
               surface = §\x12\x10§(0,1).toString(16).substring(2);
               if(human)
               {
                  §§push(game.hud);
                  §§push(3);
                  §§push("Surface ID = ");
                  if(false)
                  {
                     return;
                  }
                  §§pop().setDebug(§§pop(),§§pop() + surface);
               }
               var _loc2_:* = surface;
               switch(_loc2_)
               {
                  case "ffff02":
                     §§push(0);
                     break;
                  case "ffff04":
                     §§push(1);
                     break;
                  case "ff00ff":
                     §§push(2);
                     break;
                  case "":
                     §§push(3);
                     break;
                  case "ff0000":
                     §§push(4);
                     break;
                  case "ffffcd":
                     §§push(5);
                     break;
                  case "00fff1":
                     §§push(6);
                     break;
                  case "00fff2":
                     §§push(7);
                     break;
                  case "00fff3":
                     §§push(8);
                     break;
                  case "00fff4":
                     §§push(9);
                     break;
                  case "00fff5":
                     §§push(10);
                     break;
                  case "00fff6":
                     §§push(11);
                     break;
                  default:
                     §§push("00fff7");
                     if(false)
                     {
                        throw true;
                     }
                     switch(_loc2_)
                     {
                        case §§pop():
                           §§push(12);
                           break;
                        case "00fff8":
                           §§push(13);
                           break;
                        case "00fff9":
                           §§push(14);
                           break;
                        case "00ccff":
                           §§push(15);
                           break;
                        case "00ccf3":
                           §§push(16);
                           break;
                        case "00ccf9":
                           §§push(17);
                           break;
                        case "00ccf4":
                           §§push(18);
                           break;
                        case "00ccf8":
                           §§push(19);
                           break;
                        case "993300":
                           §§push(20);
                           break;
                        case "ccffff":
                           §§push(21);
                           break;
                        case "ffffff":
                           §§push(22);
                           break;
                        case "cccccc":
                           §§push(23);
                           break;
                        case "650065":
                           §§push(24);
                           break;
                        case "6699ff":
                           §§push(25);
                           break;
                        default:
                           §§push("000099");
                           §§push(_loc2_);
                           if(false)
                           {
                              return false;
                           }
                           if(§§pop() === §§pop())
                           {
                              §§push(26);
                              break;
                           }
                           switch(_loc2_)
                           {
                              case "00ff00":
                                 §§push(27);
                                 break;
                              case "666666":
                                 §§push(28);
                                 break;
                              case "999999":
                                 §§push(29);
                                 break;
                              case "320000":
                                 §§push(30);
                                 break;
                              case "300000":
                                 §§push(31);
                                 break;
                              case "f00007":
                                 if(false)
                                 {
                                    return false;
                                 }
                                 §§push(32);
                                 break;
                              default:
                                 §§push(33);
                           }
                     }
               }
               switch(§§pop())
               {
                  case 0:
                     Stats_Achievements.setAchievement("cat");
                     break;
                  case 1:
                     Stats_Achievements.setAchievement("health");
                     break;
                  case 2:
                     if(human)
                     {
                        game.hud.gotoAndStop("hud");
                        switch(sEvent)
                        {
                           case 1:
                              game.player.matchInfo.extra.noAmmo = false;
                              game.units[1].matchInfo.extra.speak = "c";
                              game.units[1].gotoAndStop(4);
                              game.units[1].wait(0);
                              break;
                           case 2:
                              game.units[1].matchInfo.extra.speak = "d";
                              game.units[1].gotoAndStop("speak_follow");
                              game.units[1].wait(0);
                              break;
                           case 3:
                              game.units[1].matchInfo.extra.speak = "e";
                              game.units[1].gotoAndStop(4);
                              game.units[1].wait(0);
                              game.arena.bridge.play();
                              game.arena.setShake(4,2);
                              break;
                           case 4:
                              if(false)
                              {
                                 throw true;
                              }
                              game.bgSky.gotoAndStop("tut_missile");
                              break;
                           case 5:
                              break;
                           case 6:
                              game.units[1].gotoAndStop("speak_f2");
                              break;
                           case 7:
                              game.arena.arrow.alpha = 1;
                              game.units[1].gotoAndStop("speak_f3");
                              game.hud.gotoAndStop("ability");
                              game.player.ability = Stats_Abilities.getAbility("ammo");
                              game.player.status.setAbility();
                              if(false)
                              {
                                 throw true;
                              }
                              game.player.MC.body.ability.gotoAndStop("ammo");
                              game.playScreenSound(S_Equip,x,y);
                              break;
                           case 8:
                           case 9:
                              break;
                           case 10:
                              game.units[1].gotoAndStop(4);
                              game.fc = 0;
                        }
                        var _temp_6:* = §§findproperty(sEvent);
                        _loc2_ = §§findproperty(sEvent);
                        var _loc3_:Number = _loc2_.sEvent + 1;
                        _loc2_.sEvent = _loc3_;
                        game.arena.changeWallFrame(sEvent);
                     }
                     break;
                  case 3:
                  case 4:
                     break;
                  case 5:
                     mov.modBrake = 10;
                     break;
                  case 6:
                     mov.modMegaJump = true;
                     mov.modJump = 1.2;
                     break;
                  case 7:
                     mov.modMegaJump = true;
                     mov.modJump = 1.4;
                     break;
                  case 8:
                     mov.modMegaJump = true;
                     mov.modJump = 1.6;
                     break;
                  case 9:
                     mov.modMegaJump = true;
                     mov.modJump = 1.75;
                     break;
                  case 10:
                     mov.modMegaJump = true;
                     mov.modJump = 1.9;
                     break;
                  case 11:
                     mov.modMegaJump = true;
                     mov.modJump = 2.2;
                     break;
                  case 12:
                     mov.modMegaJump = true;
                     mov.modJump = 2.65;
                     break;
                  case 13:
                     mov.modMegaJump = true;
                     mov.modJump = 2.8;
                     break;
                  case 14:
                     mov.modMegaJump = true;
                     mov.modJump = 3.3;
                     break;
                  case 15:
                     mov.modMegaJump = true;
                     if(false)
                     {
                        return false;
                     }
                     mov.modJump = 1.8;
                     mov.modSideJump = -28;
                     break;
                  case 16:
                     mov.modMegaJump = true;
                     mov.modJump = 0.9;
                     §§push(mov);
                     if(false)
                     {
                        return;
                     }
                     §§pop().modSideJump = 37;
                     break;
                  case 17:
                     mov.modMegaJump = true;
                     §§push(mov);
                     if(false)
                     {
                        return;
                     }
                     §§pop().modJump = 1.2;
                     mov.modSideJump = -40;
                     break;
                  case 18:
                     mov.modMegaJump = true;
                     mov.modJump = 1.3;
                     mov.modSideJump = 55;
                     if(false)
                     {
                        return;
                     }
                     mov.modBrake = 3;
                     break;
                  case 19:
                     mov.modMegaJump = true;
                     mov.modJump = 1.3;
                     mov.modSideJump = -55;
                     mov.modBrake = 3;
                     break;
                  case 20:
                     mov.modSpeed = 0.3;
                     mov.modBrake = 0.25;
                     mov.modSlide = 0.2;
                     if(SD.graphPart)
                     {
                        §§push(Math);
                        if(false)
                        {
                           return;
                        }
                        if(§§pop().abs(mov.xVel) > 5 && fc % 3 == 0)
                        {
                           game.createEffect(x,y - 4,"mud_splash");
                        }
                     }
                     break;
                  case 21:
                     mov.modSpeed = 0.3;
                     mov.modBrake = 1;
                     mov.modSlide = 0.3;
                     break;
                  case 22:
                     mov.modBrake = 3;
                     if(SD.graphPart)
                     {
                        var _temp_8:* = fc / 3 % 2 == 0;
                        §§push(_temp_8);
                        if(_temp_8)
                        {
                           §§pop();
                           var _temp_9:* = Boolean(keys & LEFT);
                           §§push(_temp_9);
                           if(!_temp_9)
                           {
                              §§pop();
                              §§push(keys & RIGHT);
                              if(false)
                              {
                                 return;
                              }
                              §§push(Boolean(§§pop()));
                           }
                        }
                        if(§§pop())
                        {
                           game.createEffect(x,y,"footprint");
                        }
                        if(Math.abs(mov.xVel) > 1 && fc % 3 == 0)
                        {
                           game.createEffect(x,y - 4,"snow_splash");
                        }
                     }
                     break;
                  case 23:
                     if(SD.graphPart)
                     {
                        if(fc / 3 % 2 == 0 && (Boolean(keys & LEFT) || Boolean(keys & RIGHT)))
                        {
                           game.createEffect(x,y,"footprint");
                        }
                        if(Math.abs(mov.xVel) > 1 && fc % 3 == 0)
                        {
                           game.createEffect(x,y - 4,"sand_splash");
                        }
                     }
                     break;
                  case 24:
                     mov.modJump = 0.3;
                     mov.modGrav = 0.6;
                     break;
                  case 25:
                     status.sFire = 0;
                     mov.modMax = 0.75;
                     mov.modJump = 0.3;
                     mov.modGrav = 0.6;
                     mov.modBrake = 2;
                     break;
                  case 26:
                     status.sFire = 0;
                     §§push(mov);
                     §§push(0.75);
                     if(false)
                     {
                        return false;
                     }
                     §§pop().modMax = §§pop();
                     mov.modJump = 0.75;
                     mov.modBrake = 2;
                     if(false)
                     {
                        return;
                     }
                     if(SD.graphPart)
                     {
                        if(fc / 3 % 2 == 0 && (Boolean(keys & LEFT) || Boolean(keys & RIGHT)))
                        {
                           game.createEffect(x,y,"footprint");
                        }
                        if(Math.abs(mov.xVel) > 1 && fc % 3 == 0)
                        {
                           game.createEffect(x,y - 4,"sand_splash");
                        }
                     }
                     break;
                  case 27:
                     mov.modMax = 0.6;
                     mov.modJump = 0.6;
                     mov.modBrake = 2;
                     §§push(game);
                     §§push(x + UT.rand(-12,12));
                     §§push(y);
                     §§push(UT);
                     §§push(-18);
                     if(false)
                     {
                        return;
                     }
                     §§pop().createEffect(§§pop(),§§pop() + §§pop().rand(§§pop(),-35),"toxicsizzle");
                     break;
                  case 28:
                     mov.modMove = 8;
                     break;
                  case 29:
                     mov.modMove = -8;
                     break;
                  case 30:
                     status.damage(9999,this,Stats_Guns.gunOb["env"],{},true);
                     break;
                  case 31:
                     §§push(status);
                     §§push(0.5);
                     if(false)
                     {
                        return;
                     }
                     §§pop().damage(§§pop(),this,Stats_Guns.gunOb["env"],{},true);
                     break;
                  case 32:
                     status.damage(0.5,this,Stats_Guns.gunOb["env"],{},true);
                     mov.modMegaJump = true;
                     mov.modJump = 2.6;
               }
               MC.goto(nextAnim);
               flip = !mov.jumping ? UT.fixRotation(aimRoation - MC.rotation) < 0 : aimX < x;
               MC.scaleX = !flip ? 1 : -1;
               §§push(§§findproperty(rotArm));
               §§push(UT);
               §§push(x + MC.arm1.x + MC.rotation * 1.2);
               §§push(y + MC.arm1.y);
               §§push(aimX);
               §§push(aimY);
               if(false)
               {
                  return false;
               }
               §§pop().rotArm = §§pop().getRotation(§§pop(),§§pop(),§§pop(),§§pop()) - 90;
               if(abilityPause)
               {
                  rotArm = (flip ? 180 : 0) + MC.rotation;
               }
               aimRoation = UT.fixRotation(rotArm + 90) + spinMC.rotation;
               if(flip)
               {
                  rotArm = -rotArm + 180;
               }
               §§push(§§findproperty(rotArm));
               §§push(UT.fixRotation(rotArm - rotation));
               if(false)
               {
                  return false;
               }
               §§pop().rotArm = §§pop() + (!flip ? -MC.rotation : MC.rotation);
               rotReload += ((gun.reloading && rotArm < 30 ? 30 : 0) - rotReload) * 0.2;
               MC.arm1.rotation = rotReload + rotArm;
               MC.arm2.rotation = rotReload + rotArm;
               MC.head.rotation = rotReload + rotArm * 0.6;
               if(navFocus)
               {
                  navarrow.rotation = UT.getRotation(x,y,navFocus.x,navFocus.y);
               }
               return;
            }
            if(!game.arena.pickups[_loc1_].taken)
            {
               §§push(UT);
               §§push(x);
               §§push(y);
               §§push(game.arena.pickups[_loc1_].x);
               §§push(40);
               if(false)
               {
                  return;
               }
               if(§§pop().inBox(§§pop(),§§pop(),§§pop() - §§pop(),game.arena.pickups[_loc1_].y - 80,80,150))
               {
                  §§push(game.arena.pickups);
                  §§push(_loc1_);
                  if(false)
                  {
                     return;
                  }
                  §§pop()[§§pop()].getPickup(this);
               }
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §\x1a\x1a§() : void
      {
         var _loc1_:NodeSpawn = null;
         var _loc2_:uint = 0;
         if(!hasFlag)
         {
            if(!diff)
            {
               return;
            }
            if(game.gameStarted)
            {
               §§push(status.§\x11\x10§(ability.usedEnergy));
               if(false)
               {
                  return;
               }
               if(§§pop())
               {
                  if(dead)
                  {
                     return;
                  }
                  if(permInvis)
                  {
                     return;
                  }
                  if(!game.paused)
                  {
                     var _loc3_:* = ability.id;
                     switch(_loc3_)
                     {
                        case "static":
                           §§push(0);
                           break;
                        case "heal":
                           §§push(1);
                           break;
                        case "cloak":
                           §§push(2);
                           break;
                        case "none":
                           §§push(3);
                           break;
                        case "ammo":
                           §§push(4);
                           break;
                        case "sword":
                           §§push(5);
                           break;
                        default:
                           §§push("grenade");
                           §§push(_loc3_);
                           if(false)
                           {
                              return false;
                           }
                           if(§§pop() === §§pop())
                           {
                              §§push(6);
                              break;
                           }
                           switch(_loc3_)
                           {
                              case "mine":
                                 §§push(7);
                                 break;
                              case "teleport":
                                 §§push(8);
                                 break;
                              default:
                                 §§push(9);
                           }
                     }
                     if(false)
                     {
                        return false;
                     }
                     switch(§§pop())
                     {
                        case 0:
                           if(mov.jumping)
                           {
                              return;
                           }
                           gun.reloading = false;
                           game.playScreenSound(S_Static,x,y);
                           if(!human)
                           {
                              if(game.onScreen(x,y))
                              {
                                 game.arena.setShake(3,5);
                              }
                           }
                           else
                           {
                              game.arena.setShake(3,8);
                           }
                           §§push(§§findproperty(abilityPause));
                           §§push(true);
                           if(false)
                           {
                              throw true;
                           }
                           §§pop().abilityPause = §§pop();
                           status.§\b\x1a§(ability.usedEnergy);
                           status.sMirror = ability.duration * 30;
                           MC.goto("armorlock",true);
                           MC.arm1.gotoAndPlay("armorlock");
                           MC.arm2.gotoAndPlay("armorlock");
                           break;
                        case 1:
                           if(human)
                           {
                              game.playScreenSound(S_Heal,x,y);
                           }
                           status.§\b\x1a§(ability.usedEnergy);
                           status.heal(ability.heal,true);
                           if(team)
                           {
                              _loc2_ = 0;
                              while(_loc2_ < game.units.length)
                              {
                                 if(this != game.units[_loc2_])
                                 {
                                    §§push(team);
                                    §§push(game.units[_loc2_]);
                                    if(false)
                                    {
                                       return;
                                    }
                                    if(§§pop() == §§pop().team && UT.getDist(x,y,game.units[_loc2_].x,game.units[_loc2_].y) < 150)
                                    {
                                       game.units[_loc2_].status.heal(ability.healTeam,true);
                                    }
                                 }
                                 _loc2_++;
                              }
                           }
                           break;
                        case 2:
                           if(human)
                           {
                              game.playScreenSound(S_Powerup,x,y);
                           }
                           status.§\b\x1a§(ability.usedEnergy);
                           status.sInvis = ability.duration * 30;
                           break;
                        case 3:
                           break;
                        case 4:
                           if(human)
                           {
                              game.playScreenSound(S_Equip,x,y);
                           }
                           status.§\b\x1a§(100);
                           gun.addClip(gun.curNum,1);
                           game.createEffect(x,y - 45,"getweapon");
                           break;
                        case 5:
                           gun.reloading = false;
                           status.§\b\x1a§(ability.usedEnergy);
                           gun.§\x10\x03§(Stats_Guns.gunOb["sword"]);
                           shootPause = true;
                           MC.arm1.gotoAndPlay("sword");
                           MC.arm2.gotoAndPlay("sword");
                           status.sMirror = 5;
                           MC.body.ability.gotoAndStop("none");
                           game.playScreenSound(S_Whip,x,y);
                           break;
                        case 6:
                           gun.reloading = false;
                           status.§\b\x1a§(ability.usedEnergy);
                           shootPause = true;
                           MC.arm1.gotoAndPlay("grenade");
                           MC.arm2.gotoAndPlay("grenade");
                           game.playScreenSound(S_Whip,x,y);
                           break;
                        case 7:
                           status.§\b\x1a§(ability.usedEnergy);
                           gun.§\x10\x03§(Stats_Guns.gunOb["mine"]);
                           break;
                        case 8:
                           status.§\b\x1a§(ability.usedEnergy);
                           game.createEffect(x,y - 30,"smoke_big");
                           game.playScreenSound(S_Jumppad,x,y);
                           game.createEffect(x,y - 40,"spawn","idle",true);
                           _loc1_ = UT.randEl(game.arena.spawns);
                           setAiSpawnNode(_loc1_);
                           x = _loc1_.x + UT.rand(-5,5);
                           §§push(§§findproperty(y));
                           §§push(_loc1_);
                           if(false)
                           {
                              return;
                           }
                           §§pop().y = §§pop().y;
                           game.createEffect(x,y - 30,"smoke_big");
                           game.playScreenSound(S_Powerup,x,y);
                           game.createEffect(x,y - 40,"spawn","idle",true);
                           mov.xVel = 0;
                           mov.yVel = 0;
                           §§push(mov);
                           if(false)
                           {
                              return;
                           }
                           §§pop().xVelSlide = 0;
                     }
                     return;
                  }
                  return;
               }
               return;
            }
            return;
         }
      }
      
      public function reloadSound() : void
      {
         trace(gun.curGun.frameReload);
         switch(gun.curGun.frameReload)
         {
            case "pistol":
               §§push(0);
               break;
            case "rifle":
               §§push(1);
               break;
            case "shotgun":
               §§push(2);
               break;
            case "sniper":
               §§push(3);
               break;
            case "heavy":
               if(false)
               {
                  return;
               }
               §§push(4);
               break;
            case "rocket":
               §§push(5);
               break;
            default:
               §§push(6);
         }
         switch(§§pop())
         {
            case 0:
               game.playScreenSound(S_reloadPistol,x,y,true);
               break;
            case 1:
               game.playScreenSound(S_reloadRifle,x,y,true);
               break;
            case 2:
               game.playScreenSound(S_reloadShotgun,x,y,true);
               break;
            case 3:
               game.playScreenSound(S_reloadSniper,x,y,true);
               break;
            case 4:
               game.playScreenSound(S_reloadHeavy,x,y,true);
               break;
            case 5:
               game.playScreenSound(S_reloadRocket,x,y,true);
         }
      }
      
      public function abilityExtra() : void
      {
         switch(ability.id)
         {
            case "grenade":
               gun.§\x10\x03§(Stats_Guns.gunOb["grenade"]);
         }
      }
      
      public function abilityDone() : void
      {
         switch(ability.id)
         {
            case "static":
               abilityPause = false;
               gun.setFrame("idle");
               gun.§\x1c\n§();
               break;
            case "sword":
               shootPause = false;
               gun.setFrame("idle");
               gun.§\x1c\n§();
               if(!hasFlag)
               {
                  MC.body.ability.gotoAndStop("sword");
               }
               break;
            case "grenade":
               shootPause = false;
               gun.setFrame("idle");
               gun.§\x1c\n§();
         }
      }
      
      protected function §\x12\x10§(param1:Number = 0, param2:Number = 0) : uint
      {
         return game.arena.wall.getPixel32(x + param1,y + param2);
      }
   }
}


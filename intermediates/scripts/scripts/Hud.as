package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2LineJointDef;
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
   import flash.text.TextFormat;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1568")]
   public class Hud extends MovieClip
   {
      
      public var gun4:§\x11\x07§;
      
      public var txt_pause:TextField;
      
      public var txt_enemyscore:TextField;
      
      public var txt_respawn:TextField;
      
      public var txt_clip:TextField;
      
      public var gun5:§\x11\x07§;
      
      public var bloodscreen:MovieClip;
      
      public var debug1:TextField;
      
      public var gun6:§\x11\x07§;
      
      public var debug2:TextField;
      
      public var txt_songplay:TextField;
      
      public var debug3:TextField;
      
      public var mc_msg:MovieClip;
      
      public var bar_en:MovieClip;
      
      public var txt_songname:TextField;
      
      public var txt_flagscore:TextField;
      
      public var flag1:MovieClip;
      
      public var txt_points:TextField;
      
      public var ammoOutline:MovieClip;
      
      public var bar_shield:MovieClip;
      
      public var flag2:MovieClip;
      
      public var txt_time:TextField;
      
      public var flag3:MovieClip;
      
      public var fps:§\x1b\x06§;
      
      public var txt_gametype:TextField;
      
      public var scorebars:MovieClip;
      
      public var txt_playerscore:TextField;
      
      public var mc_gametype:MovieClip;
      
      public var display_num:MovieClip;
      
      public var bar_ammo0:MovieClip;
      
      public var bar_ammo1:MovieClip;
      
      public var bar_ammo2:MovieClip;
      
      public var txt_pointsearn:TextField;
      
      public var heartbeat:MovieClip;
      
      public var bar_ammo3:MovieClip;
      
      public var gun0:§\x11\x07§;
      
      public var feedbox:MovieClip;
      
      public var weapon:MovieClip;
      
      public var gun1:§\x11\x07§;
      
      public var gun2:§\x11\x07§;
      
      public var display_text:MovieClip;
      
      public var gun3:§\x11\x07§;
      
      private var game:Game;
      
      public var curCredits:int = 0;
      
      private var feedOY:Number;
      
      private var feedToY:Number;
      
      private var feeds:Array;
      
      private var txtFmt:TextFormat;
      
      public var weapHolders:Array;
      
      private var gunNum:uint = 999;
      
      private var colTransOff:ColorTransform;
      
      private var colTransOn:ColorTransform;
      
      private var hpPerc:Number;
      
      private var shPerc:Number;
      
      private var enPerc:Number;
      
      private var gameTime:uint = 0;
      
      private var msgTimer:uint = 0;
      
      private var curSongNum:uint = 0;
      
      public function Hud(param1:Game)
      {
         super();
         addFrameScript(5,§\x15\x1a§);
         game = param1;
         txtFmt = new TextFormat();
         addPoints(0);
         feedOY = feedToY = feedbox.y;
         feeds = [];
         §\f\x05§();
         weapHolders = [];
         var _loc2_:uint = 0;
         while(_loc2_ < 7)
         {
            weapHolders.push(this["gun" + _loc2_]);
            this["gun" + _loc2_].hud = this;
            this["gun" + _loc2_].txt_num.text = "" + (_loc2_ + 1);
            this["gun" + _loc2_].highlight.gotoAndStop(1);
            _loc2_++;
         }
         colTransOff = new ColorTransform();
         colTransOff.color = 13421772;
         colTransOn = new ColorTransform();
         colTransOn.color = 16776960;
         txt_gametype.text = MatchSettings.type;
         mc_gametype.mc_type.gotoAndStop(MatchSettings.type);
         bloodscreen.gotoAndStop(!SD.sblood ? 2 : 1);
         mc_msg.visible = false;
         if(!MatchSettings.isCampaign)
         {
            playSong(false);
            txt_songplay.text = "播放下一首";
         }
         else
         {
            txt_songplay.text = "";
            txt_songname.text = "";
            if(MatchSettings.song)
            {
               SH.playMusic(MatchSettings.song);
            }
         }
         setFlags();
      }
      
      public function playSong(param1:Boolean) : void
      {
         if(!param1)
         {
            §§push(§§findproperty(curSongNum));
            §§push(UT.irand(0,SH.songList.length - 1));
            if(false)
            {
               return;
            }
            §§pop().curSongNum = §§pop();
         }
         else
         {
            ++curSongNum;
            if(curSongNum == SH.songList.length)
            {
               curSongNum = 0;
               if(false)
               {
                  return;
               }
            }
         }
         txt_songname.text = "Song: " + SH.songNames[curSongNum];
         SH.playMusic(SH.songList[curSongNum]);
      }
      
      public function removeCredits(param1:uint) : void
      {
         curCredits -= param1;
         SD.credits -= param1;
         if(SD.credits < 0)
         {
            SD.credits = 0;
         }
         addPoints(0);
      }
      
      public function setFlags() : void
      {
         var _loc1_:uint = 0;
         switch(MatchSettings.type)
         {
            case "夺旗赛\x1f\x1f\x1f\x1f\x1f\x1f\x1f":
               txt_flagscore.text = !game.arena.flag1.unitCaptured ? "" : "Your flag was taken!";
               txt_flagscore.x = 620;
               flag1.gotoAndStop("ctf1" + (!game.arena.flag1.unitCaptured ? "" : "gone"));
               flag2.gotoAndStop("ctf2" + (!game.arena.flag2.unitCaptured ? "" : "gone"));
               flag3.visible = false;
               break;
            case "控制赛\x1f":
               if(false)
               {
                  return false;
               }
               _loc1_ = (game.arena.holdpoints[0].curTeam != 1 ? 0 : 1) + (game.arena.holdpoints[1].curTeam != 1 ? 0 : 1) + (game.arena.holdpoints[2].curTeam != 1 ? 0 : 1);
               txt_flagscore.text = "Points: " + _loc1_ + " per 3 sec";
               txt_flagscore.x = 640;
               flag1.gotoAndStop("dom" + game.arena.holdpoints[0].curTeam);
               flag2.gotoAndStop("dom" + game.arena.holdpoints[1].curTeam);
               §§push(flag3);
               §§push("dom");
               §§push(game.arena);
               if(false)
               {
                  return;
               }
               §§pop().gotoAndStop(§§pop() + §§pop().holdpoints[2].curTeam);
               break;
            default:
               txt_flagscore.text = "";
               flag1.visible = false;
               flag2.visible = false;
               flag3.visible = false;
         }
      }
      
      public function reset() : void
      {
         bloodscreen.scaleX = Math.random() >= 0.5 ? -1 : 1;
         bloodscreen.scaleY = Math.random() >= 0.5 ? -1 : 1;
         var _loc1_:uint = 0;
         while(_loc1_ < weapHolders.length)
         {
            weapHolders[_loc1_].gotoAndStop(1);
            _loc1_++;
         }
      }
      
      public function setCampMsg(param1:*, param2:String, param3:Number = 4, param4:* = "") : void
      {
         msgTimer = 0;
         §\x0b\b§(param1,param2,param3,param4);
         SH.playSound(S_ClickGo);
         mc_msg.x = 268;
         mc_msg.y = 64;
      }
      
      public function §\x0b\b§(param1:*, param2:String, param3:Number = 4, param4:* = "") : void
      {
         var _loc5_:uint = 0;
         if(!(param1 is String))
         {
            _loc5_ = uint(param1.skin.frame);
            if(!param4)
            {
               param4 = param1.name;
            }
         }
         else
         {
            _loc5_ = uint(Stats_Skins.skinOb[param1].frame);
            if(!param4)
            {
               param4 = Stats_Skins.skinOb[param1].name;
            }
         }
         mc_msg.visible = true;
         mc_msg.alpha = 1;
         §§push(mc_msg.txt_name);
         if(false)
         {
            return;
         }
         §§pop().text = param4;
         mc_msg.txt_msg.text = param2;
         mc_msg.head.gotoAndStop(MatchSettings.specialMode != "lol猫\x1f\x1f" ? _loc5_ : "cat");
         mc_msg.body.gotoAndStop(_loc5_);
         mc_msg.arm.gotoAndStop(_loc5_);
         mc_msg.body.ability.gotoAndStop("none");
         msgTimer = 30 * param3;
         mc_msg.gotoAndPlay(2);
         mc_msg.x = 44;
         mc_msg.y = 38;
      }
      
      public function setHealth(param1:Number, param2:Number, param3:Number) : void
      {
         hpPerc = param2;
         shPerc = param3;
         if(hpPerc != 0)
         {
            §§push(bloodscreen);
            §§push(0.4 - hpPerc * 0.4);
            §§push(0.8);
            if(false)
            {
               return;
            }
            §§pop().alpha = §§pop() * §§pop();
         }
         else
         {
            §§push(bloodscreen);
            if(false)
            {
               throw true;
            }
            §§pop().alpha = 1;
         }
         bar_shield.height = shPerc * 33;
         if(hpPerc > 0.5)
         {
            §§push(1);
            §§push(hpPerc);
            if(false)
            {
               return false;
            }
            §§push(uint((§§pop() - §§pop() * 2) * 255));
         }
         else
         {
            §§push(255);
         }
         var _loc4_:uint = §§pop();
         §§push(hpPerc < 0.5 ? uint(hpPerc * 2 * 255) : 255);
         if(false)
         {
            return false;
         }
         var _loc5_:* = §§pop();
         var _loc6_:uint = 80;
         var _loc7_:ColorTransform = heartbeat.transform.colorTransform;
         §§push(_loc7_);
         §§push(_loc4_ << 16);
         §§push(_loc5_ << 8);
         if(false)
         {
            throw true;
         }
         §§pop().color = §§pop() | §§pop() | _loc6_;
         heartbeat.transform.colorTransform = _loc7_;
         heartbeat.txt_health.text = Math.ceil(param1) + "%";
      }
      
      public function setEnergy(param1:Number) : void
      {
         enPerc = param1;
         bar_en.width = enPerc * 130;
      }
      
      public function setScore(param1:int = 0, param2:int = 0, param3:String = "", param4:uint = 0) : void
      {
         param1 = Math.max(0,param1);
         param2 = Math.max(0,param2);
         §§push(param2);
         §§push(0);
         if(false)
         {
            return;
         }
         if(§§pop() == §§pop() && param4 == 0)
         {
            param3 = "";
         }
         if(!param4)
         {
            txt_playerscore.text = game.player.name + ": " + param1;
         }
         else
         {
            txt_playerscore.text = "Blue Team: " + param1;
         }
         if(!param3)
         {
            txt_enemyscore.text = "";
         }
         else if(param4)
         {
            txt_enemyscore.text = UT.getEl(param4,["FFA","Blue","Orange","Yellow","Green"]) + " Team: " + param2;
         }
         else
         {
            txt_enemyscore.text = param3 + ": " + param2;
         }
         if(param4)
         {
            txt_playerscore.textColor = 10735615;
            scorebars.bar1.gotoAndStop(3);
         }
         else
         {
            txt_playerscore.textColor = 16777113;
            scorebars.bar1.gotoAndStop(1);
         }
         if(param3)
         {
            §§push(txt_enemyscore);
            §§push(UT);
            §§push(param4);
            §§push(16777215);
            §§push(10735615);
            §§push(16750950);
            §§push(16777113);
            if(false)
            {
               return;
            }
            §§pop().textColor = §§pop().getEl(§§pop(),null);
            scorebars.bar2.gotoAndStop(param4 + 2);
         }
         if(param1 < param2)
         {
            txt_enemyscore.text = "> " + txt_enemyscore.text;
         }
         else
         {
            §§push(txt_playerscore);
            §§push("> ");
            §§push(txt_playerscore);
            if(false)
            {
               return;
            }
            §§pop().text = §§pop() + §§pop().text;
         }
         §§push(MatchSettings.type);
         if(false)
         {
            throw true;
         }
         var _temp_2:* = §§pop() == "淘汰赛\x1f\x1f";
         §§push(_temp_2);
         if(_temp_2)
         {
            §§pop();
            §§push(MatchSettings.teams);
            if(false)
            {
               return false;
            }
            §§push(§§pop() > 1);
         }
         if(!§§pop())
         {
            scorebars.mask1.x = param1 / MatchSettings.winScore * -124;
            scorebars.mask2.x = param2 / MatchSettings.winScore * -124;
         }
         else
         {
            scorebars.mask1.x = param1 / MatchSettings.elimTeamScore1 * -124;
            scorebars.mask2.x = param2 / MatchSettings["elimTeamScore" + param4] * -124;
         }
      }
      
      public function setDisplay(param1:uint = 0, param2:String = "") : void
      {
         if(param2)
         {
            display_text.txt_text.text = param2;
            display_text.gotoAndPlay(2);
         }
         param1 = Math.ceil(param1 * MatchSettings.creditMod);
         if(param1)
         {
            display_num.txt_num.text = "+" + param1;
            display_num.gotoAndPlay(2);
            addPoints(param1);
         }
      }
      
      public function §\r\x02§(param1:uint, param2:uint, param3:uint) : void
      {
         var _loc6_:uint = 0;
         var _loc4_:uint = 1;
         if(param2 > 25)
         {
            _loc4_ = 2;
         }
         if(param2 > 50)
         {
            if(false)
            {
               return;
            }
            _loc4_ = 3;
         }
         if(param2 > 75)
         {
            _loc4_ = 4;
         }
         var _loc5_:uint = param2 / _loc4_;
         if(gunNum != param3)
         {
            gunNum = param3;
            _loc6_ = 0;
            while(_loc6_ < 4)
            {
               this["bar_ammo" + _loc6_].visible = false;
               _loc6_++;
            }
            §§push(ammoOutline);
            if(false)
            {
               return;
            }
            §§pop().graphics.clear();
            ammoOutline.graphics.lineStyle(1,3355443,1);
            _loc6_ = 1;
            while(_loc6_ < _loc5_)
            {
               ammoOutline.graphics.moveTo(_loc6_ * (58 / _loc5_),0);
               ammoOutline.graphics.lineTo(_loc6_ * (58 / _loc5_),14);
               §§push(_loc6_);
               if(false)
               {
                  return;
               }
               _loc6_ = §§pop() + 1;
            }
            _loc6_ = 0;
            while(_loc6_ < _loc4_)
            {
               §§push(this);
               §§push("bar_ammo" + _loc6_);
               if(false)
               {
                  throw true;
               }
               §§pop()[§§pop()].visible = true;
               §§push(this["bar_ammo" + _loc6_]);
               §§push(ammoOutline.y);
               §§push(_loc6_);
               §§push(14 / _loc4_);
               if(false)
               {
                  return;
               }
               §§pop().y = §§pop() + §§pop() * §§pop();
               this["bar_ammo" + _loc6_].height = 14 / _loc4_;
               ammoOutline.graphics.moveTo(0,_loc6_ * (14 / _loc4_));
               ammoOutline.graphics.lineTo(58,_loc6_ * (14 / _loc4_));
               §§push(_loc6_ + 1);
               if(false)
               {
                  return;
               }
               _loc6_ = §§pop();
            }
         }
         var _loc7_:uint = _loc4_;
         §§push(1);
         if(false)
         {
            return;
         }
         switch(_loc7_)
         {
            case §§pop():
               bar_ammo0.width = param1 / _loc5_ * 58;
               break;
            case 2:
               bar_ammo0.width = Math.max(0,param1 - _loc5_) / _loc5_ * 58;
               bar_ammo1.width = Math.min(param1,_loc5_) / _loc5_ * 58;
               if(false)
               {
                  return;
               }
               break;
            case 3:
               bar_ammo0.width = Math.max(0,param1 - _loc5_ * 2) / _loc5_ * 58;
               bar_ammo1.width = Math.max(0,Math.min(_loc5_,param1 - _loc5_)) / _loc5_ * 58;
               bar_ammo2.width = Math.max(0,Math.min(_loc5_,param1)) / _loc5_ * 58;
               break;
            case 4:
               bar_ammo0.width = Math.max(0,param1 - _loc5_ * 3) / _loc5_ * 58;
               §§push(bar_ammo1);
               §§push(Math.max(0,Math.min(_loc5_,param1 - _loc5_ * 2)) / _loc5_);
               §§push(58);
               if(false)
               {
                  return false;
               }
               §§pop().width = §§pop() * §§pop();
               bar_ammo2.width = Math.max(0,Math.min(_loc5_,param1 - _loc5_)) / _loc5_ * 58;
               bar_ammo3.width = Math.max(0,Math.min(_loc5_,param1)) / _loc5_ * 58;
         }
      }
      
      public function setMiniAmmoBars() : void
      {
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         if(game.player)
         {
            §§push(game.player.gun.ammo);
            if(false)
            {
               return;
            }
            var _loc1_:* = §§pop();
            var _loc2_:Array = game.player.gun.gunSet;
            var _loc3_:uint = game.player.gun.curNum;
            var _loc4_:uint = 0;
            while(_loc4_ < weapHolders.length)
            {
               if(weapHolders[_loc4_].bar_ammo)
               {
                  _loc5_ = _loc1_[_loc4_].cur + _loc1_[_loc4_].clip * _loc2_[_loc4_].clipSize;
                  _loc6_ = _loc2_[_loc4_].clipMax * _loc2_[_loc4_].clipSize;
                  §§push(weapHolders[_loc4_].bar_ammo);
                  if(false)
                  {
                     return false;
                  }
                  §§pop().width = _loc5_ / _loc6_ * 56;
                  weapHolders[_loc4_].bar_ammo.transform.colorTransform = colTransOff;
                  if(_loc5_ != 0)
                  {
                     weapHolders[_loc4_].weapon.alpha = 1;
                  }
                  else
                  {
                     weapHolders[_loc4_].weapon.alpha = 0.3;
                  }
               }
               _loc4_++;
            }
            if(weapHolders[_loc3_].bar_ammo)
            {
               weapHolders[_loc3_].bar_ammo.transform.colorTransform = colTransOn;
            }
            return;
         }
      }
      
      public function setHeartBeat() : void
      {
         if(hpPerc != 0)
         {
            if(hpPerc >= 0.35)
            {
               if(hpPerc >= 0.71)
               {
                  heartbeat.gotoAndPlay("full");
               }
               else
               {
                  heartbeat.gotoAndPlay("half");
               }
            }
            else
            {
               heartbeat.gotoAndPlay("low");
            }
         }
         else
         {
            heartbeat.gotoAndPlay("empty");
         }
      }
      
      public function EnterFrame() : void
      {
         if(!msgTimer)
         {
            mc_msg.visible = false;
         }
         else
         {
            --msgTimer;
            §§push(msgTimer);
            if(false)
            {
               return false;
            }
            if(§§pop() <= 15)
            {
               mc_msg.alpha -= 0.05;
            }
         }
         var _temp_2:* = §§findproperty(gameTime);
         var _loc1_:* = §§findproperty(gameTime);
         var _loc2_:Number = _loc1_.gameTime + 1;
         §§push(_loc1_);
         §§push(_loc2_);
         if(false)
         {
            return;
         }
         §§pop().gameTime = §§pop();
         txt_time.text = UT.getTimeString(gameTime,true);
         if(MatchSettings.isCampaign && MatchSettings.matchLevel == 14)
         {
            if(MatchSettings.matchType == 0)
            {
               if(gameTime == 30 * 4 * 60)
               {
                  setCampMsg("girl","Sir, we\'re too late...",6,"Dani");
               }
               if(gameTime == 30 * 4 * 60 + 30 * 5)
               {
                  game.§\x19\x1b§(false);
               }
            }
            else
            {
               §§push(MatchSettings);
               if(false)
               {
                  return;
               }
               if(§§pop().matchType == 1)
               {
                  if(gameTime == 30 * 4 * 60)
                  {
                     §§push(§§findproperty(setCampMsg));
                     §§push(game.units[0]);
                     §§push("Time is up comrads, we are all doomed...");
                     if(false)
                     {
                        return false;
                     }
                     §§pop().setCampMsg(§§pop(),§§pop(),6);
                  }
                  if(gameTime == 30 * 4 * 60 + 30 * 5)
                  {
                     game.§\x19\x1b§(false);
                  }
               }
            }
         }
         if(!txt_pause.hitTestPoint(mouseX,mouseY,false))
         {
            txt_pause.textColor = 13421772;
         }
         else
         {
            §§push(txt_pause);
            if(false)
            {
               return;
            }
            §§pop().textColor = 16777215;
         }
         if(!txt_songplay.hitTestPoint(mouseX,mouseY,false))
         {
            txt_songplay.textColor = 13421772;
         }
         else
         {
            txt_songplay.textColor = 16777215;
         }
         if(feedbox.y > feedToY + 15)
         {
            feeds.pop();
            §\f\x05§();
         }
         if(feedbox.y < feedOY)
         {
            §§push(feedbox);
            §§push(feedbox.y);
            §§push(feeds);
            if(false)
            {
               return;
            }
            §§pop().y = §§pop() + §§pop().length * 0.06;
         }
      }
      
      public function addPoints(param1:uint) : void
      {
         SD.credits += param1;
         curCredits += param1;
         txt_points.text = UT.addNumCommas(SD.credits) + " cr";
         if(false)
         {
            return;
         }
         §§push(txt_pointsearn);
         §§push(UT.addNumCommas(curCredits) + " cr");
         if(false)
         {
            return;
         }
         §§pop().text = §§pop();
      }
      
      public function addKillFeed(param1:§\t\x06§, param2:§\t\x06§, param3:Stats_Guns) : void
      {
         var _loc4_:uint = !(Boolean(param2.team) && param2.team == game.player.team) ? 16751001 : 10092543;
         if(param2 == game.player)
         {
            _loc4_ = 3407871;
         }
         var _temp_2:* = Boolean(param1.team);
         §§push(_temp_2);
         if(_temp_2)
         {
            §§pop();
            §§push(param1.team);
            §§push(game);
            if(false)
            {
               return false;
            }
            §§push(§§pop() == §§pop().player.team);
         }
         var _loc5_:uint = !§§pop() ? 16751001 : 10092543;
         if(param1 == game.player)
         {
            _loc5_ = 3407871;
            if(false)
            {
               return;
            }
         }
         if(param1 != param2)
         {
            feeds.unshift({
               "txt":[param2.name," (" + param3.name + ")> ",param1.name],
               "col":[_loc4_,13421772,_loc5_]
            });
            §\x0e\t§();
            return;
         }
         §§push(feeds);
         §§push("txt");
         §§push(["Suicide"," (" + param3.name + ")> ",param2.name]);
         §§push("col");
         if(false)
         {
            return;
         }
         §§pop().unshift(null);
         §§push(§§findproperty(§\x0e\t§));
         if(false)
         {
            throw true;
         }
         §§pop().§\x0e\t§();
      }
      
      public function addCustomFeed(param1:§\t\x06§, param2:String) : void
      {
         var _loc3_:uint = !(Boolean(param1.team) && param1.team == game.player.team) ? 16751001 : 10092543;
         if(param1 == game.player)
         {
            _loc3_ = 3407871;
         }
         feeds.unshift({
            "txt":[param1.name + param2],
            "col":[_loc3_]
         });
         §\x0e\t§();
      }
      
      public function §\x0e\t§() : void
      {
         var _loc1_:uint = 0;
         var _loc3_:uint = 0;
         if(feeds.length > 13)
         {
            feeds.pop();
         }
         feedbox.txt_feed.text = "";
         _loc1_ = 0;
         while(_loc1_ < feeds.length)
         {
            feedbox.txt_feed.text += feeds[_loc1_].txt.join("") + "\n";
            _loc1_++;
         }
         var _loc2_:uint = 0;
         _loc1_ = 0;
         loop1:
         while(_loc1_ < feeds.length)
         {
            _loc3_ = 0;
            while(true)
            {
               §§push(_loc3_);
               §§push(feeds[_loc1_].txt);
               if(false)
               {
                  break;
               }
               if(§§pop() < §§pop().length)
               {
                  §§push(txtFmt);
                  §§push(feeds[_loc1_].col[_loc3_]);
                  if(false)
                  {
                     return;
                  }
                  continue;
               }
               continue loop1;
               §§pop().color = §§pop();
               feedbox.txt_feed.setTextFormat(txtFmt,_loc2_,_loc2_ + feeds[_loc1_].txt[_loc3_].length + 1);
               _loc2_ += feeds[_loc1_].txt[_loc3_].length;
               _loc2_ += 1;
               _loc1_++;
               _loc3_++;
            }
            return;
         }
         §\f\x05§();
         if(feeds.length != 13)
         {
            feedbox.y -= (!feeds.length ? 5 : 0) + 15;
         }
         else
         {
            §\f\x05§();
         }
      }
      
      public function §\f\x05§() : void
      {
         feedToY = feedOY - (!feeds.length ? 0 : 5) - feeds.length * 15;
      }
      
      public function setDebug(param1:uint, param2:String) : void
      {
         this["debug" + param1].text = param2;
      }
      
      internal function §\x15\x1a§() : *
      {
         stop();
      }
   }
}

§§push(§§findproperty(Hud));
§§push(InteractiveObject);
if(false)
{
   return;
}


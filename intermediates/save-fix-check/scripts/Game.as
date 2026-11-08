package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x14§;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2FrictionJointDef;
   import §\x1c\x10§.b2GearJointDef;
   import §\x1c\x10§.b2Joint;
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
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.filters.BlurFilter;
   import flash.filters.GlowFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.media.SoundTransform;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;
   import flash.system.System;
   import flash.text.TextField;
   
   public class Game extends Sprite
   {
      
      public var main:Main;
      
      public var arena:§\x01§;
      
      public var bg1:§\x1c\x1c§;
      
      public var bg2:§\x1c\x1c§;
      
      public var bgSky:§\x1c\x1b§;
      
      public var hud:Hud;
      
      public var player:Player;
      
      public var units:Array;
      
      public var matchSettings:MatchSettings;
      
      public var unitCont:Sprite;
      
      public var lineCont:Shape;
      
      public var effects:Array;
      
      public var bullets:Array;
      
      public var bitscreen:§\x1c\x1a§;
      
      public var fc:uint = 0;
      
      public var aimer:§\b§;
      
      private var mapParticles:§\t\x15§;
      
      public var water:§\b\x19§;
      
      public var physWorld:§\x0e\x16§;
      
      public var gameStarted:Boolean;
      
      public var gameEnded:Boolean;
      
      public var paused:Boolean;
      
      public var pauseCountdown:Boolean;
      
      public var pauseScreen:§\x0e\x19§;
      
      public var pauseBlur:Number;
      
      private var blackBox:Sprite;
      
      public function Game(param1:Main, param2:Object)
      {
         super();
         main = param1;
         if(false)
         {
            return;
         }
         NodePickup.RotateNum = 0;
         matchSettings = new MatchSettings(this);
         pauseScreen = new §\x0e\x19§(this);
         bgSky = new §\x1c\x1b§();
         addChild(bgSky);
         bg2 = new §\x1c\x1c§();
         addChild(bg2);
         bg1 = new §\x1c\x1c§();
         addChild(bg1);
         §§push(§§findproperty(mapParticles));
         §§push(§§findproperty(§\t\x15§));
         §§push(this);
         §§push(MatchSettings);
         if(false)
         {
            throw true;
         }
         §§pop().mapParticles = new §§pop().§\t\x15§(§§pop(),§§pop().map.particles);
         arena = new §\x01§(this);
         addChild(arena);
         blackBox = new Sprite();
         addChild(blackBox);
         blackBox.graphics.lineStyle(1,0);
         blackBox.graphics.beginFill(0);
         if(false)
         {
            return;
         }
         blackBox.graphics.moveTo(0,0);
         blackBox.graphics.lineTo(Main.WIDTH,0);
         blackBox.graphics.lineTo(Main.WIDTH,Main.HEIGHT);
         blackBox.graphics.lineTo(0,Main.HEIGHT);
         blackBox.graphics.lineTo(0,0);
         blackBox.graphics.endFill();
         physWorld = new §\x0e\x16§(this,MatchSettings.map.moon);
         aimer = new §\b§();
         unitCont = new Sprite();
         lineCont = new Shape();
         water = new §\b\x19§(this);
         bitscreen = new §\x1c\x1a§(this);
         units = [];
         effects = [];
         bullets = [];
         Main.STAGE.quality = UT.getEl(SD.graphQual,["low","medium","high"]);
         if(false)
         {
            return;
         }
      }
      
      public function §\x11\x01§() : void
      {
         removeChild(blackBox);
         blackBox = null;
         arena.midCont.addChild(unitCont);
         arena.midCont.addChild(lineCont);
         arena.midCont.addChild(physWorld);
         arena.midCont.addChild(water);
         arena.setChildIndex(arena.topCont,arena.numChildren - 1);
         addChild(bitscreen);
         addChild(aimer);
         hud = new Hud(this);
         addChild(hud);
         addChild(pauseScreen);
         pauseScreen.gotoAndPlay("countdown");
         player = new Player(this,MatchSettings.player);
         §\x1b\t§(player);
         var _loc1_:uint = 0;
         while(_loc1_ < MatchSettings.bots.length)
         {
            §§push(§§findproperty(§\x1b\t§));
            §§push(§§findproperty(§\t§));
            §§push(this);
            §§push(MatchSettings.bots);
            if(false)
            {
               return;
            }
            §§pop().§\x1b\t§(new §§pop().§\t§(§§pop(),§§pop()[_loc1_],(_loc1_ + 1) * 2,MatchSettings.bots.length * 2));
            _loc1_++;
         }
         if(MatchSettings.type == "重装机甲")
         {
            UT.randEl(units).setJug();
         }
         hud.setScore(0,0,null,player.team);
         arena.focus(player,true);
         mapParticles.§\x0f\x1d§();
         matchSettings.updateScores();
      }
      
      public function §\t\x18§() : void
      {
         gameStarted = true;
         paused = false;
         pauseCountdown = false;
         §\b\x1d§();
      }
      
      public function §\x19\x1b§(param1:Boolean) : void
      {
         if(!gameEnded)
         {
            gameEnded = true;
            pauseScreen.gotoAndPlay("gamedone");
            pauseScreen.won = param1;
            return;
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         if(!paused)
         {
            ++fc;
            if(MatchSettings.qmBackup)
            {
               Stats_Campaign.runScripts(this);
            }
            mapParticles.EnterFrame();
            arena.EnterFrame();
            physWorld.EnterFrame();
            lineCont.graphics.clear();
            hud.EnterFrame();
            _loc1_ = 0;
            while(_loc1_ < units.length)
            {
               units[_loc1_].EnterFrame();
               _loc1_++;
            }
            bitscreen.EnterFrame();
            _loc1_ = 0;
            while(_loc1_ < arena.pickups.length)
            {
               arena.pickups[_loc1_].EnterFrame();
               _loc1_++;
            }
            _loc1_ = 0;
            while(_loc1_ < bullets.length)
            {
               bullets[_loc1_].EnterFrame();
               §§push(_loc1_);
               if(false)
               {
                  return;
               }
               _loc1_ = §§pop() + 1;
            }
            _loc1_ = 0;
            while(_loc1_ < bullets.length)
            {
               §§push(bullets[_loc1_]);
               if(false)
               {
                  throw true;
               }
               if(§§pop().remove)
               {
                  bullets.splice(_loc1_,1);
                  _loc1_--;
               }
               _loc1_++;
            }
            _loc1_ = 0;
            while(_loc1_ < effects.length)
            {
               effects[_loc1_].EnterFrame();
               _loc1_++;
            }
            _loc1_ = 0;
            while(_loc1_ < effects.length)
            {
               if(effects[_loc1_].remove)
               {
                  effects.splice(_loc1_,1);
                  _loc1_--;
               }
               _loc1_++;
            }
            arena.§\x1a\x13§();
            hud.setDebug(1,"Bullets in game: " + bullets.length);
            hud.setDebug(2,"Particles on screen: " + effects.length);
            if(!gameEnded)
            {
               matchSettings.EnterFrame();
            }
            water.EnterFrame();
            return;
         }
         if(!pauseCountdown)
         {
            pauseBlur += (7 - pauseBlur) * 0.2;
            if(pauseBlur < 6.5 && SD.pblur)
            {
               bitscreen.filters = [new BlurFilter(pauseBlur,pauseBlur,3)];
            }
            pauseScreen.EnterFrame();
         }
      }
      
      public function playScreenSound(param1:*, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         if(onScreen(param2,param3))
         {
            SH.playSound(param1,param4);
         }
      }
      
      public function onScreen(param1:Number, param2:Number, param3:uint = 0) : Boolean
      {
         var _loc4_:Number = param1 + arena.x;
         §§push(param2);
         §§push(arena);
         if(false)
         {
            return;
         }
         var _loc5_:Number = §§pop() + §§pop().y;
         return _loc4_ > 0 - param3 && _loc4_ < Main.WIDTH + param3 && _loc5_ > 0 - param3 && _loc5_ < Main.HEIGHT + param3;
      }
      
      public function createEffect(param1:Number, param2:Number, param3:String, param4:String = "idle", param5:Boolean = false) : void
      {
         if(!(!param5 && !onScreen(param1,param2,80)))
         {
            effects.push(new §\x1a\x03§(this,param1,param2,param3,param4,1));
            return;
         }
      }
      
      public function §\x1b\x0f§(param1:Number, param2:Number, param3:String, param4:String = "idle", param5:uint = 1, param6:Boolean = false) : void
      {
         if(!(!param6 && !onScreen(param1,param2,80)))
         {
            effects.push(new §\x1a\x03§(this,param1,param2,param3,param4,param5));
            return;
         }
      }
      
      public function createParticle(param1:Number, param2:Number, param3:String, param4:Object, param5:String, param6:String = "idle", param7:uint = 0, param8:Boolean = false) : void
      {
         if(!(!param8 && !onScreen(param1,param2,300)))
         {
            effects.push(new §\x0e\x1a§(this,param1,param2,param3,param4,param5,param6,param7));
            return;
         }
      }
      
      public function §\x1b\t§(param1:*, param2:Number = 0, param3:Number = 0) : void
      {
         if(param2)
         {
            param1.x = param2;
         }
         if(param3)
         {
            param1.y = param3;
         }
         unitCont.addChild(param1);
         units.push(param1);
      }
      
      public function MouseDown() : void
      {
         if(paused)
         {
            pauseScreen.MouseDown();
         }
         player.MouseDown();
      }
      
      public function MouseUp() : void
      {
         player.MouseUp();
      }
      
      public function KeyDown(param1:KeyboardEvent) : void
      {
         player.KeyDown(param1);
         if(param1.keyCode == 80)
         {
            §§push(System);
            §§push(int(mouseX - arena.x) + ", ");
            §§push(§§findproperty(int));
            §§push(mouseY);
            if(false)
            {
               return;
            }
            §§pop().setClipboard(§§pop() + §§pop().int(§§pop() - arena.y));
         }
      }
      
      public function KeyUp(param1:KeyboardEvent) : void
      {
         player.KeyUp(param1);
      }
      
      public function flashActivate() : void
      {
      }
      
      public function flashDeactivate() : void
      {
         if(!paused)
         {
            §\t\n§();
         }
         player.§\r\x17§();
      }
      
      public function §\t\n§() : void
      {
         var _loc1_:BitmapData = null;
         var _loc2_:uint = 0;
         if(!(pauseScreen.currentLabel == "Start Pause" || pauseScreen.currentLabel == "gamedone" || pauseScreen.currentLabel == "countdown"))
         {
            if(!paused)
            {
               Main.STAGE.quality = "high";
               paused = true;
               hud.visible = false;
               aimer.visible = false;
               hud.heartbeat.stop();
               _loc1_ = bitscreen.data.clone();
               bitscreen.data.draw(this);
               §§push(bitscreen.data);
               §§push(_loc1_);
               §§push(§§findproperty(Rectangle));
               §§push(0);
               if(false)
               {
                  return;
               }
               var _temp_3:* = §§pop();
               §§pop().copyPixels(§§pop(),new §§pop().Rectangle(_temp_3,_temp_3,Main.WIDTH,Main.HEIGHT),new Point(0,0),null,null,true);
               _loc1_.dispose();
               pauseBlur = 0;
               _loc2_ = 0;
               while(true)
               {
                  §§push(_loc2_);
                  §§push(units);
                  if(false)
                  {
                     break;
                  }
                  if(§§pop() < §§pop().length)
                  {
                     units[_loc2_].MC.stop();
                     §§push(units);
                     §§push(_loc2_);
                     if(false)
                     {
                        return;
                     }
                     continue;
                  }
                  pauseScreen.gotoAndPlay("Start Pause");
                  §§pop()[§§pop()].MC.arm1.stop();
                  units[_loc2_].MC.arm2.stop();
                  _loc2_++;
               }
               return;
            }
            SD.saveSettings();
            pauseCountdown = true;
            bitscreen.filters = [];
            if(false)
            {
               return;
            }
            hud.visible = true;
            aimer.visible = true;
            pauseScreen.gotoAndPlay("countdown");
            hud.heartbeat.play();
            §\b\x1d§();
            return;
         }
      }
      
      public function §\b\x1d§() : void
      {
         if(paused)
         {
            Main.STAGE.quality = UT.getEl(SD.graphQual,["low","medium","high"]);
            var _loc1_:uint = 0;
            while(_loc1_ < units.length)
            {
               units[_loc1_].MC.play();
               units[_loc1_].MC.arm1.play();
               units[_loc1_].MC.arm2.play();
               _loc1_++;
            }
            return;
         }
      }
      
      public function tutBombHit() : void
      {
         var _loc1_:uint = 0;
         SH.playSound(S_rocketExplode);
         SH.playSound(S_Headshot1);
         SH.playSound(S_Static);
         SH.playMusic(M_Rose,true);
         arena.bridge.play();
         arena.bridge2.play();
         arena.heart.gotoAndPlay("dance");
         bgSky.gotoAndStop("tut_attack");
         arena.setShake(15,15);
         _loc1_ = 1;
         while(_loc1_ <= 5)
         {
            arena["gear" + _loc1_].stop();
            _loc1_++;
         }
         §§push(1);
         if(false)
         {
            return;
         }
         _loc1_ = §§pop();
         while(_loc1_ <= 8)
         {
            arena["tread" + _loc1_].stop();
            _loc1_++;
         }
         player.status.damage(45,player,Stats_Guns.gunOb["env"],{},true);
         var _loc2_:Player = player;
         var _loc3_:Number = _loc2_.sEvent + 1;
         _loc2_.sEvent = _loc3_;
         arena.changeWallFrame(player.sEvent);
         units[1].matchInfo.extra.speak = "f";
         units[1].gotoAndStop(4);
         units[1].wait(0);
      }
      
      public function tutShootWall(param1:Stats_Guns) : void
      {
         switch(player.sEvent)
         {
            case 8:
               hud.gotoAndStop("hud");
               arena.arrow.alpha = 0;
               SH.playSound(S_rocketExplode);
               arena.setShake(10,10);
               arena.bridge2.play();
               arena.bridge3.play();
               var _loc2_:Player = player;
               var _loc3_:Number = _loc2_.sEvent + 1;
               _loc2_.sEvent = _loc3_;
               arena.changeWallFrame(player.sEvent);
               §§push(units);
               if(false)
               {
                  return false;
               }
               §§pop()[1].matchInfo.extra.speak = "g";
               units[1].gotoAndStop(4);
               units[1].wait(0);
               break;
            case 9:
               if(param1.type == 2)
               {
                  hud.gotoAndStop("hud");
                  arena.bridge3.play();
                  ++player.sEvent;
                  arena.changeWallFrame(player.sEvent);
                  §§push(units[1]);
                  if(false)
                  {
                     return;
                  }
                  §§pop().matchInfo.extra.speak = "i";
                  units[1].gotoAndStop("speak_follow");
                  units[1].wait(0);
               }
         }
      }
      
      public function destroy(param1:Boolean) : void
      {
         arena.destroy();
         physWorld.destroy();
         bitscreen.destroy();
         SD.saveGame();
         if(MatchSettings.isCampaign && param1)
         {
            if(MatchSettings.matchType == 0 && SD.campStage == MatchSettings.matchLevel)
            {
               ++SD.campStage;
               SD.saveGame();
            }
            if(MatchSettings.matchType == 1 && SD.campStage - 15 == MatchSettings.matchLevel)
            {
               var _loc2_:SD = SD;
               var _loc3_:Number = _loc2_.campStage + 1;
               _loc2_.campStage = _loc3_;
               SD.saveGame();
            }
         }
         if(Boolean(MatchSettings.isCampaign) && Boolean(MatchSettings.postCutFrames) && param1)
         {
            main.§\t\x19§(Cutscene,{"type":"post"});
         }
         else if(MatchSettings.isCampaign && MatchSettings.matchName == "最后的部署\x1f" && !param1)
         {
            §§push(MatchSettings);
            if(false)
            {
               return;
            }
            §§pop().postCutFrames = [18];
            MatchSettings.postCutSong = null;
            main.§\t\x19§(Cutscene,{"type":"post"});
         }
         else
         {
            main.§\t\x19§(Menu);
         }
      }
   }
}


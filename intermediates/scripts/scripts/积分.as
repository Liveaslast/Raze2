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
   
   public class 积分
   {
      
      private var unit:§\t\x06§;
      
      public var headshots:uint = 0;
      
      public var crotchshots:uint = 0;
      
      public var buttshots:uint = 0;
      
      public var killedAlien:uint = 0;
      
      public var killedHuman:uint = 0;
      
      public var killedRobot:uint = 0;
      
      public var killedZombie:uint = 0;
      
      public var bullets:uint = 0;
      
      public var reflections:uint = 0;
      
      public var flagCap:uint = 0;
      
      public var domCap:uint = 0;
      
      public var jugKill:uint = 0;
      
      public var mauser:uint = 0;
      
      public var sword:uint = 0;
      
      public var fire:uint = 0;
      
      public var mine:uint = 0;
      
      public var steal:uint = 0;
      
      public var juice:uint = 0;
      
      public var rad:uint = 0;
      
      public var speed:uint = 0;
      
      public var corpsestick:uint = 0;
      
      public var lives:int = 0;
      
      public var kills:uint = 0;
      
      public var deaths:uint = 0;
      
      public var suicides:uint = 0;
      
      public var betrayals:uint = 0;
      
      public var killtimer:uint = 0;
      
      public var multikill:uint = 0;
      
      public var spree:uint = 0;
      
      public function 积分(param1:§\t\x06§)
      {
         super();
         unit = param1;
         if(MatchSettings.type == "淘汰赛\x1f\x1f")
         {
            lives = MatchSettings.winScore;
            §§push(unit.matchInfo);
            if(false)
            {
               return;
            }
            if(Boolean(§§pop().extra) && Boolean(unit.matchInfo.extra.lives))
            {
               lives = unit.matchInfo.extra.lives;
            }
            unit.pscore = lives;
            if(unit.team)
            {
               MatchSettings["elimTeamScore" + unit.team] += lives;
            }
         }
      }
      
      public function EnterFrame() : void
      {
         if(!killtimer)
         {
            multikill = 0;
         }
         else
         {
            var _loc1_:* = §§findproperty(killtimer);
            var _loc2_:Number = _loc1_.killtimer - 1;
            _loc1_.killtimer = _loc2_;
         }
      }
      
      public function addKill() : void
      {
         var _loc4_:* = §§findproperty(multikill);
         var _loc5_:Number = _loc4_.multikill + 1;
         if(false)
         {
            return false;
         }
         _loc4_.multikill = _loc5_;
         ++spree;
         if(false)
         {
            return false;
         }
         _loc4_ = §§findproperty(kills);
         _loc5_ = _loc4_.kills + 1;
         _loc4_.kills = _loc5_;
         killtimer = 3.5 * 30;
         if(MatchSettings.type == "死亡赛\x1f")
         {
            unit.pscore = kills - suicides - betrayals;
         }
         if(MatchSettings.type == "重装机甲")
         {
            unit.pscore = kills;
         }
         unit.game.matchSettings.updateScores();
         var _loc1_:uint = 0;
         var _loc2_:String = "";
         switch(multikill)
         {
            case 1:
               §§push(0);
               break;
            case 2:
               §§push(1);
               break;
            case 3:
               §§push(2);
               break;
            case 4:
               if(false)
               {
                  return;
               }
               §§push(3);
               break;
            case 5:
               §§push(4);
               break;
            default:
               §§push(5);
         }
         switch(§§pop())
         {
            case 0:
               break;
            case 1:
               _loc1_ = 4;
               _loc2_ = "双连杀!\x1f\x1f";
               break;
            case 2:
               _loc1_ = 5;
               if(false)
               {
                  return;
               }
               _loc2_ = "三连杀!\x1f\x1f";
               break;
            case 3:
               _loc1_ = 6;
               _loc2_ = "四连杀!\x1f\x1f";
               break;
            case 4:
               _loc1_ = 7;
               _loc2_ = "野兽爆发!";
               break;
            default:
               _loc1_ = 8;
               §§push("野兽爆发x\x1f " + (multikill - 4));
               if(false)
               {
                  return;
               }
               _loc2_ = §§pop() + "!";
         }
         if(_loc1_)
         {
            if(unit.human)
            {
               unit.game.hud.setDisplay(_loc1_,_loc2_);
            }
            unit.game.hud.addCustomFeed(unit," got a " + _loc2_);
         }
         _loc1_ = 0;
         if(false)
         {
            return;
         }
         _loc2_ = "";
         var _loc3_:* = "";
         switch(spree)
         {
            case 5:
               §§push(0);
               break;
            case 10:
               §§push(1);
               break;
            case 15:
               §§push(2);
               if(false)
               {
                  return;
               }
               break;
            case 20:
               §§push(3);
               break;
            case 25:
               §§push(4);
               break;
            default:
               §§push(5);
         }
         switch(§§pop())
         {
            case 0:
               _loc1_ = 6;
               _loc2_ = "大开杀戒!\x1f";
               _loc3_ = "on a ";
               break;
            case 1:
               _loc1_ = 8;
               _loc2_ = "狂暴!\x1f";
               _loc3_ = "on a ";
               break;
            case 2:
               _loc1_ = 10;
               _loc2_ = "无法阻挡";
               break;
            case 3:
               _loc1_ = 12;
               _loc2_ = "神样!\x1f";
               break;
            case 4:
               _loc1_ = 14;
               _loc2_ = "作弊!";
               _loc3_ = "clearly a ";
         }
         if(_loc1_)
         {
            if(unit.human)
            {
               unit.game.hud.setDisplay(_loc1_,_loc2_);
            }
            unit.game.hud.addCustomFeed(unit," is " + _loc3_ + _loc2_);
         }
      }
      
      public function §\x13§() : void
      {
         spree = 0;
         var _temp_1:* = §§findproperty(deaths);
         ++deaths;
         var _loc1_:* = §§findproperty(lives);
         var _loc2_:Number = _loc1_.lives - 1;
         _loc1_.lives = _loc2_;
         if(MatchSettings.type == "淘汰赛\x1f\x1f")
         {
            unit.pscore = lives;
            if(lives == 0)
            {
               unit.game.hud.addCustomFeed(unit," is out of lives!");
            }
         }
         unit.game.matchSettings.updateScores();
      }
      
      public function §\x0b§() : void
      {
         var _loc1_:* = §§findproperty(suicides);
         var _loc2_:Number = _loc1_.suicides + 1;
         _loc1_.suicides = _loc2_;
         if(MatchSettings.type == "死亡赛\x1f")
         {
            unit.pscore = kills - suicides - betrayals;
         }
         unit.game.matchSettings.updateScores();
      }
      
      public function §\x19§() : void
      {
         var _loc1_:* = §§findproperty(betrayals);
         §§push(_loc1_.betrayals + 1);
         if(false)
         {
            return false;
         }
         var _loc2_:* = §§pop();
         _loc1_.betrayals = _loc2_;
      }
   }
}


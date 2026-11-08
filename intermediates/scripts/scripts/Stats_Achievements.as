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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1816")]
   public class Stats_Achievements extends MovieClip
   {
      
      public static var achOrder:Array;
      
      public static var ach:Stats_Achievements;
      
      public var txt_rew:TextField;
      
      public var mc_icon:MovieClip;
      
      public var txt_name:TextField;
      
      public function Stats_Achievements()
      {
         super();
         addFrameScript(0,§\x19\b§,1,§\x18\x03§);
         if(false)
         {
            return;
         }
         stop();
         Stats_Achievements.ach = this;
      }
      
      public static function Init() : void
      {
         §§push(§§findproperty(achOrder));
         §§push("cat");
         §§push("health");
         §§push("ammo");
         §§push("moon");
         §§push("humanwin");
         §§push("alienwin");
         if(false)
         {
            return;
         }
         §§pop().achOrder = null;
      }
      
      public static function getAchievementNum(param1:*) : Object
      {
         return §\x14\x1a§(achOrder[param1]);
      }
      
      public static function §\x14\x1a§(param1:String) : Object
      {
         var _loc2_:Object = {};
         _loc2_.id = param1;
         _loc2_.sprite = param1;
         if(false)
         {
            return;
         }
         switch(param1)
         {
            case "cat":
               §§push(0);
               break;
            case "health":
               §§push(1);
               break;
            case "ammo":
               §§push(2);
               break;
            case "moon":
               §§push(3);
               break;
            case "humanwin":
               §§push(4);
               break;
            case "alienwin":
               §§push(5);
               break;
            case "abilities":
               §§push(6);
               if(false)
               {
                  return false;
               }
               break;
            case "equipment":
               §§push(7);
               break;
            case "bonus1":
               §§push(8);
               break;
            case "bonus2":
               §§push(9);
               break;
            default:
               §§push(10);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_.name = "Hi，小猫";
               _loc2_.desc = "\x1f对着隐藏的lol猫\'lol\'\x1f";
               _loc2_.rew = ["mode","lol猫\x1f\x1f"];
               break;
            case 1:
               _loc2_.name = "盲目的爱\x1f";
               _loc2_.desc = "怀着快乐心情跳舞。";
               _loc2_.rew = ["mode","4x体力\x1f"];
               break;
            case 2:
               _loc2_.name = "我恨自然!\x1f";
               _loc2_.desc = "修剪树叶。\x1f\x1f";
               _loc2_.rew = ["mode","无限弹药\x1f\x1f"];
               break;
            case 3:
               _loc2_.name = "飞上蓝天\x1f\x1f\x1f\x1f\x1f";
               _loc2_.desc = "除非你碰到月亮。\x1f";
               _loc2_.rew = ["mode","月亮尸体"];
               break;
            case 4:
               _loc2_.name = "新希望\x1f";
               _loc2_.desc = "完成人类战役\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.rew = ["credits",500];
               break;
            case 5:
               _loc2_.name = "新纪元";
               _loc2_.desc = "完成异形战役\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.rew = ["credits",1000];
               break;
            case 6:
               _loc2_.name = "真有才";
               _loc2_.desc = "购买4个技能\x1f\x1f\x1f\x1f\x1f";
               _loc2_.rew = ["credits",300];
               break;
            case 7:
               _loc2_.name = "工具\x1f";
               _loc2_.desc = "每种装备购买3个。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.rew = ["credits",300];
               break;
            case 8:
               _loc2_.name = "大师\x1f";
               _loc2_.desc = "解锁15个杀敌奖励";
               if(false)
               {
                  throw true;
               }
               _loc2_.rew = ["credits",500];
               break;
            case 9:
               _loc2_.name = "杀人狂\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.desc = "解锁30杀敌奖励\x1f\x1f\x1f";
               _loc2_.rew = ["credits",800];
         }
         _loc2_.rewtxt = _loc2_.rew[0] != "credits" ? _loc2_.rew[1] + "模式" : "+" + _loc2_.rew[1] + " credits";
         _loc2_.rewmc = _loc2_.rew[0] != "credits" ? "模式解锁!\x1f" : "+" + _loc2_.rew[1] + " cr!";
         return _loc2_;
      }
      
      private static function §\x11\x05§(param1:String) : uint
      {
         return achOrder.indexOf(param1);
      }
      
      public static function setAchievement(param1:*) : void
      {
         var _loc2_:uint = §\x11\x05§(param1);
         if(SD.achievements.indexOf(_loc2_) == -1)
         {
            Log.CustomMetric("成就\x1f\x1f\x1f\x1f\x1f\x1f","Matches");
            §§push(param1);
            if(false)
            {
               return;
            }
            if(§§pop() != "humanwin")
            {
               if(param1 == "alienwin")
               {
                  Log.CustomMetric("Campaign_Alien","Matches");
               }
            }
            else
            {
               Log.CustomMetric("Campaign_Human","Matches");
            }
            if(param1 == "cat" || param1 == "health" || param1 == "ammo" || param1 == "moon")
            {
               Log.CustomMetric("Secrets","Matches");
            }
            Log.ForceSend();
            var _loc3_:Object = §\x14\x1a§(param1);
            SD.achievements.push(_loc2_);
            SH.playSound(S_Medal);
            §§push(_loc3_.rew);
            §§push(0);
            if(false)
            {
               return;
            }
            if(§§pop()[§§pop()] == "credits")
            {
               SD.credits += _loc3_.rew[1];
            }
            §§push(§§findproperty(trace));
            §§push("Got achievement");
            if(false)
            {
               return;
            }
            §§pop().trace(§§pop(),_loc3_.name);
            ach.mc_icon.gotoAndStop(_loc3_.sprite);
            ach.txt_name.text = _loc3_.name;
            ach.txt_rew.text = _loc3_.rewmc;
            ach.gotoAndPlay(2);
            return;
         }
      }
      
      internal function §\x19\b§() : *
      {
         stop();
         visible = false;
      }
      
      internal function §\x18\x03§() : *
      {
         visible = true;
      }
   }
}

§§push(§§findproperty(Stats_Achievements));
§§push(MovieClip);
if(false)
{
   return false;
}


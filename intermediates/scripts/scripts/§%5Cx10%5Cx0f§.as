package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x14§;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol448")]
   public class §\x10\x0f§ extends MovieClip
   {
      
      public var txt_num:TextField;
      
      public var txt_name:TextField;
      
      private var bonus:String;
      
      private var remaining:uint;
      
      private var points:uint;
      
      public var noShow:Boolean;
      
      private var _killer:§\t\x06§;
      
      public function §\x10\x0f§(param1:§\t\x06§, param2:§\t\x06§, param3:Stats_Guns, param4:Object)
      {
         super();
         addFrameScript(90,§\x15\x06§);
         remaining = 3;
         bonus = "";
         points = 4 + param1.diff * 0.8;
         _killer = param2;
         if(param1 != _killer)
         {
            if(!(param1.human && Boolean(param4.teamkill)))
            {
               if(!param4.teamkill)
               {
                  if(!param1.human)
                  {
                     if(_killer.equips.credits)
                     {
                        points += _killer.equips.credits;
                     }
                     if(param4.spreeEnd)
                     {
                        §\x17§("spreeEnd");
                     }
                     if(!(Boolean(param4.reflect) && param4.reflect != param1))
                     {
                        if(param4.reflect)
                        {
                           §\x17§("reflect");
                        }
                     }
                     else
                     {
                        §\x17§("refBounce");
                     }
                     if(!param4.assassin)
                     {
                        if(param4.headMult)
                        {
                           §\x17§("headMult");
                        }
                     }
                     else
                     {
                        §\x17§("assassin");
                     }
                     if(param4.buttMult)
                     {
                        §\x17§("buttMult");
                     }
                     if(param4.crotchMult)
                     {
                        §\x17§("crotchMult");
                     }
                     if(param4.burrowMult)
                     {
                        §\x17§("burrowMult");
                     }
                     if(param4.splashDirect)
                     {
                        §\x17§("splashDirect");
                     }
                     if(param4.splashIndirect)
                     {
                        §\x17§("splashIndirect");
                     }
                     if(param4.jugKill)
                     {
                        §\x17§("jugKill");
                     }
                     if(param4.hasFlag)
                     {
                        §\x17§("hasFlag");
                     }
                     if(param4.mauser)
                     {
                        §\x17§("mauser");
                     }
                     if(param4.noShield)
                     {
                        §\x17§("noShield");
                     }
                     if(param4.corpseStick)
                     {
                        §\x17§("corpsestick");
                     }
                     if(param3.id == "sword")
                     {
                        §\x17§("sword");
                     }
                     if(param3.id == "fire")
                     {
                        §\x17§("fire");
                     }
                     if(param3.id == "mine")
                     {
                        §\x17§("mine");
                     }
                     var _temp_3:* = param3.id == "icegun";
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        §§pop();
                        §§push(param4);
                        if(false)
                        {
                           throw true;
                        }
                        §§push(§§pop().bounce >= 2);
                     }
                     if(§§pop())
                     {
                        §\x17§("chill");
                     }
                     if(Boolean(_killer.dead) && _killer.dead.fc >= 2)
                     {
                        §\x17§("dead");
                     }
                     if(_killer.status.hpCur == 1)
                     {
                        §\x17§("survive");
                     }
                     if(_killer.status.sFire)
                     {
                        §\x17§("onfire");
                     }
                     if(_killer.mov.xVel > _killer.mov.xMax || _killer.mov.xVel < -_killer.mov.xMax)
                     {
                        §\x17§("speed");
                     }
                     if(_killer.hasFlag)
                     {
                        §\x17§("hasFlag2");
                     }
                     if(param1.status.sInvis)
                     {
                        §\x17§("invis");
                     }
                     if(Boolean(param1.target) && Boolean(param1.target != _killer) && param1.status.hpCur <= 20)
                     {
                        §\x17§("steal");
                     }
                     if(param1.name == "Juice-Tin")
                     {
                        §\x17§("juice");
                     }
                     if(param1.name == "AddisonR")
                     {
                        §\x17§("rad");
                     }
                     if(MatchSettings.type == "控制赛\x1f")
                     {
                        if(param1.capturing)
                        {
                           §\x17§("domKill");
                        }
                        if(_killer.capturing)
                        {
                           §\x17§("domKill2");
                        }
                     }
                     if(MatchSettings.type == "夺旗赛\x1f\x1f\x1f\x1f\x1f\x1f\x1f" || MatchSettings.type == "控制赛\x1f")
                     {
                        points = Math.ceil(points * 0.5);
                     }
                     points = Math.ceil(points * MatchSettings.creditMod);
                     var _loc5_:String = "";
                     var _loc6_:uint = 0;
                     if(false)
                     {
                        return;
                     }
                     while(_loc6_ < remaining)
                     {
                        _loc5_ += "\n";
                        if(false)
                        {
                           throw true;
                        }
                        _loc6_++;
                     }
                     txt_name.text = _loc5_ + bonus;
                     txt_num.text = !points ? "" : "+" + points;
                     if(MatchSettings.specialMode == "lol猫\x1f\x1f")
                     {
                        txt_name.text = "\n\n" + UT.randEl(["lol!","LOL!!","omg.","lmao","LMAO!","Rofl","ROFL","BBQ","lolol!","lolz"]);
                     }
                     _killer.game.hud.addPoints(points);
                     return;
                  }
                  txt_name.text = "\n\n" + (MatchSettings.specialMode == "lol猫\x1f\x1f" ? "Omg hax:" : "Killed by") + ":\n" + _killer.name + "!";
                  txt_num.text = "";
                  return;
               }
               txt_name.text = "\n\n\nBetrayal!";
               txt_num.text = "";
               return;
            }
            §§push(txt_name);
            §§push("\nBetrayed by:\n" + _killer.name);
            if(false)
            {
               return;
            }
            §§pop().text = §§pop() + "!";
            txt_num.text = "";
            return;
         }
         noShow = true;
         §§push(txt_name);
         §§push("\n\n\n");
         §§push(MatchSettings);
         if(false)
         {
            throw true;
         }
         §§pop().text = §§pop() + (§§pop().specialMode != "lol猫\x1f\x1f" ? "自杀!\x1f" : "LOL NOOB");
         txt_num.text = "";
      }
      
      public function §\x17§(param1:String) : void
      {
         if(param1 == "reflect")
         {
            var _temp_1:* = _killer.score;
            §§push(_temp_1);
            §§push(_temp_1);
            if(false)
            {
               return false;
            }
            var _loc3_:* = §§pop();
            var _loc4_:* = §§pop().reflections + 1;
            _loc3_.reflections = _loc4_;
         }
         if(param1 == "jugKill")
         {
            ++_killer.score.jugKill;
            if(false)
            {
               return;
            }
         }
         if(param1 == "sword")
         {
            _loc3_ = _killer.score;
            §§push(_loc3_.sword + 1);
            if(false)
            {
               return;
            }
            _loc4_ = §§pop();
            _loc3_.sword = _loc4_;
         }
         if(param1 == "fire")
         {
            _loc3_ = _killer.score;
            _loc4_ = _loc3_.fire + 1;
            _loc3_.fire = _loc4_;
         }
         if(param1 == "mauser")
         {
            var _temp_5:* = _killer.score;
            _loc3_ = _killer.score;
            _loc4_ = _loc3_.mauser + 1;
            §§push(_loc3_);
            §§push(_loc4_);
            if(false)
            {
               return;
            }
            §§pop().mauser = §§pop();
         }
         if(param1 == "steal")
         {
            ++_killer.score.steal;
         }
         if(param1 == "mine")
         {
            ++_killer.score.mine;
         }
         §§push(param1);
         if(false)
         {
            return;
         }
         if(§§pop() == "juice")
         {
            _loc3_ = _killer.score;
            §§push(_loc3_);
            if(false)
            {
               throw true;
            }
            _loc4_ = §§pop().juice + 1;
            _loc3_.juice = _loc4_;
         }
         if(param1 == "rad")
         {
            var _temp_9:* = _killer.score;
            ++_killer.score.rad;
         }
         if(param1 == "speed")
         {
            _loc3_ = _killer.score;
            _loc4_ = _loc3_.speed + 1;
            _loc3_.speed = _loc4_;
         }
         if(param1 == "corpsestick")
         {
            _loc3_ = _killer.score;
            _loc4_ = _loc3_.corpsestick + 1;
            _loc3_.corpsestick = _loc4_;
         }
         if(remaining)
         {
            var _temp_12:* = §§findproperty(remaining);
            _loc3_ = §§findproperty(remaining);
            _loc4_ = _loc3_.remaining - 1;
            _loc3_.remaining = _loc4_;
            var _loc2_:Stats_KillBonuses = Stats_KillBonuses.bonusOb[param1];
            points += _loc2_.worth;
            if(SD.bonusesOwned.indexOf(_loc2_.num) == -1)
            {
               SD.bonusesOwned.push(_loc2_.num);
               if(SD.bonusesOwned.length >= 15)
               {
                  Stats_Achievements.setAchievement("bonus1");
               }
               if(SD.bonusesOwned.length >= 30)
               {
                  Stats_Achievements.setAchievement("bonus2");
               }
            }
            bonus += _loc2_.name + "\n";
            return;
         }
      }
      
      internal function §\x15\x06§() : *
      {
         stop();
      }
   }
}

if(false)
{
   return;
}


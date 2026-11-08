package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol443")]
   public class UnitMC extends MovieClip
   {
      
      public var body:PhysBody;
      
      public var legup2:PhysUpperLeg;
      
      public var foot1:PhysFoot;
      
      public var headhold:PhysHead;
      
      public var foot2:PhysFoot;
      
      public var arm1:MovieClip;
      
      public var head:PhysHead;
      
      public var arm2:MovieClip;
      
      public var arm1hold:MovieClip;
      
      public var leglow1:PhysLowerLeg;
      
      public var leglow2:PhysLowerLeg;
      
      public var legup1:PhysUpperLeg;
      
      private var unit:§\t\x06§;
      
      private var curAnim:String;
      
      public var curSkin:uint;
      
      public function UnitMC(param1:§\t\x06§)
      {
         super();
         §§push(§§findproperty(addFrameScript));
         §§push(0);
         §§push(§\x19\b§);
         §§push(19);
         §§push(§\x18\x02§);
         §§push(40);
         §§push(§\x16\x11§);
         §§push(53);
         §§push(§\x16\x02§);
         §§push(68);
         §§push(§\x15\x15§);
         §§push(83);
         §§push(§\x15\r§);
         §§push(98);
         §§push(§\x15\x03§);
         §§push(126);
         §§push(§\x18\x19§);
         §§push(144);
         §§push(§\x18\x15§);
         §§push(159);
         if(false)
         {
            return;
         }
         §§pop().addFrameScript(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§\x18\x12§,178,§\x18\r§,182,§\x18\t§,229,§\x17\x1b§);
         unit = param1;
         headhold.visible = false;
         §§push(arm1hold);
         if(false)
         {
            throw true;
         }
         §§pop().visible = false;
      }
      
      public function EnterFrame() : void
      {
         head.x = headhold.x;
         head.y = headhold.y;
         arm1.x = arm2.x = arm1hold.x;
         §§push(arm1);
         if(false)
         {
            return;
         }
         §§pop().y = arm2.y = arm1hold.y;
      }
      
      public function doneShoot() : void
      {
         unit.gun.setFrame("idle");
      }
      
      public function doneReload() : void
      {
         unit.gun.setFrame("idle");
         unit.gun.reloaded();
      }
      
      public function abilityDone() : void
      {
         unit.abilityDone();
      }
      
      public function abilityExtra() : void
      {
         unit.abilityExtra();
      }
      
      public function reloadSound() : void
      {
         unit.reloadSound();
      }
      
      public function goto(param1:String, param2:Boolean = false) : void
      {
         if(!param2)
         {
            if(curAnim == param1)
            {
               return;
            }
            if(curAnim == "armorlock")
            {
               return;
            }
            var _temp_1:* = curAnim == "jump";
            §§push(_temp_1);
            if(_temp_1)
            {
               §§pop();
               §§push(param1 == "fall");
               if(false)
               {
                  return;
               }
            }
            if(§§pop())
            {
               return;
            }
            var _temp_2:* = curAnim == "tuck";
            §§push(_temp_2);
            if(_temp_2)
            {
               §§pop();
               §§push(param1);
               if(false)
               {
                  return false;
               }
               §§push(§§pop() == "fall");
            }
            if(§§pop())
            {
               return;
            }
            if(curAnim == "land" && param1 == "idle")
            {
               return;
            }
            if(curAnim == "landrun" && param1 == "run")
            {
               if(false)
               {
                  return;
               }
               return;
            }
            if(curAnim == "landrunback" && param1 == "runback")
            {
               return;
            }
            var _temp_6:* = curAnim == "duckloop";
            §§push(_temp_6);
            if(_temp_6)
            {
               §§pop();
               §§push(param1 == "duck");
               if(false)
               {
                  return;
               }
            }
            if(§§pop())
            {
               return;
            }
            if(curAnim == "duck" && param1 == "idle")
            {
               param1 = "getup";
            }
            var _temp_8:* = curAnim == "duckloop";
            §§push(_temp_8);
            §§push(_temp_8);
            if(false)
            {
               return;
            }
            if(§§pop())
            {
               §§pop();
               §§push(param1 == "idle");
            }
            if(§§pop())
            {
               param1 = "getup";
            }
            var _temp_9:* = curAnim == "getup";
            §§push(_temp_9);
            if(_temp_9)
            {
               §§pop();
               §§push(param1);
               §§push("idle");
               if(false)
               {
                  return;
               }
               §§push(§§pop() == §§pop());
            }
            if(§§pop())
            {
               return;
            }
         }
         curAnim = param1;
         gotoAndPlay(curAnim);
      }
      
      public function §\n\x1b§(param1:uint) : void
      {
         unit.skin = Stats_Skins.skinAr[param1];
         curSkin = unit.skin.frame;
         setPart(head,MatchSettings.specialMode != "lol猫\x1f\x1f" ? curSkin : "cat");
         setPart(body,curSkin);
         setPart(body.ability,unit.ability.sprite);
         setPart(arm1.armup,curSkin);
         setPart(arm1.armlow,curSkin);
         setPart(arm1.hand1,curSkin);
         setPart(arm1.hand2,curSkin);
         setPart(arm2.armup,curSkin);
         setPart(arm2.armlow,curSkin);
         §§push(§§findproperty(setPart));
         if(false)
         {
            return;
         }
         §§pop().setPart(legup1,curSkin);
         setPart(legup2,curSkin);
         setPart(leglow1,curSkin);
         setPart(leglow2,curSkin);
         setPart(foot1,curSkin);
         setPart(foot2,curSkin);
      }
      
      public function setPart(param1:MovieClip, param2:*) : void
      {
         param1.gotoAndStop(param2);
      }
      
      internal function §\x19\b§() : *
      {
         goto("idle",true);
      }
      
      internal function §\x18\x02§() : *
      {
         goto("idle",true);
      }
      
      internal function §\x16\x11§() : *
      {
         goto("run",true);
      }
      
      internal function §\x16\x02§() : *
      {
         goto("run",true);
      }
      
      internal function §\x15\x15§() : *
      {
         goto("fall");
      }
      
      internal function §\x15\r§() : *
      {
         stop();
      }
      
      internal function §\x15\x03§() : *
      {
         goto("idle",true);
      }
      
      internal function §\x18\x19§() : *
      {
         stop();
      }
      
      internal function §\x18\x15§() : *
      {
         goto("runback",true);
      }
      
      internal function §\x18\x12§() : *
      {
         goto("runback",true);
      }
      
      internal function §\x18\r§() : *
      {
         goto("duckloop",true);
      }
      
      internal function §\x18\t§() : *
      {
         goto("idle",true);
      }
      
      internal function §\x17\x1b§() : *
      {
         abilityDone();
         goto("idle",true);
      }
   }
}

§§push(§§findproperty(UnitMC));
§§push(DisplayObject);
if(false)
{
   return;
}


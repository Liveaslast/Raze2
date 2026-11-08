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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol590")]
   public class NodeCtfFlag extends MovieClip
   {
      
      public var flag:MovieClip;
      
      public var id:String;
      
      public var team:uint;
      
      public var unitCaptured:*;
      
      public function NodeCtfFlag()
      {
         var _loc1_:Array = null;
         super();
         _loc1_ = name.split("__");
         §§push(§§findproperty(id));
         §§push(_loc1_);
         if(false)
         {
            return;
         }
         §§pop().id = §§pop()[0];
         flag.visible = true;
         setTeam(Number(_loc1_[1]));
      }
      
      public function setTeam(param1:uint) : void
      {
         team = param1;
         gotoAndStop(param1);
      }
      
      public function capture(param1:*) : void
      {
         if(team == param1.team)
         {
            if(param1.hasFlag)
            {
               if(param1.human)
               {
                  ++param1.score.flagCap;
                  param1.game.hud.setDisplay(25,"Flag Captured!");
               }
               param1.game.hud.addCustomFeed(param1," has captured the Flag!");
               var _temp_2:* = param1;
               var _loc2_:* = param1;
               §§push(_loc2_);
               if(false)
               {
                  return;
               }
               var _loc3_:Number = §§pop().pscore + 1;
               _loc2_.pscore = _loc3_;
               param1.hasFlag.reset();
               param1.game.matchSettings.updateScores();
               param1.game.playScreenSound(S_Jumppad,param1.x,param1.y);
            }
         }
         else
         {
            if(unitCaptured)
            {
               return;
            }
            §§push(§§findproperty(unitCaptured));
            if(false)
            {
               return;
            }
            §§pop().unitCaptured = param1;
            flag.visible = false;
            param1.status.sInvis = 0;
            param1.hasFlag = this;
            param1.MC.body.ability.gotoAndStop("flag" + team);
            param1.game.playScreenSound(S_Equip,param1.x,param1.y);
            param1.game.hud.addCustomFeed(param1," has taken the Flag!");
            §§push(param1);
            if(false)
            {
               return false;
            }
            §§pop().game.hud.setFlags();
         }
      }
      
      public function reset() : void
      {
         var _loc1_:* = unitCaptured;
         unitCaptured.MC.body.ability.gotoAndStop(unitCaptured.ability.sprite);
         unitCaptured.hasFlag = null;
         unitCaptured = null;
         flag.visible = true;
         _loc1_.game.hud.setFlags();
      }
   }
}


package
{
   import §\x0e\r§.*;
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
   
   public class Bullet_Line_Zapper extends §\x1c\x0e§
   {
      
      private var alpha:Number = 1;
      
      private var line1:Array;
      
      private var line2:Array;
      
      private var strength:Number;
      
      public function Bullet_Line_Zapper(param1:Game, param2:§\t\x06§, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:Object = null)
      {
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         super(param1,param2,param3,param4,param5,param6,param7,false,param8);
         §§push(§§findproperty(line1));
         §§push([new Point(ox,oy)]);
         if(false)
         {
            return false;
         }
         §§pop().line1 = §§pop();
         line2 = [new Point(ox,oy)];
         §§push(0);
         if(false)
         {
            return;
         }
         _loc9_ = §§pop();
         while(_loc9_ < uint(maxDist / 10))
         {
            x += xVel;
            y += yVel;
            line1.push(new Point(x + UT.rand(-1,1),y + UT.rand(-1,1)));
            §§push(line2);
            if(false)
            {
               return false;
            }
            §§pop().push(new Point(x + UT.rand(-1,1),y + UT.rand(-1,1)));
            §§push(§§findproperty(hitObject));
            if(false)
            {
               throw true;
            }
            if(§§pop().hitObject = §\x11\f§())
            {
               break;
            }
            _loc9_++;
         }
         curDist = UT.getDist(ox,oy,x,y);
         dmgMod = (maxDist - curDist) / maxDist * 1.5 + 0.5;
         §\x1a\x18§();
         if(hitObject)
         {
            strength = ((maxDist - curDist) / maxDist + 0.1) * 5;
         }
         else
         {
            alpha = 0.8;
            _loc10_ = line1.length;
            _loc9_ = 1;
            while(_loc9_ < _loc10_)
            {
               line1[_loc9_].x += UT.rand(_loc9_ * -1,_loc9_ * 1);
               §§push(line1[_loc9_]);
               §§push(line1[_loc9_].y + UT.rand(_loc9_ * -1,_loc9_ * 1));
               if(false)
               {
                  return;
               }
               §§pop().y = §§pop();
               line2[_loc9_].x += UT.rand(_loc9_ * -1,_loc9_ * 1);
               §§push(line2[_loc9_]);
               §§push(line2);
               §§push(_loc9_);
               if(false)
               {
                  return;
               }
               §§pop().y = §§pop()[§§pop()].y + UT.rand(_loc9_ * -1,_loc9_ * 1);
               _loc9_++;
            }
            strength = 1.7;
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:* = 0;
         §§push(game.lineCont.graphics);
         §§push(3 * strength);
         §§push(13369599);
         §§push(alpha);
         if(false)
         {
            return false;
         }
         §§pop().lineStyle(§§pop(),§§pop(),§§pop() * 0.5);
         game.lineCont.graphics.moveTo(line1[0].x,line1[0].y);
         §§push(1);
         if(false)
         {
            return false;
         }
         _loc1_ = §§pop();
         while(_loc1_ < line1.length)
         {
            line1[_loc1_].x += UT.rand(-1,1);
            line1[_loc1_].y += UT.rand(-1,1);
            §§push(game.lineCont.graphics);
            §§push(line1);
            §§push(_loc1_);
            if(false)
            {
               return false;
            }
            §§pop().lineTo(§§pop()[§§pop()].x,line1[_loc1_].y);
            _loc1_++;
         }
         game.lineCont.graphics.lineStyle(2 * strength,10027263,alpha * 1);
         game.lineCont.graphics.moveTo(line2[0].x,line2[0].y);
         _loc1_ = 1;
         while(_loc1_ < line2.length)
         {
            line2[_loc1_].x += UT.rand(-1,1);
            line2[_loc1_].y += UT.rand(-1,1);
            game.lineCont.graphics.lineTo(line2[_loc1_].x,line2[_loc1_].y);
            if(false)
            {
               throw true;
            }
            _loc1_++;
         }
         removeMe();
      }
   }
}


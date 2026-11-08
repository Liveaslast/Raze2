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
   
   public class Bullet_Line_Basic extends §\x1c\x0e§
   {
      
      private var newLine:Boolean;
      
      private var linePath:Array;
      
      public function Bullet_Line_Basic(param1:Game, param2:§\t\x06§, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:Object = null)
      {
         var _loc9_:uint = 0;
         super(param1,param2,param3,param4,param5,param6,param7,true,param8);
         §§push(0);
         if(false)
         {
            return;
         }
         _loc9_ = §§pop();
         while(_loc9_ < uint(maxDist / 10))
         {
            §§push(§§findproperty(x));
            §§push(x + xVel);
            if(false)
            {
               return;
            }
            §§pop().x = §§pop();
            y += yVel;
            §§push(§§findproperty(hitObject));
            var _temp_1:* = §\x11\f§();
            if(§§pop().hitObject = §\x11\f§())
            {
               break;
            }
            _loc9_++;
         }
         §\x1a\x18§();
         §§push(§§findproperty(curDist));
         §§push(Math);
         §§push(UT);
         if(false)
         {
            return;
         }
         §§pop().curDist = §§pop().round(§§pop().getDist(ox,oy,x,y));
         linePath = new Array();
         if(!stats.params[0])
         {
            linePath.push(new Point(ox,oy));
         }
         else
         {
            _loc9_ = uint(UT.irand(0,100));
            while(_loc9_ < curDist)
            {
               linePath.push(new Point(ox + UT.xMoveToRot(rotation,_loc9_),oy + UT.yMoveToRot(rotation,_loc9_)));
               §§push(_loc9_);
               §§push(UT);
               §§push(50);
               §§push(250);
               if(false)
               {
                  throw true;
               }
               _loc9_ = §§pop() + §§pop().irand(§§pop(),§§pop());
            }
         }
         var _loc10_:uint = 0;
         while(_loc10_ < (stats.params.length - 1) / 3)
         {
            newLine = true;
            game.lineCont.graphics.lineStyle(stats.params[_loc10_ * 3 + 1],stats.params[_loc10_ * 3 + 2],stats.params[_loc10_ * 3 + 3]);
            _loc9_ = 0;
            while(_loc9_ < linePath.length)
            {
               if(!newLine)
               {
                  game.lineCont.graphics.lineTo(linePath[_loc9_].x,linePath[_loc9_].y);
               }
               else
               {
                  game.lineCont.graphics.moveTo(linePath[_loc9_].x,linePath[_loc9_].y);
               }
               newLine = !newLine;
               _loc9_++;
            }
            if(!newLine)
            {
               game.lineCont.graphics.lineTo(x,y);
            }
            _loc10_++;
         }
         removeMe();
      }
      
      public function EnterFrame() : void
      {
      }
   }
}


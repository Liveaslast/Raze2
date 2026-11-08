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
   
   public class Bullet_Line_Electric extends §\x1c\x0e§
   {
      
      private var line1Path:Array;
      
      private var line2Path:Array;
      
      private var line3Path:Array;
      
      private var alpha:Number = 1;
      
      public function Bullet_Line_Electric(param1:Game, param2:§\t\x06§, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:Object = null)
      {
         var _loc9_:uint = 0;
         §§push(this);
         §§push(param1);
         §§push(param2);
         §§push(param3);
         §§push(param4);
         §§push(param5);
         §§push(param6);
         §§push(param7);
         §§push(false);
         if(false)
         {
            return;
         }
         §§pop().super(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),param8);
         _loc9_ = 0;
         while(_loc9_ < uint(maxDist / 10))
         {
            x += xVel;
            y += yVel;
            if(hitObject = §\x11\f§())
            {
               break;
            }
            _loc9_++;
         }
         §\x1a\x18§();
         curDist = Math.round(UT.getDist(ox,oy,x,y));
         var _loc10_:Number = -0.3;
         if(false)
         {
            return;
         }
         var _loc11_:Number = 0.3;
         line1Path = new Array();
         line1Path.push({
            "x":ox,
            "y":oy,
            "lift":UT.rand(_loc10_,_loc11_)
         });
         if(false)
         {
            return;
         }
         _loc9_ = 0;
         while(_loc9_ < curDist)
         {
            §§push(line1Path);
            if(false)
            {
               return false;
            }
            §§push("x");
            §§push(ox + UT.xMoveToRot(rotation,_loc9_));
            §§push("y");
            §§push(oy);
            §§push(UT.yMoveToRot(rotation,_loc9_));
            if(false)
            {
               throw true;
            }
            §§push(null);
            if(false)
            {
               return false;
            }
            §§pop().push(§§pop());
            _loc9_ += 30;
         }
         §§push(line1Path);
         if(false)
         {
            return false;
         }
         §§pop().push({
            "x":x,
            "y":y,
            "lift":UT.rand(_loc10_,_loc11_)
         });
         line2Path = new Array();
         §§push(line2Path);
         §§push("x");
         §§push(ox);
         if(false)
         {
            return;
         }
         §§push("y");
         §§push(oy);
         §§push("lift");
         §§push(UT.rand(_loc10_,_loc11_));
         if(false)
         {
            return;
         }
         §§pop().push(null);
         _loc9_ = 0;
         while(_loc9_ < curDist)
         {
            line2Path.push({
               "x":ox + UT.xMoveToRot(rotation,_loc9_),
               "y":oy + UT.yMoveToRot(rotation,_loc9_),
               "lift":UT.rand(_loc10_,_loc11_)
            });
            _loc9_ += 30;
         }
         line2Path.push({
            "x":x,
            "y":y,
            "lift":UT.rand(_loc10_,_loc11_)
         });
         line3Path = new Array();
         line3Path.push({
            "x":ox,
            "y":oy,
            "lift":UT.rand(_loc10_,_loc11_)
         });
         _loc9_ = 0;
         while(_loc9_ < curDist)
         {
            §§push(line3Path);
            §§push("x");
            if(false)
            {
               return;
            }
            §§pop().push({
               (§§pop()):ox + UT.xMoveToRot(rotation,_loc9_),
               "y":oy + UT.yMoveToRot(rotation,_loc9_),
               "lift":UT.rand(_loc10_,_loc11_)
            });
            _loc9_ += 30;
         }
         §§push(line3Path);
         §§push("x");
         §§push(x);
         §§push("y");
         §§push(y);
         §§push("lift");
         §§push(UT);
         §§push(_loc10_);
         if(false)
         {
            return;
         }
         §§pop().push(null);
         §§push(stats.params);
         §§push(0);
         if(false)
         {
            throw true;
         }
         if(§§pop()[§§pop()])
         {
            _loc9_ = 0;
            while(_loc9_ < line1Path.length)
            {
               §§push(line1Path[_loc9_]);
               §§push(line1Path[_loc9_].x);
               if(false)
               {
                  throw true;
               }
               §§pop().x = §§pop() + line1Path[_loc9_].lift * 10;
               line1Path[_loc9_].y += line1Path[_loc9_].lift * 10;
               line2Path[_loc9_].x += line2Path[_loc9_].lift * 10;
               line2Path[_loc9_].y += line2Path[_loc9_].lift * 10;
               §§push(line3Path[_loc9_]);
               §§push(line3Path[_loc9_].x + line2Path[_loc9_].lift * 10);
               if(false)
               {
                  return false;
               }
               §§pop().x = §§pop();
               line3Path[_loc9_].y += line2Path[_loc9_].lift * 10;
               _loc9_++;
            }
         }
         game.lineCont.graphics.lineStyle(stats.params[1],stats.params[2],stats.params[3] * alpha);
         _loc9_ = 0;
         while(_loc9_ < line1Path.length)
         {
            if(_loc9_ != 0)
            {
               §§push(game);
               if(false)
               {
                  throw true;
               }
               §§pop().lineCont.graphics.lineTo(line1Path[_loc9_].x,line1Path[_loc9_].y);
            }
            else
            {
               §§push(game);
               if(false)
               {
                  return;
               }
               §§pop().lineCont.graphics.moveTo(line1Path[_loc9_].x,line1Path[_loc9_].y);
            }
            _loc9_++;
         }
         §§push(game.lineCont.graphics);
         §§push(stats.params);
         §§push(4);
         if(false)
         {
            return;
         }
         §§pop().lineStyle(§§pop()[§§pop()],stats.params[5],stats.params[6] * alpha);
         _loc9_ = 0;
         while(_loc9_ < line2Path.length)
         {
            if(_loc9_ != 0)
            {
               §§push(game.lineCont.graphics);
               §§push(line2Path[_loc9_].x);
               §§push(line2Path[_loc9_].y);
               if(false)
               {
                  return;
               }
               §§pop().lineTo(§§pop(),§§pop());
            }
            else
            {
               game.lineCont.graphics.moveTo(line2Path[_loc9_].x,line2Path[_loc9_].y);
            }
            _loc9_++;
         }
         game.lineCont.graphics.lineStyle(stats.params[4],stats.params[5],stats.params[6] * alpha);
         _loc9_ = 0;
         while(_loc9_ < line3Path.length)
         {
            if(_loc9_ != 0)
            {
               §§push(game.lineCont.graphics);
               §§push(line3Path);
               if(false)
               {
                  return;
               }
               §§pop().lineTo(§§pop()[_loc9_].x,line3Path[_loc9_].y);
               if(false)
               {
                  return;
               }
            }
            else
            {
               game.lineCont.graphics.moveTo(line3Path[_loc9_].x,line3Path[_loc9_].y);
            }
            _loc9_++;
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         alpha -= 0.03;
         game.lineCont.graphics.lineStyle(stats.params[1],stats.params[2],stats.params[3] * alpha);
         §§push(0);
         if(false)
         {
            return;
         }
         _loc1_ = §§pop();
         while(_loc1_ < line1Path.length)
         {
            line1Path[_loc1_].x += line1Path[_loc1_].lift;
            line1Path[_loc1_].y += line1Path[_loc1_].lift;
            if(_loc1_ != 0)
            {
               game.lineCont.graphics.lineTo(line1Path[_loc1_].x,line1Path[_loc1_].y);
            }
            else
            {
               game.lineCont.graphics.moveTo(line1Path[_loc1_].x,line1Path[_loc1_].y);
            }
            _loc1_++;
         }
         §§push(game.lineCont.graphics);
         if(false)
         {
            return false;
         }
         §§pop().lineStyle(stats.params[4],stats.params[5],stats.params[6] * alpha);
         _loc1_ = 0;
         while(true)
         {
            §§push(_loc1_);
            §§push(line2Path);
            if(false)
            {
               break;
            }
            if(§§pop() >= §§pop().length)
            {
               game.lineCont.graphics.lineStyle(stats.params[7],stats.params[8],stats.params[9] * alpha);
               _loc1_ = 0;
               while(_loc1_ < line3Path.length)
               {
                  line3Path[_loc1_].x += line3Path[_loc1_].lift;
                  line3Path[_loc1_].y += line3Path[_loc1_].lift;
                  if(_loc1_ != 0)
                  {
                     game.lineCont.graphics.lineTo(line3Path[_loc1_].x,line3Path[_loc1_].y);
                     if(false)
                     {
                        return false;
                     }
                  }
                  else
                  {
                     §§push(game.lineCont.graphics);
                     §§push(line3Path[_loc1_].x);
                     §§push(line3Path[_loc1_]);
                     if(false)
                     {
                        throw true;
                     }
                     §§pop().moveTo(§§pop(),§§pop().y);
                  }
                  _loc1_++;
               }
               if(alpha <= 0)
               {
                  removeMe();
               }
               return;
            }
            §§push(line2Path[_loc1_]);
            §§push(line2Path[_loc1_].x);
            §§push(line2Path[_loc1_].lift);
            if(false)
            {
               return;
            }
            §§pop().x = §§pop() + §§pop();
            line2Path[_loc1_].y += line2Path[_loc1_].lift;
            if(_loc1_ != 0)
            {
               game.lineCont.graphics.lineTo(line2Path[_loc1_].x,line2Path[_loc1_].y);
            }
            else
            {
               game.lineCont.graphics.moveTo(line2Path[_loc1_].x,line2Path[_loc1_].y);
            }
            _loc1_++;
         }
      }
   }
}


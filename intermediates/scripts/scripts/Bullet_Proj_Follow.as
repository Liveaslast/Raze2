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
   
   public class Bullet_Proj_Follow extends §\x1c\x0e§
   {
      
      internal var countDistX:Number;
      
      internal var countDistY:Number;
      
      public function Bullet_Proj_Follow(param1:Game, param2:§\t\x06§, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:Object = null)
      {
         §§push(this);
         §§push(param1);
         §§push(param2);
         §§push(param3);
         §§push(param4);
         if(false)
         {
            return;
         }
         §§pop().super(§§pop(),§§pop(),§§pop(),§§pop(),param5,param6,param7,true,param8);
         §\x1a\x18§();
         xVel *= 0.5;
         yVel *= 0.5;
         countDistX = param6 * Math.abs(xVel);
         countDistY = param6 * Math.abs(yVel);
      }
      
      public function EnterFrame() : void
      {
         yVel += stats.params[2] * 0.1;
         §§push(§§findproperty(rotation));
         §§push(UT);
         §§push(x);
         §§push(y);
         §§push(x + xVel);
         if(false)
         {
            return;
         }
         §§pop().rotation = §§pop().getRotation(§§pop(),§§pop(),§§pop(),y + yVel);
         var _loc1_:uint = 0;
         while(_loc1_ < game.units.length)
         {
            if(game.units[_loc1_] != unit)
            {
               if(!game.units[_loc1_].dead)
               {
                  if(!(Boolean(unit.team) && unit.team == game.units[_loc1_].team))
                  {
                     if(UT.getDist(x,y,game.units[_loc1_].x,game.units[_loc1_].y - 40) < stats.params[3])
                     {
                        rotation += UT.rotateDirection(rotation,UT.getRotation(x,y,game.units[_loc1_].x,game.units[_loc1_].y - 40)) * stats.params[4];
                     }
                  }
               }
            }
            _loc1_++;
         }
         xVel = UT.xMoveToRot(rotation,5);
         yVel = UT.yMoveToRot(rotation,5);
         _loc1_ = 0;
         while(_loc1_ < stats.params[1])
         {
            §§push(game);
            §§push(x);
            §§push(y);
            §§push(stats.params[0]);
            if(false)
            {
               return;
            }
            §§pop().createEffect(§§pop(),§§pop(),§§pop());
            x += xVel;
            if(false)
            {
               return;
            }
            y += yVel;
            if(SD.graphPart)
            {
               game.createEffect(x,y,stats.params[0]);
            }
            x += xVel;
            y += yVel;
            countDistX += Math.abs(xVel) * 2;
            countDistY += Math.abs(yVel) * 2;
            §§push(§§findproperty(hitObject));
            §§push(§§findproperty(§\x11\f§));
            if(false)
            {
               throw true;
            }
            if(§§pop().hitObject = §§pop().§\x11\f§())
            {
               break;
            }
            _loc1_++;
         }
         §\x1a\x18§();
         if(UT.getPythagorean(countDistX,countDistY) >= maxDist)
         {
            removeMe();
         }
         if(x < 0 || x > 3000 || y < 0 || y > 3000)
         {
            §§push(§§findproperty(removeMe));
            if(false)
            {
               throw true;
            }
            §§pop().removeMe();
         }
      }
   }
}


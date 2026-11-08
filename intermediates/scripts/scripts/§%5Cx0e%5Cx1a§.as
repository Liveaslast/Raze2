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
   
   public class §\x0e\x1a§
   {
      
      private var game:Game;
      
      public var remove:Boolean;
      
      private var behave:String;
      
      private var name:String;
      
      private var sub:String;
      
      private var x:Number;
      
      private var y:Number;
      
      private var stats:Object;
      
      private var frame:uint;
      
      private var holdFrame:Boolean;
      
      private var xSpd:Number;
      
      private var ySpd:Number;
      
      private var xVel:Number;
      
      private var yVel:Number;
      
      private var extra:Object;
      
      private var hitCount:uint;
      
      private var rotation:Number;
      
      private var fc:uint;
      
      public function §\x0e\x1a§(param1:Game, param2:Number, param3:Number, param4:String, param5:Object, param6:String, param7:String, param8:uint)
      {
         super();
         game = param1;
         x = param2;
         y = param3;
         fc = 0;
         behave = param4;
         name = param6;
         sub = param7;
         extra = !param5 ? {} : param5;
         §§push(§§findproperty(stats));
         §§push(BH.getBitAniStats(name + 0,sub));
         if(false)
         {
            return;
         }
         §§pop().stats = §§pop();
         rotation = UT.irand(0,stats.rotAmt - 1);
         if(!param8)
         {
            frame = 1;
         }
         else
         {
            frame = param8;
            §§push(§§findproperty(holdFrame));
            §§push(true);
            if(false)
            {
               return false;
            }
            §§pop().holdFrame = §§pop();
         }
         name += rotation;
         switch(behave)
         {
            case "fairy":
               §§push(0);
               break;
            case "water":
               §§push(1);
               if(false)
               {
                  return;
               }
               break;
            case "snow":
               §§push(2);
               break;
            case "shell":
               §§push(3);
               break;
            case "spark":
               §§push(4);
               break;
            case "leaf":
               §§push(5);
               break;
            case "raise":
               §§push(6);
               break;
            case "fish":
               §§push(7);
               break;
            default:
               §§push(8);
         }
         switch(§§pop())
         {
            case 0:
               extra.rot1 = Math.random() * 360;
               extra.rot2 = Math.random() * 360;
               break;
            case 1:
               xSpd = UT.rand(extra.min,extra.max);
               ySpd = UT.rand(-1,3);
               break;
            case 2:
               xSpd = UT.rand(0,1);
               ySpd = UT.rand(3,5);
               break;
            case 3:
               xSpd = UT.xMoveToRot(extra.rot - 110 * extra.flip + UT.rand(-15,15),8);
               §§push(§§findproperty(ySpd));
               §§push(UT);
               §§push(extra.rot - 110 * extra.flip);
               §§push(UT);
               if(false)
               {
                  return false;
               }
               §§pop().ySpd = §§pop().yMoveToRot(§§pop() + §§pop().rand(-15,15),8);
               break;
            case 4:
               xSpd = UT.rand(-2,2);
               ySpd = UT.rand(-1,3);
               break;
            case 5:
               extra.hitframe = 10;
               xSpd = UT.rand(0,1);
               ySpd = UT.rand(0.5,3);
               rotation = Math.random() * 360;
               break;
            case 6:
               §§push(§§findproperty(ySpd));
               §§push(UT);
               if(false)
               {
                  return;
               }
               §§pop().ySpd = §§pop().rand(1,3) * param5.spd;
               xSpd = !(ySpd * param5.xspd) ? 0 : Number(param5.xspd);
               break;
            case 7:
               extra.rot1 = Math.random() * 360;
               §§push(extra);
               if(false)
               {
                  return;
               }
               §§pop().rot2 = Math.random() * 360;
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         if(!remove)
         {
            var _loc2_:* = §§findproperty(fc);
            var _loc3_:Number = _loc2_.fc + 1;
            §§push(_loc2_);
            §§push(_loc3_);
            if(false)
            {
               return;
            }
            §§pop().fc = §§pop();
            switch(behave)
            {
               case "fairy":
                  extra.rot1 += 1;
                  extra.rot2 += 2;
                  x += UT.xMoveToRot(extra.rot1,1);
                  y += UT.yMoveToRot(extra.rot2,0.6);
                  game.bitscreen.paint(x + game.arena.x,y + game.arena.y,true,name,sub,frame);
                  break;
               case "water":
                  §§push(§§findproperty(x));
                  §§push(x);
                  if(false)
                  {
                     return;
                  }
                  §§pop().x = §§pop() + xSpd;
                  y += ySpd;
                  ySpd += 0.5;
                  if(!hitCount)
                  {
                     if(fc >= extra.hitframe && Boolean(§\x11\r§()))
                     {
                        hitCount = 1;
                     }
                     _loc1_ = 0;
                     while(_loc1_ < game.units.length)
                     {
                        if(!game.units[_loc1_].dead)
                        {
                           if(UT.inBox(x,y,game.units[_loc1_].x - 25,game.units[_loc1_].y - 70,50,50))
                           {
                              hitCount = 1;
                           }
                        }
                        _loc1_++;
                     }
                  }
                  if(hitCount == 1)
                  {
                     xSpd *= 3;
                     y -= ySpd;
                     ySpd *= -UT.rand(0.2,0.5);
                     hitCount = 1;
                     game.createEffect(x,y,"snow_splash");
                  }
                  if(!hitCount)
                  {
                     game.bitscreen.paint(x + game.arena.x,y + game.arena.y,true,name,sub,1);
                  }
                  else
                  {
                     _loc2_ = §§findproperty(hitCount);
                     _loc3_ = _loc2_.hitCount + 1;
                     _loc2_.hitCount = _loc3_;
                     if(hitCount == 20)
                     {
                        remove = true;
                     }
                     game.bitscreen.paint(x + game.arena.x,y + game.arena.y,true,name,sub,uint(hitCount / 10) + 2);
                  }
                  break;
               case "snow":
                  x += xSpd;
                  y += ySpd;
                  if(fc > 150 && fc % 3 == 0 && Boolean(§\x11\r§()))
                  {
                     game.createEffect(x,y,"snow_splash");
                     remove = true;
                     if(false)
                     {
                        return;
                     }
                  }
                  game.bitscreen.paint(x + game.arena.x,y + game.arena.y,true,name,sub,frame);
                  break;
               case "shell":
                  x += xSpd;
                  §§push(§§findproperty(y));
                  §§push(y);
                  §§push(ySpd);
                  if(false)
                  {
                     return;
                  }
                  §§pop().y = §§pop() + §§pop();
                  ySpd += 1;
                  if(§\x11\r§())
                  {
                     remove = true;
                  }
                  game.bitscreen.paint(x + game.arena.x,y + game.arena.y,true,name,sub,frame);
                  break;
               case "spark":
                  §§push(§§findproperty(x));
                  §§push(x);
                  §§push(xSpd);
                  if(false)
                  {
                     return false;
                  }
                  §§pop().x = §§pop() + §§pop();
                  y += ySpd;
                  ySpd += 0.5;
                  if(!hitCount && (Boolean(§\x11\r§()) || Boolean(UT.inBox(x,y,game.player.x - 20,game.player.y - UT.rand(40,60),40,50))))
                  {
                     xSpd *= 3;
                     y -= ySpd;
                     §§push(§§findproperty(ySpd));
                     §§push(ySpd);
                     §§push(UT);
                     §§push(0.2);
                     if(false)
                     {
                        return;
                     }
                     §§pop().ySpd = §§pop() * -§§pop().rand(§§pop(),0.5);
                     hitCount = 1;
                  }
                  if(!hitCount)
                  {
                     §§push(game.bitscreen);
                     §§push(x + game.arena.x);
                     §§push(y);
                     if(false)
                     {
                        throw true;
                     }
                     §§pop().paint(§§pop(),§§pop() + game.arena.y,true,name,sub,1);
                  }
                  else
                  {
                     ++hitCount;
                     if(false)
                     {
                        return;
                     }
                     if(hitCount == 20)
                     {
                        remove = true;
                        if(false)
                        {
                           return;
                        }
                     }
                     game.bitscreen.paint(x + game.arena.x,y + game.arena.y,true,name,sub,uint(hitCount / 10) + 2);
                  }
                  break;
               case "leaf":
                  rotation += 5;
                  x += UT.xMoveToRot(rotation,2);
                  x += xSpd;
                  §§push(§§findproperty(y));
                  §§push(y);
                  if(false)
                  {
                     return false;
                  }
                  §§pop().y = §§pop() + ySpd;
                  if(fc >= extra.hitframe && Boolean(§\x11\r§()))
                  {
                     remove = true;
                  }
                  game.bitscreen.paint(x + game.arena.x,y + game.arena.y,true,name,sub,frame);
                  break;
               case "raise":
                  x += xSpd;
                  y -= ySpd;
                  if(fc == 20)
                  {
                     remove = true;
                  }
                  game.bitscreen.paint(x + game.arena.x,y + game.arena.y,true,name,sub,frame);
                  break;
               case "fish":
                  extra.rot1 += 0.4;
                  extra.rot2 += 2;
                  xVel = UT.xMoveToRot(extra.rot1,1);
                  yVel = UT.yMoveToRot(extra.rot2,0.1);
                  x += xVel;
                  y += yVel;
                  game.bitscreen.paint(x + game.arena.x,y + game.arena.y,true,name,sub,xVel <= 0 ? 2 : 1);
            }
            if(!holdFrame)
            {
               _loc2_ = §§findproperty(frame);
               _loc3_ = _loc2_.frame + 1;
               if(false)
               {
                  return false;
               }
               _loc2_.frame = _loc3_;
               if(frame > stats.frames)
               {
                  §§push(§§findproperty(frame));
                  if(false)
                  {
                     return;
                  }
                  §§pop().frame = 1;
               }
            }
            return;
         }
      }
      
      private function §\x11\r§(param1:Number = 0, param2:Number = 0) : uint
      {
         var _loc3_:uint = game.arena.wall.getPixel32(x + param1,y + param2);
         if(_loc3_)
         {
            return _loc3_.toString(16).substring(0,2) != "ff" ? 0 : _loc3_;
         }
         return _loc3_;
      }
   }
}


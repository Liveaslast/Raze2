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
   import flash.display.Shape;
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
   
   public class §\b\x19§ extends Shape
   {
      
      private var game:Game;
      
      private var dots:Array;
      
      private var waterSet:Boolean;
      
      private var MC:MovieClip;
      
      private var fc:uint;
      
      public function §\b\x19§(param1:Game)
      {
         super();
         game = param1;
         fc = 0;
         blendMode = "hardlight";
      }
      
      public function setWater(param1:MovieClip) : void
      {
         var _loc3_:Object = null;
         MC = param1;
         MC.visible = false;
         dots = [];
         var _loc2_:uint = 0;
         while(_loc2_ < MC.width / 20)
         {
            _loc3_ = {};
            _loc3_.x = _loc2_ * 20 + MC.x;
            if(false)
            {
               return false;
            }
            §§push(_loc3_);
            §§push(_loc3_);
            §§push(_loc3_.toY = MC.y);
            if(false)
            {
               return;
            }
            §§pop().y = §§pop().oy = §§pop();
            §§push(_loc3_);
            if(false)
            {
               return false;
            }
            §§pop().yVel = 0;
            _loc3_.yAcc = 0;
            _loc3_.mass = 10;
            dots.push(_loc3_);
            _loc2_++;
         }
         waterSet = true;
      }
      
      public function inWater(param1:Number, param2:Number) : Boolean
      {
         if(waterSet)
         {
            return UT.inBox(param1,param2,MC.x,MC.y,MC.width,MC.height);
         }
         return false;
      }
      
      public function §\t\x17§(param1:int, param2:Number) : void
      {
         if(!(param1 < 0 || param1 >= dots.length))
         {
            dots[param1].yVel = param2;
            return;
         }
      }
      
      public function startWaveAtPos(param1:Number, param2:Number) : void
      {
         var _loc3_:int = Math.round((param1 - MC.x) / 20);
         if(!(_loc3_ < 0 || _loc3_ >= dots.length))
         {
            dots[_loc3_].yVel = param2;
            return;
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(waterSet)
         {
            var _loc8_:* = §§findproperty(fc);
            var _loc9_:Number = _loc8_.fc + 1;
            _loc8_.fc = _loc9_;
            §§push(fc);
            if(false)
            {
               return;
            }
            if(§§pop() % 20 == 0)
            {
               §\t\x17§(0,2);
               §\t\x17§(dots.length - 1,2);
               §\t\x17§(uint(dots.length / 2),1);
            }
            _loc1_ = 0;
            while(true)
            {
               §§push(_loc1_);
               §§push(game.units);
               if(false)
               {
                  break;
               }
               if(§§pop() >= §§pop().length)
               {
                  _loc1_ = 0;
                  while(_loc1_ < dots.length)
                  {
                     _loc3_ = 0;
                     _loc4_ = 0;
                     _loc5_ = 5;
                     _loc6_ = 1.05;
                     _loc7_ = 0.7;
                     if(_loc1_ > 0)
                     {
                        _loc3_ = dots[_loc1_ - 1].y - dots[_loc1_].y;
                        §§push(_loc4_ + _loc3_ * -_loc7_);
                        if(false)
                        {
                           return;
                        }
                        _loc4_ = §§pop();
                     }
                     if(_loc1_ < dots.length - 1)
                     {
                        _loc3_ = dots[_loc1_].y - dots[_loc1_ + 1].y;
                        _loc4_ += _loc3_ * _loc7_;
                     }
                     _loc3_ = dots[_loc1_].y - dots[_loc1_].oy;
                     _loc4_ += _loc7_ / _loc5_ * _loc3_;
                     dots[_loc1_].yAcc = -_loc4_ / dots[_loc1_].mass;
                     §§push(dots);
                     if(false)
                     {
                        return;
                     }
                     §§pop()[_loc1_].yVel = dots[_loc1_].yVel + dots[_loc1_].yAcc;
                     §§push(dots[_loc1_]);
                     §§push(dots[_loc1_].toY);
                     §§push(dots[_loc1_].yVel);
                     if(false)
                     {
                        return;
                     }
                     §§pop().toY = §§pop() + §§pop();
                     §§push(dots[_loc1_]);
                     §§push(dots);
                     if(false)
                     {
                        throw true;
                     }
                     §§pop().yVel = §§pop()[_loc1_].yVel / _loc6_;
                     _loc1_++;
                  }
                  _loc1_ = 0;
                  while(_loc1_ < dots.length)
                  {
                     §§push(dots[_loc1_]);
                     §§push(dots[_loc1_].toY);
                     if(false)
                     {
                        return;
                     }
                     §§pop().y = §§pop();
                     _loc1_++;
                  }
                  graphics.clear();
                  graphics.lineStyle(2,6737151,0.7);
                  graphics.beginFill(6737151,0.5);
                  graphics.moveTo(dots[0].x,dots[0].y);
                  _loc1_ = 1;
                  while(_loc1_ < dots.length)
                  {
                     if(_loc1_ != 1)
                     {
                        if(_loc1_ < dots.length - 1)
                        {
                           graphics.curveTo(dots[_loc1_ - 1].x,dots[_loc1_ - 1].y,(dots[_loc1_ - 1].x + dots[_loc1_].x) / 2,(dots[_loc1_ - 1].y + dots[_loc1_].y) / 2);
                        }
                     }
                     else
                     {
                        graphics.lineTo((dots[_loc1_ - 1].x + dots[_loc1_].x) / 2,(dots[_loc1_ - 1].y + dots[_loc1_].y) / 2);
                     }
                     §§push(_loc1_ + 1);
                     if(false)
                     {
                        return;
                     }
                     _loc1_ = §§pop();
                  }
                  graphics.lineTo(dots[dots.length - 1].x,dots[dots.length - 1].y);
                  graphics.lineTo(MC.x + MC.width,MC.y + MC.height);
                  graphics.lineTo(MC.x,MC.y + MC.height);
                  §§push(graphics);
                  §§push(dots[0]);
                  if(false)
                  {
                     throw true;
                  }
                  §§pop().lineTo(§§pop().x,dots[0].y);
                  graphics.endFill();
                  return;
               }
               §§push(game.units[_loc1_].dead);
               if(false)
               {
                  return false;
               }
               if(!§§pop())
               {
                  if(inWater(game.units[_loc1_].x,game.units[_loc1_].y))
                  {
                     _loc2_ = Math.round((game.units[_loc1_].x - MC.x) / 20);
                     §§push(game.units);
                     §§push(_loc1_);
                     if(false)
                     {
                        return;
                     }
                     if(!(Boolean(§§pop()[§§pop()].mov.jumping) && game.units[_loc1_].mov.yVel > 0))
                     {
                        if(!(Boolean(game.units[_loc1_].mov.jumping) && game.units[_loc1_].mov.yVel < 0))
                        {
                           if(game.units[_loc1_].mov.xVel >= 0)
                           {
                              §§push(game.units[_loc1_].mov);
                              if(false)
                              {
                                 throw true;
                              }
                              if(§§pop().xVel <= 0)
                              {
                                 §§push(game.units);
                                 §§push(_loc1_);
                                 if(false)
                                 {
                                    return;
                                 }
                                 if(§§pop()[§§pop()].mov.crouching)
                                 {
                                    §\t\x17§(_loc2_,0.5);
                                 }
                              }
                              else
                              {
                                 §§push(§§findproperty(§\t\x17§));
                                 §§push(_loc2_ + 1);
                                 §§push(2);
                                 if(false)
                                 {
                                    return;
                                 }
                                 §§pop().§\t\x17§(§§pop(),§§pop());
                                 §\t\x17§(_loc2_ + 3,-2);
                                 §\t\x17§(_loc2_ - 1,-1);
                              }
                           }
                           else
                           {
                              §\t\x17§(_loc2_ - 1,2);
                              §\t\x17§(_loc2_ - 3,-2);
                              §§push(§§findproperty(§\t\x17§));
                              §§push(_loc2_ + 1);
                              §§push(-1);
                              if(false)
                              {
                                 return;
                              }
                              §§pop().§\t\x17§(§§pop(),§§pop());
                           }
                        }
                        else
                        {
                           §\t\x17§(_loc2_,-5);
                        }
                     }
                     else
                     {
                        §\t\x17§(_loc2_,4);
                     }
                  }
               }
               _loc1_++;
            }
            return;
         }
      }
   }
}


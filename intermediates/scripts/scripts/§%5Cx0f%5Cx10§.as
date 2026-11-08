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
   
   public class §\x0f\x10§
   {
      
      private var unit:§\t\x06§;
      
      public var xVel:Number = 0;
      
      public var xVelSlide:Number = 0;
      
      public const xAcc:Number = 2.1;
      
      public const xBrake:Number = 1.7;
      
      public const xCrouchBrake:Number = 0.5;
      
      public const xAirAcc:Number = 1.5;
      
      public const xAirBrake:Number = 0.4;
      
      public const xMax:Number = 11;
      
      public var yVel:Number = 0;
      
      public const yGrav:Number = 0.8;
      
      public const yMax:Number = 20;
      
      public const yJump:Number = 13;
      
      public const yJumpBoost:Number = 6;
      
      public const yDjump:Number = 10;
      
      public var manualJump:Boolean = false;
      
      public var jumping:Boolean = false;
      
      public var crouching:Boolean = false;
      
      public var dJump:Boolean = false;
      
      public var tiltL:Number;
      
      public var tiltR:Number;
      
      public var spinning:Boolean = false;
      
      public var spinCur:Number;
      
      public var spinNew:Number;
      
      public var modSpeed:Number;
      
      public var modMax:Number;
      
      public var modBrake:Number;
      
      public var modJump:Number;
      
      public var modSideJump:Number;
      
      public var modSlide:Number;
      
      public var modMove:Number;
      
      public var modGrav:Number;
      
      public var modMegaJump:Boolean;
      
      public function §\x0f\x10§(param1:§\t\x06§)
      {
         super();
         unit = param1;
         §\r\x0e§();
      }
      
      public function §\r\x0e§() : void
      {
         modMegaJump = false;
         modSpeed = 1;
         modMax = 1;
         modBrake = 1;
         modJump = 1;
         modSideJump = 0;
         modGrav = 1;
         modSlide = 0;
         modMove = 0;
      }
      
      public function §\x1a\x17§() : void
      {
         if(!unit.abilityPause)
         {
            if(!unit.game.gameStarted)
            {
               return;
            }
            if(!crouching)
            {
               if(modSideJump)
               {
                  xVel = modSideJump;
               }
               if(modMegaJump)
               {
                  unit.game.playScreenSound(S_Jumppad,unit.x,unit.y);
                  jumping = true;
                  manualJump = true;
                  dJump = true;
                  yVel -= yJump * modJump;
                  unit.MC.goto("tuck");
                  unit.game.createEffect(unit.x,unit.y - 20,"smoke_big");
               }
               if(jumping)
               {
                  if(!dJump)
                  {
                     yVel *= 0.5;
                     yVel -= yDjump;
                     dJump = true;
                     unit.MC.goto("tuck");
                     §§push(unit);
                     if(false)
                     {
                        return;
                     }
                     §§pop().game.createEffect(unit.x,unit.y,"smoke_med");
                     if(manualJump)
                     {
                        if(unit.keys & unit.LEFT)
                        {
                           spinning = true;
                           spinCur = 0;
                           spinNew = -360;
                        }
                        else if(unit.keys & unit.RIGHT)
                        {
                           spinning = true;
                           spinCur = 0;
                           spinNew = 360;
                        }
                     }
                  }
               }
               else
               {
                  unit.y -= yJumpBoost;
                  yVel -= yJump * modJump;
                  jumping = true;
                  manualJump = true;
                  unit.MC.goto("jump");
               }
               return;
            }
            return;
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         §§push(0);
         if(false)
         {
            throw true;
         }
         var _loc4_:* = §§pop();
         if(unit.game.gameStarted)
         {
            if(jumping)
            {
               crouching = false;
            }
            else
            {
               crouching = unit.keys & unit.DOWN;
            }
            var _temp_1:* = Boolean(unit.keys & unit.LEFT);
            §§push(_temp_1);
            if(_temp_1)
            {
               §§pop();
               §§push(Boolean(!crouching));
               if(false)
               {
                  throw true;
               }
            }
            if(§§pop() && xVel > -(xMax + 3))
            {
               if(false)
               {
                  return;
               }
               unit.nextAnim = !unit.flip ? "runback" : "run";
               xVel += (!jumping ? -xAcc : -xAirAcc) * modSpeed;
               §§push(xVel);
               if(false)
               {
                  return;
               }
               if(§§pop() < -xMax * modMax)
               {
                  §§push(§§findproperty(xVel));
                  §§push(-xMax * modMax);
                  if(false)
                  {
                     return false;
                  }
                  §§pop().xVel = §§pop();
               }
            }
            else
            {
               var _temp_3:* = Boolean(unit.keys & unit.RIGHT);
               §§push(_temp_3);
               §§push(_temp_3);
               if(false)
               {
                  return false;
               }
               if(§§pop())
               {
                  §§pop();
                  §§push(Boolean(!crouching));
               }
               if(!(§§pop() && xVel < xMax + 3))
               {
                  unit.nextAnim = "idle";
                  _loc2_ = (!jumping ? (!crouching ? xBrake : xCrouchBrake) : xAirBrake) * modBrake;
                  if(!jumping && (xVel > xMax || xVel < -xMax))
                  {
                     _loc2_ *= 2.5;
                  }
                  if(xVel > _loc2_)
                  {
                     xVel -= _loc2_;
                  }
                  if(xVel < -_loc2_)
                  {
                     xVel += _loc2_;
                  }
                  if(xVel > -_loc2_ - 0.1 && xVel < _loc2_ + 0.1)
                  {
                     xVel = 0;
                  }
               }
               else
               {
                  unit.nextAnim = !unit.flip ? "run" : "runback";
                  xVel += (jumping ? xAirAcc : xAcc) * modSpeed;
                  if(xVel > xMax * modMax)
                  {
                     xVel = xMax * modMax;
                  }
               }
            }
            unit.x += xVel;
            unit.x += modMove;
            if(!modSlide)
            {
               xVel += xVelSlide;
            }
            xVelSlide = Math.round(unit.MC.rotation) * modSlide;
            if(xVelSlide > 0)
            {
               xVelSlide -= 0.05;
            }
            if(xVelSlide < 0)
            {
               §§push(§§findproperty(xVelSlide));
               §§push(xVelSlide);
               if(false)
               {
                  return;
               }
               §§pop().xVelSlide = §§pop() + 0.05;
            }
            §§push(xVelSlide > -0.1);
            if(false)
            {
               return;
            }
            if(§§pop() && xVelSlide < 0.1)
            {
               xVelSlide = 0;
            }
            unit.x += xVelSlide;
            unit.y += yVel;
            if(spinning)
            {
               unit.spinMC.rotation = spinCur;
               _loc3_ = !jumping ? 0.3 : 0.15;
               spinCur += (spinNew - spinCur) * _loc3_;
               if(spinCur > spinNew - 1 && spinCur < spinNew + 1)
               {
                  unit.spinMC.rotation = 0;
                  spinning = false;
               }
            }
            while(true)
            {
               var _temp_10:* = Boolean(§\x11\r§(0,9));
               §§push(_temp_10);
               if(_temp_10)
               {
                  §§pop();
                  §§push(§§findproperty(§\x11\r§));
                  if(false)
                  {
                     break;
                  }
                  §§push(!§§pop().§\x11\r§(0,-1));
               }
               if(!§§pop())
               {
                  if(§\x11\r§(0,1))
                  {
                     if(yVel > 0)
                     {
                        if(unit.keys & unit.LEFT)
                        {
                           unit.nextAnim = !unit.flip ? "landrunback" : "landrun";
                        }
                        else if(!(unit.keys & unit.RIGHT))
                        {
                           §§push(unit);
                           if(false)
                           {
                              throw true;
                           }
                           §§pop().nextAnim = "land";
                        }
                        else
                        {
                           unit.nextAnim = !unit.flip ? "landrun" : "landrunback";
                        }
                     }
                     manualJump = false;
                     jumping = false;
                     dJump = false;
                     yVel = 0;
                  }
                  else
                  {
                     unit.nextAnim = "fall";
                     jumping = true;
                     §§push(§§findproperty(yVel));
                     §§push(yVel);
                     §§push(yGrav);
                     if(false)
                     {
                        return;
                     }
                     §§pop().yVel = §§pop() + §§pop() * modGrav;
                     if(yVel > yMax * modGrav)
                     {
                        yVel = yMax * modGrav;
                     }
                  }
                  while(§\x11\r§(0,-50))
                  {
                     var _loc5_:* = unit;
                     var _loc6_:Number = _loc5_.y + 1;
                     _loc5_.y = _loc6_;
                     if(yVel < 0)
                     {
                        yVel = 0;
                     }
                  }
                  while(true)
                  {
                     var _temp_12:* = Boolean(§\x11\r§(17,-20));
                     §§push(_temp_12);
                     if(!_temp_12)
                     {
                        §§pop();
                        §§push(§§findproperty(§\x11\r§));
                        §§push(17);
                        if(false)
                        {
                           break;
                        }
                        §§push(Boolean(§§pop().§\x11\r§(§§pop(),-25)));
                     }
                     if(!(§§pop() || Boolean(§\x11\r§(17,-35)) || Boolean(§\x11\r§(17,-45))))
                     {
                        while(true)
                        {
                           var _temp_18:* = Boolean(§\x11\r§(-17,-20)) || Boolean(§\x11\r§(-17,-25));
                           §§push(_temp_18);
                           if(!_temp_18)
                           {
                              §§pop();
                              if(false)
                              {
                                 break;
                              }
                              §§push(Boolean(§\x11\r§(-17,-35)));
                           }
                           if(!(§§pop() || Boolean(§\x11\r§(-17,-45))))
                           {
                              while(§\x11\r§(0,0))
                              {
                                 unit.y -= 0.5;
                              }
                              if(!jumping)
                              {
                                 tiltL = tiltR = -10;
                                 _loc4_ = 0;
                                 while(true)
                                 {
                                    var _temp_21:* = _loc4_ < 30;
                                    §§push(_temp_21);
                                    if(_temp_21)
                                    {
                                       §§pop();
                                       §§push(§§findproperty(§\x11\r§));
                                       if(false)
                                       {
                                          break;
                                       }
                                       §§push(!§§pop().§\x11\r§(-10,tiltL));
                                    }
                                    if(§§pop())
                                    {
                                       if(false)
                                       {
                                          throw true;
                                       }
                                       continue;
                                    }
                                    _loc4_ = 0;
                                    while(_loc4_ < 30 && !§\x11\r§(10,tiltR))
                                    {
                                       _loc4_++;
                                       _loc5_ = §§findproperty(tiltR);
                                       _loc6_ = _loc5_.tiltR + 1;
                                       _loc5_.tiltR = _loc6_;
                                    }
                                    if(!(tiltL < 20 && tiltR < 20))
                                    {
                                       _loc1_ = 0;
                                    }
                                    else
                                    {
                                       _loc1_ = UT.getRotation(-10,tiltL,10,tiltR) - 90;
                                    }
                                    _loc4_++;
                                    _loc5_ = §§findproperty(tiltL);
                                    _loc6_ = _loc5_.tiltL + 1;
                                    _loc5_.tiltL = _loc6_;
                                 }
                                 throw true;
                              }
                              _loc1_ = 0;
                              unit.MC.rotation += (_loc1_ - unit.MC.rotation) * 0.3;
                              if(crouching)
                              {
                                 unit.nextAnim = "duck";
                              }
                              return;
                           }
                           ++unit.x;
                        }
                        return;
                     }
                     _loc5_ = unit;
                     _loc6_ = _loc5_.x - 1;
                     §§push(_loc5_);
                     §§push(_loc6_);
                     if(false)
                     {
                        return;
                     }
                     §§pop().x = §§pop();
                  }
                  throw true;
               }
               unit.y += 0.5;
               if(false)
               {
                  return;
               }
            }
            return;
         }
      }
      
      public function §\x11\r§(param1:Number = 0, param2:Number = 0) : uint
      {
         var _loc3_:uint = unit.game.arena.wall.getPixel32(unit.x + param1,unit.y + param2);
         if(false)
         {
            return;
         }
         if(_loc3_)
         {
            return _loc3_.toString(16).substring(0,2) != "ff" ? 0 : _loc3_;
         }
         return _loc3_;
      }
   }
}


package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2FrictionJointDef;
   import §\x1c\x10§.b2GearJointDef;
   import §\x1c\x10§.b2Joint;
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
   
   public class §\x1c\x0e§
   {
      
      protected var game:Game;
      
      protected var unit:§\t\x06§;
      
      protected var stats:Stats_Guns;
      
      public var remove:Boolean;
      
      protected var rotation:Number;
      
      protected var x:Number;
      
      protected var y:Number;
      
      protected var ox:Number;
      
      protected var oy:Number;
      
      protected var xVel:Number;
      
      protected var yVel:Number;
      
      private var isProjectile:Boolean;
      
      protected var hitType:String;
      
      protected var hitObject:*;
      
      protected var curDist:Number;
      
      protected var maxDist:Number;
      
      protected var dmgMod:Number;
      
      protected var extra:Object;
      
      protected var fixedDist:Boolean;
      
      public function §\x1c\x0e§(param1:Game, param2:§\t\x06§, param3:Number, param4:Number, param5:Number, param6:uint, param7:String, param8:Boolean, param9:Object = null)
      {
         super();
         game = param1;
         unit = param2;
         if(!param9)
         {
            extra = {};
         }
         else
         {
            extra = param9;
         }
         dmgMod = !extra.dmgMod ? 1 : Number(extra.dmgMod);
         §§push(§§findproperty(stats));
         §§push(Stats_Guns.gunOb);
         if(false)
         {
            return;
         }
         §§pop().stats = §§pop()[param7];
         if(stats.extra.mauser)
         {
            extra.mauser = true;
         }
         isProjectile = param8;
         curDist = 0;
         §§push(§§findproperty(maxDist));
         if(!extra.range)
         {
            §§push(stats);
            if(false)
            {
               throw true;
            }
            §§push(§§pop().range);
         }
         else
         {
            §§push(extra.range);
         }
         §§pop().maxDist = §§pop() + (!fixedDist ? UT.irand(-3,3) : 0);
         if(unit.equips.range)
         {
            maxDist += unit.equips.range;
         }
         maxDist *= 10;
         rotation = param3;
         §§push(§§findproperty(x));
         §§push(param4);
         if(false)
         {
            return;
         }
         §§pop().x = §§pop() + UT.xMoveToRot(rotation + 90 * unit.MC.scaleX,stats.yOff);
         §§push(§§findproperty(y));
         if(false)
         {
            return;
         }
         §§pop().y = param5 + UT.yMoveToRot(rotation + 90 * unit.MC.scaleX,stats.yOff);
         xVel = UT.xMoveToRot(rotation,10);
         yVel = UT.yMoveToRot(rotation,10);
         var _loc10_:uint = 0;
         while(_loc10_ <= param6)
         {
            x += xVel * 0.5;
            y += yVel * 0.5;
            if(hitObject = §\x11\f§())
            {
               break;
            }
            _loc10_++;
         }
         ox = x;
         oy = y;
         §§push(stats.effShoot);
         if(false)
         {
            return;
         }
         if(§§pop())
         {
            §§push(game);
            §§push(ox);
            §§push(oy);
            §§push(stats.effShoot);
            if(false)
            {
               return;
            }
            §§pop().createEffect(§§pop(),§§pop(),§§pop());
         }
      }
      
      protected function §\x1a\x18§(param1:Boolean = false) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:Number = NaN;
         if(!hitType)
         {
            if(!param1)
            {
               return;
            }
            hitType = "wall";
         }
         if(!(Boolean(hitType) && Boolean(stats.extra.bounceShots)))
         {
            if(hitType == "unit")
            {
               if(hitObject.status.sMirror)
               {
                  if(false)
                  {
                     return;
                  }
                  if(!extra.reflect)
                  {
                     §§push(UT);
                     §§push(rotation);
                     §§push(x - xVel * 10);
                     §§push(y);
                     §§push(yVel);
                     if(false)
                     {
                        return;
                     }
                     _loc4_ = Number(§§pop().rotBounceOff(§§pop(),§§pop(),§§pop() - §§pop() * 10,hitObject.x,hitObject.y - 20));
                     unit.game.bullets.push(new stats.cls(unit.game,hitObject,_loc4_ + UT.rand(-10,10),x,y,0,stats.id,{"reflect":unit}));
                     if(isProjectile)
                     {
                        removeMe();
                     }
                     return;
                  }
                  return;
               }
               var _temp_2:* = !hitObject.status.sInvin;
               §§push(_temp_2);
               if(_temp_2)
               {
                  §§pop();
                  §§push(hitObject);
                  if(false)
                  {
                     return;
                  }
                  §§push(!§§pop().status.sMirror);
               }
               if(§§pop())
               {
                  if(!hitObject.status.shCur)
                  {
                     game.createEffect(x,y,MatchSettings.specialMode != "lol猫\x1f\x1f" ? hitObject.skin.blood : "bloodRainbow");
                  }
                  else
                  {
                     game.createEffect(x,y,"bloodShield");
                  }
               }
               if(!isProjectile)
               {
                  x -= xVel * 0.5;
                  y -= yVel * 0.5;
               }
               else
               {
                  x -= xVel;
                  §§push(§§findproperty(y));
                  §§push(y);
                  §§push(yVel);
                  if(false)
                  {
                     return false;
                  }
                  §§pop().y = §§pop() - §§pop();
                  if(!stats.extra.pierce)
                  {
                     removeMe();
                  }
               }
               if(stats.effHit)
               {
                  game.createEffect(x,y,stats.effHit);
               }
               if(stats.splash)
               {
                  extra.hitX = x;
                  extra.hitY = y;
               }
               hitObject.status.damage(stats.dmg * dmgMod,unit,stats,extra);
               _loc3_ = 0;
               if(Boolean(stats.extra.arc) && !extra.noArc)
               {
                  _loc2_ = 0;
                  while(_loc2_ < unit.game.units.length)
                  {
                     if(unit.game.units[_loc2_] != hitObject)
                     {
                        §§push(unit.game.units);
                        §§push(_loc2_);
                        if(false)
                        {
                           return;
                        }
                        if(§§pop()[§§pop()] != unit)
                        {
                           if(!unit.game.units[_loc2_].dead)
                           {
                              if(!(Boolean(unit.team) && unit.team == unit.game.units[_loc2_].team))
                              {
                                 if(_loc3_ < 3 && UT.getDist(x,y,unit.game.units[_loc2_].x,unit.game.units[_loc2_].y - 40) < stats.extra.arc)
                                 {
                                    _loc4_ = UT.getRotation(x,y,unit.game.units[_loc2_].x,unit.game.units[_loc2_].y - 40);
                                    §§push(unit.game.bullets);
                                    §§push(stats);
                                    §§push(unit.game);
                                    §§push(unit);
                                    §§push(_loc4_);
                                    §§push(x);
                                    §§push(y);
                                    §§push(0);
                                    §§push(stats.id);
                                    §§push("noArc");
                                    §§push(true);
                                    §§push("dmgMod");
                                    §§push(0.5);
                                    if(false)
                                    {
                                       return;
                                    }
                                    §§pop().push(new §§pop().cls(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null));
                                    §§push(_loc3_);
                                    if(false)
                                    {
                                       throw true;
                                    }
                                    _loc3_ = §§pop() + 1;
                                 }
                              }
                           }
                        }
                     }
                     _loc2_++;
                  }
                  if(isProjectile)
                  {
                     removeMe();
                  }
                  return;
               }
            }
            if(hitType == "corpse")
            {
               §§push(game);
               §§push(x);
               §§push(y);
               if(false)
               {
                  return;
               }
               §§pop().createEffect(§§pop(),§§pop(),MatchSettings.specialMode != "lol猫\x1f\x1f" ? hitObject.unit.skin.blood : "bloodRainbow");
               if(isProjectile)
               {
                  x -= xVel;
                  y -= yVel;
                  if(!stats.extra.pierce)
                  {
                     removeMe();
                  }
               }
               if(stats.effHit)
               {
                  game.createEffect(x,y,stats.effHit);
               }
               if(stats.splash)
               {
                  extra.hitX = x;
                  extra.hitY = y;
               }
               game.physWorld.hitCorpse(hitObject,unit,stats,extra);
            }
            if(hitType == "wall")
            {
               if(isProjectile)
               {
                  x -= xVel;
                  y -= yVel;
                  if(stats.extra.burrow)
                  {
                     extra.burrowMult = 2;
                     yVel -= stats.params[2] * 0.1;
                  }
                  else
                  {
                     removeMe();
                  }
               }
               §§push(stats);
               if(false)
               {
                  return;
               }
               if(§§pop().extra.burrow)
               {
                  game.createEffect(x,y,"mud_splash");
               }
               else if(stats.effHit)
               {
                  game.createEffect(x,y,stats.effHit);
               }
               var _loc5_:* = hitObject;
               switch(_loc5_)
               {
                  case "ffff06":
                     §§push(0);
                     break;
                  case "9900ff":
                     §§push(1);
                     break;
                  case "":
                     §§push(2);
                     break;
                  case "ff0000":
                     §§push(3);
                     break;
                  case "00ffff":
                     §§push(4);
                     break;
                  case "993300":
                     §§push(5);
                     break;
                  case "670067":
                     §§push(6);
                     break;
                  case "6699ff":
                     §§push(7);
                     break;
                  case "ffffff":
                     §§push(8);
                     break;
                  default:
                     §§push("006600");
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() !== _loc5_)
                     {
                        §§push(10);
                        break;
                     }
                     §§push(9);
               }
               switch(§§pop())
               {
                  case 0:
                     if(unit.human && stats.type == 4)
                     {
                        Stats_Achievements.setAchievement("moon");
                     }
                     break;
                  case 1:
                     if(unit.human)
                     {
                        unit.game.tutShootWall(stats);
                     }
                     break;
                  case 2:
                  case 3:
                  case 4:
                     break;
                  case 5:
                     if(SD.graphPart)
                     {
                        game.createEffect(x,y,"mud_splash");
                     }
                     break;
                  case 6:
                  case 7:
                     break;
                  case 8:
                     if(SD.graphPart)
                     {
                        game.createEffect(x,y,"snow_splash");
                     }
                     break;
                  case 9:
                     game.createEffect(x,y,"leaf_splash");
                     _loc2_ = 0;
                     while(_loc2_ < SD.graphPart)
                     {
                        §§push(game);
                        §§push(x + UT.rand(-10,10));
                        §§push(y);
                        §§push("leaf");
                        §§push(null);
                        §§push("leaves");
                        if(false)
                        {
                           return false;
                        }
                        §§pop().createParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),"leaf" + UT.irand(1,4));
                        _loc2_++;
                     }
                     if(unit.human)
                     {
                        if(false)
                        {
                           throw true;
                        }
                        _loc5_ = unit;
                        var _loc6_:Number = _loc5_.treeShoot + 1;
                        _loc5_.treeShoot = _loc6_;
                     }
                     if(unit.treeShoot == 400)
                     {
                        Stats_Achievements.setAchievement("ammo");
                     }
               }
            }
            if(stats.hitSound)
            {
               unit.game.playScreenSound(stats.hitSound,x,y);
            }
            §\x1c\t§();
            return;
         }
         if(hitType == "unit")
         {
            hitObject.status.damage(stats.dmg * dmgMod,unit,stats,extra);
         }
         x -= xVel * 3;
         y -= yVel * 3;
         _loc2_ = 0;
         while(_loc2_ < stats.extra.bounceShots)
         {
            unit.game.bullets.push(new Stats_Guns.gunOb["bouncer"].cls(unit.game,unit,UT.rand(0,360),x,y,0,"bouncer"));
            _loc2_++;
         }
         if(isProjectile)
         {
            removeMe();
         }
      }
      
      protected function §\x11\f§(param1:Number = 0, param2:Number = 0, param3:Boolean = false) : *
      {
         var _loc5_:uint = 0;
         if(game.water.inWater(x + param1,y + param2))
         {
            if(!game.water.inWater(unit.x,unit.y))
            {
               game.water.startWaveAtPos(x,1);
            }
            else
            {
               game.water.startWaveAtPos(x,-1);
            }
         }
         §§push(game.arena.wall);
         §§push(x);
         §§push(param1);
         if(false)
         {
            return false;
         }
         var _loc4_:uint = uint(§§pop().getPixel32(§§pop() + §§pop(),y + param2));
         if(!extra.ignoreAll)
         {
            if(Boolean(!param3) && Boolean(_loc4_) && _loc4_.toString(16).substring(0,2) == "ff")
            {
               hitType = "wall";
               return _loc4_.toString(16).substring(2);
            }
         }
         _loc5_ = 0;
         while(_loc5_ < game.units.length)
         {
            if(game.units[_loc5_] != unit)
            {
               if(!game.units[_loc5_].dead)
               {
                  if(!(Boolean(unit.team) && unit.team == game.units[_loc5_].team))
                  {
                     §§push(UT);
                     §§push(x);
                     §§push(y);
                     §§push(game.units[_loc5_]);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop().inBox(§§pop(),§§pop(),§§pop().x - 25,game.units[_loc5_].y - 80,50,80))
                     {
                        if(!(Boolean(game.units[_loc5_].mov.spinning) && Math.abs(game.units[_loc5_].mov.spinCur) > 30))
                        {
                           if(!game.units[_loc5_].mov.crouching)
                           {
                              §§push(UT);
                              §§push(x);
                              §§push(y);
                              §§push(game.units[_loc5_].x - 20);
                              if(false)
                              {
                                 return;
                              }
                              if(§§pop().inBox(§§pop(),§§pop(),§§pop(),game.units[_loc5_].y - 80,40,17))
                              {
                                 §§push(UT.getPosNegSign(unit.x - game.units[_loc5_].x));
                                 §§push(game.units[_loc5_].MC.scaleX);
                                 if(false)
                                 {
                                    return;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    extra.assassin = stats.mults[0];
                                 }
                                 §§push(extra);
                                 §§push(stats.mults);
                                 if(false)
                                 {
                                    throw true;
                                 }
                                 §§pop().headMult = §§pop()[0];
                                 hitType = "unit";
                                 if(stats.splash >= 80)
                                 {
                                    extra.splashDirect = true;
                                 }
                                 return game.units[_loc5_];
                              }
                              §§push(UT);
                              §§push(x);
                              §§push(y);
                              §§push(game.units[_loc5_].x - 20);
                              §§push(game.units[_loc5_].y);
                              if(false)
                              {
                                 throw true;
                              }
                              if(§§pop().inBox(§§pop(),§§pop(),§§pop(),§§pop() - 37,40,10))
                              {
                                 §§push(UT);
                                 §§push(unit.x - game.units[_loc5_].x);
                                 if(false)
                                 {
                                    return;
                                 }
                                 if(§§pop().getPosNegSign(§§pop()) != game.units[_loc5_].MC.scaleX)
                                 {
                                    extra.buttMult = stats.mults[2];
                                 }
                                 else
                                 {
                                    extra.crotchMult = stats.mults[1];
                                 }
                                 hitType = "unit";
                                 if(stats.splash >= 80)
                                 {
                                    extra.splashDirect = true;
                                 }
                                 §§push(game.units[_loc5_]);
                                 if(false)
                                 {
                                    return false;
                                 }
                                 return §§pop();
                              }
                              if(UT.inBox(x,y,game.units[_loc5_].x - 20,game.units[_loc5_].y - 80,40,80))
                              {
                                 hitType = "unit";
                                 if(stats.splash >= 80)
                                 {
                                    extra.splashDirect = true;
                                 }
                                 return game.units[_loc5_];
                              }
                           }
                           else
                           {
                              §§push(UT);
                              §§push(x);
                              §§push(y);
                              §§push(game.units[_loc5_].x);
                              if(false)
                              {
                                 return;
                              }
                              if(§§pop().inBox(§§pop(),§§pop(),§§pop() - 20,game.units[_loc5_].y - 60,40,17))
                              {
                                 if(UT.getPosNegSign(unit.x - game.units[_loc5_].x) != game.units[_loc5_].MC.scaleX)
                                 {
                                    extra.assassin = stats.mults[0];
                                 }
                                 extra.headMult = stats.mults[0];
                                 hitType = "unit";
                                 if(stats.splash >= 80)
                                 {
                                    extra.splashDirect = true;
                                 }
                                 return game.units[_loc5_];
                              }
                              if(UT.inBox(x,y,game.units[_loc5_].x - 20,game.units[_loc5_].y - 25,40,7))
                              {
                                 if(UT.getPosNegSign(unit.x - game.units[_loc5_].x) != game.units[_loc5_].MC.scaleX)
                                 {
                                    extra.buttMult = stats.mults[2];
                                 }
                                 else
                                 {
                                    extra.crotchMult = stats.mults[1];
                                 }
                                 hitType = "unit";
                                 if(stats.splash >= 80)
                                 {
                                    extra.splashDirect = true;
                                 }
                                 return game.units[_loc5_];
                              }
                              if(UT.inBox(x,y,game.units[_loc5_].x - 20,game.units[_loc5_].y - 60,40,60))
                              {
                                 hitType = "unit";
                                 if(stats.splash >= 80)
                                 {
                                    extra.splashDirect = true;
                                 }
                                 return game.units[_loc5_];
                              }
                           }
                        }
                        else if(UT.inBox(x,y,game.units[_loc5_].x - 25,game.units[_loc5_].y - 70,50,70))
                        {
                           hitType = "unit";
                           if(stats.splash >= 80)
                           {
                              extra.splashDirect = true;
                           }
                           return game.units[_loc5_];
                        }
                     }
                  }
               }
            }
            _loc5_++;
         }
         if(!extra.ignoreAll)
         {
            _loc5_ = 0;
            while(_loc5_ < game.physWorld.actors.length)
            {
               if(UT.getDist(x,y,game.physWorld.actors[_loc5_].rdBody.GetDefinition().userData.x,game.physWorld.actors[_loc5_].rdBody.GetDefinition().userData.y) < 30)
               {
                  hitType = "corpse";
                  return game.physWorld.actors[_loc5_];
               }
               _loc5_++;
            }
         }
         hitType = "";
         §§push(null);
         if(false)
         {
            return;
         }
         return §§pop();
      }
      
      protected function §\x11\x0b§(param1:Number = 0, param2:Number = 0) : Boolean
      {
         var _loc3_:uint = game.arena.wall.getPixel32(x + param1,y + param2);
         return Boolean(_loc3_) && _loc3_.toString(16).substring(0,2) == "ff";
      }
      
      protected function §\x1c\t§() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:uint = 0;
         if(stats.splash)
         {
            var _loc1_:* = 0;
            while(_loc1_ < game.units.length)
            {
               if(!game.units[_loc1_].dead)
               {
                  if(!(hitType == "unit" && hitObject == game.units[_loc1_]))
                  {
                     if(UT.getDist(x,y,game.units[_loc1_].x,game.units[_loc1_].y - 45) < stats.splash)
                     {
                        §\x1c\x05§();
                        _loc2_ = UT.getRotation(x,y,game.units[_loc1_].x,game.units[_loc1_].y - 45);
                        _loc3_ = game.arena.wall.getPixel32(x + UT.xMoveToRot(_loc2_,10),y + UT.yMoveToRot(_loc2_,10));
                        var _temp_2:* = Boolean(_loc3_);
                        §§push(_temp_2);
                        if(_temp_2)
                        {
                           §§pop();
                           §§push(_loc3_);
                           if(false)
                           {
                              return;
                           }
                           §§push(§§pop().toString(16).substring(0,2) == "ff");
                        }
                        if(!§§pop())
                        {
                           if(Boolean(stats.splash) && stats.splash < 80)
                           {
                              §§push(extra);
                              §§push(true);
                              if(false)
                              {
                                 return;
                              }
                              §§pop().splashIndirect = §§pop();
                           }
                           extra.hitX = x;
                           extra.hitY = y;
                           extra.splashMult = stats.splashMult;
                           game.units[_loc1_].status.damage(stats.dmg,unit,stats,extra);
                        }
                     }
                  }
               }
               §§push(uint(_loc1_ + 1));
               if(false)
               {
                  return;
               }
               _loc1_ = §§pop();
            }
            return;
         }
      }
      
      protected function removeMe() : void
      {
         remove = true;
      }
      
      protected function §\x1c\x05§() : void
      {
         var _loc1_:* = {};
         _loc1_.corpseStick = extra.corpseStick;
         _loc1_.reflect = extra.reflect;
         extra = _loc1_;
      }
   }
}


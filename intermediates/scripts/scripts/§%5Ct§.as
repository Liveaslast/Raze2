package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x14§;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2FrictionJointDef;
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
   
   public class §\t§ extends §\t\x06§
   {
      
      private var curWp:NodeWaypoint;
      
      private var nextWp:NodeWaypoint;
      
      private var wpTimer:uint;
      
      private var focusX:Number;
      
      private var focusY:Number;
      
      private var stand:uint;
      
      private var nostand:uint;
      
      public var duck:Boolean;
      
      private var getTargetTimer:uint = 0;
      
      private var getTargetEvent:uint;
      
      private var getTargetMax:uint;
      
      private var shootSpd:Number;
      
      private var standNormal:Number;
      
      private var standTarget:Number;
      
      private var standFlag:Number;
      
      private var shotChance:Number;
      
      private var aimSpeed:Number;
      
      private var diffRev:uint;
      
      private var path:String;
      
      public function §\t§(param1:Game, param2:Object, param3:uint, param4:uint)
      {
         getTargetEvent = param3;
         getTargetMax = param4;
         diff = param2.diff;
         super(param1,param2);
         status.sSpawn = 0;
         setDiffStats();
         path = "@@";
      }
      
      public function setDiffStats() : void
      {
         diffRev = 10 - diff;
         standNormal = 0.01 * (diffRev * 0.3);
         standTarget = 0.03 * (diffRev * 0.3);
         standFlag = 0.005 * (diffRev * 0.3);
         shotChance = diff * 0.29 + 0.1;
         if(diff == 10)
         {
            shotChance = 1000;
         }
         aimSpeed = 0.3 * (diff * 0.1 + 0.1);
      }
      
      override public function spawn(param1:Number = 0, param2:Number = 0, param3:String = "") : void
      {
         §\t\x03§(param1,param2,param3);
         §§push(§§findproperty(aimX));
         §§push(x);
         §§push(100);
         if(false)
         {
            return;
         }
         §§pop().aimX = §§pop() + §§pop();
         aimY = y - 50;
         status.sSpawn = 1 * 30;
         getTargetTimer = 0;
         target = null;
      }
      
      override protected function setAiSpawnNode(param1:NodeSpawn) : void
      {
         getNextWaypoint(param1.waypoint,true);
      }
      
      private function §\x0f\x0e§() : void
      {
         if(hasFlag)
         {
            path = pathFind(game.arena["flag" + team].id,5);
            trace("SET PATH TO HOME FLAG",path);
         }
         else if(Math.random() < 0.3 && !game.arena["flag" + (team != 1 ? 1 : 2)].unitCaptured)
         {
            §§push(§§findproperty(path));
            §§push(§§findproperty(pathFind));
            §§push(game.arena);
            §§push("flag");
            if(team != 1)
            {
               §§push(1);
               if(false)
               {
                  return;
               }
            }
            else
            {
               §§push(2);
            }
            §§pop().path = §§pop().pathFind(§§pop()[§§pop() + §§pop()].id,5);
            §§push(§§findproperty(trace));
            §§push("SET PATH TO ENEMY FLAG");
            if(false)
            {
               return;
            }
            §§pop().trace(§§pop(),path);
         }
      }
      
      override public function getNextWaypoint(param1:NodeWaypoint = null, param2:Boolean = false) : void
      {
         wpTimer = 0;
         if(!(!param2 && mov.jumping && Math.abs(y - nextWp.y) > 30))
         {
            if(param1)
            {
               curWp = nextWp;
               nextWp = param1;
            }
            else
            {
               curWp = nextWp;
               var _temp_4:* = MatchSettings.type == "夺旗赛\x1f\x1f\x1f\x1f\x1f\x1f\x1f" && !path;
               §§push(_temp_4);
               if(_temp_4)
               {
                  §§pop();
                  if(false)
                  {
                     return;
                  }
                  §§push(path.charAt(0) != "@");
               }
               if(§§pop())
               {
                  §\x0f\x0e§();
               }
               if(Math.abs(y - curWp.y) <= 50)
               {
                  if(Math.abs(y - curWp.y) < 50)
                  {
                     if(!(Boolean(path) && path.charAt(0) != "@"))
                     {
                        nextWp = UT.randEl(curWp.connects);
                        if(path.charAt(0) == "@")
                        {
                           path = path.substring(1);
                        }
                     }
                     else
                     {
                        §§push(§§findproperty(nextWp));
                        §§push(game.arena.wpOb);
                        §§push(path);
                        §§push(0);
                        if(false)
                        {
                           return;
                        }
                        §§pop().nextWp = §§pop()[§§pop().charAt(§§pop())];
                        path = path.substring(1);
                        if(path == "")
                        {
                           path = "@";
                        }
                        trace(path);
                     }
                  }
               }
               else
               {
                  §\x14\x10§();
               }
            }
            if(Boolean(curWp) && Boolean(matchInfo.extra) && Boolean(matchInfo.extra.speak) && matchInfo.extra.speak == curWp.id)
            {
               stand = 999999;
               gotoAndStop("speak_" + matchInfo.extra.speak);
               game.hud.gotoAndStop(matchInfo.extra.speak);
            }
            return;
         }
      }
      
      public function §\x14\x10§() : void
      {
         wpTimer = 0;
         path = "@";
         var _loc1_:Array = new Array();
         var _loc2_:uint = 0;
         while(_loc2_ < game.arena.waypoints.length)
         {
            if(Math.abs(y - game.arena.waypoints[_loc2_].y) < 50)
            {
               §§push(_loc1_);
               §§push("dist");
               §§push(Math.abs(x - game.arena.waypoints[_loc2_].x));
               §§push("wp");
               §§push(game.arena.waypoints[_loc2_]);
               if(false)
               {
                  return false;
               }
               §§pop().push(null);
            }
            _loc2_++;
         }
         if(_loc1_.length)
         {
            _loc1_.sortOn("dist",Array.NUMERIC);
            nextWp = _loc1_[0].wp;
         }
         else
         {
            §§push(§§findproperty(nextWp));
            §§push(UT);
            §§push(curWp);
            if(false)
            {
               return;
            }
            §§pop().nextWp = §§pop().randEl(§§pop().connects);
         }
      }
      
      public function wait(param1:uint) : void
      {
         stand = nostand = param1;
         duck = false;
      }
      
      public function pathFind(param1:String, param2:uint = 0) : String
      {
         var _loc3_:Array = [];
         var _loc4_:uint = 0;
         if(false)
         {
            return;
         }
         while(_loc4_ < curWp.connects.length)
         {
            §\r\x07§(curWp.connects[_loc4_].id,param1,curWp.id,_loc3_);
            _loc4_++;
         }
         §§push(_loc3_);
         §§push("dist");
         if(false)
         {
            return;
         }
         §§pop().sortOn(§§pop(),Array.NUMERIC);
         if(param2 > _loc3_.length - 1)
         {
            param2 = _loc3_.length - 1;
         }
         §§push(_loc3_);
         §§push(UT);
         §§push(0);
         if(false)
         {
            return;
         }
         return §§pop()[§§pop().irand(§§pop(),param2)].path.substring(1);
      }
      
      private function §\r\x07§(param1:String, param2:String, param3:String, param4:Array) : void
      {
         var _loc6_:String = null;
         param3 += param1;
         if(param1 == param2)
         {
            param4.push(new §\x0f\x04§(param3,game.arena.wpOb));
         }
         var _loc5_:uint = 0;
         while(_loc5_ < game.arena.wpOb[param1].connects.length)
         {
            _loc6_ = game.arena.wpOb[param1].connects[_loc5_].id;
            if(param3.indexOf(_loc6_) == -1)
            {
               §\r\x07§(_loc6_,param2,param3,param4);
            }
            _loc5_++;
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:Array = null;
         var _loc2_:uint = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Boolean = false;
         var _loc5_:uint = 0;
         if(!(Boolean(matchInfo.extra) && Boolean(matchInfo.extra.noSpawn)))
         {
            if(getTargetTimer == getTargetMax)
            {
               getTargetTimer = 0;
            }
            if(diff)
            {
               ++getTargetTimer;
               if(false)
               {
                  return false;
               }
            }
            var _temp_3:* = !mov.jumping;
            §§push(_temp_3);
            §§push(_temp_3);
            if(false)
            {
               return false;
            }
            if(§§pop())
            {
               §§pop();
               §§push(!stand);
            }
            var _temp_4:* = §§pop();
            §§push(_temp_4);
            if(_temp_4)
            {
               §§pop();
               §§push(matchInfo.extra);
               if(false)
               {
                  throw true;
               }
               §§push(!§§pop() || !matchInfo.extra.speak);
            }
            if(§§pop())
            {
               var _loc6_:* = §§findproperty(wpTimer);
               var _loc7_:Number = _loc6_.wpTimer + 1;
               _loc6_.wpTimer = _loc7_;
            }
            if(wpTimer >= 30 * 4)
            {
               §\x14\x10§();
            }
            if(SD.debug)
            {
               §\x0b\b§(nextWp.id.toUpperCase());
            }
            score.EnterFrame();
            if(dead)
            {
               if(!(MatchSettings.type == "淘汰赛\x1f\x1f" && !score.lives))
               {
                  if(respawnTimer)
                  {
                     --respawnTimer;
                  }
                  else
                  {
                     spawn();
                  }
                  return;
               }
               return;
            }
            if(!matchInfo.extra || !matchInfo.extra.aimPlayer)
            {
               if(getTargetTimer == getTargetEvent)
               {
                  _loc1_ = [];
                  _loc2_ = 0;
                  while(_loc2_ < game.units.length)
                  {
                     if(game.units[_loc2_] != this)
                     {
                        if(!game.units[_loc2_].dead)
                        {
                           var _temp_10:* = Boolean(team);
                           §§push(_temp_10);
                           if(_temp_10)
                           {
                              §§pop();
                              §§push(team);
                              if(false)
                              {
                                 return;
                              }
                              §§push(§§pop() == game.units[_loc2_].team);
                           }
                           if(!§§pop())
                           {
                              if(!game.units[_loc2_].status.sInvis)
                              {
                                 _loc3_ = UT.getDist(x,y,game.units[_loc2_].x,game.units[_loc2_].y);
                                 §§push(_loc3_);
                                 §§push(Math);
                                 §§push(gun.curGun.range);
                                 §§push(10);
                                 if(false)
                                 {
                                    return;
                                 }
                                 if(§§pop() < §§pop().min(§§pop() * §§pop(),450))
                                 {
                                    §§push(_loc1_);
                                    §§push("dist");
                                    §§push(_loc3_);
                                    §§push("unit");
                                    §§push(game.units[_loc2_]);
                                    §§push("rot");
                                    §§push(UT);
                                    if(false)
                                    {
                                       return;
                                    }
                                    §§push(x);
                                    §§push(y);
                                    §§push(game.units[_loc2_].x);
                                    if(false)
                                    {
                                       return;
                                    }
                                    §§pop().push(null);
                                 }
                              }
                           }
                        }
                     }
                     §§push(_loc2_);
                     if(false)
                     {
                        return false;
                     }
                     _loc2_ = §§pop() + 1;
                  }
                  if(!gun.curGun.extra.burrow)
                  {
                     _loc2_ = 0;
                     while(_loc2_ < _loc1_.length)
                     {
                        _loc4_ = true;
                        _loc5_ = 0;
                        while(_loc4_ && _loc5_ < _loc1_[_loc2_].dist)
                        {
                           §§push(mov);
                           §§push(UT.xMoveToRot(_loc1_[_loc2_].rot,_loc5_));
                           §§push(UT);
                           §§push(_loc1_);
                           if(false)
                           {
                              throw true;
                           }
                           if(§§pop().§\x11\r§(§§pop(),§§pop().yMoveToRot(§§pop()[_loc2_].rot,_loc5_) - 50))
                           {
                              _loc4_ = false;
                           }
                           _loc5_ += 20;
                        }
                        if(!_loc4_)
                        {
                           _loc1_.splice(_loc2_,1);
                           _loc2_--;
                        }
                        _loc2_++;
                     }
                  }
                  if(_loc1_.length)
                  {
                     _loc1_.sortOn("dist",Array.NUMERIC);
                     target = _loc1_[0].unit;
                  }
                  else
                  {
                     target = null;
                  }
               }
               if(target)
               {
                  focusX = target.dead ? Number(target.dead.rdBody.GetDefinition().userData.x) : Number(target.x);
                  §§push(§§findproperty(focusY));
                  if(target.dead)
                  {
                     §§push(target.dead.rdBody.GetDefinition().userData.y + 10);
                     if(false)
                     {
                        return;
                     }
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     §§push(target.y - 50);
                  }
                  §§pop().focusY = §§pop();
                  aimX += (focusX - aimX) * aimSpeed;
                  aimY += (focusY - aimY) * aimSpeed;
               }
               else
               {
                  focusX = x + MC.scaleX * 50 + mov.xVel * 10;
                  focusY = y - 50 + mov.yVel * 8;
                  §§push(§§findproperty(aimX));
                  §§push(aimX);
                  if(false)
                  {
                     return false;
                  }
                  §§pop().aimX = §§pop() + (focusX - aimX) * 0.4;
                  aimY += (focusY - aimY) * 0.3;
               }
            }
            else
            {
               focusX = game.player.x;
               focusY = game.player.y - 50;
               aimX += (focusX - aimX) * 0.8;
               aimY += (focusY - aimY) * 0.8;
            }
            keys = 0;
            if(!matchInfo.extra || !matchInfo.extra.noStand)
            {
               if(MatchSettings.type == "控制赛\x1f")
               {
                  if(false)
                  {
                     return;
                  }
                  _loc2_ = 0;
                  while(_loc2_ < game.arena.holdpoints.length)
                  {
                     if(UT.inBox(x,y,game.arena.holdpoints[_loc2_].x - 120,game.arena.holdpoints[_loc2_].y - 150,240,200))
                     {
                        if(!stand && !nostand && (team != game.arena.holdpoints[_loc2_].curTeam || game.arena.holdpoints[_loc2_].flag > -50))
                        {
                           stand = UT.irand(1,8) * 30;
                           duck = Math.random() < 0.5;
                           nostand = 0;
                           if(false)
                           {
                              throw true;
                           }
                        }
                     }
                     _loc2_++;
                  }
               }
               if(MatchSettings.type == "夺旗赛\x1f\x1f\x1f\x1f\x1f\x1f\x1f")
               {
                  var _temp_16:* = !game.arena["flag" + team].unitCaptured;
                  §§push(_temp_16);
                  if(_temp_16)
                  {
                     §§pop();
                     §§push(UT);
                     §§push(x);
                     §§push(y);
                     §§push(game.arena);
                     if(false)
                     {
                        return false;
                     }
                     §§push(Boolean(§§pop().inBox(§§pop(),§§pop(),§§pop()["flag" + team].x - 100,game.arena["flag" + team].y - 40,200,100)));
                  }
                  if(§§pop())
                  {
                     if(!stand && !nostand && !hasFlag)
                     {
                        defendingFlag = true;
                        stand = UT.irand(2,5) * 30;
                        duck = Math.random() < 0.5;
                        nostand = stand + UT.irand(0,2) * 30;
                     }
                  }
                  §§push(stand);
                  if(false)
                  {
                     return false;
                  }
                  if(!§§pop() && !nostand)
                  {
                     defendingFlag = false;
                     if(false)
                     {
                        return;
                     }
                  }
               }
               if(!stand && !nostand && !mov.jumping && Math.random() < (!hasFlag ? (target ? standTarget : standNormal) : standFlag))
               {
                  §§push(§§findproperty(stand));
                  §§push(UT.irand(2,6));
                  §§push(diffRev * 0.1);
                  if(false)
                  {
                     return;
                  }
                  §§pop().stand = §§pop() * §§pop() * 30;
                  duck = Math.random() < 0.5;
                  nostand = stand + UT.irand(2,6) * (diff * 0.1) * 30;
               }
            }
            if(stand)
            {
               _loc6_ = §§findproperty(stand);
               _loc7_ = _loc6_.stand - 1;
               _loc6_.stand = _loc7_;
               if(duck)
               {
                  keys |= DOWN;
               }
            }
            if(nostand)
            {
               _loc6_ = §§findproperty(nostand);
               _loc7_ = _loc6_.nostand - 1;
               _loc6_.nostand = _loc7_;
            }
            if(diff)
            {
               if(!(nextWp.x > x - 30 && nextWp.x < x + 30))
               {
                  if(!(!stand && nextWp.x > x))
                  {
                     if(!stand && nextWp.x < x)
                     {
                        keys |= LEFT;
                     }
                  }
                  else
                  {
                     keys |= RIGHT;
                  }
               }
               else
               {
                  getNextWaypoint();
               }
            }
            if(!target && ability.id == "teleport" && Math.random() < 0.02)
            {
               §\x1a\x1a§();
            }
            var _temp_30:* = !target;
            §§push(_temp_30);
            §§push(_temp_30);
            if(false)
            {
               return;
            }
            if(§§pop())
            {
               §§pop();
               §§push(ability.id == "cloak");
            }
            if(§§pop() && Math.random() < 0.1)
            {
               §\x1a\x1a§();
            }
            var _temp_33:* = !target && ability.id == "mine";
            §§push(_temp_33);
            if(_temp_33)
            {
               §§pop();
               if(false)
               {
                  return;
               }
               §§push(Math.random() < 0.1);
            }
            var _temp_34:* = §§pop();
            §§push(_temp_34);
            if(_temp_34)
            {
               §§pop();
               §§push(!stand);
               if(false)
               {
                  return;
               }
            }
            if(§§pop() && !nostand)
            {
               §\x1a\x1a§();
            }
            if(Boolean(target) && Boolean(ability.id == "sword") && UT.getDist(x,y,target.x,target.y) < Stats_Guns.gunOb["sword"].range * 10)
            {
               §\x1a\x1a§();
            }
            if(Boolean(target) && Boolean(ability.id == "grenade") && UT.getDist(x,y,target.x,target.y) > Stats_Guns.gunOb["sword"].splash)
            {
               §\x1a\x1a§();
            }
            if(!stand)
            {
               _loc2_ = 0;
               for(; _loc2_ < nextWp.actionBoxes.length; _loc2_++)
               {
                  §§push(UT);
                  §§push(x);
                  §§push(y);
                  §§push(nextWp.actionBoxes);
                  if(false)
                  {
                     throw true;
                  }
                  if(!§§pop().inBox(§§pop(),§§pop(),§§pop()[_loc2_].x,nextWp.actionBoxes[_loc2_].y,nextWp.actionBoxes[_loc2_].width,nextWp.actionBoxes[_loc2_].height))
                  {
                     continue;
                  }
                  switch(nextWp.actionBoxes[_loc2_].action)
                  {
                     case "j":
                        if(!mov.jumping)
                        {
                           mov.§\x1a\x17§();
                        }
                        break;
                     case "d":
                        mov.§\x1a\x17§();
                  }
               }
            }
            var _temp_40:* = Boolean(game.gameStarted);
            §§push(_temp_40);
            if(_temp_40)
            {
               if(false)
               {
                  throw true;
               }
               §§pop();
               §§push(Boolean(target));
            }
            if(§§pop() && Boolean(diff))
            {
               §§push(§§findproperty(shootSpd));
               §§push(0.05);
               §§push((1 - (gun.curGun.shootDelay > 0.9 ? 0.9 : gun.curGun.shootDelay)) * 0.2);
               if(false)
               {
                  return false;
               }
               §§pop().shootSpd = §§pop() + §§pop();
               shootSpd *= shotChance;
               if(status.sRapid)
               {
                  shootSpd *= 2;
               }
               if(Math.random() < shootSpd)
               {
                  gun.§\n\t§();
               }
            }
            §\t\x05§();
            return;
         }
      }
   }
}

§§push(§§findproperty(§\t§));
if(false)
{
   throw true;
}


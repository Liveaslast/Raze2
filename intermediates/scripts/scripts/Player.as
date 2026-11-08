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
   import §\x1c\x12§.§\x1e\n§;
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
   
   public class Player extends §\t\x06§
   {
      
      private var teamCycle:int = -1;
      
      private var pressedUp:Boolean;
      
      public function Player(param1:Game, param2:Object)
      {
         diff = 10;
         super(param1,param2,true);
      }
      
      override public function spawn(param1:Number = 0, param2:Number = 0, param3:String = "") : void
      {
         game.hud.reset();
         §\t\x03§(param1,param2,param3);
         game.hud.txt_respawn.text = "";
         aimX = game.arena.mouseX;
         aimY = game.arena.mouseY;
         game.aimer.x = game.mouseX;
         §§push(game.aimer);
         if(false)
         {
            return;
         }
         §§pop().y = game.mouseY;
         status.sSpawn = 2.5 * 30;
      }
      
      public function EnterFrame() : void
      {
         score.EnterFrame();
         if(!dead)
         {
            aimX += (game.arena.mouseX - aimX) * 0.5;
            aimY += (game.arena.mouseY - aimY) * 0.5;
            §\t\x05§();
            if(mDown)
            {
               gun.§\n\t§();
            }
            game.aimer.x = game.mouseX;
            game.aimer.y = game.mouseY;
            var _loc1_:Number = UT.getDist(x + MC.arm1.x,y + MC.arm1.y,game.arena.mouseX,game.arena.mouseY);
            _loc1_ *= _loc1_;
            _loc1_ *= 2;
            §§push(Math);
            §§push(_loc1_);
            §§push(_loc1_);
            §§push(Math.cos(gun.dynRecoilMod * Math.PI / 180));
            if(false)
            {
               return;
            }
            var _loc2_:Number = Number(§§pop().sqrt(§§pop() - §§pop() * §§pop()));
            game.aimer.line1.y = -_loc2_;
            game.aimer.line2.x = _loc2_;
            §§push(game.aimer);
            if(false)
            {
               return;
            }
            §§pop().line3.y = _loc2_;
            game.aimer.line4.x = -_loc2_;
            return;
         }
         var _temp_2:* = Boolean(MatchSettings.type == "淘汰赛\x1f\x1f") && Boolean(team);
         §§push(_temp_2);
         if(_temp_2)
         {
            if(false)
            {
               return false;
            }
            §§pop();
            §§push(!score.lives);
         }
         if(!§§pop())
         {
            if(!respawnTimer)
            {
               spawn();
            }
            else
            {
               game.hud.txt_respawn.text = "";
               if(respawnTimer >= 3 * 30)
               {
                  if(MatchSettings.type == "淘汰赛\x1f\x1f")
                  {
                     §§push(game.hud.txt_respawn);
                     if(score.lives != 1)
                     {
                        §§push(score.lives);
                        §§push("条命剩余\x1f\x1f\x1f\x1f");
                        if(false)
                        {
                           return;
                        }
                        §§push(§§pop() + §§pop());
                     }
                     else
                     {
                        §§push("最后一条命!\x1f");
                     }
                     §§pop().text = §§pop();
                  }
               }
               else
               {
                  if(MatchSettings.type == "淘汰赛\x1f\x1f")
                  {
                     game.hud.txt_respawn.text = score.lives != 1 ? score.lives + "条命剩余\x1f\x1f\x1f\x1f" : "最后一条命!\x1f";
                  }
                  §§push(game.hud);
                  if(false)
                  {
                     return;
                  }
                  §§push(§§pop().txt_respawn);
                  §§push(game.hud.txt_respawn.text);
                  §§push("\n");
                  if(false)
                  {
                     return;
                  }
                  §§pop().text = §§pop() + §§pop();
                  game.hud.txt_respawn.text += "重生 \x1f\x1f\x1f\x1f" + Math.ceil(respawnTimer / 30);
               }
               var _loc3_:* = §§findproperty(respawnTimer);
               var _loc4_:Number = _loc3_.respawnTimer - 1;
               _loc3_.respawnTimer = _loc4_;
            }
            return;
         }
         if(teamCycle == -1)
         {
            teamCycle = 0;
         }
         if(MatchSettings.type == "淘汰赛\x1f\x1f")
         {
            game.hud.txt_respawn.text = "已无生命\n点击查看队友\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
         }
      }
      
      public function MouseDown() : void
      {
         if(game.gameStarted)
         {
            var _temp_1:* = !game.paused;
            §§push(_temp_1);
            if(_temp_1)
            {
               §§pop();
               §§push(game.hud.txt_pause);
               if(false)
               {
                  throw true;
               }
               §§push(Boolean(§§pop().hitTestPoint(game.hud.mouseX,game.hud.mouseY,false)));
            }
            if(!§§pop())
            {
               if(!(!game.paused && game.hud.txt_songplay.hitTestPoint(game.hud.mouseX,game.hud.mouseY,false)))
               {
                  mDown = true;
                  if(teamCycle != -1 && !game.gameEnded)
                  {
                     do
                     {
                        ++teamCycle;
                        if(teamCycle >= game.units.length)
                        {
                           teamCycle = 0;
                        }
                     }
                     while(game.units[teamCycle].team != 1 && Boolean(game.units[teamCycle].score.lives));
                     game.arena.focus(game.units[teamCycle],false);
                  }
                  return;
               }
               game.hud.playSong(true);
               return;
            }
            game.§\t\n§();
            return;
         }
      }
      
      public function MouseUp() : void
      {
         mDown = false;
         gun.§\r\x16§();
      }
      
      public function KeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.keyCode;
         switch(_loc2_)
         {
            case 49:
               §§push(0);
               break;
            case 50:
               §§push(1);
               break;
            case 51:
               §§push(2);
               break;
            case 52:
               §§push(3);
               break;
            case 53:
               §§push(4);
               break;
            default:
               §§push(54);
               §§push(_loc2_);
               if(false)
               {
                  return;
               }
               if(§§pop() === §§pop())
               {
                  §§push(5);
                  break;
               }
               switch(_loc2_)
               {
                  case 55:
                     §§push(6);
                     break;
                  case 40:
                     §§push(7);
                     break;
                  case 83:
                     if(false)
                     {
                        return;
                     }
                     §§push(8);
                     break;
                  case 37:
                     §§push(9);
                     break;
                  case 65:
                     §§push(10);
                     break;
                  default:
                     §§push(39);
                     §§push(_loc2_);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() === §§pop())
                     {
                        §§push(11);
                        break;
                     }
                     switch(_loc2_)
                     {
                        case 68:
                           §§push(12);
                           break;
                        case 38:
                           §§push(13);
                           break;
                        case 87:
                           §§push(14);
                           break;
                        case 32:
                           §§push(15);
                           break;
                        default:
                           §§push(69);
                           if(false)
                           {
                              return;
                           }
                           switch(_loc2_)
                           {
                              case §§pop():
                                 §§push(16);
                                 break;
                              case 16:
                                 §§push(17);
                                 break;
                              case 81:
                                 §§push(18);
                                 break;
                              case 13:
                                 §§push(19);
                                 break;
                              case 82:
                                 §§push(20);
                                 break;
                              case 70:
                                 §§push(21);
                                 break;
                              case 17:
                                 §§push(22);
                                 break;
                              case 27:
                                 §§push(23);
                                 break;
                              case 80:
                                 §§push(24);
                                 break;
                              default:
                                 §§push(25);
                           }
                     }
               }
         }
         switch(§§pop())
         {
            case 0:
               if(!game.paused)
               {
                  gun.§\x1c\f§(0);
               }
               break;
            case 1:
               if(!game.paused)
               {
                  gun.§\x1c\f§(1);
               }
               break;
            case 2:
               if(!game.paused)
               {
                  gun.§\x1c\f§(2);
               }
               break;
            case 3:
               if(!game.paused)
               {
                  gun.§\x1c\f§(3);
                  if(false)
                  {
                     return;
                  }
               }
               break;
            case 4:
               if(!game.paused)
               {
                  gun.§\x1c\f§(4);
               }
               break;
            case 5:
               if(!game.paused)
               {
                  gun.§\x1c\f§(5);
               }
               break;
            case 6:
               if(false)
               {
                  return;
               }
               if(!game.paused)
               {
                  gun.§\x1c\f§(6);
               }
               break;
            case 7:
            case 8:
               if(false)
               {
                  return;
               }
               keys |= DOWN;
               break;
            case 9:
            case 10:
               keys |= LEFT;
               break;
            case 11:
            case 12:
               keys |= RIGHT;
               break;
            case 13:
            case 14:
            case 15:
               if(game.paused || pressedUp)
               {
                  break;
               }
               keys |= UP;
               if(!dead)
               {
                  mov.§\x1a\x17§();
               }
               pressedUp = true;
               break;
            case 16:
            case 17:
               if(!game.paused)
               {
                  gun.§\x0f\x05§();
               }
               break;
            case 18:
            case 19:
               if(!game.paused)
               {
                  §§push(gun);
                  if(false)
                  {
                     return;
                  }
                  §§pop().§\x0e\n§();
               }
               break;
            case 20:
               if(!game.paused)
               {
                  gun.§\x10\x01§();
               }
               break;
            case 21:
            case 22:
               §\x1a\x1a§();
               break;
            case 23:
            case 24:
               game.§\t\n§();
         }
      }
      
      public function KeyUp(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case 38:
            case 87:
            case 32:
               if(keys & UP)
               {
                  keys ^= UP;
                  pressedUp = false;
               }
               break;
            case 40:
            case 83:
               if(keys & DOWN)
               {
                  keys ^= DOWN;
               }
               break;
            case 37:
            case 65:
               if(keys & LEFT)
               {
                  keys ^= LEFT;
               }
               break;
            case 39:
            case 68:
               if(keys & RIGHT)
               {
                  keys ^= RIGHT;
               }
         }
      }
      
      public function §\r\x17§() : void
      {
         if(keys & DOWN)
         {
            keys ^= DOWN;
         }
         if(keys & LEFT)
         {
            keys ^= LEFT;
         }
         if(keys & RIGHT)
         {
            keys ^= RIGHT;
         }
      }
   }
}


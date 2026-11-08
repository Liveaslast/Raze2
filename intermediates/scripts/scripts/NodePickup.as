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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol581")]
   public class NodePickup extends MovieClip
   {
      
      public static var RotateNum:uint;
      
      public var nameWeapNum:String;
      
      public var game:Game;
      
      public var id:String;
      
      public var num:int;
      
      public var type:String;
      
      private var spawnTime:uint;
      
      public var taken:uint = 0;
      
      private var yRot:uint = 0;
      
      public function NodePickup()
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         super();
         if(!RotateNum)
         {
            if(MatchSettings.weaponsUsed == "All")
            {
               RotateNum = UT.irand(1,6);
            }
            else
            {
               _loc2_ = ["All","手枪\x1f\x1f","近身\x1f\x1f","近身\x1f\x1f\x1f\x1f\x1f","自动\x1f\x1f\x1f\x1f","远程\x1f\x1f\x1f\x1f","重型\x1f","爆破\x1f\x1f\x1f\x1f"];
               _loc3_ = _loc2_.indexOf(MatchSettings.weaponsUsed) - 1;
               if(_loc3_ == -1)
               {
                  trace("Weapon",MatchSettings.weaponsUsed,"not found!");
                  _loc3_ = 0;
               }
               RotateNum = _loc3_;
            }
         }
         var _loc1_:Array = name.split("_");
         nameWeapNum = _loc1_[1];
         switch(_loc1_[0])
         {
            case "p":
               type = "pickups0";
               num = -1;
               id = _loc1_[1];
               stop();
               visible = false;
               break;
            case "w":
               type = "weapons0";
               gotoAndStop(2);
               §§push(§§findproperty(§\n\r§));
               if(false)
               {
                  return;
               }
               §§pop().§\n\r§();
         }
         spawnTime = Number(_loc1_[2]);
      }
      
      private function §\n\r§() : void
      {
         if(MatchSettings.weaponsUsed != "All")
         {
            num = RotateNum;
         }
         else if(nameWeapNum == "rand")
         {
            var _loc1_:* = §§findproperty(RotateNum);
            var _loc2_:Number = _loc1_.RotateNum + 1;
            _loc1_.RotateNum = _loc2_;
            if(RotateNum == 7)
            {
               §§push(§§findproperty(RotateNum));
               §§push(1);
               if(false)
               {
                  return;
               }
               §§pop().RotateNum = §§pop();
            }
            num = RotateNum;
         }
         else
         {
            num = Number(nameWeapNum) - 1;
         }
         id = Stats_Armory.getGun(num,MatchSettings.player.weapons[num]).sprite;
      }
      
      public function EnterFrame() : void
      {
         if(taken)
         {
            var _loc1_:* = §§findproperty(taken);
            §§push(_loc1_.taken - 1);
            if(false)
            {
               throw true;
            }
            var _loc2_:* = §§pop();
            _loc1_.taken = _loc2_;
         }
         else
         {
            yRot += 5;
            §§push(game.bitscreen);
            §§push(x + game.arena.x + rotation);
            §§push(y + game.arena.y - 40);
            §§push(UT);
            if(false)
            {
               return;
            }
            §§pop().paint(§§pop(),§§pop() - §§pop().yMoveToRot(yRot,4),true,type,id,1);
            if(false)
            {
               return false;
            }
         }
      }
      
      public function getPickup(param1:§\t\x06§) : void
      {
         var _loc2_:String = id;
         switch(_loc2_)
         {
            case "sshield":
               §§push(0);
               break;
            case "bshield":
               §§push(1);
               break;
            default:
               §§push("shealth");
               if(false)
               {
                  return;
               }
               switch(_loc2_)
               {
                  case §§pop():
                     §§push(2);
                     break;
                  case "bhealth":
                     §§push(3);
                     break;
                  case "invin":
                     §§push(4);
                     break;
                  case "damage":
                     §§push(5);
                     break;
                  case "rapid":
                     §§push(6);
                     break;
                  default:
                     §§push(7);
               }
         }
         switch(§§pop())
         {
            case 0:
               if(param1.human)
               {
                  SH.playSound(S_Heal);
               }
               param1.status.shield(50);
               break;
            case 1:
               if(param1.human)
               {
                  SH.playSound(S_Heal);
               }
               param1.status.shield(100);
               break;
            case 2:
               if(param1.human)
               {
                  SH.playSound(S_Heal);
               }
               param1.status.heal(50);
               break;
            case 3:
               if(param1.human)
               {
                  SH.playSound(S_Heal);
               }
               param1.status.heal(100);
               break;
            case 4:
               if(param1.human)
               {
                  SH.playSound(S_Powerup);
                  if(false)
                  {
                     return;
                  }
               }
               param1.status.sInvin = 5.5 * 30;
               if(param1.equips.powerup)
               {
                  §§push(param1.status);
                  §§push(param1.status);
                  if(false)
                  {
                     return;
                  }
                  §§pop().sInvin = §§pop().sInvin * param1.equips.powerup;
               }
               if(param1.human)
               {
                  param1.game.hud.setDisplay(0,"无敌!\x1f\x1f\x1f\x1f");
               }
               break;
            case 5:
               if(param1.human)
               {
                  SH.playSound(S_Powerup);
                  if(false)
                  {
                     return;
                  }
               }
               param1.status.sDamage = 7 * 30;
               if(param1.equips.powerup)
               {
                  param1.status.sDamage *= param1.equips.powerup;
               }
               if(param1.human)
               {
                  param1.game.hud.setDisplay(0,"双倍伤害!\x1f");
               }
               break;
            case 6:
               if(param1.human)
               {
                  SH.playSound(S_Powerup);
               }
               param1.status.sRapid = 6.5 * 30;
               if(param1.equips.powerup)
               {
                  param1.status.sRapid *= param1.equips.powerup;
               }
               if(param1.human)
               {
                  param1.game.hud.setDisplay(0,"急速射!\x1f");
               }
               break;
            default:
               if(num != -1)
               {
                  if(param1.human)
                  {
                     SH.playSound(S_Equip);
                  }
                  param1.gun.addClip(num,Math.ceil(param1.gun.gunSet[num].clipMax / 2));
                  game.createEffect(x,y - 45,"getweapon");
                  §\n\r§();
               }
         }
         taken = spawnTime * 30;
      }
   }
}


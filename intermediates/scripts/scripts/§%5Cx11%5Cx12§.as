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
   
   public class §\x11\x12§
   {
      
      private var unit:§\t\x06§;
      
      public var curGun:Stats_Guns;
      
      public var curNum:uint = 999;
      
      private var shootDelay:uint;
      
      private var shotPressed:Boolean;
      
      public var dynRecoil:Number;
      
      public var dynRecoilMod:Number;
      
      public var gunSet:Array;
      
      public var ammo:Array;
      
      public var reloading:Boolean;
      
      private var hud:Hud;
      
      private var soundFrames:uint;
      
      public function §\x11\x12§(param1:§\t\x06§)
      {
         var _loc4_:uint = 0;
         super();
         unit = param1;
         if(unit.human)
         {
            hud = unit.game.hud;
         }
         shootDelay = 0;
         §\x0b\x18§(unit.matchInfo.weapons);
         if(hud)
         {
            _loc4_ = 0;
            while(_loc4_ < 7)
            {
               hud.weapHolders[_loc4_].weapon.gotoAndStop(gunSet[_loc4_].sprite);
               _loc4_++;
            }
         }
         soundFrames = 0;
         var _loc2_:Array = ["All","手枪\x1f\x1f","近身\x1f\x1f","近身\x1f\x1f\x1f\x1f\x1f","自动\x1f\x1f\x1f\x1f","远程\x1f\x1f\x1f\x1f","重型\x1f","爆破\x1f\x1f\x1f\x1f"];
         var _loc3_:int = _loc2_.indexOf(MatchSettings.weaponsUsed) - 1;
         if(_loc3_ == -1)
         {
            _loc3_ = 0;
         }
         if(Boolean(unit.matchInfo.extra) && Boolean(unit.matchInfo.extra.startWeap))
         {
            _loc3_ = int(unit.matchInfo.extra.startWeap);
         }
         addClip(_loc3_,999);
         §\x1c\f§(_loc3_);
         if(Boolean(unit.matchInfo.extra) && Boolean(unit.matchInfo.extra.noAmmo))
         {
            §§push(ammo[curNum]);
            if(false)
            {
               return;
            }
            §§pop().cur = 0;
            ammo[curNum].clip = 0;
            if(hud)
            {
               hud.setMiniAmmoBars();
               hud.txt_clip.text = "x" + ammo[curNum].clip;
               hud.§\r\x02§(0,gunSet[curNum].clipSize,curNum);
            }
         }
      }
      
      public function §\x0b\x18§(param1:Array) : void
      {
         var _loc2_:uint = 0;
         gunSet = [];
         §§push(0);
         if(false)
         {
            return;
         }
         _loc2_ = §§pop();
         while(_loc2_ < 7)
         {
            gunSet.push(Stats_Armory.getGun(_loc2_,param1[_loc2_]));
            _loc2_++;
         }
         ammo = [];
         _loc2_ = 0;
         while(true)
         {
            §§push(_loc2_);
            §§push(7);
            if(false)
            {
               break;
            }
            if(§§pop() >= §§pop())
            {
               return;
            }
            ammo.push({
               "cur":0,
               "clip":0
            });
            _loc2_++;
         }
      }
      
      public function addClip(param1:uint, param2:uint = 1) : void
      {
         if(unit.equips.ammo)
         {
            param2 = 999;
         }
         §§push(ammo);
         §§push(param1);
         if(false)
         {
            return;
         }
         if(§§pop()[§§pop()].hasGun)
         {
            ammo[param1].clip += param2;
         }
         else
         {
            ammo[param1].cur = gunSet[param1].clipSize;
            ammo[param1].clip = param2 - 1;
         }
         if(ammo[param1].clip > gunSet[param1].clipMax - 1)
         {
            ammo[param1].clip = gunSet[param1].clipMax - 1;
         }
         if(hud)
         {
            §§push(ammo[param1]);
            if(false)
            {
               return;
            }
            if(!§§pop().hasGun)
            {
               hud.weapHolders[param1].gotoAndPlay(2);
            }
            hud.setMiniAmmoBars();
            if(false)
            {
               return;
            }
            if(curNum == param1)
            {
               hud.txt_clip.text = "x" + ammo[curNum].clip;
               hud.§\r\x02§(ammo[curNum].cur,gunSet[curNum].clipSize,curNum);
               §\x1c\n§();
            }
         }
         ammo[param1].hasGun = true;
         if(!unit.human)
         {
            if(param1 > curNum)
            {
               §\x1c\f§(param1);
            }
         }
      }
      
      public function reloaded() : void
      {
         reloading = false;
         §§push(ammo[curNum]);
         §§push(curGun.clipSize);
         if(false)
         {
            return;
         }
         §§pop().cur = §§pop();
         if(MatchSettings.specialMode != "无限弹夹\x1f\x1f")
         {
            --ammo[curNum].clip;
         }
         shootDelay = 0.3 * 30;
         if(hud)
         {
            §§push(hud.txt_clip);
            if(false)
            {
               return false;
            }
            §§pop().text = "x" + ammo[curNum].clip;
            hud.§\r\x02§(ammo[curNum].cur,gunSet[curNum].clipSize,curNum);
            hud.setMiniAmmoBars();
         }
      }
      
      public function EnterFrame() : void
      {
         if(shootDelay)
         {
            var _temp_1:* = §§findproperty(shootDelay);
            --shootDelay;
         }
         if(dynRecoil > curGun.recoil)
         {
            dynRecoil -= 0.05;
         }
         if(!unit.mov.crouching)
         {
            if(!unit.mov.jumping)
            {
               if(!unit.mov.xVel)
               {
                  dynRecoilMod = dynRecoil;
               }
               else
               {
                  dynRecoilMod = dynRecoil * 1.1;
               }
            }
            else
            {
               dynRecoilMod = dynRecoil * 1.2;
               if(false)
               {
                  return;
               }
            }
         }
         else
         {
            dynRecoilMod = dynRecoil * 0.6;
         }
         if(soundFrames)
         {
            var _loc1_:* = §§findproperty(soundFrames);
            var _loc2_:Number = _loc1_.soundFrames - 1;
            _loc1_.soundFrames = _loc2_;
         }
      }
      
      public function setFrame(param1:String) : void
      {
         switch(param1)
         {
            case "idle":
               unit.MC.arm1.gotoAndStop(curGun.frameIdle);
               unit.MC.arm2.gotoAndStop(curGun.frameIdle);
               break;
            case "fire":
               unit.MC.arm1.gotoAndPlay(curGun.frameFire + "_fire");
               unit.MC.arm2.gotoAndPlay(curGun.frameFire + "_fire");
               break;
            case "reload":
               unit.MC.arm1.gotoAndPlay(curGun.frameReload + "_reload");
               unit.MC.arm2.gotoAndPlay(curGun.frameReload + "_reload");
         }
      }
      
      public function §\x1c\f§(param1:uint) : void
      {
         var _loc2_:uint = 0;
         if(!unit.abilityPause)
         {
            if(unit.shootPause)
            {
               return;
            }
            if(!unit.dead)
            {
               if(curNum == param1)
               {
                  return;
               }
               if(!(!ammo[param1].cur && !ammo[param1].clip && unit.ability.id != "ammo" || !ammo[param1].hasGun))
               {
                  soundFrames = 0;
                  curGun = gunSet[param1];
                  curNum = param1;
                  setFrame("idle");
                  unit.MC.arm1.gun.gotoAndStop(curGun.sprite);
                  shootDelay = 7;
                  if(unit.mDown)
                  {
                     shotPressed = true;
                  }
                  dynRecoil = curGun.recoil;
                  if(unit.equips.recoil)
                  {
                     dynRecoil *= unit.equips.recoil;
                  }
                  reloading = false;
                  §\x1c\n§();
                  if(hud)
                  {
                     _loc2_ = 0;
                     while(_loc2_ < 7)
                     {
                        hud.weapHolders[_loc2_].highlight.gotoAndStop(1);
                        _loc2_++;
                        if(false)
                        {
                           return;
                        }
                     }
                     hud.weapHolders[curNum].highlight.gotoAndStop(2);
                     hud.txt_clip.text = "x" + ammo[curNum].clip;
                     hud.weapon.gotoAndStop(curGun.sprite);
                     hud.§\r\x02§(ammo[curNum].cur,gunSet[curNum].clipSize,curNum);
                     hud.setMiniAmmoBars();
                  }
                  return;
               }
               return;
            }
            return;
         }
      }
      
      public function §\r\x16§() : void
      {
         shotPressed = false;
      }
      
      public function §\n\t§() : void
      {
         var _loc1_:uint = 0;
         if(!unit.abilityPause)
         {
            if(!unit.shootPause)
            {
               if(unit.permInvis)
               {
                  return;
               }
               if(!(Boolean(shootDelay) || Boolean(shotPressed) || reloading))
               {
                  if(!(Boolean(curGun.extra.useCredits) && SD.credits < curGun.extra.useCredits))
                  {
                     if(!ammo[curNum].cur && !ammo[curNum].clip)
                     {
                        if(unit.human)
                        {
                           SH.playSound(S_GunClick);
                        }
                        else
                        {
                           §\x0e\n§();
                        }
                        return;
                     }
                     if(!curGun.autoFire && unit.human && !unit.status.sRapid)
                     {
                        shotPressed = true;
                     }
                     if(curGun.extra.useHp)
                     {
                        unit.status.damage(curGun.extra.useHp,unit,curGun,{},true);
                     }
                     if(curGun.shotSound)
                     {
                        if(curGun.extra.soundFrames)
                        {
                           if(!soundFrames)
                           {
                              if(false)
                              {
                                 return false;
                              }
                              unit.game.playScreenSound(curGun.shotSound,unit.x,unit.y);
                              soundFrames = curGun.extra.soundFrames;
                           }
                        }
                        else
                        {
                           unit.game.playScreenSound(curGun.shotSound,unit.x,unit.y);
                        }
                     }
                     setFrame("fire");
                     §\x10\x03§(curGun);
                     if(curGun.extra.extraShots)
                     {
                        _loc1_ = 0;
                        while(_loc1_ < curGun.extra.extraShots)
                        {
                           §\x10\x03§(curGun);
                           §§push(_loc1_ + 1);
                           if(false)
                           {
                              return;
                           }
                           _loc1_ = §§pop();
                        }
                     }
                     if(Boolean(curGun.effShell) && Boolean(SD.graphPart))
                     {
                        §§push(unit.game);
                        §§push(unit.x + UT.xMoveToRot(unit.aimRoation,28));
                        §§push(unit.y);
                        §§push(unit);
                        if(false)
                        {
                           return false;
                        }
                        §§pop().createParticle(§§pop(),§§pop() + §§pop().MC.arm1.y + UT.yMoveToRot(unit.aimRoation,28),"shell",{
                           "rot":unit.aimRoation,
                           "flip":unit.MC.scaleX
                        },"shell",curGun.effShell);
                     }
                     §§push(§§findproperty(shootDelay));
                     §§push(curGun.shootDelay * (!unit.status.sRapid ? (!unit.equips.rof ? 30 : 30 * unit.equips.rof) : 15));
                     if(false)
                     {
                        return;
                     }
                     §§pop().shootDelay = §§pop();
                     unit.status.sInvis = 0;
                     if(unit.human)
                     {
                        unit.game.arena.setShake(2,2);
                        §§push(dynRecoil);
                        §§push(curGun);
                        if(false)
                        {
                           return false;
                        }
                        if(§§pop() < §§pop().recoil * 1.7)
                        {
                           dynRecoil += 0.3;
                        }
                     }
                     var _temp_8:* = !unit.status.sRapid;
                     §§push(_temp_8);
                     if(_temp_8)
                     {
                        §§pop();
                        §§push(MatchSettings);
                        if(false)
                        {
                           return;
                        }
                        §§push(§§pop().specialMode != "无限弹药\x1f");
                     }
                     if(§§pop())
                     {
                        if(curGun.extra.useCredits)
                        {
                           hud.removeCredits(curGun.extra.useCredits);
                        }
                        else
                        {
                           ammo[curNum].cur -= !curGun.extra.useAmmo ? 1 : curGun.extra.useAmmo;
                        }
                     }
                     if(hud)
                     {
                        hud.§\r\x02§(ammo[curNum].cur,gunSet[curNum].clipSize,curNum);
                        hud.setMiniAmmoBars();
                     }
                     §\x1c\n§();
                     return;
                  }
                  SH.playSound(S_GunClick);
                  return;
               }
               return;
            }
            return;
         }
      }
      
      public function §\x10\x03§(param1:Stats_Guns) : void
      {
         ++unit.score.bullets;
         if(false)
         {
            return false;
         }
         §§push(unit.game.bullets);
         §§push(new param1.cls(unit.game,unit,unit.aimRoation + UT.rand(-dynRecoil,dynRecoilMod),unit.x + unit.MC.rotation * 1.2,unit.y + unit.MC.arm1.y,param1.xOff,param1.id));
         if(false)
         {
            return;
         }
         §§pop().push(§§pop());
      }
      
      public function §\x1c\n§() : void
      {
         if(!(unit.abilityPause || unit.shootPause || reloading))
         {
            var _temp_3:* = !ammo[curNum].cur;
            §§push(_temp_3);
            §§push(_temp_3);
            if(false)
            {
               throw true;
            }
            if(§§pop())
            {
               §§pop();
               §§push(Boolean(ammo[curNum].clip));
            }
            if(§§pop())
            {
               reloading = true;
               setFrame("reload");
            }
            return;
         }
      }
      
      public function §\x10\x01§() : void
      {
         if(!(unit.abilityPause || unit.shootPause || reloading))
         {
            if(ammo[curNum].cur < curGun.clipSize && Boolean(ammo[curNum].clip))
            {
               reloading = true;
               setFrame("reload");
            }
            return;
         }
      }
      
      public function §\x0f\x05§() : void
      {
         var _loc1_:int = curNum + 1;
         while(_loc1_ != curNum)
         {
            if(_loc1_ > 6)
            {
               _loc1_ = 0;
            }
            if(Boolean(ammo[_loc1_].cur) || Boolean(ammo[_loc1_].clip) || Boolean(ammo[_loc1_].hasGun) && Boolean(unit.ability.id == "ammo"))
            {
               §\x1c\f§(_loc1_);
               return;
            }
            if(++_loc1_ > 6)
            {
               _loc1_ = 0;
            }
         }
      }
      
      public function §\x0e\n§() : void
      {
         var _loc1_:* = int(curNum - 1);
         while(_loc1_ != curNum)
         {
            §§push(_loc1_);
            §§push(0);
            if(false)
            {
               return false;
            }
            if(§§pop() < §§pop())
            {
               _loc1_ = 6;
            }
            if(Boolean(ammo[_loc1_].cur) || Boolean(ammo[_loc1_].clip) || Boolean(ammo[_loc1_].hasGun) && Boolean(unit.ability.id == "ammo"))
            {
               §\x1c\f§(_loc1_);
               return;
            }
            _loc1_--;
            if(_loc1_ < 0)
            {
               _loc1_ = 6;
            }
         }
      }
   }
}


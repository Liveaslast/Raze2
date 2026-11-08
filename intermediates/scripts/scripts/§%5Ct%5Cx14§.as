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
   
   public class §\t\x14§
   {
      
      private var unit:§\t\x06§;
      
      public var hpCur:Number;
      
      public var hpMax:Number;
      
      public var shCur:Number;
      
      public var shMax:Number;
      
      private var enCur:Number;
      
      private var enMax:Number;
      
      private var bar_width:Number;
      
      public var dmgPlayerMod:Number;
      
      public var dmgAiMod:Number;
      
      public var abilityCharge:Number;
      
      public var sSpawn:uint;
      
      public var sDamage:uint;
      
      public var sInvin:uint;
      
      public var sMirror:uint;
      
      public var sRapid:uint;
      
      public var sInvis:uint;
      
      public var sFire:uint;
      
      public var sFireUnit:*;
      
      private var attemptShield:Boolean;
      
      private var finalChance:Boolean;
      
      public function §\t\x14§(param1:§\t\x06§)
      {
         super();
         unit = param1;
         hpMax = MatchSettings.specialMode != "4x体力\x1f" ? 100 : 400;
         if(unit.equips.health)
         {
            hpMax += unit.equips.health;
         }
         hpCur = hpMax;
         shMax = 100;
         shCur = 0;
         setDiffStats();
         setAbility();
         enCur = enMax = 100;
         bar_width = 75;
      }
      
      public function setDiffStats() : void
      {
         dmgPlayerMod = UT.roundToDecimal(unit.diff * 0.1 * 1 + 0.2,2);
         §§push(§§findproperty(dmgAiMod));
         §§push(UT);
         §§push(unit.diff * 0.1 * 0.9 + 0.3);
         if(false)
         {
            return;
         }
         §§pop().dmgAiMod = §§pop().roundToDecimal(§§pop(),2);
      }
      
      public function setAbility() : void
      {
         abilityCharge = unit.ability.recharge;
         if(unit.equips.recharge)
         {
            abilityCharge *= unit.equips.recharge;
         }
         if(!unit.human)
         {
            abilityCharge *= unit.diff * 0.1 + 0.5;
         }
      }
      
      public function reset() : void
      {
         heal(hpMax,false);
         if(unit.equips.spspawn)
         {
            shield(unit.equips.spspawn,false);
         }
         sDamage = 0;
         sInvin = 0;
         sMirror = 0;
         §§push(§§findproperty(sRapid));
         §§push(0);
         if(false)
         {
            throw true;
         }
         §§pop().sRapid = §§pop();
         sInvis = 0;
         sFire = 0;
         §\f\x16§();
      }
      
      public function shield(param1:Number, param2:Boolean = true) : void
      {
         if(!unit.dead)
         {
            shCur += !unit.equips.pcboost ? param1 : param1 * unit.equips.pcboost;
            if(shCur > shMax)
            {
               shCur = shMax;
            }
            if(param2)
            {
               §§push(unit.game);
               §§push(unit.x);
               if(false)
               {
                  return;
               }
               §§pop().createEffect(§§pop(),unit.y - 40,"getShield");
            }
            return;
         }
      }
      
      public function heal(param1:Number, param2:Boolean = true) : void
      {
         if(!unit.dead)
         {
            hpCur += !unit.equips.pcboost ? param1 : param1 * unit.equips.pcboost;
            if(hpCur > hpMax)
            {
               hpCur = hpMax;
            }
            if(param2)
            {
               unit.game.createEffect(unit.x,unit.y - 40,"getHealth");
            }
            §\f\x16§();
            unit.bar_hurt.width = unit.bar_hp.width;
            return;
         }
      }
      
      public function §\x11\x10§(param1:Number) : Boolean
      {
         return enCur >= param1;
      }
      
      public function §\b\x1a§(param1:Number) : void
      {
         enCur -= param1;
         if(false)
         {
            return;
         }
      }
      
      public function damage(param1:Number, param2:§\t\x06§, param3:Stats_Guns, param4:Object, param5:Boolean = false) : void
      {
         if(!unit.dead)
         {
            if(!(Boolean(sSpawn) && !param5))
            {
               if(!(Boolean(sInvin) && !param5))
               {
                  if(Boolean(sMirror) && !param5)
                  {
                     return;
                  }
                  var _temp_4:* = Boolean(unit.team);
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     §§pop();
                     §§push(unit);
                     if(false)
                     {
                        return;
                     }
                     §§push(Boolean(§§pop().team == param2.team));
                  }
                  if(§§pop() && unit != param2)
                  {
                     param1 *= 0.3;
                     param4.teamkill = true;
                  }
                  if(Boolean(param3.extra.setFire) && !unit.equips.critdef)
                  {
                     sFire = param3.extra.setFire * 30;
                     sFireUnit = param2;
                  }
                  finalChance = false;
                  var _temp_7:* = Boolean(unit.equips.final);
                  §§push(_temp_7);
                  if(_temp_7)
                  {
                     §§pop();
                     §§push(hpCur != 1);
                     if(false)
                     {
                        return false;
                     }
                  }
                  if(§§pop())
                  {
                     finalChance = true;
                  }
                  if(unit.isJug)
                  {
                     param1 *= 0.4;
                  }
                  if((unit.ability.id == "static" || unit.ability.id == "teleport") && !unit.human && Math.random() < 0.05 + (1 - hpCur / hpMax) * 0.3)
                  {
                     §§push(§§findproperty(attemptShield));
                     §§push(true);
                     if(false)
                     {
                        return;
                     }
                     §§pop().attemptShield = §§pop();
                  }
                  if(unit != param2 && Boolean(param3.extra.stealHp))
                  {
                     §§push(param2);
                     if(false)
                     {
                        return;
                     }
                     §§pop().status.heal(param3.extra.stealHp);
                  }
                  if(Boolean(param4.headMult) && Boolean(!unit.equips.critdef) && !shCur)
                  {
                     param1 *= param4.headMult;
                     if(param2.equips.critical)
                     {
                        param1 *= param2.equips.critical;
                     }
                  }
                  if(Boolean(param4.buttMult) && Boolean(!unit.equips.critdef) && !shCur)
                  {
                     param1 *= param4.buttMult;
                     if(false)
                     {
                        throw true;
                     }
                     if(param2.equips.critical)
                     {
                        param1 *= param2.equips.critical;
                     }
                  }
                  if(Boolean(param4.crotchMult) && Boolean(!unit.equips.critdef) && !shCur)
                  {
                     §§push(param1 * param4.crotchMult);
                     if(false)
                     {
                        throw true;
                     }
                     param1 = Number(§§pop());
                     if(param2.equips.critical)
                     {
                        param1 *= param2.equips.critical;
                     }
                  }
                  if(param4.splashMult)
                  {
                     param1 *= param4.splashMult;
                  }
                  if(param4.burrowMult)
                  {
                     param1 *= param4.burrowMult;
                  }
                  if(param2.status.sDamage)
                  {
                     §§push(param1 * 2);
                     if(false)
                     {
                        return;
                     }
                     param1 = §§pop();
                  }
                  var _temp_18:* = param2.human;
                  §§push(_temp_18);
                  if(!_temp_18)
                  {
                     §§pop();
                     §§push(unit);
                     if(false)
                     {
                        throw true;
                     }
                     §§push(§§pop() == param2);
                  }
                  if(!§§pop())
                  {
                     if(!unit.human)
                     {
                        §§push(param1);
                        §§push(param2.status.dmgAiMod);
                        if(false)
                        {
                           return;
                        }
                        param1 = §§pop() * §§pop();
                     }
                     else
                     {
                        param1 *= param2.status.dmgPlayerMod;
                     }
                  }
                  var _loc6_:Boolean = shCur >= 20;
                  if(Boolean(shCur) && !param5)
                  {
                     shCur -= !unit.equips.shield ? param1 : param1 * unit.equips.shield;
                     if(shCur > 0)
                     {
                        param1 = 0;
                     }
                     else
                     {
                        param1 = -shCur;
                        shCur = 0;
                        unit.game.createEffect(unit.x,unit.y - 40,"shieldbreak");
                     }
                  }
                  hpCur -= param1;
                  if(finalChance && hpCur < 1 && !param5)
                  {
                     hpCur = 1;
                  }
                  if(hpCur <= 0)
                  {
                     hpCur = 0;
                     attemptShield = false;
                     if(_loc6_)
                     {
                        param4.noShield = true;
                     }
                     unit.§\x1b\x01§(param2,param3,param4);
                  }
                  §\f\x16§();
                  return;
               }
               return;
            }
            return;
         }
      }
      
      public function §\f\x16§() : void
      {
         unit.bar_hp.width = hpCur / hpMax * bar_width;
         if(unit.human)
         {
            unit.game.hud.setHealth(hpCur,hpCur / hpMax,shCur / shMax);
         }
         unit.bar_hurt.width += (unit.bar_hp.width - unit.bar_hurt.width) * 0.05;
         unit.bar_en.width = enCur / enMax * bar_width;
         unit.bar_en.alpha = enCur < unit.ability.usedEnergy ? 0.6 : 1;
         if(unit.human)
         {
            unit.game.hud.setEnergy(enCur / enMax);
         }
      }
      
      public function EnterFrame() : void
      {
         if(!unit.human)
         {
            if(attemptShield)
            {
               attemptShield = false;
               unit.§\x1a\x1a§();
            }
            else if(unit.ability.id == "heal" && hpCur < 50 && Math.random() < 0.03)
            {
               unit.§\x1a\x1a§();
            }
         }
         if(enCur < enMax)
         {
            enCur += abilityCharge;
         }
         else
         {
            enCur = enMax;
         }
         if(Boolean(unit.equips.hprecover) && hpCur < 40)
         {
            heal(unit.equips.hprecover,false);
         }
         §\f\x16§();
         var _loc1_:Array = [];
         if(sMirror)
         {
            var _temp_4:* = sMirror > 10;
            §§push(_temp_4);
            if(!_temp_4)
            {
               §§pop();
               §§push(sMirror % 2 != 0);
               if(false)
               {
                  return false;
               }
            }
            if(§§pop())
            {
               if(SD.graphGlow)
               {
                  §§push(_loc1_);
                  §§push(new GlowFilter(65535,1,15,15,1,1,true,false));
                  §§push(§§findproperty(GlowFilter));
                  §§push(13434879);
                  if(false)
                  {
                     return false;
                  }
                  §§pop().push(§§pop(),new §§pop().GlowFilter(§§pop(),1,4,4,1),new GlowFilter(52479,1,10,10,1));
               }
               else
               {
                  _loc1_.push(new GlowFilter(52479,1,10,10,1.5));
               }
            }
            var _loc2_:* = §§findproperty(sMirror);
            var _loc3_:Number = _loc2_.sMirror - 1;
            _loc2_.sMirror = _loc3_;
         }
         §§push(unit);
         if(false)
         {
            return;
         }
         if(§§pop().isJug)
         {
            _loc1_.push(new GlowFilter(unit.human ? 52479 : 16711680,1,6,6,2));
         }
         if(sDamage)
         {
            if(sDamage > 10 || sDamage % 2 != 0)
            {
               _loc1_.push(new GlowFilter(16711680,1,10,10,2,1,true));
            }
            _loc2_ = §§findproperty(sDamage);
            _loc3_ = _loc2_.sDamage - 1;
            _loc2_.sDamage = _loc3_;
         }
         if(sRapid)
         {
            if(sRapid > 10 || sRapid % 2 != 0)
            {
               _loc1_.push(new GlowFilter(16763904,1,10,10,2,1,true));
            }
            var _temp_9:* = §§findproperty(sRapid);
            --sRapid;
         }
         if(sSpawn)
         {
            var _temp_10:* = sSpawn > 10;
            §§push(_temp_10);
            if(!_temp_10)
            {
               §§pop();
               if(false)
               {
                  return;
               }
               §§push(sSpawn % 2 != 0);
            }
            if(§§pop())
            {
               if(SD.graphGlow)
               {
                  _loc1_.push(new GlowFilter(65535,1,15,15,1,1,true,false),new GlowFilter(13434879,1,4,4,1),new GlowFilter(52479,1,10,10,1));
               }
               else
               {
                  _loc1_.push(new GlowFilter(52479,1,10,10,1.5));
               }
            }
            var _temp_11:* = §§findproperty(sSpawn);
            §§push(_temp_11);
            §§push(_temp_11);
            if(false)
            {
               return;
            }
            _loc2_ = §§pop();
            _loc3_ = §§pop().sSpawn - 1;
            _loc2_.sSpawn = _loc3_;
         }
         if(shCur)
         {
            if(SD.graphGlow)
            {
               _loc1_.push(new GlowFilter(16776960,shCur / 120 + 0.2,15,15,1,1,true,false),new GlowFilter(16777164,shCur / 120 + 0.5,4,4,1),new GlowFilter(16763904,shCur / 120 + 0.2,10,10,1));
            }
            else
            {
               _loc1_.push(new GlowFilter(16763904,shCur / 120 + 0.5,10,10,1.5));
            }
         }
         if(sInvin)
         {
            if(sInvin > 10 || sInvin % 2 != 0)
            {
               if(SD.graphGlow)
               {
                  _loc1_.push(new GlowFilter(10027263,1,4,4,3),new GlowFilter(13395711,1,4,4,3));
               }
               else
               {
                  _loc1_.push(new GlowFilter(10040319,1,10,10,3));
               }
            }
            _loc2_ = §§findproperty(sInvin);
            _loc3_ = _loc2_.sInvin - 1;
            _loc2_.sInvin = _loc3_;
         }
         if(sFire)
         {
            if(SD.graphGlow)
            {
               _loc1_.push(new GlowFilter(16737792,1,15,15,1,1,true,false),new GlowFilter(16750848,1,15,15,0.5));
            }
            if(sFire % 3 == 0)
            {
               §§push(unit.game);
               if(false)
               {
                  return;
               }
               §§pop().createEffect(unit.x + UT.rand(-10,10),unit.y + UT.rand(-60,-5),Stats_Guns.gunOb.fire.effHit);
               §§push(unit.matchInfo.extra);
               if(false)
               {
                  return;
               }
               if(!(Boolean(§§pop()) && Boolean(unit.matchInfo.extra.dblFire)))
               {
                  damage(Stats_Guns.gunOb.fire.dmg,sFireUnit,Stats_Guns.gunOb.fire,{});
               }
               else
               {
                  damage(Stats_Guns.gunOb.fire.dmg * 3,sFireUnit,Stats_Guns.gunOb.fire,{});
               }
            }
            --sFire;
         }
         unit.MC.filters = _loc1_;
         if(unit.permInvis)
         {
            sInvis = 30 * 2;
         }
         §§push(Boolean(sInvis));
         if(false)
         {
            return;
         }
         if(!(§§pop() && (unit.human || unit.team == 1)))
         {
            if(!sInvis)
            {
               unit.MC.alpha = 1;
               §§push(unit);
               §§push(1);
               if(false)
               {
                  return;
               }
               §§pop().alpha = §§pop();
            }
            else
            {
               §§push(sInvis);
               if(false)
               {
                  return;
               }
               var _temp_18:* = §§pop() > 10;
               §§push(_temp_18);
               if(!_temp_18)
               {
                  §§pop();
                  §§push(sInvis % 2);
                  if(false)
                  {
                     return false;
                  }
                  §§push(§§pop() != 0);
               }
               if(!§§pop())
               {
                  unit.alpha = 1;
               }
               else
               {
                  unit.alpha = 0.15;
               }
               var _temp_19:* = §§findproperty(sInvis);
               --sInvis;
            }
         }
         else
         {
            if(!(sInvis > 10 || sInvis % 2 != 0))
            {
               unit.MC.alpha = 1;
            }
            else
            {
               unit.MC.alpha = 0.2;
            }
            _loc2_ = §§findproperty(sInvis);
            _loc3_ = _loc2_.sInvis - 1;
            §§push(_loc2_);
            if(false)
            {
               return;
            }
            §§pop().sInvis = _loc3_;
         }
      }
   }
}


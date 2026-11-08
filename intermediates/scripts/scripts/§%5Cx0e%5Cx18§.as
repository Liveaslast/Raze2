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
   
   public class §\x0e\x18§
   {
      
      private var physWorld:§\x0e\x16§;
      
      public var unit:§\t\x06§;
      
      private var x:Number;
      
      private var y:Number;
      
      private var body:b2Body;
      
      private var bodyDef:§\x1e\x17§;
      
      private var boxShape:b2PolygonShape;
      
      private var circleShape:b2CircleShape;
      
      private var fixtureDef:§\x1d\x1a§;
      
      private var skin:uint;
      
      public var parts:Array;
      
      public var rdBody:b2Body;
      
      public var rdHead:b2Body;
      
      private var evaporate:Boolean;
      
      private var alpha:Number = 1;
      
      public var flip:int;
      
      public var fc:uint = 0;
      
      private var killPoints:§\x10\x0f§;
      
      public function §\x0e\x18§(param1:§\x0e\x16§, param2:§\t\x06§, param3:§\t\x06§, param4:Stats_Guns, param5:Object)
      {
         super();
         physWorld = param1;
         if(false)
         {
            throw true;
         }
         unit = param2;
         x = unit.x;
         y = unit.y - 50;
         flip = unit.MC.scaleX;
         parts = [];
         §§push(§§findproperty(skin));
         §§push(unit);
         if(false)
         {
            return;
         }
         §§pop().skin = §§pop().MC.curSkin;
         fixtureDef = new §\x1d\x1a§();
         var _loc6_:b2Body = §\x1b\x0b§(0,0,0,PhysBody,true);
         _loc6_.GetDefinition().userData.ability.gotoAndStop(unit.ability.sprite);
         §§push(§\x1b\x0b§(0,-15,0,PhysHead,false));
         if(false)
         {
            return false;
         }
         var _loc7_:* = §§pop();
         if(MatchSettings.specialMode == "lol猫\x1f\x1f")
         {
            _loc7_.GetDefinition().userData.gotoAndStop("cat");
         }
         §\x1b\f§(_loc6_,_loc7_,§\x1b\b§(0,0),-0.2,0.02);
         var _loc8_:b2Body = §\x1b\x0b§(-2,20,0,PhysUpperLeg,true);
         §\x1b\f§(_loc6_,_loc8_,§\x1b\b§(-1,10),-0.5,0.2);
         var _loc9_:b2Body = §\x1b\x0b§(-5,38,0,PhysLowerLeg,true);
         §\x1b\f§(_loc8_,_loc9_,§\x1b\b§(-3,26),0,0.5);
         var _loc10_:b2Body = §\x1b\x0b§(-2,48,0,PhysFoot,true);
         §\x1b\f§(_loc9_,_loc10_,§\x1b\b§(-3,48),-0.1,0.2);
         var _loc11_:b2Body = §\x1b\x0b§(-2,20,0,PhysUpperLeg,true);
         §\x1b\f§(_loc6_,_loc11_,§\x1b\b§(-1,10),-0.5,0.2);
         var _loc12_:b2Body = §\x1b\x0b§(-5,38,0,PhysLowerLeg,true);
         §\x1b\f§(_loc11_,_loc12_,§\x1b\b§(-3,26),0,0.5);
         var _loc13_:b2Body = §\x1b\x0b§(-2,48,0,PhysFoot,true);
         §\x1b\f§(_loc12_,_loc13_,§\x1b\b§(-3,48),-0.1,0.2);
         var _loc14_:b2Body = §\x1b\x0b§(0,0,0.4,PhysUpperArm,true);
         §\x1b\f§(_loc6_,_loc14_,§\x1b\b§(-3,-5),0,0);
         var _loc15_:b2Body = §\x1b\x0b§(0,15,0.5,PhysLowerArm,true);
         §\x1b\f§(_loc14_,_loc15_,§\x1b\b§(-3,10),-0.8,0);
         var _loc16_:b2Body = §\x1b\x0b§(3,20,0.5,PhysHand,false);
         §\x1b\f§(_loc15_,_loc16_,§\x1b\b§(-2,18),-0.2,0.2);
         var _loc17_:b2Body = §\x1b\x0b§(0,0,0.4,PhysUpperArm,true);
         §§push(§§findproperty(§\x1b\f§));
         §§push(_loc6_);
         §§push(_loc17_);
         §§push(§\x1b\b§(-3,-5));
         §§push(0);
         §§push(0);
         if(false)
         {
            return;
         }
         §§pop().§\x1b\f§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
         var _loc18_:b2Body = §\x1b\x0b§(0,15,0.5,PhysLowerArm,true);
         §\x1b\f§(_loc17_,_loc18_,§\x1b\b§(-3,10),-0.8,0);
         var _loc19_:b2Body = §\x1b\x0b§(3,20,0.5,PhysHand,false);
         §§push(§§findproperty(§\x1b\f§));
         §§push(_loc18_);
         §§push(_loc19_);
         §§push(§§findproperty(§\x1b\b§));
         if(false)
         {
            return;
         }
         §§pop().§\x1b\f§(§§pop(),§§pop(),§§pop().§\x1b\b§(-2,18),-0.2,0.2);
         parts.push(_loc19_,_loc18_,_loc17_);
         parts.push(_loc13_,_loc12_,_loc11_);
         parts.push(_loc10_,_loc9_,_loc8_);
         parts.push(_loc6_);
         parts.push(_loc7_);
         parts.push(_loc16_,_loc15_,_loc14_);
         rdBody = _loc6_;
         rdHead = _loc7_;
         var _loc20_:uint = 0;
         while(_loc20_ < parts.length)
         {
            physWorld.addChild(parts[_loc20_].GetDefinition().userData);
            _loc20_++;
         }
         var _temp_2:* = !physWorld.game.gameEnded;
         §§push(_temp_2);
         if(_temp_2)
         {
            §§pop();
            §§push(param3);
            §§push(unit.game.player);
            if(false)
            {
               return;
            }
            §§push(§§pop() == §§pop() || unit == unit.game.player || param3 == unit);
         }
         if(§§pop())
         {
            §§push(§§findproperty(killPoints));
            if(false)
            {
               throw true;
            }
            §§pop().killPoints = new §\x10\x0f§(unit,param3,param4,param5);
            §§push(physWorld);
            if(false)
            {
               return;
            }
            §§pop().addChild(killPoints);
         }
      }
      
      public function EnterFrame() : void
      {
         ++fc;
         if(killPoints)
         {
            killPoints.x = rdBody.GetWorldCenter().x * 30;
            killPoints.y = rdBody.GetWorldCenter().y * 30;
            if(!killPoints.noShow)
            {
               if(killPoints.x < -unit.game.arena.x + 35)
               {
                  killPoints.x = -unit.game.arena.x + 35;
               }
               §§push(killPoints.x);
               §§push(-unit.game.arena.x);
               if(false)
               {
                  return;
               }
               if(§§pop() > §§pop() + Main.WIDTH - 60)
               {
                  §§push(killPoints);
                  §§push(-unit.game.arena.x + Main.WIDTH);
                  §§push(60);
                  if(false)
                  {
                     return;
                  }
                  §§pop().x = §§pop() - §§pop();
               }
               §§push(killPoints.y);
               §§push(-unit.game.arena.y);
               if(false)
               {
                  return;
               }
               if(§§pop() < §§pop() + 80)
               {
                  killPoints.y = -unit.game.arena.y + 80;
               }
               if(killPoints.y > -unit.game.arena.y + Main.HEIGHT - 60)
               {
                  killPoints.y = -unit.game.arena.y + Main.HEIGHT - 60;
               }
            }
         }
         if(fc == 4 * 30)
         {
            physWorld.physVap.vaporize(this);
            physWorld.actors.splice(physWorld.actors.indexOf(this),1);
         }
      }
      
      public function destroy() : void
      {
         if(killPoints)
         {
            physWorld.removeChild(killPoints);
         }
         var _loc1_:uint = 0;
         while(_loc1_ < parts.length)
         {
            physWorld.removeChild(parts[_loc1_].GetDefinition().userData);
            §§push(physWorld.m_world);
            §§push(parts[_loc1_]);
            if(false)
            {
               return;
            }
            §§pop().DestroyBody(§§pop());
            _loc1_++;
         }
      }
      
      public function §\x11\x03§(param1:b2Vec2) : void
      {
         rdBody.ApplyImpulse(param1,rdBody.GetWorldCenter());
      }
      
      public function §\x11\x02§(param1:b2Vec2) : void
      {
         rdHead.ApplyImpulse(param1,rdBody.GetWorldCenter());
      }
      
      public function §\x11\x04§(param1:b2Vec2 = null, param2:Number = -1, param3:Number = 1) : void
      {
         var _loc4_:uint = 0;
         while(_loc4_ < parts.length)
         {
            if(!param1)
            {
               §§push(parts[_loc4_]);
               §§push(§§findproperty(b2Vec2));
               if(false)
               {
                  return false;
               }
               §§pop().ApplyImpulse(new §§pop().b2Vec2(UT.rand(param2,param3),UT.rand(param2,param3)),parts[_loc4_].GetWorldCenter());
            }
            else
            {
               parts[_loc4_].ApplyImpulse(param1,parts[_loc4_].GetWorldCenter());
            }
            _loc4_++;
         }
      }
      
      public function §\x1b\b§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2((x + param1 * flip) / 30,(y + param2) / 30);
      }
      
      public function §\x1b\f§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:Number, param5:Number) : void
      {
         var _loc7_:Number = NaN;
         if(flip == -1)
         {
            _loc7_ = param4;
            param4 = param5 * flip;
            param5 = _loc7_ * flip;
         }
         var _loc6_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc6_.§\x10\x1d§(param1,param2,param3);
         _loc6_.lowerAngle = param4 * b2Settings.b2_pi;
         _loc6_.upperAngle = param5 * b2Settings.b2_pi;
         _loc6_.enableLimit = Boolean(param4) || Boolean(param5);
         _loc6_.maxMotorTorque = 0.02;
         _loc6_.motorSpeed = 0;
         if(false)
         {
            return;
         }
         _loc6_.enableMotor = true;
         physWorld.m_world.CreateJoint(_loc6_);
      }
      
      public function §\x1b\x0b§(param1:Number, param2:Number, param3:Number, param4:*, param5:Boolean) : b2Body
      {
         param1 *= flip;
         param3 *= flip;
         param1 += x;
         param2 += y;
         bodyDef = new §\x1e\x17§();
         bodyDef.type = b2Body.b2_dynamicBody;
         bodyDef.position.x = param1 / 30;
         bodyDef.position.y = param2 / 30;
         bodyDef.angle = param3 * b2Settings.b2_pi;
         var _temp_1:* = new param4();
         var _loc6_:* = new param4();
         _loc6_.gotoAndStop(skin);
         _loc6_.scaleX = flip;
         if(!param5)
         {
            §§push(§§findproperty(circleShape));
            §§push(§§findproperty(b2CircleShape));
            if(false)
            {
               return;
            }
            §§pop().circleShape = new §§pop().b2CircleShape(_loc6_.width * 0.8 / 60);
            fixtureDef.shape = circleShape;
         }
         else
         {
            boxShape = new b2PolygonShape();
            boxShape.§\f\x1a§(_loc6_.width * 0.8 / 60,_loc6_.height * 0.8 / 60);
            if(false)
            {
               return false;
            }
            fixtureDef.shape = boxShape;
         }
         if(!(param4 is PhysBody))
         {
            fixtureDef.density = 1;
         }
         else
         {
            fixtureDef.density = 1.5;
         }
         fixtureDef.friction = 0.5;
         fixtureDef.restitution = 0.2;
         fixtureDef.filter.groupIndex = -1;
         bodyDef.userData = _loc6_;
         bodyDef.userData.rotation = param3 * 360;
         bodyDef.userData.x = param1;
         bodyDef.userData.y = param2;
         body = physWorld.m_world.CreateBody(bodyDef);
         body.§\x1b\x0e§(fixtureDef);
         return body;
      }
   }
}


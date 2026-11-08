package §\x1c\x13§
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x14§;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2GearJointDef;
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
   import §\x1c\x14§.*;
   import §\x1c\x15§.§\x1e\x14§;
   import §\x1c\x15§.b2Settings;
   import §\x1c\x15§.b2internal;
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
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var s_xf1:§\x1d\x04§ = new §\x1d\x04§();
      
      b2internal static var e_islandFlag:uint = 1;
      
      b2internal static var e_awakeFlag:uint = 2;
      
      b2internal static var e_allowSleepFlag:uint = 4;
      
      b2internal static var e_bulletFlag:uint = 8;
      
      b2internal static var e_fixedRotationFlag:uint = 16;
      
      §§push(§§findproperty(b2internal::e_activeFlag));
      §§push(32);
      if(false)
      {
         return;
      }
      
      b2internal static var e_activeFlag:uint = §§pop();
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      b2internal var m_flags:uint;
      
      b2internal var m_type:int;
      
      b2internal var m_islandIndex:int;
      
      b2internal var m_xf:§\x1d\x04§ = new §\x1d\x04§();
      
      b2internal var m_sweep:§\x1d\x07§ = new §\x1d\x07§();
      
      b2internal var m_linearVelocity:b2Vec2 = new b2Vec2();
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var m_force:b2Vec2 = new b2Vec2();
      
      b2internal var m_torque:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var m_prev:b2Body;
      
      b2internal var m_next:b2Body;
      
      b2internal var m_fixtureList:b2Fixture;
      
      b2internal var m_fixtureCount:int;
      
      b2internal var m_controllerList:§\x1e\b§;
      
      b2internal var m_controllerCount:int;
      
      b2internal var m_jointList:§\x1d\x14§;
      
      b2internal var m_contactList:§\x1e\x11§;
      
      b2internal var m_mass:Number;
      
      b2internal var m_invMass:Number;
      
      b2internal var m_I:Number;
      
      b2internal var m_invI:Number;
      
      b2internal var m_inertiaScale:Number;
      
      b2internal var m_linearDamping:Number;
      
      b2internal var m_angularDamping:Number;
      
      b2internal var m_sleepTime:Number;
      
      private var m_userData:*;
      
      public function b2Body(param1:§\x1e\x17§, param2:b2World)
      {
         super();
         b2internal::m_flags = 0;
         if(param1.bullet)
         {
            b2internal::m_flags |= b2internal::e_bulletFlag;
         }
         §§push(param1);
         if(false)
         {
            return;
         }
         if(§§pop().fixedRotation)
         {
            b2internal::m_flags |= b2internal::e_fixedRotationFlag;
         }
         if(param1.allowSleep)
         {
            b2internal::m_flags |= b2internal::e_allowSleepFlag;
         }
         if(param1.awake)
         {
            b2internal::m_flags |= b2internal::e_awakeFlag;
         }
         if(param1.active)
         {
            b2internal::m_flags |= b2internal::e_activeFlag;
         }
         b2internal::m_world = param2;
         b2internal::m_xf.position.SetV(param1.position);
         b2internal::m_xf.R.Set(param1.angle);
         b2internal::m_sweep.localCenter.SetZero();
         b2internal::m_sweep.t0 = 1;
         b2internal::m_sweep.a0 = b2internal::m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = b2internal::m_xf.R;
         var _loc4_:b2Vec2 = b2internal::m_sweep.localCenter;
         b2internal::m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         §§push(b2internal::m_sweep.c);
         if(false)
         {
            return;
         }
         §§push(_loc3_.col1.y * _loc4_.x);
         §§push(_loc3_.col2);
         if(false)
         {
            return false;
         }
         §§pop().y = §§pop() + §§pop().y * _loc4_.y;
         b2internal::m_sweep.c.x += b2internal::m_xf.position.x;
         §§push(b2internal::m_sweep.c);
         §§push(b2internal::m_sweep.c.y);
         §§push(b2internal::m_xf.position.y);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop() + §§pop();
         b2internal::m_sweep.c0.SetV(b2internal::m_sweep.c);
         b2internal::m_jointList = null;
         b2internal::m_controllerList = null;
         b2internal::m_contactList = null;
         b2internal::m_controllerCount = 0;
         b2internal::m_prev = null;
         b2internal::m_next = null;
         b2internal::m_linearVelocity.SetV(param1.linearVelocity);
         b2internal::m_angularVelocity = param1.angularVelocity;
         b2internal::m_linearDamping = param1.linearDamping;
         b2internal::m_angularDamping = param1.angularDamping;
         b2internal::m_force.Set(0,0);
         b2internal::m_torque = 0;
         b2internal::m_sleepTime = 0;
         b2internal::m_type = param1.type;
         if(b2internal::m_type != b2_dynamicBody)
         {
            b2internal::m_mass = 0;
            §§push(§§findproperty(b2internal::m_invMass));
            if(false)
            {
               return;
            }
            §§pop().b2internal::m_invMass = 0;
         }
         else
         {
            b2internal::m_mass = 1;
            §§push(§§findproperty(b2internal::m_invMass));
            if(false)
            {
               return;
            }
            §§pop().b2internal::m_invMass = 1;
         }
         b2internal::m_I = 0;
         b2internal::m_invI = 0;
         b2internal::m_inertiaScale = param1.inertiaScale;
         m_userData = param1.userData;
         b2internal::m_fixtureList = null;
         §§push(§§findproperty(b2internal::m_fixtureCount));
         §§push(0);
         if(false)
         {
            return;
         }
         §§pop().b2internal::m_fixtureCount = §§pop();
      }
      
      private function §\x1b\x13§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         §§push(Math);
         §§push(param2.§\x14\x05§().y);
         §§push(param2.§\x14\x05§().x);
         if(false)
         {
            return;
         }
         var _loc4_:Number = Number(§§pop().atan2(§§pop(),§§pop()));
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.MulFV(_loc5_,param2.§\x14\x05§());
         _loc6_ = b2Math.SubtractVV(_loc6_,param2.§\x12\x12§());
         _loc6_ = b2Math.MulFV(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.AddVV(_loc6_,param2.§\x11\x1b§());
         var _temp_1:* = b2Math.AddVV(param1.§\x14\x05§(),param2.§\x14\x05§());
         var _loc7_:b2Vec2 = b2Math.AddVV(param1.§\x14\x05§(),param2.§\x14\x05§());
         _loc7_.Normalize();
         var _loc8_:Boolean = b2Math.Dot(param1.§\x14\x05§(),param2.§\x12\x12§()) > 0;
         param1.§\x0b\x07§(param2,_loc6_,_loc7_,_loc8_);
         param2.§\x0b\x03§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §\x1b\x0e§(param1:§\x1d\x1a§) : b2Fixture
      {
         var _loc3_:§\x11\x06§ = null;
         if(m_world.§\x10\x13§() != true)
         {
            var _loc2_:b2Fixture = new b2Fixture();
            _loc2_.Create(this,m_xf,param1);
            if(m_flags & e_activeFlag)
            {
               _loc3_ = m_world.m_contactManager.m_broadPhase;
               _loc2_.§\x1b\n§(_loc3_,m_xf);
            }
            _loc2_.m_next = m_fixtureList;
            m_fixtureList = _loc2_;
            ++m_fixtureCount;
            _loc2_.m_body = this;
            if(_loc2_.m_density > 0)
            {
               §\r\x0f§();
            }
            §§push(m_world);
            §§push(m_world.m_flags);
            §§push(b2World);
            if(false)
            {
               return;
            }
            §§pop().b2internal::m_flags = §§pop() | §§pop().e_newFixture;
            return _loc2_;
         }
         return null;
      }
      
      public function §\x1b\r§(param1:b2Shape, param2:Number = 0) : b2Fixture
      {
         var _loc3_:§\x1d\x1a§ = new §\x1d\x1a§();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return §\x1b\x0e§(_loc3_);
      }
      
      public function §\x1b\x04§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§\x11\x06§ = null;
         if(m_world.§\x10\x13§() != true)
         {
            var _loc2_:b2Fixture = m_fixtureList;
            var _loc3_:b2Fixture = null;
            var _loc4_:Boolean = false;
            while(_loc2_ != null)
            {
               §§push(_loc2_);
               if(false)
               {
                  throw true;
               }
               if(§§pop() == param1)
               {
                  if(_loc3_)
                  {
                     _loc3_.m_next = param1.m_next;
                  }
                  else
                  {
                     m_fixtureList = param1.m_next;
                  }
                  _loc4_ = true;
                  break;
               }
               _loc3_ = _loc2_;
               _loc2_ = _loc2_.m_next;
            }
            var _loc5_:§\x1e\x11§ = m_contactList;
            while(_loc5_)
            {
               _loc6_ = _loc5_.contact;
               _loc5_ = _loc5_.next;
               _loc7_ = _loc6_.GetFixtureA();
               §§push(_loc6_);
               if(false)
               {
                  throw true;
               }
               _loc8_ = §§pop().GetFixtureB();
               if(param1 == _loc7_ || param1 == _loc8_)
               {
                  m_world.m_contactManager.Destroy(_loc6_);
               }
            }
            if(m_flags & e_activeFlag)
            {
               _loc9_ = m_world.m_contactManager.m_broadPhase;
               param1.§\x1b\x02§(_loc9_);
            }
            param1.Destroy();
            param1.m_body = null;
            param1.m_next = null;
            var _loc10_:* = §§findproperty(b2internal::m_fixtureCount);
            var _loc11_:Number = _loc10_.b2internal::m_fixtureCount - 1;
            _loc10_.b2internal::m_fixtureCount = _loc11_;
            §\r\x0f§();
            return;
         }
      }
      
      public function §\x0b\x04§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(m_world.§\x10\x13§() != true)
         {
            m_xf.R.Set(param2);
            §§push(m_xf.position);
            §§push(param1);
            if(false)
            {
               return;
            }
            §§pop().SetV(§§pop());
            var _loc4_:b2Mat22 = m_xf.R;
            var _loc5_:b2Vec2 = m_sweep.localCenter;
            m_sweep.c.x = _loc4_.col1.x * _loc5_.x + _loc4_.col2.x * _loc5_.y;
            m_sweep.c.y = _loc4_.col1.y * _loc5_.x + _loc4_.col2.y * _loc5_.y;
            m_sweep.c.x += m_xf.position.x;
            m_sweep.c.y += m_xf.position.y;
            m_sweep.c0.SetV(m_sweep.c);
            §§push(m_sweep);
            §§push(m_sweep.a = param2);
            if(false)
            {
               return false;
            }
            §§pop().a0 = §§pop();
            var _loc6_:§\x11\x06§ = m_world.m_contactManager.m_broadPhase;
            _loc3_ = m_fixtureList;
            while(_loc3_)
            {
               _loc3_.§\t\x0e§(_loc6_,m_xf,m_xf);
               _loc3_ = _loc3_.m_next;
            }
            m_world.m_contactManager.FindNewContacts();
            return;
         }
      }
      
      public function §\n\x15§(param1:§\x1d\x04§) : void
      {
         §\x0b\x04§(param1.position,param1.§\x14\x18§());
      }
      
      public function GetTransform() : §\x1d\x04§
      {
         return m_xf;
      }
      
      public function §\x12\x0f§() : b2Vec2
      {
         return m_xf.position;
      }
      
      public function §\x0b\x05§(param1:b2Vec2) : void
      {
         §\x0b\x04§(param1,§\x14\x18§());
      }
      
      public function §\x14\x18§() : Number
      {
         return m_sweep.a;
      }
      
      public function §\r\x01§(param1:Number) : void
      {
         §\x0b\x04§(§\x12\x0f§(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return m_sweep.c;
      }
      
      public function §\x13\x07§() : b2Vec2
      {
         return m_sweep.localCenter;
      }
      
      public function §\x0b\x13§(param1:b2Vec2) : void
      {
         if(m_type != b2_staticBody)
         {
            m_linearVelocity.SetV(param1);
            return;
         }
      }
      
      public function §\x13\x0b§() : b2Vec2
      {
         return m_linearVelocity;
      }
      
      public function §\f\x1c§(param1:Number) : void
      {
         if(m_type != b2_staticBody)
         {
            m_angularVelocity = param1;
            return;
         }
      }
      
      public function §\x14\x16§() : Number
      {
         return m_angularVelocity;
      }
      
      public function GetDefinition() : §\x1e\x17§
      {
         var _loc1_:§\x1e\x17§ = new §\x1e\x17§();
         _loc1_.type = GetType();
         _loc1_.allowSleep = (m_flags & e_allowSleepFlag) == e_allowSleepFlag;
         _loc1_.angle = §\x14\x18§();
         §§push(_loc1_);
         §§push(m_angularDamping);
         if(false)
         {
            return false;
         }
         §§pop().angularDamping = §§pop();
         _loc1_.angularVelocity = m_angularVelocity;
         _loc1_.fixedRotation = (m_flags & e_fixedRotationFlag) == e_fixedRotationFlag;
         _loc1_.bullet = (m_flags & e_bulletFlag) == e_bulletFlag;
         _loc1_.awake = (m_flags & e_awakeFlag) == e_awakeFlag;
         _loc1_.linearDamping = m_linearDamping;
         _loc1_.linearVelocity.SetV(§\x13\x0b§());
         _loc1_.position = §\x12\x0f§();
         if(false)
         {
            return;
         }
         _loc1_.userData = GetUserData();
         return _loc1_;
      }
      
      public function §\x03§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(m_type == b2_dynamicBody)
         {
            if(§\x10\x19§() == false)
            {
               SetAwake(true);
            }
            m_force.x += param1.x;
            m_force.y += param1.y;
            m_torque += (param2.x - m_sweep.c.x) * param1.y - (param2.y - m_sweep.c.y) * param1.x;
            return;
         }
      }
      
      public function §\x02§(param1:Number) : void
      {
         if(m_type == b2_dynamicBody)
         {
            §§push(§§findproperty(§\x10\x19§));
            if(false)
            {
               return;
            }
            if(§§pop().§\x10\x19§() == false)
            {
               SetAwake(true);
            }
            m_torque += param1;
            return;
         }
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(m_type == b2_dynamicBody)
         {
            if(§\x10\x19§() == false)
            {
               SetAwake(true);
            }
            m_linearVelocity.x += m_invMass * param1.x;
            m_linearVelocity.y += m_invMass * param1.y;
            m_angularVelocity += m_invI * ((param2.x - m_sweep.c.x) * param1.y - (param2.y - m_sweep.c.y) * param1.x);
            return;
         }
      }
      
      public function §\t\x1a§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:* = null;
         var _loc2_:b2Vec2 = §\x13\x0b§().Copy();
         var _loc3_:Number = §\x14\x16§();
         §§push(GetWorldCenter());
         if(false)
         {
            throw true;
         }
         var _loc4_:b2Vec2 = §§pop();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = m_world.CreateBody(GetDefinition());
         var _loc8_:b2Fixture = _loc5_.m_fixtureList;
         while(_loc8_)
         {
            if(!param1(_loc8_))
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.m_next;
            }
            else
            {
               §§push(_loc8_.m_next);
               if(false)
               {
                  return;
               }
               _loc13_ = §§pop();
               if(!_loc7_)
               {
                  _loc5_.m_fixtureList = _loc13_;
               }
               else
               {
                  _loc7_.m_next = _loc13_;
               }
               var _temp_1:* = _loc5_;
               --_loc5_.m_fixtureCount;
               _loc8_.m_next = _loc6_.m_fixtureList;
               _loc6_.m_fixtureList = _loc8_;
               var _temp_2:* = _loc6_;
               var _loc14_:b2Body = _loc6_;
               var _loc15_:Number = _loc14_.m_fixtureCount + 1;
               _loc14_.m_fixtureCount = _loc15_;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
         }
         _loc5_.§\r\x0f§();
         _loc6_.§\r\x0f§();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.AddVV(_loc2_,b2Math.CrossFV(_loc3_,b2Math.SubtractVV(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.AddVV(_loc2_,b2Math.CrossFV(_loc3_,b2Math.SubtractVV(_loc10_,_loc4_)));
         _loc5_.§\x0b\x13§(_loc11_);
         §§push(_loc6_);
         §§push(_loc12_);
         if(false)
         {
            return;
         }
         §§pop().§\x0b\x13§(§§pop());
         _loc5_.§\f\x1c§(_loc3_);
         _loc6_.§\f\x1c§(_loc3_);
         _loc5_.§\t\r§();
         _loc6_.§\t\r§();
         return _loc6_;
      }
      
      public function §\x0f\x15§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.m_fixtureList;
         while(_loc2_)
         {
            _loc11_ = _loc2_.m_next;
            var _loc12_:b2Body = param1;
            var _loc13_:Number = _loc12_.m_fixtureCount - 1;
            _loc12_.m_fixtureCount = _loc13_;
            _loc2_.m_next = m_fixtureList;
            m_fixtureList = _loc2_;
            ++m_fixtureCount;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.m_fixtureCount = 0;
         _loc3_ = this;
         _loc4_ = param1;
         §§push(_loc3_.GetWorldCenter());
         if(false)
         {
            return;
         }
         var _loc5_:b2Vec2 = §§pop();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.§\x13\x0b§().Copy();
         var _loc8_:b2Vec2 = _loc4_.§\x13\x0b§().Copy();
         var _loc9_:Number = _loc3_.§\x14\x16§();
         §§push(_loc4_.§\x14\x16§());
         if(false)
         {
            return;
         }
         var _loc10_:Number = §§pop();
         _loc3_.§\r\x0f§();
         §\t\r§();
      }
      
      public function §\x13\x01§() : Number
      {
         return m_mass;
      }
      
      public function §\x13\x15§() : Number
      {
         return m_I;
      }
      
      public function §\x12\x1d§(param1:§\x1d\x12§) : void
      {
         param1.mass = m_mass;
         param1.I = m_I;
         §§push(param1.center);
         if(false)
         {
            throw true;
         }
         §§pop().SetV(m_sweep.localCenter);
      }
      
      public function §\x0b\x0e§(param1:§\x1d\x12§) : void
      {
         b2Settings.b2Assert(m_world.§\x10\x13§() == false);
         if(m_world.§\x10\x13§() != true)
         {
            if(m_type != b2_dynamicBody)
            {
               return;
            }
            m_invMass = 0;
            m_I = 0;
            m_invI = 0;
            m_mass = param1.mass;
            if(m_mass <= 0)
            {
               §§push(§§findproperty(b2internal::m_mass));
               if(false)
               {
                  return;
               }
               §§pop().b2internal::m_mass = 1;
            }
            m_invMass = 1 / m_mass;
            if(param1.I > 0 && (m_flags & e_fixedRotationFlag) == 0)
            {
               §§push(§§findproperty(b2internal::m_I));
               §§push(param1.I);
               §§push(m_mass);
               §§push(param1.center.x);
               if(false)
               {
                  throw true;
               }
               §§pop().b2internal::m_I = §§pop() - §§pop() * (§§pop() * param1.center.x + param1.center.y * param1.center.y);
               m_invI = 1 / m_I;
            }
            var _loc2_:b2Vec2 = m_sweep.c.Copy();
            m_sweep.localCenter.SetV(param1.center);
            m_sweep.c0.SetV(b2Math.MulX(m_xf,m_sweep.localCenter));
            m_sweep.c.SetV(m_sweep.c0);
            §§push(m_linearVelocity);
            §§push(m_linearVelocity.x);
            §§push(m_angularVelocity * -(m_sweep.c.y - _loc2_.y));
            if(false)
            {
               return;
            }
            §§pop().x = §§pop() + §§pop();
            §§push(m_linearVelocity);
            §§push(m_linearVelocity.y + m_angularVelocity * (m_sweep.c.x - _loc2_.x));
            if(false)
            {
               return;
            }
            §§pop().y = §§pop();
            return;
         }
      }
      
      public function §\r\x0f§() : void
      {
         var _loc4_:§\x1d\x12§ = null;
         m_mass = 0;
         m_invMass = 0;
         m_I = 0;
         m_invI = 0;
         m_sweep.localCenter.SetZero();
         if(!(m_type == b2_staticBody || m_type == b2_kinematicBody))
         {
            var _loc1_:b2Vec2 = b2Vec2.Make(0,0);
            var _loc2_:b2Fixture = m_fixtureList;
            while(_loc2_)
            {
               if(_loc2_.m_density != 0)
               {
                  _loc4_ = _loc2_.§\x12\x1d§();
                  m_mass += _loc4_.mass;
                  _loc1_.x += _loc4_.center.x * _loc4_.mass;
                  §§push(_loc1_);
                  §§push(_loc1_.y);
                  §§push(_loc4_.center.y * _loc4_.mass);
                  if(false)
                  {
                     return false;
                  }
                  §§pop().y = §§pop() + §§pop();
                  m_I += _loc4_.I;
               }
               _loc2_ = _loc2_.m_next;
            }
            if(m_mass <= 0)
            {
               m_mass = 1;
               m_invMass = 1;
            }
            else
            {
               m_invMass = 1 / m_mass;
               _loc1_.x *= m_invMass;
               _loc1_.y *= m_invMass;
            }
            if(!(m_I > 0 && (m_flags & e_fixedRotationFlag) == 0))
            {
               m_I = 0;
               m_invI = 0;
            }
            else
            {
               m_I -= m_mass * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
               if(false)
               {
                  return;
               }
               m_I *= m_inertiaScale;
               b2Settings.b2Assert(m_I > 0);
               m_invI = 1 / m_I;
               if(false)
               {
                  return;
               }
            }
            var _loc3_:b2Vec2 = m_sweep.c.Copy();
            m_sweep.localCenter.SetV(_loc1_);
            m_sweep.c0.SetV(b2Math.MulX(m_xf,m_sweep.localCenter));
            m_sweep.c.SetV(m_sweep.c0);
            m_linearVelocity.x += m_angularVelocity * -(m_sweep.c.y - _loc3_.y);
            §§push(m_linearVelocity);
            §§push(m_linearVelocity);
            if(false)
            {
               throw true;
            }
            §§pop().y = §§pop().y + m_angularVelocity * (m_sweep.c.x - _loc3_.x);
            return;
         }
      }
      
      public function §\x11\x15§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y);
         §§push(_loc2_.col1.y);
         §§push(param1);
         if(false)
         {
            return false;
         }
         var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() * §§pop().x + _loc2_.col2.y * param1.y);
         _loc3_.x += m_xf.position.x;
         §§push(_loc3_);
         §§push(_loc3_.y);
         §§push(m_xf.position.y);
         if(false)
         {
            throw true;
         }
         §§pop().y = §§pop() + §§pop();
         return _loc3_;
      }
      
      public function §\x11\x14§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.MulMV(m_xf.R,param1);
      }
      
      public function §\x13\x06§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.MulXT(m_xf,param1);
      }
      
      public function §\x13\x04§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.MulTMV(m_xf.R,param1);
      }
      
      public function §\x13\t§(param1:b2Vec2) : b2Vec2
      {
         §§push(§§findproperty(b2Vec2));
         §§push(m_linearVelocity.x - m_angularVelocity * (param1.y - m_sweep.c.y));
         §§push(m_linearVelocity.y);
         §§push(m_angularVelocity);
         §§push(param1.x);
         §§push(m_sweep.c.x);
         if(false)
         {
            return false;
         }
         return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop() * (§§pop() - §§pop()));
      }
      
      public function §\x13\n§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = m_xf.R;
         if(false)
         {
            return;
         }
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y);
         §§push(_loc2_.col1.y);
         if(false)
         {
            throw true;
         }
         var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += m_xf.position.x;
         §§push(_loc3_);
         §§push(_loc3_.y);
         §§push(m_xf);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop() + §§pop().position.y;
         §§push(§§findproperty(b2Vec2));
         §§push(m_linearVelocity.x - m_angularVelocity * (_loc3_.y - m_sweep.c.y));
         §§push(m_linearVelocity);
         if(false)
         {
            throw true;
         }
         return new §§pop().b2Vec2(§§pop(),§§pop().y + m_angularVelocity * (_loc3_.x - m_sweep.c.x));
      }
      
      public function §\x13\f§() : Number
      {
         return m_linearDamping;
      }
      
      public function §\x0b\x14§(param1:Number) : void
      {
         m_linearDamping = param1;
      }
      
      public function §\x14\x17§() : Number
      {
         return m_angularDamping;
      }
      
      public function §\f\x1d§(param1:Number) : void
      {
         m_angularDamping = param1;
      }
      
      public function §\n\x14§(param1:uint) : void
      {
         if(m_type != param1)
         {
            m_type = param1;
            §\r\x0f§();
            if(m_type == b2_staticBody)
            {
               m_linearVelocity.SetZero();
               m_angularVelocity = 0;
            }
            SetAwake(true);
            m_force.SetZero();
            m_torque = 0;
            var _loc2_:§\x1e\x11§ = m_contactList;
            while(_loc2_)
            {
               _loc2_.contact.FlagForFiltering();
               _loc2_ = _loc2_.next;
            }
            return;
         }
      }
      
      public function GetType() : uint
      {
         return m_type;
      }
      
      public function §\f\x14§(param1:Boolean) : void
      {
         if(!param1)
         {
            m_flags &= ~e_bulletFlag;
         }
         else
         {
            m_flags |= e_bulletFlag;
         }
      }
      
      public function §\x10\x18§() : Boolean
      {
         return (m_flags & e_bulletFlag) == e_bulletFlag;
      }
      
      public function §\n\x1a§(param1:Boolean) : void
      {
         if(!param1)
         {
            m_flags &= ~e_allowSleepFlag;
            SetAwake(true);
         }
         else
         {
            m_flags |= e_allowSleepFlag;
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(!param1)
         {
            §§push(§§findproperty(b2internal::m_flags));
            §§push(m_flags);
            §§push(~e_awakeFlag);
            if(false)
            {
               return false;
            }
            §§pop().b2internal::m_flags = §§pop() & §§pop();
            m_sleepTime = 0;
            m_linearVelocity.SetZero();
            m_angularVelocity = 0;
            m_force.SetZero();
            m_torque = 0;
         }
         else
         {
            m_flags |= e_awakeFlag;
            §§push(§§findproperty(b2internal::m_sleepTime));
            if(false)
            {
               return;
            }
            §§pop().b2internal::m_sleepTime = 0;
         }
      }
      
      public function §\x10\x19§() : Boolean
      {
         return (m_flags & e_awakeFlag) == e_awakeFlag;
      }
      
      public function §\f\x02§(param1:Boolean) : void
      {
         if(!param1)
         {
            m_flags &= ~e_fixedRotationFlag;
         }
         else
         {
            m_flags |= e_fixedRotationFlag;
         }
         §\r\x0f§();
      }
      
      public function §\x10\x16§() : Boolean
      {
         return (m_flags & e_fixedRotationFlag) == e_fixedRotationFlag;
      }
      
      public function §\r\x04§(param1:Boolean) : void
      {
         var _loc2_:§\x11\x06§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:§\x1e\x11§ = null;
         var _loc5_:§\x1e\x11§ = null;
         if(param1 != IsActive())
         {
            if(!param1)
            {
               m_flags &= ~e_activeFlag;
               _loc2_ = m_world.m_contactManager.m_broadPhase;
               _loc3_ = m_fixtureList;
               while(_loc3_)
               {
                  _loc3_.§\x1b\x02§(_loc2_);
                  _loc3_ = _loc3_.m_next;
               }
               _loc4_ = m_contactList;
               while(_loc4_)
               {
                  _loc5_ = _loc4_;
                  _loc4_ = _loc4_.next;
                  m_world.m_contactManager.Destroy(_loc5_.contact);
               }
               m_contactList = null;
            }
            else
            {
               m_flags |= e_activeFlag;
               _loc2_ = m_world.m_contactManager.m_broadPhase;
               _loc3_ = m_fixtureList;
               while(_loc3_)
               {
                  _loc3_.§\x1b\n§(_loc2_,m_xf);
                  _loc3_ = _loc3_.m_next;
               }
            }
            return;
         }
      }
      
      public function IsActive() : Boolean
      {
         return (m_flags & e_activeFlag) == e_activeFlag;
      }
      
      public function §\x10\x10§() : Boolean
      {
         return (m_flags & e_allowSleepFlag) == e_allowSleepFlag;
      }
      
      public function §\x13\x1c§() : b2Fixture
      {
         return m_fixtureList;
      }
      
      public function §\x13\x12§() : §\x1d\x14§
      {
         return m_jointList;
      }
      
      public function §\x14\r§() : §\x1e\b§
      {
         return m_controllerList;
      }
      
      public function §\x14\x0e§() : §\x1e\x11§
      {
         return m_contactList;
      }
      
      public function §\x12\x15§() : b2Body
      {
         return m_next;
      }
      
      public function GetUserData() : *
      {
         return m_userData;
      }
      
      public function §\n\x11§(param1:*) : void
      {
         m_userData = param1;
      }
      
      public function §\x11\x17§() : b2World
      {
         return m_world;
      }
      
      b2internal function §\t\r§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:§\x1d\x04§ = s_xf1;
         _loc1_.R.Set(m_sweep.a0);
         §§push(_loc1_.R);
         if(false)
         {
            return;
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Vec2 = m_sweep.localCenter;
         _loc1_.position.x = m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         if(false)
         {
            return;
         }
         _loc1_.position.y = m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§\x11\x06§ = m_world.m_contactManager.m_broadPhase;
         _loc4_ = m_fixtureList;
         while(_loc4_)
         {
            _loc4_.§\t\x0e§(_loc5_,_loc1_,m_xf);
            _loc4_ = _loc4_.m_next;
         }
      }
      
      b2internal function §\t\f§() : void
      {
         m_xf.R.Set(m_sweep.a);
         var _loc1_:b2Mat22 = m_xf.R;
         var _loc2_:b2Vec2 = m_sweep.localCenter;
         m_xf.position.x = m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         §§push(m_xf.position);
         §§push(m_sweep.c.y);
         §§push(_loc1_.col1.y * _loc2_.x);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop() - (§§pop() + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §\n\b§(param1:b2Body) : Boolean
      {
         var _temp_1:* = m_type != b2_dynamicBody;
         §§push(_temp_1);
         if(_temp_1)
         {
            §§pop();
            §§push(param1.m_type != b2_dynamicBody);
            if(false)
            {
               throw true;
            }
         }
         if(!§§pop())
         {
            var _loc2_:§\x1d\x14§ = m_jointList;
            while(_loc2_)
            {
               if(_loc2_.other == param1)
               {
                  if(_loc2_.joint.m_collideConnected == false)
                  {
                     return false;
                  }
               }
               _loc2_ = _loc2_.next;
            }
            return true;
         }
         return false;
      }
      
      b2internal function Advance(param1:Number) : void
      {
         m_sweep.Advance(param1);
         §§push(m_sweep.c);
         §§push(m_sweep);
         if(false)
         {
            return;
         }
         §§pop().SetV(§§pop().c0);
         m_sweep.a = m_sweep.a0;
         §\t\f§();
      }
   }
}


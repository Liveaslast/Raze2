package §\x1c\x10§
{
   import §\x0e\r§.*;
   import §\x1c\x11§.§\x1e\b§;
   import §\x1c\x11§.§\x1e\t§;
   import §\x1c\x12§.§\x1e\x11§;
   import §\x1c\x12§.§\x1e\x13§;
   import §\x1c\x12§.b2Contact;
   import §\x1c\x13§.*;
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
   
   public class §\x1d\x18§ extends b2Joint
   {
      
      private var m_ground1:b2Body;
      
      private var m_ground2:b2Body;
      
      private var m_revolute1:b2RevoluteJoint;
      
      private var m_prismatic1:b2PrismaticJoint;
      
      private var m_revolute2:b2RevoluteJoint;
      
      private var m_prismatic2:b2PrismaticJoint;
      
      private var m_groundAnchor1:b2Vec2 = new b2Vec2();
      
      private var m_groundAnchor2:b2Vec2 = new b2Vec2();
      
      private var m_localAnchor1:b2Vec2 = new b2Vec2();
      
      private var m_localAnchor2:b2Vec2 = new b2Vec2();
      
      private var m_J:§\x1d\x16§ = new §\x1d\x16§();
      
      private var m_constant:Number;
      
      private var m_ratio:Number;
      
      private var m_mass:Number;
      
      private var m_impulse:Number;
      
      public function §\x1d\x18§(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(false)
         {
            return;
         }
         super(param1);
         var _loc2_:int = param1.joint1.m_type;
         var _loc3_:int = param1.joint2.m_type;
         §§push(§§findproperty(m_revolute1));
         if(false)
         {
            return;
         }
         §§pop().m_revolute1 = null;
         m_prismatic1 = null;
         m_revolute2 = null;
         m_prismatic2 = null;
         m_ground1 = param1.joint1.GetBodyA();
         b2internal::m_bodyA = param1.joint1.GetBodyB();
         if(_loc2_ != b2Joint.e_revoluteJoint)
         {
            m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            m_groundAnchor1.SetV(m_prismatic1.m_localAnchor1);
            §§push(m_localAnchor1);
            §§push(m_prismatic1);
            if(false)
            {
               return;
            }
            §§pop().SetV(§§pop().b2internal::m_localAnchor2);
            _loc4_ = m_prismatic1.§\x13\x10§();
         }
         else
         {
            m_revolute1 = param1.joint1 as b2RevoluteJoint;
            if(false)
            {
               return;
            }
            m_groundAnchor1.SetV(m_revolute1.m_localAnchor1);
            m_localAnchor1.SetV(m_revolute1.m_localAnchor2);
            _loc4_ = m_revolute1.§\x13\x14§();
         }
         m_ground2 = param1.joint2.GetBodyA();
         b2internal::m_bodyB = param1.joint2.GetBodyB();
         if(_loc3_ != b2Joint.e_revoluteJoint)
         {
            m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            m_groundAnchor2.SetV(m_prismatic2.m_localAnchor1);
            m_localAnchor2.SetV(m_prismatic2.m_localAnchor2);
            _loc5_ = m_prismatic2.§\x13\x10§();
         }
         else
         {
            m_revolute2 = param1.joint2 as b2RevoluteJoint;
            m_groundAnchor2.SetV(m_revolute2.m_localAnchor1);
            m_localAnchor2.SetV(m_revolute2.m_localAnchor2);
            if(false)
            {
               return;
            }
            _loc5_ = m_revolute2.§\x13\x14§();
         }
         m_ratio = param1.ratio;
         m_constant = _loc4_ + m_ratio * _loc5_;
         m_impulse = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return m_bodyA.§\x11\x15§(m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return m_bodyB.§\x11\x15§(m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         §§push(§§findproperty(b2Vec2));
         §§push(param1 * m_impulse * m_J.linearB.x);
         §§push(param1 * m_impulse);
         §§push(m_J);
         if(false)
         {
            return;
         }
         return new §§pop().b2Vec2(§§pop(),§§pop() * §§pop().linearB.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = m_bodyB.m_xf.R;
         var _loc3_:Number = m_localAnchor1.x - m_bodyB.m_sweep.localCenter.x;
         §§push(m_localAnchor1.y);
         §§push(m_bodyB);
         if(false)
         {
            throw true;
         }
         var _loc4_:Number = §§pop() - §§pop().b2internal::m_sweep.localCenter.y;
         §§push(_loc2_.col1.x);
         §§push(_loc3_);
         if(false)
         {
            return;
         }
         var _loc5_:Number = §§pop() * §§pop() + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = m_impulse * m_J.linearB.x;
         var _loc7_:Number = m_impulse * m_J.linearB.y;
         §§push(param1);
         if(false)
         {
            throw true;
         }
         return §§pop() * (m_impulse * m_J.angularB - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §\x12\x0b§() : Number
      {
         return m_ratio;
      }
      
      public function §\n\x1d§(param1:Number) : void
      {
         m_ratio = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:§\x1d\x06§) : void
      {
         var _loc4_:b2Body = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:b2Body = m_ground1;
         §§push(m_ground2);
         if(false)
         {
            return false;
         }
         var _loc3_:* = §§pop();
         _loc4_ = m_bodyA;
         var _loc5_:b2Body = m_bodyB;
         var _loc14_:Number = 0;
         m_J.SetZero();
         if(!m_revolute1)
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = m_prismatic1.m_localXAxis1;
            §§push(_loc10_);
            if(false)
            {
               return false;
            }
            _loc6_ = §§pop().col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            §§push(_loc10_.col1.y * _loc11_.x);
            §§push(_loc10_.col2.y);
            §§push(_loc11_);
            if(false)
            {
               return false;
            }
            _loc7_ = §§pop() + §§pop() * §§pop().y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            §§push(_loc10_.col1.y * _loc8_);
            if(false)
            {
               return false;
            }
            _loc9_ = §§pop() + _loc10_.col2.y * _loc9_;
            _loc8_ = _loc13_;
            _loc12_ = _loc8_ * _loc7_ - _loc9_ * _loc6_;
            m_J.linearA.Set(-_loc6_,-_loc7_);
            m_J.angularA = -_loc12_;
            §§push(_loc14_);
            §§push(_loc4_.m_invMass);
            §§push(_loc4_.m_invI);
            if(false)
            {
               return;
            }
            _loc14_ = §§pop() + (§§pop() + §§pop() * _loc12_ * _loc12_);
         }
         else
         {
            m_J.angularA = -1;
            _loc14_ += _loc4_.m_invI;
         }
         if(!m_revolute2)
         {
            _loc10_ = _loc3_.b2internal::m_xf.R;
            _loc11_ = m_prismatic2.m_localXAxis1;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            §§push(_loc10_.col1.y * _loc11_.x);
            §§push(_loc10_.col2.y);
            §§push(_loc11_);
            if(false)
            {
               return;
            }
            _loc7_ = §§pop() + §§pop() * §§pop().y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            §§push(m_localAnchor2.y);
            §§push(_loc5_);
            if(false)
            {
               return;
            }
            _loc9_ = §§pop() - §§pop().b2internal::m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc8_ = _loc13_;
            _loc12_ = _loc8_ * _loc7_ - _loc9_ * _loc6_;
            m_J.linearB.Set(-m_ratio * _loc6_,-m_ratio * _loc7_);
            m_J.angularB = -m_ratio * _loc12_;
            _loc14_ += m_ratio * m_ratio * (_loc5_.m_invMass + _loc5_.m_invI * _loc12_ * _loc12_);
         }
         else
         {
            m_J.angularB = -m_ratio;
            if(false)
            {
               return;
            }
            _loc14_ += m_ratio * m_ratio * _loc5_.m_invI;
         }
         m_mass = _loc14_ <= 0 ? 0 : 1 / _loc14_;
         if(!param1.warmStarting)
         {
            m_impulse = 0;
         }
         else
         {
            _loc4_.m_linearVelocity.x += _loc4_.m_invMass * m_impulse * m_J.linearA.x;
            _loc4_.m_linearVelocity.y += _loc4_.m_invMass * m_impulse * m_J.linearA.y;
            _loc4_.m_angularVelocity += _loc4_.m_invI * m_impulse * m_J.angularA;
            _loc5_.m_linearVelocity.x += _loc5_.m_invMass * m_impulse * m_J.linearB.x;
            _loc5_.m_linearVelocity.y += _loc5_.m_invMass * m_impulse * m_J.linearB.y;
            _loc5_.m_angularVelocity += _loc5_.m_invI * m_impulse * m_J.angularB;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:§\x1d\x06§) : void
      {
         var _loc2_:b2Body = m_bodyA;
         var _loc3_:b2Body = m_bodyB;
         var _loc4_:Number = m_J.§\x1b\x17§(_loc2_.m_linearVelocity,_loc2_.m_angularVelocity,_loc3_.m_linearVelocity,_loc3_.m_angularVelocity);
         var _loc5_:Number = -m_mass * _loc4_;
         m_impulse += _loc5_;
         _loc2_.m_linearVelocity.x += _loc2_.m_invMass * _loc5_ * m_J.linearA.x;
         _loc2_.m_linearVelocity.y += _loc2_.m_invMass * _loc5_ * m_J.linearA.y;
         _loc2_.m_angularVelocity += _loc2_.m_invI * _loc5_ * m_J.angularA;
         _loc3_.m_linearVelocity.x += _loc3_.m_invMass * _loc5_ * m_J.linearB.x;
         §§push(_loc3_.m_linearVelocity);
         §§push(_loc3_.m_linearVelocity.y);
         §§push(_loc3_.m_invMass);
         §§push(_loc5_);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop() + §§pop() * §§pop() * m_J.linearB.y;
         _loc3_.m_angularVelocity += _loc3_.m_invI * _loc5_ * m_J.angularB;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:Number = 0;
         var _loc3_:b2Body = m_bodyA;
         var _loc4_:b2Body = m_bodyB;
         if(!m_revolute1)
         {
            _loc5_ = m_prismatic1.§\x13\x10§();
         }
         else
         {
            _loc5_ = m_revolute1.§\x13\x14§();
         }
         if(!m_revolute2)
         {
            _loc6_ = m_prismatic2.§\x13\x10§();
         }
         else
         {
            _loc6_ = m_revolute2.§\x13\x14§();
         }
         var _loc7_:Number = m_constant - (_loc5_ + m_ratio * _loc6_);
         var _loc8_:Number = -m_mass * _loc7_;
         §§push(_loc3_.m_sweep.c);
         §§push(_loc3_.m_sweep);
         if(false)
         {
            return;
         }
         §§push(§§pop().c.x);
         §§push(_loc3_.m_invMass * _loc8_);
         §§push(m_J);
         if(false)
         {
            throw true;
         }
         §§pop().x = §§pop() + §§pop() * §§pop().linearA.x;
         §§push(_loc3_.m_sweep.c);
         §§push(_loc3_.m_sweep.c.y);
         §§push(_loc3_.m_invMass);
         §§push(_loc8_);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop() + §§pop() * §§pop() * m_J.linearA.y;
         _loc3_.m_sweep.a += _loc3_.m_invI * _loc8_ * m_J.angularA;
         §§push(_loc4_.m_sweep.c);
         §§push(_loc4_);
         if(false)
         {
            return false;
         }
         §§pop().x = §§pop().b2internal::m_sweep.c.x + _loc4_.m_invMass * _loc8_ * m_J.linearB.x;
         §§push(_loc4_.m_sweep.c);
         if(false)
         {
            return;
         }
         §§pop().y = _loc4_.m_sweep.c.y + _loc4_.m_invMass * _loc8_ * m_J.linearB.y;
         _loc4_.m_sweep.a += _loc4_.m_invI * _loc8_ * m_J.angularB;
         _loc3_.§\t\f§();
         _loc4_.§\t\f§();
         §§push(_loc2_);
         §§push(b2Settings.b2_linearSlop);
         if(false)
         {
            return;
         }
         return §§pop() < §§pop();
      }
   }
}

§§push(§§findproperty(§\x1d\x18§));
if(false)
{
   return;
}


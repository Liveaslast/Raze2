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
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const b2_minPulleyLength:Number = 2;
      
      private var m_ground:b2Body;
      
      private var m_groundAnchor1:b2Vec2 = new b2Vec2();
      
      private var m_groundAnchor2:b2Vec2 = new b2Vec2();
      
      private var m_localAnchor1:b2Vec2 = new b2Vec2();
      
      private var m_localAnchor2:b2Vec2 = new b2Vec2();
      
      private var m_u1:b2Vec2 = new b2Vec2();
      
      private var m_u2:b2Vec2 = new b2Vec2();
      
      private var m_constant:Number;
      
      private var m_ratio:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var m_pulleyMass:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var m_impulse:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var m_state:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(false)
         {
            return;
         }
         super(param1);
         §§push(§§findproperty(m_ground));
         §§push(b2internal::m_bodyA.m_world);
         if(false)
         {
            return;
         }
         §§pop().m_ground = §§pop().b2internal::m_groundBody;
         m_groundAnchor1.x = param1.groundAnchorA.x - m_ground.m_xf.position.x;
         §§push(m_groundAnchor1);
         §§push(param1.groundAnchorA.y);
         §§push(m_ground.m_xf);
         if(false)
         {
            return false;
         }
         §§pop().y = §§pop() - §§pop().position.y;
         m_groundAnchor2.x = param1.groundAnchorB.x - m_ground.m_xf.position.x;
         m_groundAnchor2.y = param1.groundAnchorB.y - m_ground.m_xf.position.y;
         m_localAnchor1.SetV(param1.localAnchorA);
         m_localAnchor2.SetV(param1.localAnchorB);
         m_ratio = param1.ratio;
         m_constant = param1.lengthA + m_ratio * param1.lengthB;
         m_maxLength1 = b2Math.Min(param1.maxLengthA,m_constant - m_ratio * b2internal::b2_minPulleyLength);
         m_maxLength2 = b2Math.Min(param1.maxLengthB,(m_constant - b2internal::b2_minPulleyLength) / m_ratio);
         m_impulse = 0;
         §§push(§§findproperty(m_limitImpulse1));
         if(false)
         {
            throw true;
         }
         §§pop().m_limitImpulse1 = 0;
         m_limitImpulse2 = 0;
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
         return new b2Vec2(param1 * m_impulse * m_u2.x,param1 * m_impulse * m_u2.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function GetGroundAnchorA() : b2Vec2
      {
         var _loc1_:b2Vec2 = m_ground.m_xf.position.Copy();
         _loc1_.§\x1a§(m_groundAnchor1);
         return _loc1_;
      }
      
      public function §\x13\x17§() : b2Vec2
      {
         var _loc1_:b2Vec2 = m_ground.m_xf.position.Copy();
         _loc1_.§\x1a§(m_groundAnchor2);
         return _loc1_;
      }
      
      public function §\x13\x0e§() : Number
      {
         var _loc1_:b2Vec2 = m_bodyA.§\x11\x15§(m_localAnchor1);
         var _loc2_:Number = m_ground.m_xf.position.x + m_groundAnchor1.x;
         var _loc3_:Number = m_ground.m_xf.position.y + m_groundAnchor1.y;
         var _loc4_:Number = _loc1_.x - _loc2_;
         var _loc5_:Number = _loc1_.y - _loc3_;
         return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
      }
      
      public function §\x13\r§() : Number
      {
         var _loc1_:b2Vec2 = m_bodyB.§\x11\x15§(m_localAnchor2);
         §§push(m_ground.m_xf.position.x);
         §§push(m_groundAnchor2.x);
         if(false)
         {
            return;
         }
         var _loc2_:Number = §§pop() + §§pop();
         var _loc3_:Number = m_ground.m_xf.position.y + m_groundAnchor2.y;
         var _loc4_:Number = _loc1_.x - _loc2_;
         var _loc5_:Number = _loc1_.y - _loc3_;
         §§push(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_));
         if(false)
         {
            return;
         }
         return §§pop();
      }
      
      public function §\x12\x0b§() : Number
      {
         return m_ratio;
      }
      
      override b2internal function InitVelocityConstraints(param1:§\x1d\x06§) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         if(false)
         {
            return false;
         }
         var _loc4_:* = null;
         var _loc6_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         _loc2_ = m_bodyA;
         §§push(m_bodyB);
         if(false)
         {
            throw true;
         }
         _loc3_ = §§pop();
         _loc4_ = _loc2_.m_xf.R;
         var _loc5_:Number = m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
         _loc6_ = m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
         var _loc7_:Number = _loc4_.col1.x * _loc5_ + _loc4_.col2.x * _loc6_;
         _loc6_ = _loc4_.col1.y * _loc5_ + _loc4_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         §§push(_loc3_.m_xf.R);
         if(false)
         {
            return false;
         }
         _loc4_ = §§pop();
         var _loc8_:Number = m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
         var _loc9_:Number = m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
         _loc7_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         §§push(_loc4_.col1.y);
         if(false)
         {
            throw true;
         }
         §§push(§§pop() * _loc8_ + _loc4_.col2.y * _loc9_);
         if(false)
         {
            throw true;
         }
         _loc9_ = §§pop();
         _loc8_ = _loc7_;
         §§push(_loc2_.m_sweep.c.x);
         if(false)
         {
            return;
         }
         var _loc10_:Number = §§pop() + _loc5_;
         var _loc11_:Number = _loc2_.m_sweep.c.y + _loc6_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc9_;
         var _loc14_:Number = m_ground.m_xf.position.x + m_groundAnchor1.x;
         var _loc15_:Number = m_ground.m_xf.position.y + m_groundAnchor1.y;
         §§push(m_ground.m_xf.position.x);
         §§push(m_groundAnchor2);
         if(false)
         {
            return false;
         }
         var _loc16_:Number = §§pop() + §§pop().x;
         var _loc17_:Number = m_ground.m_xf.position.y + m_groundAnchor2.y;
         m_u1.Set(_loc10_ - _loc14_,_loc11_ - _loc15_);
         §§push(m_u2);
         §§push(_loc12_ - _loc16_);
         §§push(_loc13_);
         if(false)
         {
            return;
         }
         §§pop().Set(§§pop(),§§pop() - _loc17_);
         var _loc18_:Number = m_u1.Length();
         if(false)
         {
            throw true;
         }
         var _loc19_:Number = m_u2.Length();
         if(_loc18_ <= b2Settings.b2_linearSlop)
         {
            §§push(m_u1);
            if(false)
            {
               return;
            }
            §§pop().SetZero();
         }
         else
         {
            m_u1.Multiply(1 / _loc18_);
         }
         if(_loc19_ <= b2Settings.b2_linearSlop)
         {
            m_u2.SetZero();
         }
         else
         {
            m_u2.Multiply(1 / _loc19_);
            if(false)
            {
               return;
            }
         }
         var _loc20_:Number = m_constant - _loc18_ - m_ratio * _loc19_;
         if(_loc20_ <= 0)
         {
            m_state = e_atUpperLimit;
         }
         else
         {
            m_state = e_inactiveLimit;
            m_impulse = 0;
         }
         if(_loc18_ >= m_maxLength1)
         {
            m_limitState1 = e_atUpperLimit;
         }
         else
         {
            m_limitState1 = e_inactiveLimit;
            m_limitImpulse1 = 0;
         }
         if(_loc19_ >= m_maxLength2)
         {
            m_limitState2 = e_atUpperLimit;
         }
         else
         {
            m_limitState2 = e_inactiveLimit;
            m_limitImpulse2 = 0;
         }
         §§push(_loc5_);
         §§push(m_u1.y);
         if(false)
         {
            return false;
         }
         var _loc21_:Number = §§pop() * §§pop() - _loc6_ * m_u1.x;
         if(false)
         {
            return;
         }
         §§push(_loc8_ * m_u2.y);
         §§push(_loc9_);
         §§push(m_u2.x);
         if(false)
         {
            return false;
         }
         var _loc22_:Number = §§pop() - §§pop() * §§pop();
         m_limitMass1 = _loc2_.m_invMass + _loc2_.m_invI * _loc21_ * _loc21_;
         m_limitMass2 = _loc3_.m_invMass + _loc3_.m_invI * _loc22_ * _loc22_;
         m_pulleyMass = m_limitMass1 + m_ratio * m_ratio * m_limitMass2;
         m_limitMass1 = 1 / m_limitMass1;
         m_limitMass2 = 1 / m_limitMass2;
         §§push(§§findproperty(m_pulleyMass));
         if(false)
         {
            throw true;
         }
         §§pop().m_pulleyMass = 1 / m_pulleyMass;
         if(!param1.warmStarting)
         {
            m_impulse = 0;
            m_limitImpulse1 = 0;
            m_limitImpulse2 = 0;
         }
         else
         {
            m_impulse *= param1.dtRatio;
            m_limitImpulse1 *= param1.dtRatio;
            m_limitImpulse2 *= param1.dtRatio;
            _loc23_ = (-m_impulse - m_limitImpulse1) * m_u1.x;
            _loc24_ = (-m_impulse - m_limitImpulse1) * m_u1.y;
            _loc25_ = (-m_ratio * m_impulse - m_limitImpulse2) * m_u2.x;
            §§push(-m_ratio * m_impulse);
            §§push(m_limitImpulse2);
            if(false)
            {
               return;
            }
            _loc26_ = (§§pop() - §§pop()) * m_u2.y;
            _loc2_.m_linearVelocity.x += _loc2_.m_invMass * _loc23_;
            §§push(_loc2_.m_linearVelocity);
            §§push(_loc2_);
            if(false)
            {
               return;
            }
            §§pop().y = §§pop().b2internal::m_linearVelocity.y + _loc2_.m_invMass * _loc24_;
            §§push(_loc2_);
            §§push(_loc2_.m_angularVelocity);
            §§push(_loc2_);
            if(false)
            {
               return;
            }
            §§pop().b2internal::m_angularVelocity = §§pop() + §§pop().b2internal::m_invI * (_loc5_ * _loc24_ - _loc6_ * _loc23_);
            _loc3_.m_linearVelocity.x += _loc3_.m_invMass * _loc25_;
            _loc3_.m_linearVelocity.y += _loc3_.m_invMass * _loc26_;
            _loc3_.m_angularVelocity += _loc3_.m_invI * (_loc8_ * _loc26_ - _loc9_ * _loc25_);
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:§\x1d\x06§) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc2_:b2Body = m_bodyA;
         if(false)
         {
            return;
         }
         var _loc3_:b2Body = m_bodyB;
         _loc4_ = _loc2_.m_xf.R;
         var _loc5_:Number = m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
         var _loc6_:Number = m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
         var _loc7_:Number = _loc4_.col1.x * _loc5_ + _loc4_.col2.x * _loc6_;
         _loc6_ = _loc4_.col1.y * _loc5_ + _loc4_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc8_:Number = m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
         var _loc9_:Number = m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
         _loc7_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         if(m_state == e_atUpperLimit)
         {
            §§push(_loc2_.m_linearVelocity.x);
            §§push(-_loc2_.m_angularVelocity);
            §§push(_loc6_);
            if(false)
            {
               return false;
            }
            _loc10_ = §§pop() + §§pop() * §§pop();
            _loc11_ = _loc2_.m_linearVelocity.y + _loc2_.m_angularVelocity * _loc5_;
            §§push(_loc3_);
            if(false)
            {
               throw true;
            }
            §§push(§§pop().b2internal::m_linearVelocity.x + -_loc3_.m_angularVelocity * _loc9_);
            if(false)
            {
               return false;
            }
            _loc12_ = §§pop();
            _loc13_ = _loc3_.m_linearVelocity.y + _loc3_.m_angularVelocity * _loc8_;
            §§push(-(m_u1.x * _loc10_ + m_u1.y * _loc11_));
            §§push(m_ratio);
            §§push(m_u2.x * _loc12_);
            §§push(m_u2.y);
            §§push(_loc13_);
            if(false)
            {
               return false;
            }
            _loc18_ = §§pop() - §§pop() * (§§pop() + §§pop() * §§pop());
            _loc19_ = m_pulleyMass * -_loc18_;
            _loc20_ = m_impulse;
            m_impulse = b2Math.Max(0,m_impulse + _loc19_);
            var _temp_1:* = m_impulse - _loc20_;
            _loc19_ = m_impulse - _loc20_;
            _loc14_ = -_loc19_ * m_u1.x;
            _loc15_ = -_loc19_ * m_u1.y;
            §§push(-m_ratio);
            §§push(_loc19_);
            if(false)
            {
               return;
            }
            _loc16_ = §§pop() * §§pop() * m_u2.x;
            _loc17_ = -m_ratio * _loc19_ * m_u2.y;
            _loc2_.m_linearVelocity.x += _loc2_.m_invMass * _loc14_;
            _loc2_.m_linearVelocity.y += _loc2_.m_invMass * _loc15_;
            _loc2_.m_angularVelocity += _loc2_.m_invI * (_loc5_ * _loc15_ - _loc6_ * _loc14_);
            §§push(_loc3_.m_linearVelocity);
            §§push(_loc3_.m_linearVelocity);
            if(false)
            {
               return;
            }
            §§pop().x = §§pop().x + _loc3_.m_invMass * _loc16_;
            _loc3_.m_linearVelocity.y += _loc3_.m_invMass * _loc17_;
            §§push(_loc3_);
            §§push(_loc3_.m_angularVelocity);
            §§push(_loc3_.m_invI);
            §§push(_loc8_ * _loc17_);
            §§push(_loc9_ * _loc16_);
            if(false)
            {
               return false;
            }
            §§pop().b2internal::m_angularVelocity = §§pop() + §§pop() * (§§pop() - §§pop());
         }
         if(m_limitState1 == e_atUpperLimit)
         {
            _loc10_ = _loc2_.m_linearVelocity.x + -_loc2_.m_angularVelocity * _loc6_;
            _loc11_ = _loc2_.m_linearVelocity.y + _loc2_.m_angularVelocity * _loc5_;
            _loc18_ = -(m_u1.x * _loc10_ + m_u1.y * _loc11_);
            _loc19_ = -m_limitMass1 * _loc18_;
            _loc20_ = m_limitImpulse1;
            m_limitImpulse1 = b2Math.Max(0,m_limitImpulse1 + _loc19_);
            var _temp_2:* = m_limitImpulse1 - _loc20_;
            _loc19_ = m_limitImpulse1 - _loc20_;
            §§push(-_loc19_ * m_u1.x);
            if(false)
            {
               return;
            }
            _loc14_ = §§pop();
            _loc15_ = -_loc19_ * m_u1.y;
            _loc2_.m_linearVelocity.x += _loc2_.m_invMass * _loc14_;
            _loc2_.m_linearVelocity.y += _loc2_.m_invMass * _loc15_;
            _loc2_.m_angularVelocity += _loc2_.m_invI * (_loc5_ * _loc15_ - _loc6_ * _loc14_);
         }
         if(m_limitState2 == e_atUpperLimit)
         {
            §§push(_loc3_.m_linearVelocity.x);
            §§push(-_loc3_.m_angularVelocity);
            if(false)
            {
               throw true;
            }
            _loc12_ = §§pop() + §§pop() * _loc9_;
            §§push(_loc3_.m_linearVelocity.y + _loc3_.m_angularVelocity * _loc8_);
            if(false)
            {
               return false;
            }
            _loc13_ = §§pop();
            _loc18_ = -(m_u2.x * _loc12_ + m_u2.y * _loc13_);
            _loc19_ = -m_limitMass2 * _loc18_;
            _loc20_ = m_limitImpulse2;
            m_limitImpulse2 = b2Math.Max(0,m_limitImpulse2 + _loc19_);
            _loc19_ = m_limitImpulse2 - _loc20_;
            _loc16_ = -_loc19_ * m_u2.x;
            _loc17_ = -_loc19_ * m_u2.y;
            _loc3_.m_linearVelocity.x += _loc3_.m_invMass * _loc16_;
            _loc3_.m_linearVelocity.y += _loc3_.m_invMass * _loc17_;
            §§push(_loc3_);
            §§push(_loc3_.m_angularVelocity);
            §§push(_loc3_.m_invI * (_loc8_ * _loc17_ - _loc9_ * _loc16_));
            if(false)
            {
               return;
            }
            §§pop().b2internal::m_angularVelocity = §§pop() + §§pop();
         }
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc4_:b2Mat22 = null;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc2_:b2Body = m_bodyA;
         var _loc3_:b2Body = m_bodyB;
         §§push(m_ground.m_xf.position.x);
         §§push(m_groundAnchor1);
         if(false)
         {
            return;
         }
         var _loc5_:Number = §§pop() + §§pop().x;
         var _loc6_:Number = m_ground.m_xf.position.y + m_groundAnchor1.y;
         var _loc7_:Number = m_ground.m_xf.position.x + m_groundAnchor2.x;
         var _loc8_:Number = m_ground.m_xf.position.y + m_groundAnchor2.y;
         var _loc24_:Number = 0;
         if(m_state == e_atUpperLimit)
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc9_ = m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc10_ = m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc23_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc23_;
            _loc4_ = _loc3_.m_xf.R;
            §§push(m_localAnchor2.x);
            if(false)
            {
               return;
            }
            _loc11_ = §§pop() - _loc3_.m_sweep.localCenter.x;
            _loc12_ = m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            §§push(_loc4_.col1.x * _loc11_);
            §§push(_loc4_.col2.x * _loc12_);
            if(false)
            {
               return false;
            }
            _loc23_ = §§pop() + §§pop();
            _loc12_ = _loc4_.col1.y * _loc11_ + _loc4_.col2.y * _loc12_;
            _loc11_ = _loc23_;
            §§push(_loc2_);
            if(false)
            {
               return;
            }
            _loc13_ = §§pop().b2internal::m_sweep.c.x + _loc9_;
            _loc14_ = _loc2_.m_sweep.c.y + _loc10_;
            _loc15_ = _loc3_.m_sweep.c.x + _loc11_;
            _loc16_ = _loc3_.m_sweep.c.y + _loc12_;
            m_u1.Set(_loc13_ - _loc5_,_loc14_ - _loc6_);
            §§push(m_u2);
            if(false)
            {
               return;
            }
            §§pop().Set(_loc15_ - _loc7_,_loc16_ - _loc8_);
            _loc17_ = m_u1.Length();
            _loc18_ = m_u2.Length();
            if(_loc17_ <= b2Settings.b2_linearSlop)
            {
               m_u1.SetZero();
            }
            else
            {
               m_u1.Multiply(1 / _loc17_);
            }
            if(_loc18_ <= b2Settings.b2_linearSlop)
            {
               m_u2.SetZero();
            }
            else
            {
               m_u2.Multiply(1 / _loc18_);
            }
            §§push(m_constant - _loc17_);
            §§push(m_ratio * _loc18_);
            if(false)
            {
               return false;
            }
            _loc19_ = §§pop() - §§pop();
            _loc24_ = b2Math.Max(_loc24_,-_loc19_);
            §§push(b2Math);
            §§push(_loc19_);
            §§push(b2Settings.b2_linearSlop);
            if(false)
            {
               return;
            }
            _loc19_ = Number(§§pop().Clamp(§§pop() + §§pop(),-b2Settings.b2_maxLinearCorrection,0));
            §§push(m_pulleyMass);
            if(false)
            {
               return;
            }
            var _temp_1:* = -§§pop() * _loc19_;
            _loc20_ = -§§pop() * _loc19_;
            _loc13_ = -_loc20_ * m_u1.x;
            _loc14_ = -_loc20_ * m_u1.y;
            if(false)
            {
               throw true;
            }
            _loc15_ = -m_ratio * _loc20_ * m_u2.x;
            _loc16_ = -m_ratio * _loc20_ * m_u2.y;
            _loc2_.m_sweep.c.x += _loc2_.m_invMass * _loc13_;
            §§push(_loc2_.m_sweep.c);
            §§push(_loc2_.m_sweep.c.y);
            §§push(_loc2_.m_invMass * _loc14_);
            if(false)
            {
               return;
            }
            §§pop().y = §§pop() + §§pop();
            _loc2_.m_sweep.a += _loc2_.m_invI * (_loc9_ * _loc14_ - _loc10_ * _loc13_);
            _loc3_.m_sweep.c.x += _loc3_.m_invMass * _loc15_;
            _loc3_.m_sweep.c.y += _loc3_.m_invMass * _loc16_;
            §§push(_loc3_.m_sweep);
            §§push(_loc3_.m_sweep.a);
            §§push(_loc3_.m_invI);
            §§push(_loc11_);
            §§push(_loc16_);
            if(false)
            {
               return;
            }
            §§pop().a = §§pop() + §§pop() * (§§pop() * §§pop() - _loc12_ * _loc15_);
            _loc2_.§\t\f§();
            _loc3_.§\t\f§();
         }
         if(m_limitState1 == e_atUpperLimit)
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc9_ = m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc10_ = m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc23_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            §§push(_loc23_);
            if(false)
            {
               return;
            }
            _loc9_ = §§pop();
            _loc13_ = _loc2_.m_sweep.c.x + _loc9_;
            §§push(_loc2_.m_sweep.c.y);
            §§push(_loc10_);
            if(false)
            {
               throw true;
            }
            _loc14_ = §§pop() + §§pop();
            m_u1.Set(_loc13_ - _loc5_,_loc14_ - _loc6_);
            §§push(m_u1.Length());
            if(false)
            {
               return;
            }
            _loc17_ = §§pop();
            if(_loc17_ <= b2Settings.b2_linearSlop)
            {
               §§push(m_u1);
               if(false)
               {
                  return;
               }
               §§pop().SetZero();
            }
            else
            {
               m_u1.x *= 1 / _loc17_;
               m_u1.y *= 1 / _loc17_;
            }
            _loc19_ = m_maxLength1 - _loc17_;
            _loc24_ = b2Math.Max(_loc24_,-_loc19_);
            §§push(b2Math);
            §§push(_loc19_ + b2Settings.b2_linearSlop);
            §§push(b2Settings);
            if(false)
            {
               throw true;
            }
            _loc19_ = Number(§§pop().Clamp(§§pop(),-§§pop().b2_maxLinearCorrection,0));
            §§push(-m_limitMass1);
            §§push(_loc19_);
            if(false)
            {
               return;
            }
            _loc20_ = §§pop() * §§pop();
            _loc13_ = -_loc20_ * m_u1.x;
            _loc14_ = -_loc20_ * m_u1.y;
            _loc2_.m_sweep.c.x += _loc2_.m_invMass * _loc13_;
            _loc2_.m_sweep.c.y += _loc2_.m_invMass * _loc14_;
            §§push(_loc2_.m_sweep);
            §§push(_loc2_.m_sweep.a);
            if(false)
            {
               return;
            }
            §§pop().a = §§pop() + _loc2_.m_invI * (_loc9_ * _loc14_ - _loc10_ * _loc13_);
            _loc2_.§\t\f§();
         }
         if(m_limitState2 == e_atUpperLimit)
         {
            _loc4_ = _loc3_.m_xf.R;
            _loc11_ = m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc12_ = m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc23_ = _loc4_.col1.x * _loc11_ + _loc4_.col2.x * _loc12_;
            §§push(_loc4_.col1.y);
            §§push(_loc11_);
            if(false)
            {
               throw true;
            }
            _loc12_ = §§pop() * §§pop() + _loc4_.col2.y * _loc12_;
            _loc11_ = _loc23_;
            _loc15_ = _loc3_.m_sweep.c.x + _loc11_;
            _loc16_ = _loc3_.m_sweep.c.y + _loc12_;
            m_u2.Set(_loc15_ - _loc7_,_loc16_ - _loc8_);
            _loc18_ = m_u2.Length();
            if(_loc18_ <= b2Settings.b2_linearSlop)
            {
               m_u2.SetZero();
            }
            else
            {
               m_u2.x *= 1 / _loc18_;
               m_u2.y *= 1 / _loc18_;
            }
            _loc19_ = m_maxLength2 - _loc18_;
            _loc24_ = b2Math.Max(_loc24_,-_loc19_);
            _loc19_ = b2Math.Clamp(_loc19_ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
            _loc20_ = -m_limitMass2 * _loc19_;
            _loc15_ = -_loc20_ * m_u2.x;
            §§push(_loc20_);
            if(false)
            {
               return;
            }
            _loc16_ = -§§pop() * m_u2.y;
            _loc3_.m_sweep.c.x += _loc3_.m_invMass * _loc15_;
            _loc3_.m_sweep.c.y += _loc3_.m_invMass * _loc16_;
            _loc3_.m_sweep.a += _loc3_.m_invI * (_loc11_ * _loc16_ - _loc12_ * _loc15_);
            _loc3_.§\t\f§();
         }
         return _loc24_ < b2Settings.b2_linearSlop;
      }
   }
}


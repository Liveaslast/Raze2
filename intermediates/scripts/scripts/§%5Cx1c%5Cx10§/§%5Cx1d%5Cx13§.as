package §\x1c\x10§
{
   import §\x0e\r§.*;
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
   import flash.text.TextFormat;
   
   use namespace b2internal;
   
   public class §\x1d\x13§ extends b2Joint
   {
      
      b2internal var m_localAnchor1:b2Vec2 = new b2Vec2();
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var m_localXAxis1:b2Vec2;
      
      private var m_localYAxis1:b2Vec2;
      
      private var m_axis:b2Vec2;
      
      private var m_perp:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var m_K:b2Mat22;
      
      private var m_impulse:b2Vec2;
      
      private var m_motorMass:Number;
      
      private var m_motorImpulse:Number;
      
      private var m_lowerTranslation:Number;
      
      private var m_upperTranslation:Number;
      
      private var m_maxMotorForce:Number;
      
      private var m_motorSpeed:Number;
      
      private var m_enableLimit:Boolean;
      
      private var m_enableMotor:Boolean;
      
      private var m_limitState:int;
      
      public function §\x1d\x13§(param1:b2LineJointDef)
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(false)
         {
            throw true;
         }
         b2internal::m_localAnchor2 = new b2Vec2();
         b2internal::m_localXAxis1 = new b2Vec2();
         m_localYAxis1 = new b2Vec2();
         §§push(§§findproperty(m_axis));
         if(false)
         {
            return;
         }
         §§pop().m_axis = new b2Vec2();
         m_perp = new b2Vec2();
         m_K = new b2Mat22();
         m_impulse = new b2Vec2();
         super(param1);
         b2internal::m_localAnchor1.SetV(param1.localAnchorA);
         b2internal::m_localAnchor2.SetV(param1.localAnchorB);
         b2internal::m_localXAxis1.SetV(param1.localAxisA);
         m_localYAxis1.x = -b2internal::m_localXAxis1.y;
         m_localYAxis1.y = b2internal::m_localXAxis1.x;
         m_impulse.SetZero();
         m_motorMass = 0;
         m_motorImpulse = 0;
         m_lowerTranslation = param1.lowerTranslation;
         m_upperTranslation = param1.upperTranslation;
         m_maxMotorForce = param1.maxMotorForce;
         m_motorSpeed = param1.motorSpeed;
         m_enableLimit = param1.enableLimit;
         m_enableMotor = param1.enableMotor;
         m_limitState = b2internal::e_inactiveLimit;
         m_axis.SetZero();
         m_perp.SetZero();
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
         §§push(param1 * (m_impulse.x * m_perp.x + (m_motorImpulse + m_impulse.y) * m_axis.x));
         §§push(param1);
         §§push(m_impulse.x * m_perp.y);
         §§push(m_motorImpulse);
         if(false)
         {
            return;
         }
         return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + (§§pop() + m_impulse.y) * m_axis.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * m_impulse.y;
      }
      
      public function §\x13\x10§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = m_bodyA;
         §§push(m_bodyB);
         if(false)
         {
            return;
         }
         var _loc2_:b2Body = §§pop();
         var _loc4_:b2Vec2 = _loc1_.§\x11\x15§(m_localAnchor1);
         var _loc5_:b2Vec2 = _loc2_.§\x11\x15§(m_localAnchor2);
         var _loc6_:Number = _loc5_.x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2 = _loc1_.§\x11\x14§(m_localXAxis1);
         §§push(_loc8_);
         if(false)
         {
            return false;
         }
         return §§pop().x * _loc6_ + _loc8_.y * _loc7_;
      }
      
      public function §\x13\x11§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = m_bodyA;
         §§push(m_bodyB);
         if(false)
         {
            return;
         }
         var _loc2_:b2Body = §§pop();
         _loc3_ = _loc1_.m_xf.R;
         var _loc4_:Number = m_localAnchor1.x - _loc1_.m_sweep.localCenter.x;
         var _loc5_:Number = m_localAnchor1.y - _loc1_.m_sweep.localCenter.y;
         var _loc6_:Number = _loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_;
         _loc5_ = _loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_;
         _loc4_ = _loc6_;
         _loc3_ = _loc2_.m_xf.R;
         var _loc7_:Number = m_localAnchor2.x - _loc2_.m_sweep.localCenter.x;
         var _loc8_:Number = m_localAnchor2.y - _loc2_.m_sweep.localCenter.y;
         _loc6_ = _loc3_.col1.x * _loc7_ + _loc3_.col2.x * _loc8_;
         §§push(_loc3_.col1.y * _loc7_);
         §§push(_loc3_.col2.y);
         §§push(_loc8_);
         if(false)
         {
            return;
         }
         _loc8_ = §§pop() + §§pop() * §§pop();
         _loc7_ = _loc6_;
         var _loc9_:Number = _loc1_.m_sweep.c.x + _loc4_;
         var _loc10_:Number = _loc1_.m_sweep.c.y + _loc5_;
         var _loc11_:Number = _loc2_.m_sweep.c.x + _loc7_;
         var _loc12_:Number = _loc2_.m_sweep.c.y + _loc8_;
         §§push(_loc11_ - _loc9_);
         if(false)
         {
            return;
         }
         var _loc13_:* = §§pop();
         var _loc14_:Number = _loc12_ - _loc10_;
         var _loc15_:b2Vec2 = _loc1_.§\x11\x14§(m_localXAxis1);
         §§push(_loc1_);
         if(false)
         {
            return;
         }
         var _loc16_:b2Vec2 = §§pop().b2internal::m_linearVelocity;
         var _loc17_:b2Vec2 = _loc2_.m_linearVelocity;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         §§push(_loc13_);
         if(false)
         {
            return;
         }
         return §§pop() * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_));
      }
      
      public function §\x10\x14§() : Boolean
      {
         return m_enableLimit;
      }
      
      public function §\x1a\x02§(param1:Boolean) : void
      {
         m_bodyA.SetAwake(true);
         m_bodyB.SetAwake(true);
         m_enableLimit = param1;
      }
      
      public function §\x13\x03§() : Number
      {
         return m_lowerTranslation;
      }
      
      public function §\x12\x01§() : Number
      {
         return m_upperTranslation;
      }
      
      public function §\x0b\x15§(param1:Number, param2:Number) : void
      {
         m_bodyA.SetAwake(true);
         m_bodyB.SetAwake(true);
         m_lowerTranslation = param1;
         m_upperTranslation = param2;
      }
      
      public function §\x10\x12§() : Boolean
      {
         return m_enableMotor;
      }
      
      public function §\x1a\x01§(param1:Boolean) : void
      {
         m_bodyA.SetAwake(true);
         m_bodyB.SetAwake(true);
         m_enableMotor = param1;
      }
      
      public function §\x0b\t§(param1:Number) : void
      {
         m_bodyA.SetAwake(true);
         m_bodyB.SetAwake(true);
         m_motorSpeed = param1;
      }
      
      public function §\x12\x17§() : Number
      {
         return m_motorSpeed;
      }
      
      public function §\x0b\f§(param1:Number) : void
      {
         m_bodyA.SetAwake(true);
         m_bodyB.SetAwake(true);
         m_maxMotorForce = param1;
      }
      
      public function §\x12\x1b§() : Number
      {
         return m_maxMotorForce;
      }
      
      public function §\x12\x18§() : Number
      {
         return m_motorImpulse;
      }
      
      override b2internal function InitVelocityConstraints(param1:§\x1d\x06§) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc2_:b2Body = m_bodyA;
         var _loc3_:b2Body = m_bodyB;
         m_localCenterA.SetV(_loc2_.§\x13\x07§());
         m_localCenterB.SetV(_loc3_.§\x13\x07§());
         var _loc6_:§\x1d\x04§ = _loc2_.GetTransform();
         var _loc7_:§\x1d\x04§ = _loc3_.GetTransform();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = m_localAnchor1.x - m_localCenterA.x;
         var _loc9_:Number = m_localAnchor1.y - m_localCenterA.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         §§push(_loc3_.m_xf);
         if(false)
         {
            return;
         }
         _loc4_ = §§pop().R;
         var _loc10_:Number = m_localAnchor2.x - m_localCenterB.x;
         var _loc11_:Number = m_localAnchor2.y - m_localCenterB.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         if(false)
         {
            return;
         }
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         §§push(_loc3_);
         if(false)
         {
            return false;
         }
         §§push(§§pop().b2internal::m_sweep.c.y + _loc11_);
         §§push(_loc2_.m_sweep.c.y);
         if(false)
         {
            throw true;
         }
         var _loc13_:Number = §§pop() - §§pop() - _loc9_;
         m_invMassA = _loc2_.m_invMass;
         m_invMassB = _loc3_.m_invMass;
         m_invIA = _loc2_.m_invI;
         m_invIB = _loc3_.m_invI;
         m_axis.SetV(b2Math.MulMV(_loc6_.R,m_localXAxis1));
         m_a1 = (_loc12_ + _loc8_) * m_axis.y - (_loc13_ + _loc9_) * m_axis.x;
         m_a2 = _loc10_ * m_axis.y - _loc11_ * m_axis.x;
         m_motorMass = m_invMassA + m_invMassB + m_invIA * m_a1 * m_a1 + m_invIB * m_a2 * m_a2;
         m_motorMass = m_motorMass <= Number.MIN_VALUE ? 0 : 1 / m_motorMass;
         m_perp.SetV(b2Math.MulMV(_loc6_.R,m_localYAxis1));
         m_s1 = (_loc12_ + _loc8_) * m_perp.y - (_loc13_ + _loc9_) * m_perp.x;
         m_s2 = _loc10_ * m_perp.y - _loc11_ * m_perp.x;
         var _loc14_:Number = m_invMassA;
         var _loc15_:Number = m_invMassB;
         var _loc16_:Number = m_invIA;
         var _loc17_:Number = m_invIB;
         m_K.col1.x = _loc14_ + _loc15_ + _loc16_ * m_s1 * m_s1 + _loc17_ * m_s2 * m_s2;
         §§push(m_K.col1);
         §§push(_loc16_ * m_s1);
         if(false)
         {
            return false;
         }
         §§pop().y = §§pop() * m_a1 + _loc17_ * m_s2 * m_a2;
         m_K.col2.x = m_K.col1.y;
         m_K.col2.y = _loc14_ + _loc15_ + _loc16_ * m_a1 * m_a1 + _loc17_ * m_a2 * m_a2;
         if(!m_enableLimit)
         {
            m_limitState = e_inactiveLimit;
         }
         else
         {
            _loc18_ = m_axis.x * _loc12_ + m_axis.y * _loc13_;
            if(b2Math.Abs(m_upperTranslation - m_lowerTranslation) >= 2 * b2Settings.b2_linearSlop)
            {
               if(_loc18_ > m_lowerTranslation)
               {
                  if(_loc18_ < m_upperTranslation)
                  {
                     m_limitState = e_inactiveLimit;
                     m_impulse.y = 0;
                  }
                  else if(m_limitState != e_atUpperLimit)
                  {
                     m_limitState = e_atUpperLimit;
                     m_impulse.y = 0;
                  }
               }
               else if(m_limitState != e_atLowerLimit)
               {
                  m_limitState = e_atLowerLimit;
                  m_impulse.y = 0;
               }
            }
            else
            {
               m_limitState = e_equalLimits;
            }
         }
         if(m_enableMotor == false)
         {
            m_motorImpulse = 0;
         }
         if(param1.warmStarting)
         {
            m_impulse.x *= param1.dtRatio;
            m_impulse.y *= param1.dtRatio;
            m_motorImpulse *= param1.dtRatio;
            §§push(m_impulse);
            if(false)
            {
               return;
            }
            _loc19_ = §§pop().x * m_perp.x + (m_motorImpulse + m_impulse.y) * m_axis.x;
            _loc20_ = m_impulse.x * m_perp.y + (m_motorImpulse + m_impulse.y) * m_axis.y;
            §§push(m_impulse.x * m_s1);
            if(false)
            {
               return;
            }
            _loc21_ = §§pop() + (m_motorImpulse + m_impulse.y) * m_a1;
            _loc22_ = m_impulse.x * m_s2 + (m_motorImpulse + m_impulse.y) * m_a2;
            _loc2_.m_linearVelocity.x -= m_invMassA * _loc19_;
            _loc2_.m_linearVelocity.y -= m_invMassA * _loc20_;
            _loc2_.m_angularVelocity -= m_invIA * _loc21_;
            §§push(_loc3_);
            if(false)
            {
               return;
            }
            §§pop().b2internal::m_linearVelocity.x = _loc3_.m_linearVelocity.x + m_invMassB * _loc19_;
            _loc3_.m_linearVelocity.y += m_invMassB * _loc20_;
            §§push(_loc3_);
            if(false)
            {
               return;
            }
            §§pop().b2internal::m_angularVelocity = _loc3_.m_angularVelocity + m_invIB * _loc22_;
         }
         else
         {
            m_impulse.SetZero();
            m_motorImpulse = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:§\x1d\x06§) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         if(false)
         {
            throw true;
         }
         var _loc11_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         §§push(NaN);
         if(false)
         {
            return;
         }
         var _loc15_:* = §§pop();
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         §§push(null);
         if(false)
         {
            return;
         }
         var _loc18_:* = §§pop();
         var _loc19_:b2Vec2 = null;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc2_:b2Body = m_bodyA;
         var _loc3_:b2Body = m_bodyB;
         var _loc4_:b2Vec2 = _loc2_.m_linearVelocity;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.m_linearVelocity;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(m_enableMotor && m_limitState != e_equalLimits)
         {
            §§push(m_axis.x * (_loc6_.x - _loc4_.x));
            §§push(m_axis.y);
            §§push(_loc6_.y);
            §§push(_loc4_.y);
            if(false)
            {
               return;
            }
            _loc13_ = §§pop() + §§pop() * (§§pop() - §§pop()) + m_a2 * _loc7_ - m_a1 * _loc5_;
            _loc14_ = m_motorMass * (m_motorSpeed - _loc13_);
            _loc15_ = m_motorImpulse;
            _loc16_ = param1.dt * m_maxMotorForce;
            m_motorImpulse = b2Math.Clamp(m_motorImpulse + _loc14_,-_loc16_,_loc16_);
            _loc14_ = m_motorImpulse - _loc15_;
            _loc8_ = _loc14_ * m_axis.x;
            _loc9_ = _loc14_ * m_axis.y;
            _loc10_ = _loc14_ * m_a1;
            _loc11_ = _loc14_ * m_a2;
            _loc4_.x -= m_invMassA * _loc8_;
            §§push(_loc4_);
            if(false)
            {
               return;
            }
            §§pop().y = _loc4_.y - m_invMassA * _loc9_;
            _loc5_ -= m_invIA * _loc10_;
            _loc6_.x += m_invMassB * _loc8_;
            _loc6_.y += m_invMassB * _loc9_;
            _loc7_ += m_invIB * _loc11_;
         }
         §§push(m_perp.x * (_loc6_.x - _loc4_.x) + m_perp.y * (_loc6_.y - _loc4_.y));
         if(false)
         {
            return;
         }
         var _loc12_:Number = §§pop() + m_s2 * _loc7_ - m_s1 * _loc5_;
         var _temp_3:* = m_enableLimit;
         §§push(_temp_3);
         if(_temp_3)
         {
            §§pop();
            §§push(m_limitState);
            if(false)
            {
               return false;
            }
            §§push(§§pop() != e_inactiveLimit);
         }
         if(!§§pop())
         {
            if(m_K.col1.x == 0)
            {
               _loc22_ = 0;
            }
            else
            {
               _loc22_ = -_loc12_ / m_K.col1.x;
            }
            §§push(m_impulse);
            §§push(m_impulse);
            if(false)
            {
               return;
            }
            §§pop().x = §§pop().x + _loc22_;
            _loc8_ = _loc22_ * m_perp.x;
            _loc9_ = _loc22_ * m_perp.y;
            _loc10_ = _loc22_ * m_s1;
            _loc11_ = _loc22_ * m_s2;
            _loc4_.x -= m_invMassA * _loc8_;
            _loc4_.y -= m_invMassA * _loc9_;
            _loc5_ -= m_invIA * _loc10_;
            _loc6_.x += m_invMassB * _loc8_;
            _loc6_.y += m_invMassB * _loc9_;
            _loc7_ += m_invIB * _loc11_;
         }
         else
         {
            §§push(m_axis.x * (_loc6_.x - _loc4_.x));
            §§push(m_axis);
            if(false)
            {
               throw true;
            }
            §§push(§§pop().y);
            §§push(_loc6_.y - _loc4_.y);
            if(false)
            {
               throw true;
            }
            _loc17_ = §§pop() + §§pop() * §§pop() + m_a2 * _loc7_ - m_a1 * _loc5_;
            _loc18_ = m_impulse.Copy();
            _loc19_ = m_K.§\n\x03§(new b2Vec2(),-_loc12_,-_loc17_);
            m_impulse.§\x1a§(_loc19_);
            if(m_limitState != e_atLowerLimit)
            {
               if(m_limitState == e_atUpperLimit)
               {
                  m_impulse.y = b2Math.Min(m_impulse.y,0);
               }
            }
            else
            {
               m_impulse.y = b2Math.Max(m_impulse.y,0);
            }
            _loc20_ = -_loc12_ - (m_impulse.y - _loc18_.y) * m_K.col2.x;
            if(m_K.col1.x == 0)
            {
               _loc21_ = _loc18_.x;
            }
            else
            {
               _loc21_ = _loc20_ / m_K.col1.x + _loc18_.x;
            }
            m_impulse.x = _loc21_;
            _loc19_.x = m_impulse.x - _loc18_.x;
            _loc19_.y = m_impulse.y - _loc18_.y;
            _loc8_ = _loc19_.x * m_perp.x + _loc19_.y * m_axis.x;
            §§push(_loc19_);
            if(false)
            {
               return;
            }
            _loc9_ = §§pop().x * m_perp.y + _loc19_.y * m_axis.y;
            §§push(_loc19_.x * m_s1);
            §§push(_loc19_);
            if(false)
            {
               throw true;
            }
            _loc10_ = §§pop() + §§pop().y * m_a1;
            _loc11_ = _loc19_.x * m_s2 + _loc19_.y * m_a2;
            _loc4_.x -= m_invMassA * _loc8_;
            _loc4_.y -= m_invMassA * _loc9_;
            _loc5_ -= m_invIA * _loc10_;
            _loc6_.x += m_invMassB * _loc8_;
            §§push(_loc6_);
            §§push(_loc6_.y);
            §§push(m_invMassB);
            if(false)
            {
               throw true;
            }
            §§pop().y = §§pop() + §§pop() * _loc9_;
            _loc7_ += m_invIB * _loc11_;
         }
         _loc2_.m_linearVelocity.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.m_linearVelocity.SetV(_loc6_);
         _loc3_.m_angularVelocity = _loc7_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc4_:b2Body = m_bodyA;
         var _loc5_:b2Body = m_bodyB;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         §§push(_loc5_.m_sweep);
         if(false)
         {
            return;
         }
         var _loc9_:Number = Number(§§pop().a);
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.FromAngle(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.FromAngle(_loc9_);
         _loc10_ = _loc20_;
         §§push(m_localAnchor1.x);
         §§push(m_localCenterA);
         if(false)
         {
            return;
         }
         var _loc22_:Number = §§pop() - §§pop().x;
         §§push(m_localAnchor1.y);
         §§push(m_localCenterA.y);
         if(false)
         {
            return;
         }
         var _loc23_:Number = §§pop() - §§pop();
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = m_localAnchor2.x - m_localCenterB.x;
         var _loc25_:Number = m_localAnchor2.y - m_localCenterB.y;
         §§push(_loc10_.col1.x * _loc24_);
         §§push(_loc10_.col2.x);
         §§push(_loc25_);
         if(false)
         {
            return;
         }
         _loc11_ = §§pop() + §§pop() * §§pop();
         §§push(_loc10_.col1.y * _loc24_);
         §§push(_loc10_);
         if(false)
         {
            return;
         }
         _loc25_ = §§pop() + §§pop().col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(m_enableLimit)
         {
            m_axis = b2Math.MulMV(_loc20_,m_localXAxis1);
            m_a1 = (_loc26_ + _loc22_) * m_axis.y - (_loc27_ + _loc23_) * m_axis.x;
            m_a2 = _loc24_ * m_axis.y - _loc25_ * m_axis.x;
            _loc34_ = m_axis.x * _loc26_ + m_axis.y * _loc27_;
            §§push(b2Math);
            if(false)
            {
               throw true;
            }
            if(§§pop().Abs(m_upperTranslation - m_lowerTranslation) >= 2 * b2Settings.b2_linearSlop)
            {
               if(_loc34_ > m_lowerTranslation)
               {
                  if(_loc34_ >= m_upperTranslation)
                  {
                     _loc19_ = b2Math.Clamp(_loc34_ - m_upperTranslation + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
                     §§push(_loc34_ - m_upperTranslation);
                     if(false)
                     {
                        return;
                     }
                     _loc16_ = §§pop();
                     _loc18_ = true;
                  }
               }
               else
               {
                  §§push(b2Math);
                  §§push(_loc34_ - m_lowerTranslation);
                  §§push(b2Settings.b2_linearSlop);
                  if(false)
                  {
                     return;
                  }
                  _loc19_ = Number(§§pop().Clamp(§§pop() + §§pop(),-b2Settings.b2_maxLinearCorrection,0));
                  _loc16_ = m_lowerTranslation - _loc34_;
                  _loc18_ = true;
               }
            }
            else
            {
               _loc19_ = b2Math.Clamp(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.Abs(_loc34_);
               _loc18_ = true;
               if(false)
               {
                  return false;
               }
            }
         }
         m_perp = b2Math.MulMV(_loc20_,m_localYAxis1);
         m_s1 = (_loc26_ + _loc22_) * m_perp.y - (_loc27_ + _loc23_) * m_perp.x;
         m_s2 = _loc24_ * m_perp.y - _loc25_ * m_perp.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = m_perp.x * _loc26_ + m_perp.y * _loc27_;
         §§push(b2Math);
         §§push(_loc16_);
         if(false)
         {
            return;
         }
         _loc16_ = Number(§§pop().Max(§§pop(),b2Math.Abs(_loc29_)));
         _loc17_ = 0;
         if(!_loc18_)
         {
            _loc12_ = m_invMassA;
            if(false)
            {
               return false;
            }
            _loc13_ = m_invMassB;
            _loc14_ = m_invIA;
            _loc15_ = m_invIB;
            _loc35_ = _loc12_ + _loc13_ + _loc14_ * m_s1 * m_s1 + _loc15_ * m_s2 * m_s2;
            if(_loc35_ == 0)
            {
               _loc36_ = 0;
            }
            else
            {
               _loc36_ = -_loc29_ / _loc35_;
            }
            _loc28_.x = _loc36_;
            _loc28_.y = 0;
         }
         else
         {
            _loc12_ = m_invMassA;
            _loc13_ = m_invMassB;
            _loc14_ = m_invIA;
            §§push(m_invIB);
            if(false)
            {
               return false;
            }
            _loc15_ = §§pop();
            m_K.col1.x = _loc12_ + _loc13_ + _loc14_ * m_s1 * m_s1 + _loc15_ * m_s2 * m_s2;
            m_K.col1.y = _loc14_ * m_s1 * m_a1 + _loc15_ * m_s2 * m_a2;
            m_K.col2.x = m_K.col1.y;
            m_K.col2.y = _loc12_ + _loc13_ + _loc14_ * m_a1 * m_a1 + _loc15_ * m_a2 * m_a2;
            m_K.§\n\x03§(_loc28_,-_loc29_,-_loc19_);
         }
         §§push(_loc28_.x);
         §§push(m_perp);
         if(false)
         {
            return;
         }
         var _loc30_:Number = §§pop() * §§pop().x + _loc28_.y * m_axis.x;
         §§push(_loc28_.x * m_perp.y + _loc28_.y * m_axis.y);
         if(false)
         {
            return false;
         }
         var _loc31_:* = §§pop();
         var _loc32_:Number = _loc28_.x * m_s1 + _loc28_.y * m_a1;
         §§push(_loc28_.x * m_s2);
         if(false)
         {
            return;
         }
         var _loc33_:Number = §§pop() + _loc28_.y * m_a2;
         _loc6_.x -= m_invMassA * _loc30_;
         §§push(_loc6_);
         §§push(_loc6_.y);
         if(false)
         {
            throw true;
         }
         §§pop().y = §§pop() - m_invMassA * _loc31_;
         _loc7_ -= m_invIA * _loc32_;
         _loc8_.x += m_invMassB * _loc30_;
         _loc8_.y += m_invMassB * _loc31_;
         _loc9_ += m_invIB * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§\t\f§();
         _loc5_.§\t\f§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}


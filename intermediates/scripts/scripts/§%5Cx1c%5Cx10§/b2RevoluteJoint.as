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
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var tImpulse:b2Vec2 = new b2Vec2();
      
      private var K:b2Mat22 = new b2Mat22();
      
      private var K1:b2Mat22 = new b2Mat22();
      
      private var K2:b2Mat22 = new b2Mat22();
      
      private var K3:b2Mat22 = new b2Mat22();
      
      private var impulse3:§\x1d\x03§ = new §\x1d\x03§();
      
      private var impulse2:b2Vec2 = new b2Vec2();
      
      private var reduced:b2Vec2 = new b2Vec2();
      
      b2internal var m_localAnchor1:b2Vec2 = new b2Vec2();
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var m_impulse:§\x1d\x03§;
      
      private var m_motorImpulse:Number;
      
      private var m_mass:§\x1d\x11§;
      
      private var m_motorMass:Number;
      
      private var m_enableMotor:Boolean;
      
      private var m_maxMotorTorque:Number;
      
      private var m_motorSpeed:Number;
      
      private var m_enableLimit:Boolean;
      
      private var m_referenceAngle:Number;
      
      private var m_lowerAngle:Number;
      
      private var m_upperAngle:Number;
      
      private var m_limitState:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         §§push(§§findproperty(b2internal::m_localAnchor2));
         §§push(new b2Vec2());
         if(false)
         {
            return;
         }
         §§pop().b2internal::m_localAnchor2 = §§pop();
         m_impulse = new §\x1d\x03§();
         m_mass = new §\x1d\x11§();
         §§push(this);
         if(false)
         {
            throw true;
         }
         §§pop().super(param1);
         b2internal::m_localAnchor1.SetV(param1.localAnchorA);
         b2internal::m_localAnchor2.SetV(param1.localAnchorB);
         m_referenceAngle = param1.referenceAngle;
         m_impulse.SetZero();
         §§push(§§findproperty(m_motorImpulse));
         §§push(0);
         if(false)
         {
            return;
         }
         §§pop().m_motorImpulse = §§pop();
         m_lowerAngle = param1.lowerAngle;
         §§push(§§findproperty(m_upperAngle));
         §§push(param1.upperAngle);
         if(false)
         {
            return false;
         }
         §§pop().m_upperAngle = §§pop();
         m_maxMotorTorque = param1.maxMotorTorque;
         m_motorSpeed = param1.motorSpeed;
         m_enableLimit = param1.enableLimit;
         m_enableMotor = param1.enableMotor;
         m_limitState = b2internal::e_inactiveLimit;
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
         return new b2Vec2(param1 * m_impulse.x,param1 * m_impulse.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * m_impulse.z;
      }
      
      public function §\x13\x14§() : Number
      {
         return m_bodyB.m_sweep.a - m_bodyA.m_sweep.a - m_referenceAngle;
      }
      
      public function §\x13\x11§() : Number
      {
         return m_bodyB.m_angularVelocity - m_bodyA.m_angularVelocity;
      }
      
      public function §\x10\x14§() : Boolean
      {
         return m_enableLimit;
      }
      
      public function §\x1a\x02§(param1:Boolean) : void
      {
         m_enableLimit = param1;
      }
      
      public function §\x13\x03§() : Number
      {
         return m_lowerAngle;
      }
      
      public function §\x12\x01§() : Number
      {
         return m_upperAngle;
      }
      
      public function §\x0b\x15§(param1:Number, param2:Number) : void
      {
         m_lowerAngle = param1;
         m_upperAngle = param2;
      }
      
      public function §\x10\x12§() : Boolean
      {
         m_bodyA.SetAwake(true);
         m_bodyB.SetAwake(true);
         return m_enableMotor;
      }
      
      public function §\x1a\x01§(param1:Boolean) : void
      {
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
      
      public function §\x0b\x0b§(param1:Number) : void
      {
         m_maxMotorTorque = param1;
      }
      
      public function §\x12\x16§() : Number
      {
         return m_maxMotorTorque;
      }
      
      override b2internal function InitVelocityConstraints(param1:§\x1d\x06§) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         _loc2_ = m_bodyA;
         _loc3_ = m_bodyB;
         if(m_enableMotor || m_enableLimit)
         {
         }
         _loc4_ = _loc2_.m_xf.R;
         var _loc6_:* = m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
         _loc7_ = m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc6_ + _loc4_.col2.x * _loc7_;
         _loc7_ = _loc4_.col1.y * _loc6_ + _loc4_.col2.y * _loc7_;
         §§push(_loc5_);
         if(false)
         {
            return;
         }
         _loc6_ = §§pop();
         _loc4_ = _loc3_.m_xf.R;
         var _loc8_:Number = m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
         var _loc9_:Number = m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         §§push(_loc4_);
         if(false)
         {
            return false;
         }
         §§push(§§pop().col1.y * _loc8_);
         §§push(_loc4_.col2.y);
         if(false)
         {
            return;
         }
         _loc9_ = §§pop() + §§pop() * _loc9_;
         _loc8_ = _loc5_;
         var _loc10_:Number = _loc2_.m_invMass;
         var _loc11_:Number = _loc3_.m_invMass;
         var _loc12_:Number = _loc2_.m_invI;
         var _loc13_:Number = _loc3_.m_invI;
         m_mass.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         m_mass.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         §§push(m_mass.col3);
         if(false)
         {
            return;
         }
         §§pop().x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         m_mass.col1.y = m_mass.col2.x;
         §§push(m_mass.col2);
         §§push(_loc10_ + _loc11_);
         §§push(_loc6_ * _loc6_ * _loc12_);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop() + §§pop() + _loc8_ * _loc8_ * _loc13_;
         m_mass.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         m_mass.col1.z = m_mass.col3.x;
         m_mass.col2.z = m_mass.col3.y;
         §§push(m_mass);
         if(false)
         {
            return;
         }
         §§pop().col3.z = _loc12_ + _loc13_;
         m_motorMass = 1 / (_loc12_ + _loc13_);
         if(m_enableMotor == false)
         {
            m_motorImpulse = 0;
         }
         if(!m_enableLimit)
         {
            m_limitState = e_inactiveLimit;
         }
         else
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - m_referenceAngle;
            if(b2Math.Abs(m_upperAngle - m_lowerAngle) >= 2 * b2Settings.b2_angularSlop)
            {
               if(_loc14_ > m_lowerAngle)
               {
                  if(_loc14_ < m_upperAngle)
                  {
                     m_limitState = e_inactiveLimit;
                     m_impulse.z = 0;
                  }
                  else
                  {
                     if(m_limitState != e_atUpperLimit)
                     {
                        m_impulse.z = 0;
                     }
                     m_limitState = e_atUpperLimit;
                  }
               }
               else
               {
                  if(m_limitState != e_atLowerLimit)
                  {
                     m_impulse.z = 0;
                  }
                  §§push(§§findproperty(m_limitState));
                  §§push(e_atLowerLimit);
                  if(false)
                  {
                     return;
                  }
                  §§pop().m_limitState = §§pop();
               }
            }
            else
            {
               m_limitState = e_equalLimits;
            }
         }
         if(!param1.warmStarting)
         {
            m_impulse.SetZero();
            m_motorImpulse = 0;
         }
         else
         {
            m_impulse.x *= param1.dtRatio;
            m_impulse.y *= param1.dtRatio;
            m_motorImpulse *= param1.dtRatio;
            §§push(m_impulse.x);
            if(false)
            {
               return;
            }
            _loc15_ = §§pop();
            _loc16_ = m_impulse.y;
            §§push(_loc2_.m_linearVelocity);
            §§push(_loc2_.m_linearVelocity.x - _loc10_ * _loc15_);
            if(false)
            {
               throw true;
            }
            §§pop().x = §§pop();
            _loc2_.m_linearVelocity.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + m_motorImpulse + m_impulse.z);
            _loc3_.m_linearVelocity.x += _loc11_ * _loc15_;
            _loc3_.m_linearVelocity.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + m_motorImpulse + m_impulse.z);
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:§\x1d\x06§) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:* = NaN;
         var _loc26_:Number = NaN;
         if(false)
         {
            return;
         }
         var _loc27_:Number = NaN;
         var _loc2_:b2Body = m_bodyA;
         var _loc3_:b2Body = m_bodyB;
         var _loc11_:b2Vec2 = _loc2_.m_linearVelocity;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.m_linearVelocity;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         §§push(_loc2_.m_invMass);
         if(false)
         {
            throw true;
         }
         var _loc15_:Number = §§pop();
         var _loc16_:Number = _loc3_.m_invMass;
         var _loc17_:Number = _loc2_.m_invI;
         var _loc18_:Number = _loc3_.m_invI;
         §§push(m_enableMotor);
         if(false)
         {
            return;
         }
         if(Boolean(§§pop()) && m_limitState != e_equalLimits)
         {
            _loc19_ = _loc14_ - _loc12_ - m_motorSpeed;
            _loc20_ = m_motorMass * -_loc19_;
            _loc21_ = m_motorImpulse;
            _loc22_ = param1.dt * m_maxMotorTorque;
            m_motorImpulse = b2Math.Clamp(m_motorImpulse + _loc20_,-_loc22_,_loc22_);
            _loc20_ = m_motorImpulse - _loc21_;
            §§push(_loc12_);
            §§push(_loc17_ * _loc20_);
            if(false)
            {
               return false;
            }
            _loc12_ = §§pop() - §§pop();
            _loc14_ += _loc18_ * _loc20_;
         }
         if(!(m_enableLimit && m_limitState != e_inactiveLimit))
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            §§push(_loc3_.m_xf.R);
            if(false)
            {
               throw true;
            }
            _loc4_ = §§pop();
            _loc9_ = m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            §§push(_loc4_.col1.x);
            if(false)
            {
               return;
            }
            _loc5_ = §§pop() * _loc9_ + _loc4_.col2.x * _loc10_;
            §§push(_loc4_.col1.y * _loc9_);
            §§push(_loc4_.col2.y);
            §§push(_loc10_);
            if(false)
            {
               return false;
            }
            _loc10_ = §§pop() + §§pop() * §§pop();
            _loc9_ = _loc5_;
            §§push(_loc13_);
            if(false)
            {
               throw true;
            }
            _loc26_ = §§pop().x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            §§push(_loc13_.y);
            if(false)
            {
               return;
            }
            _loc27_ = §§pop() + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            §§push(m_mass);
            §§push(impulse2);
            §§push(-_loc26_);
            §§push(_loc27_);
            if(false)
            {
               return false;
            }
            §§pop().§\n\x01§(§§pop(),§§pop(),-§§pop());
            §§push(m_impulse);
            §§push(m_impulse.x);
            §§push(impulse2);
            if(false)
            {
               return;
            }
            §§pop().x = §§pop() + §§pop().x;
            m_impulse.y += impulse2.y;
            _loc11_.x -= _loc15_ * impulse2.x;
            §§push(_loc11_);
            §§push(_loc11_.y);
            §§push(_loc15_);
            §§push(impulse2);
            if(false)
            {
               return;
            }
            §§pop().y = §§pop() - §§pop() * §§pop().y;
            _loc12_ -= _loc17_ * (_loc7_ * impulse2.y - _loc8_ * impulse2.x);
            _loc13_.x += _loc16_ * impulse2.x;
            _loc13_.y += _loc16_ * impulse2.y;
            if(false)
            {
               return;
            }
            _loc14_ += _loc18_ * (_loc9_ * impulse2.y - _loc10_ * impulse2.x);
         }
         else
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            §§push(_loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_);
            if(false)
            {
               throw true;
            }
            _loc5_ = §§pop();
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            §§push(_loc3_);
            if(false)
            {
               return;
            }
            _loc4_ = §§pop().b2internal::m_xf.R;
            _loc9_ = m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            if(false)
            {
               return false;
            }
            _loc10_ = m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc23_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc24_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            §§push(_loc14_ - _loc12_);
            if(false)
            {
               throw true;
            }
            _loc25_ = §§pop();
            m_mass.§\t\x1c§(impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(m_limitState != e_equalLimits)
            {
               if(m_limitState == e_atLowerLimit)
               {
                  _loc6_ = m_impulse.z + impulse3.z;
                  if(_loc6_ < 0)
                  {
                     m_mass.§\n\x01§(reduced,-_loc23_,-_loc24_);
                     impulse3.x = reduced.x;
                     impulse3.y = reduced.y;
                     impulse3.z = -m_impulse.z;
                     m_impulse.x += reduced.x;
                     m_impulse.y += reduced.y;
                     m_impulse.z = 0;
                  }
               }
               else if(m_limitState == e_atUpperLimit)
               {
                  _loc6_ = m_impulse.z + impulse3.z;
                  if(_loc6_ > 0)
                  {
                     §§push(m_mass);
                     §§push(reduced);
                     §§push(-_loc23_);
                     §§push(-_loc24_);
                     if(false)
                     {
                        return false;
                     }
                     §§pop().§\n\x01§(§§pop(),§§pop(),§§pop());
                     impulse3.x = reduced.x;
                     impulse3.y = reduced.y;
                     impulse3.z = -m_impulse.z;
                     m_impulse.x += reduced.x;
                     m_impulse.y += reduced.y;
                     m_impulse.z = 0;
                  }
               }
            }
            else
            {
               m_impulse.§\x1a§(impulse3);
            }
            _loc11_.x -= _loc15_ * impulse3.x;
            _loc11_.y -= _loc15_ * impulse3.y;
            _loc12_ -= _loc17_ * (_loc7_ * impulse3.y - _loc8_ * impulse3.x + impulse3.z);
            _loc13_.x += _loc16_ * impulse3.x;
            _loc13_.y += _loc16_ * impulse3.y;
            _loc14_ += _loc18_ * (_loc9_ * impulse3.y - _loc10_ * impulse3.x + impulse3.z);
            if(false)
            {
               return;
            }
         }
         _loc2_.m_linearVelocity.SetV(_loc11_);
         §§push(_loc2_);
         §§push(_loc12_);
         if(false)
         {
            return;
         }
         §§pop().b2internal::m_angularVelocity = §§pop();
         _loc3_.m_linearVelocity.SetV(_loc13_);
         _loc3_.m_angularVelocity = _loc14_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = NaN;
         var _loc4_:b2Mat22 = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:* = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc5_:b2Body = m_bodyA;
         var _loc6_:b2Body = m_bodyB;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(m_enableLimit && m_limitState != e_inactiveLimit)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - m_referenceAngle;
            _loc26_ = 0;
            §§push(m_limitState);
            §§push(e_equalLimits);
            if(false)
            {
               return;
            }
            if(§§pop() != §§pop())
            {
               if(m_limitState != e_atLowerLimit)
               {
                  if(m_limitState == e_atUpperLimit)
                  {
                     _loc3_ = _loc25_ - m_upperAngle;
                     _loc7_ = _loc3_;
                     _loc3_ = b2Math.Clamp(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
                     §§push(-m_motorMass * _loc3_);
                     if(false)
                     {
                        return;
                     }
                     _loc26_ = §§pop();
                  }
               }
               else
               {
                  §§push(_loc25_ - m_lowerAngle);
                  if(false)
                  {
                     throw true;
                  }
                  _loc3_ = §§pop();
                  _loc7_ = -_loc3_;
                  _loc3_ = b2Math.Clamp(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
                  _loc26_ = -m_motorMass * _loc3_;
               }
            }
            else
            {
               §§push(b2Math);
               §§push(_loc25_ - m_lowerAngle);
               §§push(-b2Settings.b2_maxAngularCorrection);
               if(false)
               {
                  return;
               }
               _loc3_ = Number(§§pop().Clamp(§§pop(),§§pop(),b2Settings.b2_maxAngularCorrection));
               _loc26_ = -m_motorMass * _loc3_;
               _loc7_ = b2Math.Abs(_loc3_);
            }
            _loc5_.m_sweep.a -= _loc5_.m_invI * _loc26_;
            _loc6_.m_sweep.a += _loc6_.m_invI * _loc26_;
            _loc5_.§\t\f§();
            _loc6_.§\t\f§();
         }
         _loc4_ = _loc5_.m_xf.R;
         var _loc12_:Number = m_localAnchor1.x - _loc5_.m_sweep.localCenter.x;
         var _loc13_:Number = m_localAnchor1.y - _loc5_.m_sweep.localCenter.y;
         _loc9_ = _loc4_.col1.x * _loc12_ + _loc4_.col2.x * _loc13_;
         _loc13_ = _loc4_.col1.y * _loc12_ + _loc4_.col2.y * _loc13_;
         _loc12_ = _loc9_;
         _loc4_ = _loc6_.m_xf.R;
         var _loc14_:Number = m_localAnchor2.x - _loc6_.m_sweep.localCenter.x;
         if(false)
         {
            return;
         }
         var _loc15_:Number = m_localAnchor2.y - _loc6_.m_sweep.localCenter.y;
         _loc9_ = _loc4_.col1.x * _loc14_ + _loc4_.col2.x * _loc15_;
         §§push(_loc4_);
         if(false)
         {
            throw true;
         }
         _loc15_ = §§pop().col1.y * _loc14_ + _loc4_.col2.y * _loc15_;
         _loc14_ = _loc9_;
         var _loc16_:Number = _loc6_.m_sweep.c.x + _loc14_ - _loc5_.m_sweep.c.x - _loc12_;
         var _loc17_:Number = _loc6_.m_sweep.c.y + _loc15_ - _loc5_.m_sweep.c.y - _loc13_;
         var _loc18_:Number = _loc16_ * _loc16_ + _loc17_ * _loc17_;
         var _temp_2:* = Math.sqrt(_loc18_);
         var _loc19_:Number;
         _loc8_ = _loc19_ = Math.sqrt(_loc18_);
         var _loc20_:Number = _loc5_.m_invMass;
         var _loc21_:Number = _loc6_.m_invMass;
         var _loc22_:Number = _loc5_.m_invI;
         var _loc23_:Number = _loc6_.m_invI;
         var _loc24_:Number = 10 * b2Settings.b2_linearSlop;
         if(_loc18_ > _loc24_ * _loc24_)
         {
            _loc27_ = _loc16_ / _loc19_;
            _loc28_ = _loc17_ / _loc19_;
            _loc29_ = _loc20_ + _loc21_;
            var _temp_3:* = 1 / _loc29_;
            _loc30_ = 1 / _loc29_;
            _loc10_ = _loc30_ * -_loc16_;
            _loc11_ = _loc30_ * -_loc17_;
            _loc31_ = 0.5;
            _loc5_.m_sweep.c.x -= _loc31_ * _loc20_ * _loc10_;
            _loc5_.m_sweep.c.y -= _loc31_ * _loc20_ * _loc11_;
            _loc6_.m_sweep.c.x += _loc31_ * _loc21_ * _loc10_;
            _loc6_.m_sweep.c.y += _loc31_ * _loc21_ * _loc11_;
            §§push(_loc6_.m_sweep.c.x + _loc14_);
            §§push(_loc5_.m_sweep.c);
            if(false)
            {
               return;
            }
            _loc16_ = §§pop() - §§pop().x - _loc12_;
            _loc17_ = _loc6_.m_sweep.c.y + _loc15_ - _loc5_.m_sweep.c.y - _loc13_;
         }
         K1.col1.x = _loc20_ + _loc21_;
         K1.col2.x = 0;
         K1.col1.y = 0;
         K1.col2.y = _loc20_ + _loc21_;
         K2.col1.x = _loc22_ * _loc13_ * _loc13_;
         K2.col2.x = -_loc22_ * _loc12_ * _loc13_;
         K2.col1.y = -_loc22_ * _loc12_ * _loc13_;
         K2.col2.y = _loc22_ * _loc12_ * _loc12_;
         K3.col1.x = _loc23_ * _loc15_ * _loc15_;
         K3.col2.x = -_loc23_ * _loc14_ * _loc15_;
         K3.col1.y = -_loc23_ * _loc14_ * _loc15_;
         §§push(K3);
         if(false)
         {
            throw true;
         }
         §§pop().col2.y = _loc23_ * _loc14_ * _loc14_;
         K.§\x0b\x10§(K1);
         K.§\x0f§(K2);
         K.§\x0f§(K3);
         K.§\n\x03§(tImpulse,-_loc16_,-_loc17_);
         _loc10_ = tImpulse.x;
         _loc11_ = tImpulse.y;
         _loc5_.m_sweep.c.x -= _loc5_.m_invMass * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.m_invMass * _loc11_;
         §§push(_loc5_.m_sweep);
         §§push(_loc5_.m_sweep.a);
         §§push(_loc5_.m_invI);
         §§push(_loc12_);
         if(false)
         {
            return;
         }
         §§pop().a = §§pop() - §§pop() * (§§pop() * _loc11_ - _loc13_ * _loc10_);
         if(false)
         {
            return;
         }
         _loc6_.m_sweep.c.x += _loc6_.m_invMass * _loc10_;
         §§push(_loc6_.m_sweep);
         if(false)
         {
            return;
         }
         §§pop().c.y = _loc6_.m_sweep.c.y + _loc6_.m_invMass * _loc11_;
         _loc6_.m_sweep.a += _loc6_.m_invI * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§\t\f§();
         _loc6_.§\t\f§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}


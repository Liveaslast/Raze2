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
   
   public class §\x1e\x05§ extends b2Joint
   {
      
      private var m_localAnchor1:b2Vec2 = new b2Vec2();
      
      private var m_localAnchor2:b2Vec2 = new b2Vec2();
      
      private var m_u:b2Vec2;
      
      private var m_frequencyHz:Number;
      
      private var m_dampingRatio:Number;
      
      private var m_gamma:Number;
      
      private var m_bias:Number;
      
      private var m_impulse:Number;
      
      private var m_mass:Number;
      
      private var m_length:Number;
      
      public function §\x1e\x05§(param1:b2DistanceJointDef)
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(false)
         {
            return false;
         }
         m_u = new b2Vec2();
         super(param1);
         m_localAnchor1.SetV(param1.localAnchorA);
         m_localAnchor2.SetV(param1.localAnchorB);
         m_length = param1.length;
         m_frequencyHz = param1.frequencyHz;
         m_dampingRatio = param1.dampingRatio;
         m_impulse = 0;
         m_gamma = 0;
         §§push(§§findproperty(m_bias));
         §§push(0);
         if(false)
         {
            return false;
         }
         §§pop().m_bias = §§pop();
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
         return new b2Vec2(param1 * m_impulse * m_u.x,param1 * m_impulse * m_u.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §\x13\x0f§() : Number
      {
         return m_length;
      }
      
      public function §\x0b\x16§(param1:Number) : void
      {
         m_length = param1;
      }
      
      public function §\x13\x1a§() : Number
      {
         return m_frequencyHz;
      }
      
      public function §\x0b\x1d§(param1:Number) : void
      {
         m_frequencyHz = param1;
      }
      
      public function §\x14\x07§() : Number
      {
         return m_dampingRatio;
      }
      
      public function §\f\r§(param1:Number) : void
      {
         m_dampingRatio = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:§\x1d\x06§) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         _loc4_ = m_bodyA;
         _loc5_ = m_bodyB;
         §§push(_loc4_.m_xf.R);
         if(false)
         {
            return;
         }
         _loc2_ = §§pop();
         var _loc6_:Number = m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
         _loc9_ = m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         m_u.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         m_u.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number = Math.sqrt(m_u.x * m_u.x + m_u.y * m_u.y);
         if(_loc10_ <= b2Settings.b2_linearSlop)
         {
            m_u.SetZero();
         }
         else
         {
            m_u.Multiply(1 / _loc10_);
         }
         var _loc11_:Number = _loc6_ * m_u.y - _loc7_ * m_u.x;
         var _loc12_:Number = _loc8_ * m_u.y - _loc9_ * m_u.x;
         var _loc13_:Number = _loc4_.m_invMass + _loc4_.m_invI * _loc11_ * _loc11_ + _loc5_.m_invMass + _loc5_.m_invI * _loc12_ * _loc12_;
         m_mass = _loc13_ == 0 ? 0 : 1 / _loc13_;
         if(m_frequencyHz > 0)
         {
            §§push(_loc10_);
            §§push(m_length);
            if(false)
            {
               return;
            }
            _loc14_ = §§pop() - §§pop();
            _loc15_ = 2 * Math.PI * m_frequencyHz;
            _loc16_ = 2 * m_mass * m_dampingRatio * _loc15_;
            _loc17_ = m_mass * _loc15_ * _loc15_;
            m_gamma = param1.dt * (_loc16_ + param1.dt * _loc17_);
            m_gamma = m_gamma == 0 ? 0 : 1 / m_gamma;
            §§push(§§findproperty(m_bias));
            §§push(_loc14_ * param1.dt * _loc17_);
            §§push(m_gamma);
            if(false)
            {
               return false;
            }
            §§pop().m_bias = §§pop() * §§pop();
            m_mass = _loc13_ + m_gamma;
            m_mass = m_mass == 0 ? 0 : 1 / m_mass;
         }
         if(!param1.warmStarting)
         {
            m_impulse = 0;
         }
         else
         {
            m_impulse *= param1.dtRatio;
            _loc18_ = m_impulse * m_u.x;
            _loc19_ = m_impulse * m_u.y;
            _loc4_.m_linearVelocity.x -= _loc4_.m_invMass * _loc18_;
            _loc4_.m_linearVelocity.y -= _loc4_.m_invMass * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.m_invI * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.m_linearVelocity.x += _loc5_.m_invMass * _loc18_;
            _loc5_.m_linearVelocity.y += _loc5_.m_invMass * _loc19_;
            §§push(_loc5_);
            §§push(_loc5_.m_angularVelocity);
            §§push(_loc5_.m_invI);
            §§push(_loc8_);
            if(false)
            {
               return false;
            }
            §§pop().b2internal::m_angularVelocity = §§pop() + §§pop() * (§§pop() * _loc19_ - _loc9_ * _loc18_);
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:§\x1d\x06§) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = m_bodyA;
         var _loc4_:b2Body = m_bodyB;
         _loc2_ = _loc3_.m_xf.R;
         var _loc5_:Number = m_localAnchor1.x - _loc3_.m_sweep.localCenter.x;
         §§push(m_localAnchor1.y);
         if(false)
         {
            return false;
         }
         var _loc6_:Number = §§pop() - _loc3_.m_sweep.localCenter.y;
         §§push(_loc2_);
         if(false)
         {
            return;
         }
         var _loc7_:Number = §§pop().col1.x * _loc5_ + _loc2_.col2.x * _loc6_;
         §§push(_loc2_.col1.y);
         §§push(_loc5_);
         if(false)
         {
            throw true;
         }
         _loc6_ = §§pop() * §§pop() + _loc2_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc2_ = _loc4_.m_xf.R;
         var _loc8_:Number = m_localAnchor2.x - _loc4_.m_sweep.localCenter.x;
         §§push(m_localAnchor2.y);
         §§push(_loc4_.m_sweep.localCenter);
         if(false)
         {
            return;
         }
         var _loc9_:Number = §§pop() - §§pop().y;
         _loc7_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         var _loc10_:Number = _loc3_.m_linearVelocity.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.m_linearVelocity.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.m_linearVelocity.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.m_linearVelocity.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = m_u.x * (_loc12_ - _loc10_) + m_u.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -m_mass * (_loc14_ + m_bias + m_gamma * m_impulse);
         m_impulse += _loc15_;
         var _loc16_:Number = _loc15_ * m_u.x;
         var _loc17_:Number = _loc15_ * m_u.y;
         _loc3_.m_linearVelocity.x -= _loc3_.m_invMass * _loc16_;
         §§push(_loc3_);
         if(false)
         {
            return false;
         }
         §§pop().b2internal::m_linearVelocity.y = _loc3_.m_linearVelocity.y - _loc3_.m_invMass * _loc17_;
         §§push(_loc3_);
         §§push(_loc3_.m_angularVelocity);
         §§push(_loc3_.m_invI);
         §§push(_loc5_ * _loc17_);
         §§push(_loc6_);
         if(false)
         {
            throw true;
         }
         §§pop().b2internal::m_angularVelocity = §§pop() - §§pop() * (§§pop() - §§pop() * _loc16_);
         §§push(_loc4_.m_linearVelocity);
         §§push(_loc4_.m_linearVelocity.x);
         §§push(_loc4_.m_invMass);
         §§push(_loc16_);
         if(false)
         {
            return false;
         }
         §§pop().x = §§pop() + §§pop() * §§pop();
         _loc4_.m_linearVelocity.y += _loc4_.m_invMass * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.m_invI * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(m_frequencyHz <= 0)
         {
            §§push(m_bodyA);
            if(false)
            {
               return;
            }
            var _loc3_:* = §§pop();
            var _loc4_:b2Body = m_bodyB;
            _loc2_ = _loc3_.b2internal::m_xf.R;
            var _loc5_:Number = m_localAnchor1.x - _loc3_.b2internal::m_sweep.localCenter.x;
            var _loc6_:Number = m_localAnchor1.y - _loc3_.b2internal::m_sweep.localCenter.y;
            var _loc7_:Number = _loc2_.col1.x * _loc5_ + _loc2_.col2.x * _loc6_;
            §§push(_loc2_.col1.y * _loc5_);
            §§push(_loc2_.col2);
            if(false)
            {
               return;
            }
            _loc6_ = §§pop() + §§pop().y * _loc6_;
            _loc5_ = _loc7_;
            _loc2_ = _loc4_.m_xf.R;
            var _loc8_:Number = m_localAnchor2.x - _loc4_.m_sweep.localCenter.x;
            var _loc9_:Number = m_localAnchor2.y - _loc4_.m_sweep.localCenter.y;
            _loc7_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
            §§push(_loc2_.col1.y * _loc8_);
            §§push(_loc2_.col2.y);
            if(false)
            {
               return;
            }
            _loc9_ = §§pop() + §§pop() * _loc9_;
            _loc8_ = _loc7_;
            var _loc10_:Number = _loc4_.m_sweep.c.x + _loc8_ - _loc3_.b2internal::m_sweep.c.x - _loc5_;
            var _loc11_:Number = _loc4_.m_sweep.c.y + _loc9_ - _loc3_.b2internal::m_sweep.c.y - _loc6_;
            var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
            _loc10_ /= _loc12_;
            _loc11_ /= _loc12_;
            var _loc13_:Number = _loc12_ - m_length;
            _loc13_ = b2Math.Clamp(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
            var _loc14_:Number = -m_mass * _loc13_;
            m_u.Set(_loc10_,_loc11_);
            var _loc15_:Number = _loc14_ * m_u.x;
            §§push(_loc14_);
            if(false)
            {
               return false;
            }
            var _loc16_:Number = §§pop() * m_u.y;
            §§push(_loc3_.b2internal::m_sweep.c);
            §§push(_loc3_);
            if(false)
            {
               return;
            }
            §§pop().x = §§pop().b2internal::m_sweep.c.x - _loc3_.b2internal::m_invMass * _loc15_;
            §§push(_loc3_.b2internal::m_sweep.c);
            §§push(_loc3_.b2internal::m_sweep.c.y);
            if(false)
            {
               return;
            }
            §§pop().y = §§pop() - _loc3_.b2internal::m_invMass * _loc16_;
            _loc3_.b2internal::m_sweep.a -= _loc3_.b2internal::m_invI * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
            _loc4_.m_sweep.c.x += _loc4_.m_invMass * _loc15_;
            _loc4_.m_sweep.c.y += _loc4_.m_invMass * _loc16_;
            §§push(_loc4_.m_sweep);
            §§push(_loc4_.m_sweep.a);
            if(false)
            {
               return;
            }
            §§pop().a = §§pop() + _loc4_.m_invI * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
            _loc3_.b2internal::§\t\f§();
            _loc4_.§\t\f§();
            return b2Math.Abs(_loc13_) < b2Settings.b2_linearSlop;
         }
         return true;
      }
   }
}


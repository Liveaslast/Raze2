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
   
   public class §\x1d\x10§ extends b2Joint
   {
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var m_localAnchor:b2Vec2;
      
      private var m_target:b2Vec2;
      
      private var m_impulse:b2Vec2;
      
      private var m_mass:b2Mat22;
      
      private var m_C:b2Vec2;
      
      private var m_maxForce:Number;
      
      private var m_frequencyHz:Number;
      
      private var m_dampingRatio:Number;
      
      private var m_beta:Number;
      
      private var m_gamma:Number;
      
      public function §\x1d\x10§(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         §§push(§§findproperty(K));
         if(false)
         {
            return;
         }
         §§pop().K = new b2Mat22();
         K1 = new b2Mat22();
         K2 = new b2Mat22();
         m_localAnchor = new b2Vec2();
         m_target = new b2Vec2();
         m_impulse = new b2Vec2();
         m_mass = new b2Mat22();
         m_C = new b2Vec2();
         super(param1);
         m_target.SetV(param1.target);
         _loc2_ = m_target.x - b2internal::m_bodyB.m_xf.position.x;
         §§push(m_target.y);
         §§push(b2internal::m_bodyB);
         if(false)
         {
            return false;
         }
         var _loc3_:Number = §§pop() - §§pop().b2internal::m_xf.position.y;
         _loc4_ = b2internal::m_bodyB.m_xf.R;
         m_localAnchor.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         m_localAnchor.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         m_maxForce = param1.maxForce;
         m_impulse.SetZero();
         if(false)
         {
            return;
         }
         m_frequencyHz = param1.frequencyHz;
         m_dampingRatio = param1.dampingRatio;
         if(false)
         {
            return;
         }
         m_beta = 0;
         m_gamma = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return m_target;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return m_bodyB.§\x11\x15§(m_localAnchor);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * m_impulse.x,param1 * m_impulse.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §\x12\x02§() : b2Vec2
      {
         return m_target;
      }
      
      public function §\n\x17§(param1:b2Vec2) : void
      {
         if(m_bodyB.§\x10\x19§() == false)
         {
            m_bodyB.SetAwake(true);
         }
         m_target = param1;
      }
      
      public function §\x12\x1c§() : Number
      {
         return m_maxForce;
      }
      
      public function §\x0b\r§(param1:Number) : void
      {
         m_maxForce = param1;
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
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         if(false)
         {
            return;
         }
         var _loc2_:b2Body = m_bodyB;
         var _loc3_:Number = _loc2_.§\x13\x01§();
         var _loc4_:Number = 2 * Math.PI * m_frequencyHz;
         var _loc5_:Number = 2 * _loc3_ * m_dampingRatio * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         m_gamma = param1.dt * (_loc5_ + param1.dt * _loc6_);
         m_gamma = m_gamma == 0 ? 0 : 1 / m_gamma;
         §§push(§§findproperty(m_beta));
         §§push(param1.dt);
         if(false)
         {
            return;
         }
         §§pop().m_beta = §§pop() * _loc6_ * m_gamma;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = m_localAnchor.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = m_localAnchor.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.m_invMass;
         _loc12_ = _loc2_.m_invI;
         K1.col1.x = _loc11_;
         if(false)
         {
            return;
         }
         K1.col2.x = 0;
         K1.col1.y = 0;
         K1.col2.y = _loc11_;
         K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         §§push(K2.col2);
         §§push(_loc12_);
         if(false)
         {
            return false;
         }
         §§pop().y = §§pop() * _loc8_ * _loc8_;
         K.§\x0b\x10§(K1);
         if(false)
         {
            return;
         }
         K.§\x0f§(K2);
         K.col1.x += m_gamma;
         K.col2.y += m_gamma;
         K.GetInverse(m_mass);
         m_C.x = _loc2_.m_sweep.c.x + _loc8_ - m_target.x;
         §§push(m_C);
         if(false)
         {
            throw true;
         }
         §§pop().y = _loc2_.m_sweep.c.y + _loc9_ - m_target.y;
         _loc2_.m_angularVelocity *= 0.98;
         §§push(m_impulse);
         §§push(m_impulse);
         if(false)
         {
            throw true;
         }
         §§pop().x = §§pop().x * param1.dtRatio;
         m_impulse.y *= param1.dtRatio;
         _loc2_.m_linearVelocity.x += _loc11_ * m_impulse.x;
         _loc2_.m_linearVelocity.y += _loc11_ * m_impulse.y;
         §§push(_loc2_);
         if(false)
         {
            return;
         }
         §§push(_loc2_.m_angularVelocity + _loc12_ * (_loc8_ * m_impulse.y - _loc9_ * m_impulse.x));
         if(false)
         {
            return;
         }
         §§pop().b2internal::m_angularVelocity = §§pop();
      }
      
      override b2internal function SolveVelocityConstraints(param1:§\x1d\x06§) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = m_bodyB;
         _loc3_ = _loc2_.m_xf.R;
         §§push(m_localAnchor.x);
         §§push(_loc2_);
         if(false)
         {
            return;
         }
         var _loc6_:Number = §§pop() - §§pop().b2internal::m_sweep.localCenter.x;
         var _loc7_:Number = m_localAnchor.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.m_linearVelocity.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.m_linearVelocity.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = m_mass;
         _loc4_ = _loc8_ + m_beta * m_C.x + m_gamma * m_impulse.x;
         _loc5_ = _loc9_ + m_beta * m_C.y + m_gamma * m_impulse.y;
         §§push(_loc3_.col1.x * _loc4_);
         if(false)
         {
            return;
         }
         var _loc10_:Number = -(§§pop() + _loc3_.col2.x * _loc5_);
         §§push(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         if(false)
         {
            return;
         }
         var _loc11_:Number = -§§pop();
         var _loc12_:Number = m_impulse.x;
         var _loc13_:Number = m_impulse.y;
         m_impulse.x += _loc10_;
         if(false)
         {
            throw true;
         }
         m_impulse.y += _loc11_;
         var _loc14_:Number = param1.dt * m_maxForce;
         if(m_impulse.LengthSquared() > _loc14_ * _loc14_)
         {
            m_impulse.Multiply(_loc14_ / m_impulse.Length());
         }
         §§push(m_impulse);
         if(false)
         {
            return;
         }
         _loc10_ = §§pop().x - _loc12_;
         _loc11_ = m_impulse.y - _loc13_;
         §§push(_loc2_.m_linearVelocity);
         §§push(_loc2_.m_linearVelocity.x + _loc2_.m_invMass * _loc10_);
         if(false)
         {
            throw true;
         }
         §§pop().x = §§pop();
         _loc2_.m_linearVelocity.y += _loc2_.m_invMass * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.m_invI * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
         if(false)
         {
            return;
         }
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}


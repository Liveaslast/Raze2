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
   
   public class §\x1d\x19§ extends b2Joint
   {
      
      private var m_localAnchorA:b2Vec2 = new b2Vec2();
      
      private var m_localAnchorB:b2Vec2 = new b2Vec2();
      
      public var m_linearMass:b2Mat22 = new b2Mat22();
      
      public var m_angularMass:Number;
      
      private var m_linearImpulse:b2Vec2 = new b2Vec2();
      
      private var m_angularImpulse:Number;
      
      private var m_maxForce:Number;
      
      private var m_maxTorque:Number;
      
      public function §\x1d\x19§(param1:b2FrictionJointDef)
      {
         super(param1);
         m_localAnchorA.SetV(param1.localAnchorA);
         m_localAnchorB.SetV(param1.localAnchorB);
         m_linearMass.SetZero();
         m_angularMass = 0;
         m_linearImpulse.SetZero();
         m_angularImpulse = 0;
         m_maxForce = param1.maxForce;
         m_maxTorque = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return m_bodyA.§\x11\x15§(m_localAnchorA);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return m_bodyB.§\x11\x15§(m_localAnchorB);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * m_linearImpulse.x,param1 * m_linearImpulse.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * m_angularImpulse;
      }
      
      public function §\x0b\r§(param1:Number) : void
      {
         m_maxForce = param1;
      }
      
      public function §\x12\x1c§() : Number
      {
         return m_maxForce;
      }
      
      public function §\x0b\n§(param1:Number) : void
      {
         m_maxTorque = param1;
      }
      
      public function §\x12\x1a§() : Number
      {
         return m_maxTorque;
      }
      
      override b2internal function InitVelocityConstraints(param1:§\x1d\x06§) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Number = NaN;
         §§push(NaN);
         if(false)
         {
            throw true;
         }
         var _loc13_:* = §§pop();
         var _loc14_:b2Mat22 = null;
         var _loc15_:b2Vec2 = null;
         _loc4_ = m_bodyA;
         _loc5_ = m_bodyB;
         if(false)
         {
            return false;
         }
         _loc2_ = _loc4_.m_xf.R;
         §§push(m_localAnchorA.x);
         §§push(_loc4_.m_sweep.localCenter);
         if(false)
         {
            return;
         }
         _loc6_ = §§pop() - §§pop().x;
         var _loc7_:Number = m_localAnchorA.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         if(false)
         {
            return;
         }
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = m_localAnchorB.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = m_localAnchorB.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.m_invMass;
         var _loc11_:Number = _loc5_.m_invMass;
         _loc12_ = _loc4_.m_invI;
         §§push(_loc5_.m_invI);
         if(false)
         {
            return;
         }
         _loc13_ = §§pop();
         _loc14_ = new b2Mat22();
         _loc14_.col1.x = _loc10_ + _loc11_;
         _loc14_.col2.x = 0;
         _loc14_.col1.y = 0;
         §§push(_loc14_.col2);
         §§push(_loc10_ + _loc11_);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop();
         _loc14_.col1.x += _loc12_ * _loc7_ * _loc7_;
         §§push(_loc14_.col2);
         §§push(_loc14_.col2.x);
         if(false)
         {
            return;
         }
         §§pop().x = §§pop() + -_loc12_ * _loc6_ * _loc7_;
         _loc14_.col1.y += -_loc12_ * _loc6_ * _loc7_;
         _loc14_.col2.y += _loc12_ * _loc6_ * _loc6_;
         _loc14_.col1.x += _loc13_ * _loc9_ * _loc9_;
         _loc14_.col2.x += -_loc13_ * _loc8_ * _loc9_;
         _loc14_.col1.y += -_loc13_ * _loc8_ * _loc9_;
         _loc14_.col2.y += _loc13_ * _loc8_ * _loc8_;
         _loc14_.GetInverse(m_linearMass);
         m_angularMass = _loc12_ + _loc13_;
         if(m_angularMass > 0)
         {
            m_angularMass = 1 / m_angularMass;
         }
         if(!param1.warmStarting)
         {
            m_linearImpulse.SetZero();
            m_angularImpulse = 0;
         }
         else
         {
            m_linearImpulse.x *= param1.dtRatio;
            m_linearImpulse.y *= param1.dtRatio;
            m_angularImpulse *= param1.dtRatio;
            _loc15_ = m_linearImpulse;
            _loc4_.m_linearVelocity.x -= _loc10_ * _loc15_.x;
            _loc4_.m_linearVelocity.y -= _loc10_ * _loc15_.y;
            §§push(_loc4_);
            §§push(_loc4_.m_angularVelocity);
            §§push(_loc12_);
            §§push(_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + m_angularImpulse);
            if(false)
            {
               return;
            }
            §§pop().b2internal::m_angularVelocity = §§pop() - §§pop() * §§pop();
            _loc5_.m_linearVelocity.x += _loc11_ * _loc15_.x;
            _loc5_.m_linearVelocity.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + m_angularImpulse);
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:§\x1d\x06§) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = m_bodyA;
         §§push(m_bodyB);
         if(false)
         {
            return;
         }
         var _loc5_:* = §§pop();
         var _loc6_:b2Vec2 = _loc4_.m_linearVelocity;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.b2internal::m_linearVelocity;
         var _loc9_:Number = Number(_loc5_.b2internal::m_angularVelocity);
         var _loc10_:Number = _loc4_.m_invMass;
         var _loc11_:Number = Number(_loc5_.b2internal::m_invMass);
         var _loc12_:Number = _loc4_.m_invI;
         var _loc13_:Number = Number(_loc5_.b2internal::m_invI);
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = m_localAnchorA.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = m_localAnchorA.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.b2internal::m_xf.R;
         var _loc16_:Number = m_localAnchorB.x - _loc5_.b2internal::m_sweep.localCenter.x;
         §§push(m_localAnchorB.y);
         §§push(_loc5_.b2internal::m_sweep);
         if(false)
         {
            return;
         }
         var _loc17_:Number = §§pop() - §§pop().localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -m_angularMass * _loc19_;
         var _loc21_:Number = m_angularImpulse;
         _loc18_ = param1.dt * m_maxTorque;
         m_angularImpulse = b2Math.Clamp(m_angularImpulse + _loc20_,-_loc18_,_loc18_);
         _loc20_ = m_angularImpulse - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.MulMV(m_linearMass,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = m_linearImpulse.Copy();
         if(false)
         {
            return false;
         }
         m_linearImpulse.§\x1a§(_loc24_);
         _loc18_ = param1.dt * m_maxForce;
         if(m_linearImpulse.LengthSquared() > _loc18_ * _loc18_)
         {
            m_linearImpulse.Normalize();
            m_linearImpulse.Multiply(_loc18_);
         }
         _loc24_ = b2Math.SubtractVV(m_linearImpulse,_loc25_);
         _loc6_.x -= _loc10_ * _loc24_.x;
         _loc6_.y -= _loc10_ * _loc24_.y;
         _loc7_ -= _loc12_ * (_loc14_ * _loc24_.y - _loc15_ * _loc24_.x);
         _loc8_.x += _loc11_ * _loc24_.x;
         _loc8_.y += _loc11_ * _loc24_.y;
         _loc9_ += _loc13_ * (_loc16_ * _loc24_.y - _loc17_ * _loc24_.x);
         _loc4_.m_angularVelocity = _loc7_;
         _loc5_.b2internal::m_angularVelocity = _loc9_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}


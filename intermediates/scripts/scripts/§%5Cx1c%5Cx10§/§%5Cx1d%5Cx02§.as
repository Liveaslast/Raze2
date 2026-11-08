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
   
   public class §\x1d\x02§ extends b2Joint
   {
      
      private var m_localAnchorA:b2Vec2 = new b2Vec2();
      
      private var m_localAnchorB:b2Vec2 = new b2Vec2();
      
      private var m_referenceAngle:Number;
      
      private var m_impulse:§\x1d\x03§ = new §\x1d\x03§();
      
      private var m_mass:§\x1d\x11§ = new §\x1d\x11§();
      
      public function §\x1d\x02§(param1:b2WeldJointDef)
      {
         super(param1);
         m_localAnchorA.SetV(param1.localAnchorA);
         m_localAnchorB.SetV(param1.localAnchorB);
         m_referenceAngle = param1.referenceAngle;
         m_impulse.SetZero();
         m_mass = new §\x1d\x11§();
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
         return new b2Vec2(param1 * m_impulse.x,param1 * m_impulse.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * m_impulse.z;
      }
      
      override b2internal function InitVelocityConstraints(param1:§\x1d\x06§) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         _loc4_ = m_bodyA;
         _loc5_ = m_bodyB;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = m_localAnchorA.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = m_localAnchorA.y - _loc4_.m_sweep.localCenter.y;
         §§push(_loc2_.col1);
         if(false)
         {
            return;
         }
         _loc3_ = §§pop().x * _loc6_ + _loc2_.col2.x * _loc7_;
         §§push(_loc2_.col1.y);
         §§push(_loc6_);
         if(false)
         {
            return;
         }
         _loc7_ = §§pop() * §§pop() + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         §§push(m_localAnchorB.x);
         if(false)
         {
            return false;
         }
         _loc8_ = §§pop() - _loc5_.m_sweep.localCenter.x;
         _loc9_ = m_localAnchorB.y - _loc5_.m_sweep.localCenter.y;
         if(false)
         {
            throw true;
         }
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.m_invMass;
         _loc11_ = _loc5_.m_invMass;
         _loc12_ = _loc4_.m_invI;
         _loc13_ = _loc5_.m_invI;
         m_mass.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         m_mass.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         m_mass.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         m_mass.col1.y = m_mass.col2.x;
         §§push(m_mass.col2);
         §§push(_loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_);
         §§push(_loc8_ * _loc8_);
         §§push(_loc13_);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop() + §§pop() * §§pop();
         m_mass.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         m_mass.col1.z = m_mass.col3.x;
         m_mass.col2.z = m_mass.col3.y;
         if(false)
         {
            return;
         }
         m_mass.col3.z = _loc12_ + _loc13_;
         if(!param1.warmStarting)
         {
            m_impulse.SetZero();
         }
         else
         {
            m_impulse.x *= param1.dtRatio;
            m_impulse.y *= param1.dtRatio;
            §§push(m_impulse);
            §§push(m_impulse.z * param1.dtRatio);
            if(false)
            {
               return;
            }
            §§pop().z = §§pop();
            §§push(_loc4_.m_linearVelocity);
            §§push(_loc4_.m_linearVelocity.x);
            if(false)
            {
               throw true;
            }
            §§pop().x = §§pop() - _loc10_ * m_impulse.x;
            _loc4_.m_linearVelocity.y -= _loc10_ * m_impulse.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * m_impulse.y - _loc7_ * m_impulse.x + m_impulse.z);
            §§push(_loc5_.m_linearVelocity);
            if(false)
            {
               return false;
            }
            §§pop().x = _loc5_.m_linearVelocity.x + _loc11_ * m_impulse.x;
            _loc5_.m_linearVelocity.y += _loc11_ * m_impulse.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * m_impulse.y - _loc9_ * m_impulse.x + m_impulse.z);
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:§\x1d\x06§) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = m_bodyA;
         var _loc5_:b2Body = m_bodyB;
         var _loc6_:b2Vec2 = _loc4_.m_linearVelocity;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.m_linearVelocity;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.m_invMass;
         var _loc11_:Number = _loc5_.m_invMass;
         var _loc12_:Number = _loc4_.m_invI;
         var _loc13_:Number = _loc5_.m_invI;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = m_localAnchorA.x - _loc4_.m_sweep.localCenter.x;
         if(false)
         {
            return;
         }
         var _loc15_:Number = m_localAnchorA.y - _loc4_.m_sweep.localCenter.y;
         §§push(_loc2_.col1.x * _loc14_);
         §§push(_loc2_);
         if(false)
         {
            return false;
         }
         _loc3_ = §§pop() + §§pop().col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         §§push(_loc3_);
         if(false)
         {
            return;
         }
         _loc14_ = §§pop();
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:* = m_localAnchorB.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = m_localAnchorB.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         §§push(_loc3_);
         if(false)
         {
            return;
         }
         _loc16_ = §§pop();
         var _loc18_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc19_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc20_:Number = _loc9_ - _loc7_;
         var _loc21_:§\x1d\x03§ = new §\x1d\x03§();
         m_mass.§\t\x1c§(_loc21_,-_loc18_,-_loc19_,-_loc20_);
         m_impulse.§\x1a§(_loc21_);
         _loc6_.x -= _loc10_ * _loc21_.x;
         _loc6_.y -= _loc10_ * _loc21_.y;
         _loc7_ -= _loc12_ * (_loc14_ * _loc21_.y - _loc15_ * _loc21_.x + _loc21_.z);
         _loc8_.x += _loc11_ * _loc21_.x;
         _loc8_.y += _loc11_ * _loc21_.y;
         §§push(_loc9_);
         §§push(_loc13_);
         §§push(_loc16_ * _loc21_.y - _loc17_ * _loc21_.x + _loc21_.z);
         if(false)
         {
            return;
         }
         _loc9_ = §§pop() + §§pop() * §§pop();
         _loc4_.m_angularVelocity = _loc7_;
         _loc5_.m_angularVelocity = _loc9_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = m_bodyA;
         var _loc5_:b2Body = m_bodyB;
         _loc2_ = _loc4_.m_xf.R;
         var _loc6_:Number = m_localAnchorA.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = m_localAnchorA.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = m_localAnchorB.x - _loc5_.m_sweep.localCenter.x;
         §§push(m_localAnchorB.y);
         §§push(_loc5_.m_sweep.localCenter.y);
         if(false)
         {
            return;
         }
         var _loc9_:Number = §§pop() - §§pop();
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         §§push(_loc4_.m_invMass);
         if(false)
         {
            return false;
         }
         var _loc10_:Number = §§pop();
         var _loc11_:Number = _loc5_.m_invMass;
         var _loc12_:Number = _loc4_.m_invI;
         if(false)
         {
            return false;
         }
         var _loc13_:* = _loc5_.m_invI;
         var _loc14_:Number = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         var _loc15_:Number = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc16_:Number = _loc5_.m_sweep.a - _loc4_.m_sweep.a - m_referenceAngle;
         var _loc17_:Number = 10 * b2Settings.b2_linearSlop;
         var _loc18_:Number = Math.sqrt(_loc14_ * _loc14_ + _loc15_ * _loc15_);
         var _loc19_:Number = b2Math.Abs(_loc16_);
         if(_loc18_ > _loc17_)
         {
            _loc12_ *= 1;
            §§push(_loc13_ * 1);
            if(false)
            {
               return;
            }
            _loc13_ = §§pop();
         }
         §§push(m_mass.col1);
         §§push(_loc10_ + _loc11_);
         §§push(_loc7_);
         §§push(_loc7_);
         if(false)
         {
            return;
         }
         §§pop().x = §§pop() + §§pop() * §§pop() * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         m_mass.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         m_mass.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         §§push(m_mass.col1);
         if(false)
         {
            return;
         }
         §§pop().y = m_mass.col2.x;
         §§push(m_mass.col2);
         §§push(_loc10_ + _loc11_);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop() + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         m_mass.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         m_mass.col1.z = m_mass.col3.x;
         §§push(m_mass.col2);
         §§push(m_mass);
         if(false)
         {
            throw true;
         }
         §§pop().z = §§pop().col3.y;
         m_mass.col3.z = _loc12_ + _loc13_;
         var _loc20_:§\x1d\x03§ = new §\x1d\x03§();
         m_mass.§\t\x1c§(_loc20_,-_loc14_,-_loc15_,-_loc16_);
         _loc4_.m_sweep.c.x -= _loc10_ * _loc20_.x;
         _loc4_.m_sweep.c.y -= _loc10_ * _loc20_.y;
         §§push(_loc4_.m_sweep);
         §§push(_loc4_.m_sweep.a);
         if(false)
         {
            return;
         }
         §§pop().a = §§pop() - _loc12_ * (_loc6_ * _loc20_.y - _loc7_ * _loc20_.x + _loc20_.z);
         _loc5_.m_sweep.c.x += _loc11_ * _loc20_.x;
         §§push(_loc5_.m_sweep.c);
         §§push(_loc5_.m_sweep.c.y + _loc11_ * _loc20_.y);
         if(false)
         {
            return false;
         }
         §§pop().y = §§pop();
         _loc5_.m_sweep.a += _loc13_ * (_loc8_ * _loc20_.y - _loc9_ * _loc20_.x + _loc20_.z);
         _loc4_.§\t\f§();
         _loc5_.§\t\f§();
         var _temp_1:* = _loc18_ <= b2Settings.b2_linearSlop;
         §§push(_temp_1);
         if(_temp_1)
         {
            §§pop();
            §§push(_loc19_ <= b2Settings.b2_angularSlop);
            if(false)
            {
               throw true;
            }
         }
         return §§pop();
      }
   }
}

§§push(§§findproperty(§\x1d\x02§));
if(false)
{
   return;
}


package §\x1c\x13§
{
   import §\x0e\r§.*;
   import §\x1c\x10§.*;
   import §\x1c\x11§.§\x1e\b§;
   import §\x1c\x11§.§\x1e\t§;
   import §\x1c\x12§.*;
   import §\x1c\x14§.*;
   import §\x1c\x15§.*;
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
   
   public class §\x1d\x17§
   {
      
      private static var s_impulse:§\x1e\x0e§ = new §\x1e\x0e§();
      
      private var m_allocator:*;
      
      private var m_listener:b2ContactListener;
      
      private var m_contactSolver:§\x1e\n§;
      
      b2internal var m_bodies:Array;
      
      b2internal var m_contacts:Array;
      
      b2internal var m_joints:Array;
      
      b2internal var m_bodyCount:int;
      
      b2internal var m_jointCount:int;
      
      b2internal var m_contactCount:int;
      
      private var m_bodyCapacity:int;
      
      b2internal var m_contactCapacity:int;
      
      b2internal var m_jointCapacity:int;
      
      public function §\x1d\x17§()
      {
         super();
         b2internal::m_bodies = new Array();
         b2internal::m_contacts = new Array();
         b2internal::m_joints = new Array();
      }
      
      public function §\x10\x1d§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:§\x1e\n§) : void
      {
         var _loc7_:* = 0;
         m_bodyCapacity = param1;
         m_contactCapacity = param2;
         m_jointCapacity = param3;
         m_bodyCount = 0;
         if(false)
         {
            return false;
         }
         m_contactCount = 0;
         m_jointCount = 0;
         m_allocator = param4;
         m_listener = param5;
         m_contactSolver = param6;
         §§push(int(m_bodies.length));
         if(false)
         {
            return;
         }
         _loc7_ = §§pop();
         while(_loc7_ < param1)
         {
            m_bodies[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = int(m_contacts.length);
         while(_loc7_ < param2)
         {
            m_contacts[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = int(m_joints.length);
         while(_loc7_ < param3)
         {
            m_joints[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §\x1c\x04§() : void
      {
         m_bodyCount = 0;
         m_contactCount = 0;
         m_jointCount = 0;
      }
      
      public function §\n\x03§(param1:§\x1d\x06§, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:b2Body = null;
         var _loc7_:b2Joint = null;
         var _loc9_:Number = NaN;
         §§push(NaN);
         if(false)
         {
            return;
         }
         var _loc10_:* = §§pop();
         var _loc11_:* = NaN;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         §§push(NaN);
         if(false)
         {
            return;
         }
         var _loc17_:* = §§pop();
         _loc4_ = 0;
         while(_loc4_ < m_bodyCount)
         {
            var _temp_1:* = m_bodies[_loc4_];
            _loc6_ = m_bodies[_loc4_];
            if(_loc6_.GetType() == b2Body.b2_dynamicBody)
            {
               §§push(_loc6_.m_linearVelocity);
               §§push(_loc6_);
               if(false)
               {
                  throw true;
               }
               §§pop().x = §§pop().b2internal::m_linearVelocity.x + param1.dt * (param2.x + _loc6_.m_invMass * _loc6_.m_force.x);
               §§push(_loc6_.m_linearVelocity);
               §§push(_loc6_.m_linearVelocity.y);
               §§push(param1.dt);
               if(false)
               {
                  throw true;
               }
               §§pop().y = §§pop() + §§pop() * (param2.y + _loc6_.m_invMass * _loc6_.m_force.y);
               _loc6_.m_angularVelocity += param1.dt * _loc6_.m_invI * _loc6_.m_torque;
               _loc6_.m_linearVelocity.Multiply(b2Math.Clamp(1 - param1.dt * _loc6_.m_linearDamping,0,1));
               _loc6_.m_angularVelocity *= b2Math.Clamp(1 - param1.dt * _loc6_.m_angularDamping,0,1);
            }
            _loc4_++;
         }
         m_contactSolver.§\x10\x1d§(param1,m_contacts,m_contactCount,m_allocator);
         var _loc8_:§\x1e\n§ = m_contactSolver;
         _loc8_.InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < m_jointCount)
         {
            var _temp_3:* = m_joints[_loc4_];
            _loc7_ = m_joints[_loc4_];
            _loc7_.InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.velocityIterations)
         {
            _loc5_ = 0;
            while(_loc5_ < m_jointCount)
            {
               _loc7_ = m_joints[_loc5_];
               _loc7_.SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < m_jointCount)
         {
            var _temp_5:* = m_joints[_loc4_];
            _loc7_ = m_joints[_loc4_];
            _loc7_.§\x19\x10§();
            _loc4_++;
         }
         _loc8_.§\x19\x10§();
         _loc4_ = 0;
         while(_loc4_ < m_bodyCount)
         {
            §§push(m_bodies);
            if(false)
            {
               return;
            }
            _loc6_ = §§pop()[_loc4_];
            if(_loc6_.GetType() != b2Body.b2_staticBody)
            {
               §§push(param1.dt * _loc6_.m_linearVelocity.x);
               if(false)
               {
                  return;
               }
               _loc9_ = §§pop();
               §§push(param1.dt * _loc6_.m_linearVelocity.y);
               if(false)
               {
                  return false;
               }
               _loc10_ = Number(§§pop());
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.m_linearVelocity.Normalize();
                  _loc6_.m_linearVelocity.x *= b2Settings.b2_maxTranslation * param1.inv_dt;
                  _loc6_.m_linearVelocity.y *= b2Settings.b2_maxTranslation * param1.inv_dt;
                  if(false)
                  {
                     throw true;
                  }
               }
               var _temp_7:* = param1.dt * _loc6_.m_angularVelocity;
               §§push(_temp_7);
               §§push(_temp_7);
               if(false)
               {
                  return;
               }
               _loc11_ = §§pop();
               if(§§pop() * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.inv_dt;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.inv_dt;
                  }
               }
               §§push(_loc6_.m_sweep.c0);
               §§push(_loc6_);
               if(false)
               {
                  throw true;
               }
               §§pop().SetV(§§pop().b2internal::m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.dt * _loc6_.m_linearVelocity.x;
               _loc6_.m_sweep.c.y += param1.dt * _loc6_.m_linearVelocity.y;
               _loc6_.m_sweep.a += param1.dt * _loc6_.m_angularVelocity;
               _loc6_.§\t\f§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.positionIterations)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < m_jointCount)
            {
               _loc7_ = m_joints[_loc5_];
               _loc14_ = _loc7_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               if(false)
               {
                  return false;
               }
               _loc13_ &&= _loc14_;
               _loc5_++;
            }
            var _temp_11:* = _loc12_;
            §§push(_temp_11);
            if(_temp_11)
            {
               §§pop();
               §§push(_loc13_);
               if(false)
               {
                  return;
               }
            }
            if(§§pop())
            {
               break;
            }
            _loc4_++;
         }
         §\r\x11§(_loc8_.m_constraints);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < m_bodyCount)
            {
               _loc6_ = m_bodies[_loc4_];
               if(_loc6_.GetType() != b2Body.b2_staticBody)
               {
                  if((_loc6_.m_flags & b2Body.e_allowSleepFlag) == 0)
                  {
                     _loc6_.m_sleepTime = 0;
                     _loc15_ = 0;
                  }
                  var _temp_14:* = (_loc6_.m_flags & b2Body.e_allowSleepFlag) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_;
                  §§push(_temp_14);
                  if(!_temp_14)
                  {
                     §§pop();
                     §§push(b2Math.Dot(_loc6_.m_linearVelocity,_loc6_.m_linearVelocity) > _loc16_);
                     if(false)
                     {
                        throw true;
                     }
                  }
                  if(!§§pop())
                  {
                     _loc6_.m_sleepTime += param1.dt;
                     _loc15_ = b2Math.Min(_loc15_,_loc6_.m_sleepTime);
                  }
                  else
                  {
                     _loc6_.m_sleepTime = 0;
                     _loc15_ = 0;
                     if(false)
                     {
                        return;
                     }
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < m_bodyCount)
               {
                  var _temp_15:* = m_bodies[_loc4_];
                  _loc6_ = m_bodies[_loc4_];
                  _loc6_.SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §\t\x1b§(param1:§\x1d\x06§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         §§push(m_contactSolver);
         §§push(param1);
         if(false)
         {
            return;
         }
         §§pop().§\x10\x1d§(§§pop(),m_contacts,m_contactCount,m_allocator);
         var _loc4_:§\x1e\n§ = m_contactSolver;
         _loc2_ = 0;
         while(_loc2_ < m_jointCount)
         {
            m_joints[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         loop1:
         while(_loc2_ < param1.velocityIterations)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            do
            {
               if(_loc3_ < m_jointCount)
               {
                  continue;
               }
               _loc2_++;
               continue loop1;
            }
            while(m_joints[_loc3_].SolveVelocityConstraints(param1), _loc3_++, true);
            throw true;
         }
         _loc2_ = 0;
         while(_loc2_ < m_bodyCount)
         {
            _loc6_ = m_bodies[_loc2_];
            if(_loc6_.GetType() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.dt * _loc6_.m_linearVelocity.x;
               _loc8_ = param1.dt * _loc6_.m_linearVelocity.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.m_linearVelocity.Normalize();
                  _loc6_.m_linearVelocity.x *= b2Settings.b2_maxTranslation * param1.inv_dt;
                  _loc6_.m_linearVelocity.y *= b2Settings.b2_maxTranslation * param1.inv_dt;
               }
               var _temp_2:* = param1.dt * _loc6_.m_angularVelocity;
               _loc9_ = param1.dt * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.inv_dt;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.inv_dt;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.dt * _loc6_.m_linearVelocity.x;
               _loc6_.m_sweep.c.y += param1.dt * _loc6_.m_linearVelocity.y;
               _loc6_.m_sweep.a += param1.dt * _loc6_.m_angularVelocity;
               _loc6_.§\t\f§();
            }
            _loc2_++;
         }
         var _loc5_:Number = 0.75;
         _loc2_ = 0;
         while(_loc2_ < param1.positionIterations)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(_loc5_);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < m_jointCount)
            {
               _loc12_ = Boolean(m_joints[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
               _loc11_ &&= _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         §\r\x11§(_loc4_.m_constraints);
      }
      
      public function §\r\x11§(param1:Array) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:§\x1e\x13§ = null;
         var _loc5_:int = 0;
         if(m_listener != null)
         {
            var _loc2_:int = 0;
            while(_loc2_ < m_contactCount)
            {
               _loc3_ = m_contacts[_loc2_];
               §§push(param1);
               §§push(_loc2_);
               if(false)
               {
                  return false;
               }
               _loc4_ = §§pop()[§§pop()];
               _loc5_ = 0;
               while(_loc5_ < _loc4_.pointCount)
               {
                  s_impulse.normalImpulses[_loc5_] = _loc4_.points[_loc5_].normalImpulse;
                  s_impulse.tangentImpulses[_loc5_] = _loc4_.points[_loc5_].tangentImpulse;
                  _loc5_++;
               }
               m_listener.§\x0e\f§(_loc3_,s_impulse);
               _loc2_++;
            }
            return;
         }
      }
      
      public function §\x18§(param1:b2Body) : void
      {
         param1.m_islandIndex = m_bodyCount;
         §§push(m_bodies);
         var _loc3_:*;
         var _temp_2:* = (_loc3_ = §§findproperty(b2internal::m_bodyCount)).b2internal::m_bodyCount;
         §§push(_temp_2);
         var _loc4_:Number = _temp_2 + 1;
         _loc3_.b2internal::m_bodyCount = _loc4_;
         var _loc2_:* = §§pop();
         §§pop()[_loc2_] = param1;
      }
      
      public function §\x15§(param1:b2Contact) : void
      {
         §§push(m_contacts);
         var _temp_1:* = §§findproperty(b2internal::m_contactCount);
         var _loc3_:* = §§findproperty(b2internal::m_contactCount);
         var _temp_2:* = _loc3_.b2internal::m_contactCount;
         §§push(_temp_2);
         var _loc4_:Number = _temp_2 + 1;
         _loc3_.b2internal::m_contactCount = _loc4_;
         if(false)
         {
            return;
         }
         var _loc2_:* = §§pop();
         §§pop()[_loc2_] = param1;
      }
      
      public function §\x10§(param1:b2Joint) : void
      {
         §§push(m_joints);
         var _loc3_:*;
         var _temp_2:* = (_loc3_ = §§findproperty(b2internal::m_jointCount)).b2internal::m_jointCount;
         §§push(_temp_2);
         var _loc4_:Number = _temp_2 + 1;
         _loc3_.b2internal::m_jointCount = _loc4_;
         var _loc2_:* = §§pop();
         §§pop()[_loc2_] = param1;
         if(false)
         {
            return false;
         }
      }
   }
}


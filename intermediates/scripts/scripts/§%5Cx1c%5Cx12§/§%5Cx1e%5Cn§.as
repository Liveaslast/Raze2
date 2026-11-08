package §\x1c\x12§
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2GearJointDef;
   import §\x1c\x10§.b2MouseJointDef;
   import §\x1c\x10§.b2PrismaticJointDef;
   import §\x1c\x10§.b2PulleyJointDef;
   import §\x1c\x10§.b2RevoluteJointDef;
   import §\x1c\x10§.b2WeldJointDef;
   import §\x1c\x11§.§\x1e\b§;
   import §\x1c\x11§.§\x1e\t§;
   import §\x1c\x13§.*;
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
   
   public class §\x1e\n§
   {
      
      private static var s_worldManifold:§\x1d\x01§ = new §\x1d\x01§();
      
      §§push(§§findproperty(s_psm));
      §§push(§§findproperty(§\x1d\x0e§));
      if(false)
      {
         return;
      }
      
      private static var s_psm:§\x1d\x0e§ = new §§pop().§\x1d\x0e§();
      
      private var m_step:§\x1d\x06§ = new §\x1d\x06§();
      
      private var m_allocator:*;
      
      b2internal var m_constraints:Array = new Array();
      
      private var m_constraintCount:int;
      
      public function §\x1e\n§()
      {
         super();
      }
      
      public function §\x10\x1d§(param1:§\x1d\x06§, param2:Array, param3:int, param4:*) : void
      {
         var _loc5_:b2Contact = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Mat22 = null;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc11_:b2Shape = null;
         var _loc12_:b2Shape = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         if(false)
         {
            return false;
         }
         var _loc15_:b2Body = null;
         var _loc16_:b2Body = null;
         var _loc17_:b2Manifold = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:§\x1e\x13§ = null;
         §§push(0);
         if(false)
         {
            return;
         }
         var _loc29_:* = §§pop();
         var _loc30_:b2ManifoldPoint = null;
         var _loc31_:§\x1e\x12§ = null;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         §§push(NaN);
         if(false)
         {
            return;
         }
         var _loc36_:* = §§pop();
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         if(false)
         {
            return;
         }
         var _loc41_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc48_:§\x1e\x12§ = null;
         §§push(null);
         if(false)
         {
            throw true;
         }
         var _loc49_:§\x1e\x12§ = §§pop();
         var _loc50_:Number = NaN;
         var _loc51_:Number = NaN;
         var _loc52_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc54_:Number = NaN;
         var _loc55_:Number = NaN;
         var _loc56_:Number = NaN;
         var _loc57_:Number = NaN;
         var _loc58_:Number = NaN;
         var _loc59_:Number = NaN;
         §§push(NaN);
         if(false)
         {
            return false;
         }
         var _loc60_:* = §§pop();
         var _loc61_:Number = NaN;
         m_step.Set(param1);
         §§push(§§findproperty(m_allocator));
         §§push(param4);
         if(false)
         {
            return;
         }
         §§pop().m_allocator = §§pop();
         m_constraintCount = param3;
         while(m_constraints.length < m_constraintCount)
         {
            m_constraints[m_constraints.length] = new §\x1e\x13§();
         }
         _loc6_ = 0;
         while(_loc6_ < param3)
         {
            _loc5_ = param2[_loc6_];
            _loc9_ = _loc5_.m_fixtureA;
            _loc10_ = _loc5_.m_fixtureB;
            _loc11_ = _loc9_.m_shape;
            _loc12_ = _loc10_.m_shape;
            _loc13_ = _loc11_.m_radius;
            _loc14_ = _loc12_.m_radius;
            _loc15_ = _loc9_.m_body;
            §§push(_loc10_.m_body);
            if(false)
            {
               return;
            }
            _loc16_ = §§pop();
            _loc17_ = _loc5_.§\x13\x02§();
            _loc18_ = b2Settings.b2MixFriction(_loc9_.§\x13\x19§(),_loc10_.§\x13\x19§());
            _loc19_ = b2Settings.b2MixRestitution(_loc9_.§\x12\n§(),_loc10_.§\x12\n§());
            _loc20_ = _loc15_.m_linearVelocity.x;
            _loc21_ = _loc15_.m_linearVelocity.y;
            _loc22_ = _loc16_.m_linearVelocity.x;
            _loc23_ = _loc16_.m_linearVelocity.y;
            _loc24_ = _loc15_.m_angularVelocity;
            _loc25_ = _loc16_.m_angularVelocity;
            b2Settings.b2Assert(_loc17_.m_pointCount > 0);
            s_worldManifold.§\x10\x1d§(_loc17_,_loc15_.m_xf,_loc13_,_loc16_.m_xf,_loc14_);
            _loc26_ = s_worldManifold.m_normal.x;
            _loc27_ = s_worldManifold.m_normal.y;
            §§push(m_constraints[_loc6_]);
            if(false)
            {
               return;
            }
            _loc28_ = §§pop();
            _loc28_.bodyA = _loc15_;
            _loc28_.bodyB = _loc16_;
            _loc28_.manifold = _loc17_;
            _loc28_.normal.x = _loc26_;
            _loc28_.normal.y = _loc27_;
            _loc28_.pointCount = _loc17_.m_pointCount;
            _loc28_.friction = _loc18_;
            _loc28_.restitution = _loc19_;
            _loc28_.localPlaneNormal.x = _loc17_.m_localPlaneNormal.x;
            _loc28_.localPlaneNormal.y = _loc17_.m_localPlaneNormal.y;
            _loc28_.localPoint.x = _loc17_.m_localPoint.x;
            _loc28_.localPoint.y = _loc17_.m_localPoint.y;
            _loc28_.radius = _loc13_ + _loc14_;
            _loc28_.type = _loc17_.m_type;
            _loc29_ = 0;
            while(_loc29_ < _loc28_.pointCount)
            {
               _loc30_ = _loc17_.m_points[_loc29_];
               _loc31_ = _loc28_.points[_loc29_];
               _loc31_.normalImpulse = _loc30_.m_normalImpulse;
               _loc31_.tangentImpulse = _loc30_.m_tangentImpulse;
               if(false)
               {
                  throw true;
               }
               _loc31_.localPoint.SetV(_loc30_.m_localPoint);
               §§push(_loc31_.rA);
               var _loc62_:Number;
               §§push(_loc62_ = s_worldManifold.m_points[_loc29_].x - _loc15_.m_sweep.c.x);
               if(false)
               {
                  return;
               }
               §§pop().x = §§pop();
               _loc32_ = _loc62_;
               _loc33_ = _loc31_.rA.y = s_worldManifold.m_points[_loc29_].y - _loc15_.m_sweep.c.y;
               _loc34_ = _loc31_.rB.x = s_worldManifold.m_points[_loc29_].x - _loc16_.m_sweep.c.x;
               _loc35_ = _loc31_.rB.y = s_worldManifold.m_points[_loc29_].y - _loc16_.m_sweep.c.y;
               _loc36_ = _loc32_ * _loc27_ - _loc33_ * _loc26_;
               §§push(_loc34_ * _loc27_);
               §§push(_loc35_);
               §§push(_loc26_);
               if(false)
               {
                  throw true;
               }
               _loc37_ = §§pop() - §§pop() * §§pop();
               _loc36_ *= _loc36_;
               _loc37_ *= _loc37_;
               _loc38_ = _loc15_.m_invMass + _loc16_.m_invMass + _loc15_.m_invI * _loc36_ + _loc16_.m_invI * _loc37_;
               _loc31_.normalMass = 1 / _loc38_;
               _loc39_ = _loc15_.m_mass * _loc15_.m_invMass + _loc16_.m_mass * _loc16_.m_invMass;
               §§push(_loc39_);
               §§push(_loc15_.m_mass * _loc15_.m_invI * _loc36_ + _loc16_.m_mass * _loc16_.m_invI * _loc37_);
               if(false)
               {
                  throw true;
               }
               _loc39_ = §§pop() + §§pop();
               _loc31_.equalizedMass = 1 / _loc39_;
               _loc40_ = _loc27_;
               _loc41_ = -_loc26_;
               _loc42_ = _loc32_ * _loc41_ - _loc33_ * _loc40_;
               _loc43_ = _loc34_ * _loc41_ - _loc35_ * _loc40_;
               _loc42_ *= _loc42_;
               _loc43_ *= _loc43_;
               _loc44_ = _loc15_.m_invMass + _loc16_.m_invMass + _loc15_.m_invI * _loc42_ + _loc16_.m_invI * _loc43_;
               _loc31_.tangentMass = 1 / _loc44_;
               _loc31_.velocityBias = 0;
               §§push(_loc22_ + -_loc25_ * _loc35_ - _loc20_);
               §§push(-_loc24_);
               §§push(_loc33_);
               if(false)
               {
                  throw true;
               }
               _loc45_ = §§pop() - §§pop() * §§pop();
               _loc46_ = _loc23_ + _loc25_ * _loc34_ - _loc21_ - _loc24_ * _loc32_;
               _loc47_ = _loc28_.normal.x * _loc45_ + _loc28_.normal.y * _loc46_;
               if(_loc47_ < -b2Settings.b2_velocityThreshold)
               {
                  _loc31_.velocityBias += -_loc28_.restitution * _loc47_;
               }
               _loc29_++;
            }
            if(_loc28_.pointCount == 2)
            {
               _loc48_ = _loc28_.points[0];
               _loc49_ = _loc28_.points[1];
               _loc50_ = _loc15_.m_invMass;
               _loc51_ = _loc15_.m_invI;
               _loc52_ = _loc16_.m_invMass;
               _loc53_ = _loc16_.m_invI;
               §§push(_loc48_.rA);
               if(false)
               {
                  throw true;
               }
               _loc54_ = §§pop().x * _loc27_ - _loc48_.rA.y * _loc26_;
               _loc55_ = _loc48_.rB.x * _loc27_ - _loc48_.rB.y * _loc26_;
               _loc56_ = _loc49_.rA.x * _loc27_ - _loc49_.rA.y * _loc26_;
               §§push(_loc49_.rB.x * _loc27_);
               §§push(_loc49_.rB.y);
               if(false)
               {
                  throw true;
               }
               _loc57_ = §§pop() - §§pop() * _loc26_;
               _loc58_ = _loc50_ + _loc52_ + _loc51_ * _loc54_ * _loc54_ + _loc53_ * _loc55_ * _loc55_;
               _loc59_ = _loc50_ + _loc52_ + _loc51_ * _loc56_ * _loc56_ + _loc53_ * _loc57_ * _loc57_;
               §§push(_loc50_ + _loc52_);
               §§push(_loc51_ * _loc54_ * _loc56_);
               if(false)
               {
                  return;
               }
               _loc60_ = §§pop() + §§pop() + _loc53_ * _loc55_ * _loc57_;
               if(false)
               {
                  return false;
               }
               _loc61_ = 100;
               §§push(_loc58_ * _loc58_);
               §§push(_loc61_ * (_loc58_ * _loc59_ - _loc60_ * _loc60_));
               if(false)
               {
                  return;
               }
               if(§§pop() >= §§pop())
               {
                  _loc28_.pointCount = 1;
               }
               else
               {
                  _loc28_.K.col1.Set(_loc58_,_loc60_);
                  _loc28_.K.col2.Set(_loc60_,_loc59_);
                  _loc28_.K.GetInverse(_loc28_.normalMass);
               }
            }
            _loc6_++;
         }
      }
      
      public function InitVelocityConstraints(param1:§\x1d\x06§) : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Mat22 = null;
         var _loc6_:§\x1e\x13§ = null;
         var _loc7_:b2Body = null;
         var _loc8_:b2Body = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:§\x1e\x12§ = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         §§push(null);
         if(false)
         {
            throw true;
         }
         var _loc23_:§\x1e\x12§ = §§pop();
         var _loc5_:int = 0;
         while(_loc5_ < m_constraintCount)
         {
            _loc6_ = m_constraints[_loc5_];
            _loc7_ = _loc6_.bodyA;
            _loc8_ = _loc6_.bodyB;
            _loc9_ = _loc7_.m_invMass;
            _loc10_ = _loc7_.m_invI;
            _loc11_ = _loc8_.m_invMass;
            _loc12_ = _loc8_.m_invI;
            _loc13_ = _loc6_.normal.x;
            _loc15_ = _loc14_ = _loc6_.normal.y;
            _loc16_ = -_loc13_;
            if(!param1.warmStarting)
            {
               _loc19_ = _loc6_.pointCount;
               _loc18_ = 0;
               while(_loc18_ < _loc19_)
               {
                  _loc23_ = _loc6_.points[_loc18_];
                  _loc23_.normalImpulse = 0;
                  _loc23_.tangentImpulse = 0;
                  _loc18_++;
               }
            }
            else
            {
               _loc19_ = _loc6_.pointCount;
               _loc18_ = 0;
               while(_loc18_ < _loc19_)
               {
                  _loc20_ = _loc6_.points[_loc18_];
                  _loc20_.normalImpulse *= param1.dtRatio;
                  _loc20_.tangentImpulse *= param1.dtRatio;
                  _loc21_ = _loc20_.normalImpulse * _loc13_ + _loc20_.tangentImpulse * _loc15_;
                  _loc22_ = _loc20_.normalImpulse * _loc14_ + _loc20_.tangentImpulse * _loc16_;
                  §§push(_loc7_);
                  §§push(_loc7_.m_angularVelocity);
                  §§push(_loc10_);
                  §§push(_loc20_.rA.x * _loc22_);
                  §§push(_loc20_.rA.y);
                  if(false)
                  {
                     return;
                  }
                  §§pop().b2internal::m_angularVelocity = §§pop() - §§pop() * (§§pop() - §§pop() * _loc21_);
                  _loc7_.m_linearVelocity.x -= _loc9_ * _loc21_;
                  _loc7_.m_linearVelocity.y -= _loc9_ * _loc22_;
                  §§push(_loc8_);
                  §§push(_loc8_.m_angularVelocity);
                  §§push(_loc12_);
                  §§push(_loc20_.rB.x * _loc22_);
                  §§push(_loc20_);
                  if(false)
                  {
                     return;
                  }
                  §§push(§§pop() * (§§pop() - §§pop().rB.y * _loc21_));
                  if(false)
                  {
                     return;
                  }
                  §§pop().b2internal::m_angularVelocity = §§pop() + §§pop();
                  _loc8_.m_linearVelocity.x += _loc11_ * _loc21_;
                  _loc8_.m_linearVelocity.y += _loc11_ * _loc22_;
                  _loc18_++;
               }
            }
            _loc5_++;
         }
      }
      
      public function SolveVelocityConstraints() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§\x1e\x12§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         if(false)
         {
            return;
         }
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:* = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:b2Mat22 = null;
         var _loc23_:b2Vec2 = null;
         var _loc25_:§\x1e\x13§ = null;
         var _loc26_:b2Body = null;
         var _loc27_:b2Body = null;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:b2Vec2 = null;
         var _loc31_:b2Vec2 = null;
         var _loc32_:* = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:Number = NaN;
         §§push(0);
         if(false)
         {
            throw true;
         }
         var _loc42_:* = §§pop();
         var _loc43_:§\x1e\x12§ = null;
         var _loc44_:§\x1e\x12§ = null;
         var _loc45_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc48_:Number = NaN;
         var _loc49_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc51_:Number = NaN;
         var _loc52_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc54_:Number = NaN;
         var _loc55_:Number = NaN;
         var _loc56_:Number = NaN;
         var _loc57_:Number = NaN;
         var _loc24_:int = 0;
         while(_loc24_ < m_constraintCount)
         {
            _loc25_ = m_constraints[_loc24_];
            _loc26_ = _loc25_.bodyA;
            _loc27_ = _loc25_.bodyB;
            _loc28_ = _loc26_.m_angularVelocity;
            _loc29_ = _loc27_.m_angularVelocity;
            _loc30_ = _loc26_.m_linearVelocity;
            _loc31_ = _loc27_.m_linearVelocity;
            §§push(_loc26_.m_invMass);
            if(false)
            {
               return;
            }
            _loc32_ = §§pop();
            _loc33_ = _loc26_.m_invI;
            _loc34_ = _loc27_.m_invMass;
            _loc35_ = _loc27_.m_invI;
            _loc36_ = _loc25_.normal.x;
            _loc38_ = _loc37_ = _loc25_.normal.y;
            _loc39_ = -_loc36_;
            _loc40_ = _loc25_.friction;
            _loc1_ = 0;
            while(_loc1_ < _loc25_.pointCount)
            {
               _loc2_ = _loc25_.points[_loc1_];
               §§push(_loc31_.x);
               §§push(_loc29_);
               §§push(_loc2_);
               if(false)
               {
                  throw true;
               }
               _loc7_ = §§pop() - §§pop() * §§pop().rB.y - _loc30_.x + _loc28_ * _loc2_.rA.y;
               _loc8_ = _loc31_.y + _loc29_ * _loc2_.rB.x - _loc30_.y - _loc28_ * _loc2_.rA.x;
               §§push(_loc7_ * _loc38_);
               §§push(_loc8_);
               if(false)
               {
                  return;
               }
               _loc10_ = §§pop() + §§pop() * _loc39_;
               _loc11_ = _loc2_.tangentMass * -_loc10_;
               _loc12_ = _loc40_ * _loc2_.normalImpulse;
               _loc13_ = b2Math.Clamp(_loc2_.tangentImpulse + _loc11_,-_loc12_,_loc12_);
               _loc11_ = _loc13_ - _loc2_.tangentImpulse;
               §§push(_loc11_ * _loc38_);
               if(false)
               {
                  throw true;
               }
               _loc14_ = §§pop();
               _loc15_ = _loc11_ * _loc39_;
               _loc30_.x -= _loc32_ * _loc14_;
               _loc30_.y -= _loc32_ * _loc15_;
               _loc28_ -= _loc33_ * (_loc2_.rA.x * _loc15_ - _loc2_.rA.y * _loc14_);
               _loc31_.x += _loc34_ * _loc14_;
               _loc31_.y += _loc34_ * _loc15_;
               _loc29_ += _loc35_ * (_loc2_.rB.x * _loc15_ - _loc2_.rB.y * _loc14_);
               _loc2_.tangentImpulse = _loc13_;
               if(false)
               {
                  throw true;
               }
               _loc1_++;
            }
            _loc42_ = _loc25_.pointCount;
            if(_loc25_.pointCount != 1)
            {
               _loc43_ = _loc25_.points[0];
               _loc44_ = _loc25_.points[1];
               _loc45_ = _loc43_.normalImpulse;
               _loc46_ = _loc44_.normalImpulse;
               _loc47_ = _loc31_.x - _loc29_ * _loc43_.rB.y - _loc30_.x + _loc28_ * _loc43_.rA.y;
               _loc48_ = _loc31_.y + _loc29_ * _loc43_.rB.x - _loc30_.y - _loc28_ * _loc43_.rA.x;
               §§push(_loc31_.x - _loc29_ * _loc44_.rB.y);
               §§push(_loc30_.x);
               if(false)
               {
                  return;
               }
               _loc49_ = §§pop() - §§pop() + _loc28_ * _loc44_.rA.y;
               _loc50_ = _loc31_.y + _loc29_ * _loc44_.rB.x - _loc30_.y - _loc28_ * _loc44_.rA.x;
               _loc51_ = _loc47_ * _loc36_ + _loc48_ * _loc37_;
               §§push(_loc49_ * _loc36_ + _loc50_ * _loc37_);
               if(false)
               {
                  return false;
               }
               _loc52_ = §§pop();
               _loc53_ = _loc51_ - _loc43_.velocityBias;
               _loc54_ = _loc52_ - _loc44_.velocityBias;
               _loc22_ = _loc25_.K;
               _loc53_ -= _loc22_.col1.x * _loc45_ + _loc22_.col2.x * _loc46_;
               _loc54_ -= _loc22_.col1.y * _loc45_ + _loc22_.col2.y * _loc46_;
               _loc55_ = 0.001;
               _loc22_ = _loc25_.normalMass;
               _loc56_ = -(_loc22_.col1.x * _loc53_ + _loc22_.col2.x * _loc54_);
               §§push(_loc22_);
               if(false)
               {
                  return;
               }
               _loc57_ = -(§§pop().col1.y * _loc53_ + _loc22_.col2.y * _loc54_);
               if(!(_loc56_ >= 0 && _loc57_ >= 0))
               {
                  _loc56_ = -_loc43_.normalMass * _loc53_;
                  _loc57_ = 0;
                  _loc51_ = 0;
                  §§push(_loc25_.K.col1.y * _loc56_);
                  §§push(_loc54_);
                  if(false)
                  {
                     throw true;
                  }
                  _loc52_ = §§pop() + §§pop();
                  if(_loc56_ >= 0 && _loc52_ >= 0)
                  {
                     if(false)
                     {
                        return;
                     }
                     _loc16_ = _loc56_ - _loc45_;
                     _loc17_ = _loc57_ - _loc46_;
                     _loc18_ = _loc16_ * _loc36_;
                     _loc19_ = _loc16_ * _loc37_;
                     §§push(_loc17_ * _loc36_);
                     if(false)
                     {
                        return;
                     }
                     _loc20_ = §§pop();
                     _loc21_ = _loc17_ * _loc37_;
                     _loc30_.x -= _loc32_ * (_loc18_ + _loc20_);
                     _loc30_.y -= _loc32_ * (_loc19_ + _loc21_);
                     §§push(_loc28_);
                     §§push(_loc33_);
                     §§push(_loc43_.rA.x * _loc19_ - _loc43_.rA.y * _loc18_ + _loc44_.rA.x * _loc21_);
                     §§push(_loc44_.rA);
                     if(false)
                     {
                        return;
                     }
                     _loc28_ = §§pop() - §§pop() * (§§pop() - §§pop().y * _loc20_);
                     _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                     _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                     _loc29_ += _loc35_ * (_loc43_.rB.x * _loc19_ - _loc43_.rB.y * _loc18_ + _loc44_.rB.x * _loc21_ - _loc44_.rB.y * _loc20_);
                     _loc43_.normalImpulse = _loc56_;
                     _loc44_.normalImpulse = _loc57_;
                  }
                  else
                  {
                     _loc56_ = 0;
                     §§push(-_loc44_.normalMass * _loc54_);
                     if(false)
                     {
                        return;
                     }
                     _loc57_ = §§pop();
                     §§push(_loc25_.K.col2.x * _loc57_);
                     if(false)
                     {
                        return;
                     }
                     _loc51_ = §§pop() + _loc53_;
                     _loc52_ = 0;
                     if(!(_loc57_ >= 0 && _loc51_ >= 0))
                     {
                        _loc56_ = 0;
                        _loc57_ = 0;
                        _loc51_ = _loc53_;
                        _loc52_ = _loc54_;
                        if(_loc51_ >= 0 && _loc52_ >= 0)
                        {
                           _loc16_ = _loc56_ - _loc45_;
                           _loc17_ = _loc57_ - _loc46_;
                           _loc18_ = _loc16_ * _loc36_;
                           _loc19_ = _loc16_ * _loc37_;
                           _loc20_ = _loc17_ * _loc36_;
                           _loc21_ = _loc17_ * _loc37_;
                           §§push(_loc30_);
                           §§push(_loc30_.x - _loc32_ * (_loc18_ + _loc20_));
                           if(false)
                           {
                              throw true;
                           }
                           §§pop().x = §§pop();
                           §§push(_loc30_);
                           §§push(_loc30_.y);
                           §§push(_loc32_);
                           §§push(_loc19_);
                           if(false)
                           {
                              return;
                           }
                           §§pop().y = §§pop() - §§pop() * (§§pop() + _loc21_);
                           _loc28_ -= _loc33_ * (_loc43_.rA.x * _loc19_ - _loc43_.rA.y * _loc18_ + _loc44_.rA.x * _loc21_ - _loc44_.rA.y * _loc20_);
                           _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                           §§push(_loc31_);
                           if(false)
                           {
                              throw true;
                           }
                           §§pop().y = _loc31_.y + _loc34_ * (_loc19_ + _loc21_);
                           _loc29_ += _loc35_ * (_loc43_.rB.x * _loc19_ - _loc43_.rB.y * _loc18_ + _loc44_.rB.x * _loc21_ - _loc44_.rB.y * _loc20_);
                           _loc43_.normalImpulse = _loc56_;
                           _loc44_.normalImpulse = _loc57_;
                        }
                     }
                     else
                     {
                        _loc16_ = _loc56_ - _loc45_;
                        _loc17_ = _loc57_ - _loc46_;
                        _loc18_ = _loc16_ * _loc36_;
                        _loc19_ = _loc16_ * _loc37_;
                        _loc20_ = _loc17_ * _loc36_;
                        _loc21_ = _loc17_ * _loc37_;
                        _loc30_.x -= _loc32_ * (_loc18_ + _loc20_);
                        _loc30_.y -= _loc32_ * (_loc19_ + _loc21_);
                        _loc28_ -= _loc33_ * (_loc43_.rA.x * _loc19_ - _loc43_.rA.y * _loc18_ + _loc44_.rA.x * _loc21_ - _loc44_.rA.y * _loc20_);
                        §§push(_loc31_);
                        §§push(_loc31_.x);
                        §§push(_loc34_);
                        §§push(_loc18_);
                        if(false)
                        {
                           return;
                        }
                        §§pop().x = §§pop() + §§pop() * (§§pop() + _loc20_);
                        _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                        _loc29_ += _loc35_ * (_loc43_.rB.x * _loc19_ - _loc43_.rB.y * _loc18_ + _loc44_.rB.x * _loc21_ - _loc44_.rB.y * _loc20_);
                        _loc43_.normalImpulse = _loc56_;
                        _loc44_.normalImpulse = _loc57_;
                     }
                  }
               }
               else
               {
                  _loc16_ = _loc56_ - _loc45_;
                  if(false)
                  {
                     return;
                  }
                  _loc17_ = _loc57_ - _loc46_;
                  _loc18_ = _loc16_ * _loc36_;
                  _loc19_ = _loc16_ * _loc37_;
                  _loc20_ = _loc17_ * _loc36_;
                  _loc21_ = _loc17_ * _loc37_;
                  _loc30_.x -= _loc32_ * (_loc18_ + _loc20_);
                  _loc30_.y -= _loc32_ * (_loc19_ + _loc21_);
                  _loc28_ -= _loc33_ * (_loc43_.rA.x * _loc19_ - _loc43_.rA.y * _loc18_ + _loc44_.rA.x * _loc21_ - _loc44_.rA.y * _loc20_);
                  _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                  _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                  §§push(_loc29_);
                  §§push(_loc35_);
                  §§push(_loc43_.rB.x * _loc19_);
                  §§push(_loc43_.rB);
                  if(false)
                  {
                     throw true;
                  }
                  _loc29_ = §§pop() + §§pop() * (§§pop() - §§pop().y * _loc18_ + _loc44_.rB.x * _loc21_ - _loc44_.rB.y * _loc20_);
                  _loc43_.normalImpulse = _loc56_;
                  if(false)
                  {
                     return;
                  }
                  _loc44_.normalImpulse = _loc57_;
               }
            }
            else
            {
               _loc2_ = _loc25_.points[0];
               _loc7_ = _loc31_.x + -_loc29_ * _loc2_.rB.y - _loc30_.x - -_loc28_ * _loc2_.rA.y;
               _loc8_ = _loc31_.y + _loc29_ * _loc2_.rB.x - _loc30_.y - _loc28_ * _loc2_.rA.x;
               §§push(_loc7_ * _loc36_);
               if(false)
               {
                  return false;
               }
               _loc9_ = §§pop() + _loc8_ * _loc37_;
               _loc11_ = -_loc2_.normalMass * (_loc9_ - _loc2_.velocityBias);
               _loc13_ = _loc2_.normalImpulse + _loc11_;
               _loc13_ = _loc13_ <= 0 ? 0 : _loc13_;
               _loc11_ = _loc13_ - _loc2_.normalImpulse;
               _loc14_ = _loc11_ * _loc36_;
               _loc15_ = _loc11_ * _loc37_;
               _loc30_.x -= _loc32_ * _loc14_;
               _loc30_.y -= _loc32_ * _loc15_;
               _loc28_ -= _loc33_ * (_loc2_.rA.x * _loc15_ - _loc2_.rA.y * _loc14_);
               §§push(_loc31_);
               §§push(_loc31_.x);
               §§push(_loc34_);
               §§push(_loc14_);
               if(false)
               {
                  return false;
               }
               §§pop().x = §§pop() + §§pop() * §§pop();
               _loc31_.y += _loc34_ * _loc15_;
               §§push(_loc29_);
               §§push(_loc35_);
               §§push(_loc2_.rB.x * _loc15_);
               §§push(_loc2_);
               if(false)
               {
                  return;
               }
               _loc29_ = §§pop() + §§pop() * (§§pop() - §§pop().rB.y * _loc14_);
               _loc2_.normalImpulse = _loc13_;
            }
            _loc26_.m_angularVelocity = _loc28_;
            _loc27_.m_angularVelocity = _loc29_;
            _loc24_++;
         }
      }
      
      public function §\x19\x10§() : void
      {
         var _loc2_:§\x1e\x13§ = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:§\x1e\x12§ = null;
         §§push(0);
         if(false)
         {
            throw true;
         }
         var _loc1_:* = §§pop();
         loop0:
         while(_loc1_ < m_constraintCount)
         {
            _loc2_ = m_constraints[_loc1_];
            _loc3_ = _loc2_.manifold;
            _loc4_ = 0;
            while(true)
            {
               if(_loc4_ < _loc2_.pointCount)
               {
                  §§push(_loc3_.m_points[_loc4_]);
                  if(false)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
               _loc5_ = §§pop();
               _loc6_ = _loc2_.points[_loc4_];
               _loc5_.m_normalImpulse = _loc6_.normalImpulse;
               _loc5_.m_tangentImpulse = _loc6_.tangentImpulse;
               _loc1_++;
               _loc4_++;
            }
            return false;
         }
      }
      
      public function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc4_:§\x1e\x13§ = null;
         var _loc5_:b2Body = null;
         var _loc6_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:int = 0;
         var _loc13_:§\x1e\x12§ = null;
         var _loc14_:b2Vec2 = null;
         §§push(NaN);
         if(false)
         {
            return;
         }
         var _loc15_:* = §§pop();
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(false)
            {
               break;
            }
            if(§§pop() >= m_constraintCount)
            {
               return _loc2_ > -1.5 * b2Settings.b2_linearSlop;
            }
            §§push(m_constraints[_loc3_]);
            if(false)
            {
               return;
            }
            _loc4_ = §§pop();
            _loc5_ = _loc4_.bodyA;
            _loc6_ = _loc4_.bodyB;
            _loc7_ = _loc5_.m_mass * _loc5_.m_invMass;
            §§push(_loc5_);
            if(false)
            {
               return false;
            }
            _loc8_ = §§pop().b2internal::m_mass * _loc5_.m_invI;
            _loc9_ = _loc6_.m_mass * _loc6_.m_invMass;
            _loc10_ = _loc6_.m_mass * _loc6_.m_invI;
            s_psm.§\x10\x1d§(_loc4_);
            _loc11_ = s_psm.m_normal;
            _loc12_ = 0;
            while(_loc12_ < _loc4_.pointCount)
            {
               _loc13_ = _loc4_.points[_loc12_];
               §§push(s_psm);
               if(false)
               {
                  return false;
               }
               _loc14_ = §§pop().m_points[_loc12_];
               _loc15_ = Number(s_psm.m_separations[_loc12_]);
               _loc16_ = _loc14_.x - _loc5_.m_sweep.c.x;
               _loc17_ = _loc14_.y - _loc5_.m_sweep.c.y;
               _loc18_ = _loc14_.x - _loc6_.m_sweep.c.x;
               _loc19_ = _loc14_.y - _loc6_.m_sweep.c.y;
               _loc2_ = _loc2_ >= _loc15_ ? _loc15_ : _loc2_;
               _loc20_ = b2Math.Clamp(param1 * (_loc15_ + b2Settings.b2_linearSlop),-b2Settings.b2_maxLinearCorrection,0);
               §§push(-_loc13_.equalizedMass * _loc20_);
               if(false)
               {
                  throw true;
               }
               _loc21_ = §§pop();
               §§push(_loc21_ * _loc11_.x);
               if(false)
               {
                  throw true;
               }
               _loc22_ = §§pop();
               _loc23_ = _loc21_ * _loc11_.y;
               _loc5_.m_sweep.c.x -= _loc7_ * _loc22_;
               _loc5_.m_sweep.c.y -= _loc7_ * _loc23_;
               §§push(_loc5_.m_sweep);
               §§push(_loc5_.m_sweep.a);
               §§push(_loc8_);
               §§push(_loc16_ * _loc23_);
               §§push(_loc17_ * _loc22_);
               if(false)
               {
                  throw true;
               }
               §§pop().a = §§pop() - §§pop() * (§§pop() - §§pop());
               _loc5_.§\t\f§();
               §§push(_loc6_.m_sweep);
               if(false)
               {
                  throw true;
               }
               §§pop().c.x = _loc6_.m_sweep.c.x + _loc9_ * _loc22_;
               _loc6_.m_sweep.c.y += _loc9_ * _loc23_;
               §§push(_loc6_.m_sweep);
               §§push(_loc6_.m_sweep.a);
               §§push(_loc10_);
               §§push(_loc18_);
               §§push(_loc23_);
               if(false)
               {
                  return;
               }
               §§pop().a = §§pop() + §§pop() * (§§pop() * §§pop() - _loc19_ * _loc22_);
               §§push(_loc6_);
               if(false)
               {
                  throw true;
               }
               §§pop().b2internal::§\t\f§();
               _loc12_++;
            }
            _loc3_++;
         }
      }
   }
}


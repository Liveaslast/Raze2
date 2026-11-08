package §\x1c\x16§
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
   import §\x1c\x12§.§\x1e\x11§;
   import §\x1c\x12§.§\x1e\x13§;
   import §\x1c\x12§.b2Contact;
   import §\x1c\x13§.*;
   import §\x1c\x14§.*;
   import §\x1c\x15§.§\x1e\x14§;
   import §\x1c\x15§.b2Settings;
   import §\x1c\x15§.b2internal;
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
   
   public class b2CircleShape extends b2Shape
   {
      
      b2internal var m_p:b2Vec2 = new b2Vec2();
      
      public function b2CircleShape(param1:Number = 0)
      {
         super();
         b2internal::m_type = b2internal::e_circleShape;
         b2internal::m_radius = param1;
      }
      
      override public function Copy() : b2Shape
      {
         var _loc1_:b2Shape = new b2CircleShape();
         _loc1_.Set(this);
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         super.Set(param1);
         if(param1 is b2CircleShape)
         {
            _loc2_ = param1 as b2CircleShape;
            m_p.SetV(_loc2_.m_p);
         }
      }
      
      override public function TestPoint(param1:§\x1d\x04§, param2:b2Vec2) : Boolean
      {
         var _loc3_:b2Mat22 = param1.R;
         var _loc4_:Number = param1.position.x + (_loc3_.col1.x * m_p.x + _loc3_.col2.x * m_p.y);
         var _loc5_:Number = param1.position.y + (_loc3_.col1.y * m_p.x + _loc3_.col2.y * m_p.y);
         _loc4_ = param2.x - _loc4_;
         _loc5_ = param2.y - _loc5_;
         return _loc4_ * _loc4_ + _loc5_ * _loc5_ <= m_radius * m_radius;
      }
      
      override public function RayCast(param1:§\x1d\f§, param2:§\x1d\r§, param3:§\x1d\x04§) : Boolean
      {
         var _loc8_:Number = NaN;
         var _loc4_:b2Mat22 = param3.R;
         §§push(param3.position.x);
         §§push(_loc4_.col1.x);
         §§push(m_p.x);
         if(false)
         {
            return;
         }
         var _loc5_:Number = §§pop() + (§§pop() * §§pop() + _loc4_.col2.x * m_p.y);
         var _loc6_:Number = param3.position.y + (_loc4_.col1.y * m_p.x + _loc4_.col2.y * m_p.y);
         var _loc7_:Number = param2.p1.x - _loc5_;
         _loc8_ = param2.p1.y - _loc6_;
         var _loc9_:Number = _loc7_ * _loc7_ + _loc8_ * _loc8_ - m_radius * m_radius;
         var _loc10_:Number = param2.p2.x - param2.p1.x;
         var _loc11_:Number = param2.p2.y - param2.p1.y;
         var _loc12_:Number = _loc7_ * _loc10_ + _loc8_ * _loc11_;
         §§push(_loc10_ * _loc10_);
         §§push(_loc11_ * _loc11_);
         if(false)
         {
            return;
         }
         var _loc13_:Number = §§pop() + §§pop();
         var _loc14_:Number = _loc12_ * _loc12_ - _loc13_ * _loc9_;
         if(!(_loc14_ < 0 || _loc13_ < Number.MIN_VALUE))
         {
            var _loc15_:Number = -(_loc12_ + Math.sqrt(_loc14_));
            if(!(0 <= _loc15_ && _loc15_ <= param2.maxFraction * _loc13_))
            {
               return false;
            }
            _loc15_ /= _loc13_;
            param1.fraction = _loc15_;
            param1.normal.x = _loc7_ + _loc15_ * _loc10_;
            param1.normal.y = _loc8_ + _loc15_ * _loc11_;
            param1.normal.Normalize();
            return true;
         }
         §§push(false);
         if(false)
         {
            return false;
         }
         return §§pop();
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:§\x1d\x04§) : void
      {
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(false)
         {
            return;
         }
         §§push(_loc3_.col1.x * m_p.x);
         §§push(_loc3_.col2.x);
         §§push(m_p);
         if(false)
         {
            return false;
         }
         var _loc4_:Number = §§pop() + (§§pop() + §§pop() * §§pop().y);
         var _loc5_:Number = param2.position.y + (_loc3_.col1.y * m_p.x + _loc3_.col2.y * m_p.y);
         param1.lowerBound.Set(_loc4_ - m_radius,_loc5_ - m_radius);
         param1.upperBound.Set(_loc4_ + m_radius,_loc5_ + m_radius);
      }
      
      override public function ComputeMass(param1:§\x1d\x12§, param2:Number) : void
      {
         param1.mass = param2 * b2Settings.b2_pi * m_radius * m_radius;
         param1.center.SetV(m_p);
         §§push(param1);
         §§push(param1.mass);
         §§push(0.5 * m_radius * m_radius);
         if(false)
         {
            return;
         }
         §§pop().I = §§pop() * (§§pop() + (m_p.x * m_p.x + m_p.y * m_p.y));
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:§\x1d\x04§, param4:b2Vec2) : Number
      {
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.MulX(param3,m_p);
         var _loc6_:Number = -(b2Math.Dot(param1,_loc5_) - param2);
         if(_loc6_ >= -m_radius + Number.MIN_VALUE)
         {
            if(_loc6_ <= m_radius)
            {
               var _loc7_:Number = m_radius * m_radius;
               var _loc8_:Number = _loc6_ * _loc6_;
               §§push(_loc7_ * (Math.asin(_loc6_ / m_radius) + Math.PI / 2) + _loc6_ * Math.sqrt(_loc7_ - _loc8_));
               if(false)
               {
                  return;
               }
               _loc9_ = §§pop();
               var _loc10_:Number = -2 / 3 * Math.pow(_loc7_ - _loc8_,1.5) / _loc9_;
               §§push(param4);
               §§push(_loc5_.x);
               if(false)
               {
                  return;
               }
               §§pop().x = §§pop() + param1.x * _loc10_;
               param4.y = _loc5_.y + param1.y * _loc10_;
               return _loc9_;
            }
            param4.SetV(_loc5_);
            return Math.PI * m_radius * m_radius;
         }
         return 0;
      }
      
      public function §\x13\x05§() : b2Vec2
      {
         return m_p;
      }
      
      public function §\x0b\x11§(param1:b2Vec2) : void
      {
         m_p.SetV(param1);
      }
      
      public function §\x12\r§() : Number
      {
         return m_radius;
      }
      
      public function §\x0b\x01§(param1:Number) : void
      {
         m_radius = param1;
      }
   }
}


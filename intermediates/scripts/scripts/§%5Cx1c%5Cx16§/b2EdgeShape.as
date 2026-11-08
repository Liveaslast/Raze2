package §\x1c\x16§
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
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
   
   public class b2EdgeShape extends b2Shape
   {
      
      private var s_supportVec:b2Vec2 = new b2Vec2();
      
      b2internal var m_v1:b2Vec2 = new b2Vec2();
      
      b2internal var m_v2:b2Vec2 = new b2Vec2();
      
      b2internal var m_coreV1:b2Vec2 = new b2Vec2();
      
      b2internal var m_coreV2:b2Vec2 = new b2Vec2();
      
      b2internal var m_length:Number;
      
      b2internal var m_normal:b2Vec2 = new b2Vec2();
      
      b2internal var m_direction:b2Vec2 = new b2Vec2();
      
      b2internal var m_cornerDir1:b2Vec2 = new b2Vec2();
      
      b2internal var m_cornerDir2:b2Vec2 = new b2Vec2();
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var m_nextEdge:b2EdgeShape;
      
      b2internal var m_prevEdge:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         super();
         §§push(§§findproperty(b2internal::m_type));
         §§push(b2internal::e_edgeShape);
         if(false)
         {
            return;
         }
         §§pop().b2internal::m_type = §§pop();
         b2internal::m_prevEdge = null;
         b2internal::m_nextEdge = null;
         b2internal::m_v1 = param1;
         b2internal::m_v2 = param2;
         §§push(b2internal::m_direction);
         if(false)
         {
            throw true;
         }
         §§pop().Set(b2internal::m_v2.x - b2internal::m_v1.x,b2internal::m_v2.y - b2internal::m_v1.y);
         b2internal::m_length = b2internal::m_direction.Normalize();
         b2internal::m_normal.Set(b2internal::m_direction.y,-b2internal::m_direction.x);
         if(false)
         {
            return;
         }
         b2internal::m_coreV1.Set(-b2Settings.b2_toiSlop * (b2internal::m_normal.x - b2internal::m_direction.x) + b2internal::m_v1.x,-b2Settings.b2_toiSlop * (b2internal::m_normal.y - b2internal::m_direction.y) + b2internal::m_v1.y);
         §§push(b2internal::m_coreV2);
         if(false)
         {
            return;
         }
         §§push(-b2Settings.b2_toiSlop * (b2internal::m_normal.x + b2internal::m_direction.x));
         if(false)
         {
            return false;
         }
         §§pop().Set(§§pop() + b2internal::m_v2.x,-b2Settings.b2_toiSlop * (b2internal::m_normal.y + b2internal::m_direction.y) + b2internal::m_v2.y);
         b2internal::m_cornerDir1 = b2internal::m_normal;
         b2internal::m_cornerDir2.Set(-b2internal::m_normal.x,-b2internal::m_normal.y);
      }
      
      override public function TestPoint(param1:§\x1d\x04§, param2:b2Vec2) : Boolean
      {
         return false;
      }
      
      override public function RayCast(param1:§\x1d\f§, param2:§\x1d\r§, param3:§\x1d\x04§) : Boolean
      {
         var _loc4_:b2Mat22 = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc5_:Number = param2.p2.x - param2.p1.x;
         §§push(param2);
         if(false)
         {
            return false;
         }
         var _loc6_:Number = §§pop().p2.y - param2.p1.y;
         _loc4_ = param3.R;
         var _loc7_:Number = param3.position.x + (_loc4_.col1.x * m_v1.x + _loc4_.col2.x * m_v1.y);
         §§push(param3.position);
         if(false)
         {
            return false;
         }
         var _loc8_:Number = §§pop().y + (_loc4_.col1.y * m_v1.x + _loc4_.col2.y * m_v1.y);
         §§push(param3.position.y);
         §§push(_loc4_.col1);
         if(false)
         {
            return;
         }
         var _loc9_:Number = §§pop() + (§§pop().y * m_v2.x + _loc4_.col2.y * m_v2.y) - _loc8_;
         var _loc10_:Number = -(param3.position.x + (_loc4_.col1.x * m_v2.x + _loc4_.col2.x * m_v2.y) - _loc7_);
         var _loc11_:Number = 100 * Number.MIN_VALUE;
         var _loc12_:Number = -(_loc5_ * _loc9_ + _loc6_ * _loc10_);
         if(_loc12_ > _loc11_)
         {
            _loc13_ = param2.p1.x - _loc7_;
            _loc14_ = param2.p1.y - _loc8_;
            _loc15_ = _loc13_ * _loc9_ + _loc14_ * _loc10_;
            if(0 <= _loc15_ && _loc15_ <= param2.maxFraction * _loc12_)
            {
               _loc16_ = -_loc5_ * _loc14_ + _loc6_ * _loc13_;
               var _temp_3:* = -_loc11_ * _loc12_ <= _loc16_;
               §§push(_temp_3);
               if(_temp_3)
               {
                  §§pop();
                  §§push(_loc16_ <= _loc12_ * (1 + _loc11_));
                  if(false)
                  {
                     return;
                  }
               }
               if(§§pop())
               {
                  _loc15_ /= _loc12_;
                  param1.fraction = _loc15_;
                  _loc17_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
                  param1.normal.x = _loc9_ / _loc17_;
                  param1.normal.y = _loc10_ / _loc17_;
                  return true;
               }
            }
         }
         return false;
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:§\x1d\x04§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position);
         if(false)
         {
            return;
         }
         §§push(§§pop().x);
         §§push(_loc3_.col1.x * m_v1.x);
         §§push(_loc3_.col2.x);
         if(false)
         {
            return false;
         }
         _loc4_ = §§pop() + (§§pop() + §§pop() * m_v1.y);
         _loc5_ = param2.position.y + (_loc3_.col1.y * m_v1.x + _loc3_.col2.y * m_v1.y);
         §§push(param2.position.x + (_loc3_.col1.x * m_v2.x + _loc3_.col2.x * m_v2.y));
         if(false)
         {
            return;
         }
         _loc6_ = §§pop();
         _loc7_ = param2.position.y + (_loc3_.col1.y * m_v2.x + _loc3_.col2.y * m_v2.y);
         if(_loc4_ >= _loc6_)
         {
            param1.lowerBound.x = _loc6_;
            param1.upperBound.x = _loc4_;
         }
         else
         {
            param1.lowerBound.x = _loc4_;
            param1.upperBound.x = _loc6_;
         }
         if(_loc5_ >= _loc7_)
         {
            param1.lowerBound.y = _loc7_;
            param1.upperBound.y = _loc5_;
         }
         else
         {
            §§push(param1);
            if(false)
            {
               return;
            }
            §§pop().lowerBound.y = _loc5_;
            param1.upperBound.y = _loc7_;
         }
      }
      
      override public function ComputeMass(param1:§\x1d\x12§, param2:Number) : void
      {
         param1.mass = 0;
         param1.center.SetV(m_v1);
         param1.I = 0;
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:§\x1d\x04§, param4:b2Vec2) : Number
      {
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x * param2);
         if(false)
         {
            return;
         }
         var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),param1.y * param2);
         var _loc6_:b2Vec2 = b2Math.MulX(param3,m_v1);
         var _loc7_:b2Vec2 = b2Math.MulX(param3,m_v2);
         §§push(b2Math.Dot(param1,_loc6_) - param2);
         if(false)
         {
            return;
         }
         var _loc8_:* = §§pop();
         §§push(b2Math.Dot(param1,_loc7_) - param2);
         if(false)
         {
            return;
         }
         var _loc9_:* = §§pop();
         if(_loc8_ <= 0)
         {
            if(_loc9_ > 0)
            {
               _loc7_.x = -_loc9_ / (_loc8_ - _loc9_) * _loc6_.x + _loc8_ / (_loc8_ - _loc9_) * _loc7_.x;
               _loc7_.y = -_loc9_ / (_loc8_ - _loc9_) * _loc6_.y + _loc8_ / (_loc8_ - _loc9_) * _loc7_.y;
            }
         }
         else
         {
            if(_loc9_ > 0)
            {
               return 0;
            }
            _loc6_.x = -_loc9_ / (_loc8_ - _loc9_) * _loc6_.x + _loc8_ / (_loc8_ - _loc9_) * _loc7_.x;
            §§push(_loc6_);
            §§push(-_loc9_);
            if(false)
            {
               throw true;
            }
            §§pop().y = §§pop() / (_loc8_ - _loc9_) * _loc6_.y + _loc8_ / (_loc8_ - _loc9_) * _loc7_.y;
         }
         param4.x = (_loc5_.x + _loc6_.x + _loc7_.x) / 3;
         §§push(param4);
         §§push((_loc5_.y + _loc6_.y + _loc7_.y) / 3);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop();
         return 0.5 * ((_loc6_.x - _loc5_.x) * (_loc7_.y - _loc5_.y) - (_loc6_.y - _loc5_.y) * (_loc7_.x - _loc5_.x));
      }
      
      public function §\x13\x0f§() : Number
      {
         return m_length;
      }
      
      public function §\x11\x1b§() : b2Vec2
      {
         return m_v1;
      }
      
      public function §\x11\x1a§() : b2Vec2
      {
         return m_v2;
      }
      
      public function §\x14\x0b§() : b2Vec2
      {
         return m_coreV1;
      }
      
      public function §\x14\n§() : b2Vec2
      {
         return m_coreV2;
      }
      
      public function §\x12\x12§() : b2Vec2
      {
         return m_normal;
      }
      
      public function §\x14\x05§() : b2Vec2
      {
         return m_direction;
      }
      
      public function §\x14\t§() : b2Vec2
      {
         return m_cornerDir1;
      }
      
      public function §\x14\b§() : b2Vec2
      {
         return m_cornerDir2;
      }
      
      public function §\x1b\x12§() : Boolean
      {
         return m_cornerConvex1;
      }
      
      public function §\x1b\x11§() : Boolean
      {
         return m_cornerConvex2;
      }
      
      public function §\x13\x1d§(param1:§\x1d\x04§) : b2Vec2
      {
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x + (_loc2_.col1.x * m_coreV1.x + _loc2_.col2.x * m_coreV1.y));
         §§push(param1.position.y);
         §§push(_loc2_.col1.y * m_coreV1.x + _loc2_.col2.y * m_coreV1.y);
         if(false)
         {
            return;
         }
         return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
      }
      
      public function §\x12\x14§() : b2EdgeShape
      {
         return m_nextEdge;
      }
      
      public function §\x12\x0e§() : b2EdgeShape
      {
         return m_prevEdge;
      }
      
      public function §\t\x10§(param1:§\x1d\x04§, param2:Number, param3:Number) : b2Vec2
      {
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         §§push(_loc4_.col1.x * m_coreV1.x);
         §§push(_loc4_.col2.x * m_coreV1.y);
         if(false)
         {
            return;
         }
         var _loc5_:Number = §§pop() + (§§pop() + §§pop());
         §§push(param1.position.y);
         §§push(_loc4_.col1);
         if(false)
         {
            return;
         }
         var _loc6_:Number = §§pop() + (§§pop().y * m_coreV1.x + _loc4_.col2.y * m_coreV1.y);
         var _loc7_:Number = param1.position.x + (_loc4_.col1.x * m_coreV2.x + _loc4_.col2.x * m_coreV2.y);
         §§push(param1.position.y + (_loc4_.col1.y * m_coreV2.x + _loc4_.col2.y * m_coreV2.y));
         if(false)
         {
            return;
         }
         var _loc8_:Number = §§pop();
         if(_loc5_ * param2 + _loc6_ * param3 <= _loc7_ * param2 + _loc8_ * param3)
         {
            s_supportVec.x = _loc7_;
            s_supportVec.y = _loc8_;
         }
         else
         {
            s_supportVec.x = _loc5_;
            s_supportVec.y = _loc6_;
         }
         return s_supportVec;
      }
      
      b2internal function §\x0b\x03§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         m_prevEdge = param1;
         m_coreV1 = param2;
         m_cornerDir1 = param3;
         m_cornerConvex1 = param4;
      }
      
      b2internal function §\x0b\x07§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         m_nextEdge = param1;
         m_coreV2 = param2;
         if(false)
         {
            return;
         }
         m_cornerDir2 = param3;
         m_cornerConvex2 = param4;
      }
   }
}


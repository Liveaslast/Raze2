package §\x1c\x16§
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2FrictionJointDef;
   import §\x1c\x10§.b2LineJointDef;
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
   import §\x1c\x15§.*;
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
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var s_mat:b2Mat22 = new b2Mat22();
      
      b2internal var m_centroid:b2Vec2;
      
      b2internal var m_vertices:Array;
      
      b2internal var m_normals:Array;
      
      b2internal var m_vertexCount:int;
      
      public function b2PolygonShape()
      {
         super();
         b2internal::m_type = b2internal::e_polygonShape;
         b2internal::m_centroid = new b2Vec2();
         b2internal::m_vertices = new Array();
         b2internal::m_normals = new Array();
      }
      
      public static function §\x1e\x1c§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         §§push(_loc3_);
         §§push(param1);
         §§push(param2);
         if(false)
         {
            return;
         }
         §§pop().§\f\x1b§(§§pop(),§§pop());
         return _loc3_;
      }
      
      public static function §\x1e\x18§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         _loc3_.§\f\x17§(param1,param2);
         return _loc3_;
      }
      
      public static function §\x1e\x1b§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         _loc3_.§\f\x1a§(param1,param2);
         return _loc3_;
      }
      
      public static function §\x1e\x19§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0) : b2PolygonShape
      {
         var _temp_1:* = new b2PolygonShape();
         var _loc5_:b2PolygonShape = new b2PolygonShape();
         _loc5_.§\f\x18§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §\x1e\x1a§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         _loc3_.§\f\x19§(param1,param2);
         return _loc3_;
      }
      
      public static function §\x1b\x16§(param1:Array, param2:uint) : b2Vec2
      {
         var _loc3_:b2Vec2 = null;
         var _loc7_:Number = NaN;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         §§push(NaN);
         if(false)
         {
            return;
         }
         var _loc13_:* = §§pop();
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         _loc3_ = new b2Vec2();
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:Number = 0;
         _loc7_ = 1 / 3;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            _loc10_ = _loc8_ + 1 >= param2 ? param1[0] : param1[int(_loc8_ + 1)];
            _loc11_ = _loc9_.x - _loc5_;
            _loc12_ = _loc9_.y - _loc6_;
            _loc13_ = _loc10_.x - _loc5_;
            _loc14_ = _loc10_.y - _loc6_;
            _loc15_ = _loc11_ * _loc14_ - _loc12_ * _loc13_;
            §§push(0.5 * _loc15_);
            if(false)
            {
               return;
            }
            _loc16_ = §§pop();
            _loc4_ += _loc16_;
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(false)
            {
               return;
            }
            §§pop().x = §§pop() + _loc16_ * _loc7_ * (_loc5_ + _loc9_.x + _loc10_.x);
            _loc3_.y += _loc16_ * _loc7_ * (_loc6_ + _loc9_.y + _loc10_.y);
            _loc8_++;
         }
         _loc3_.x *= 1 / _loc4_;
         §§push(_loc3_);
         §§push(_loc3_.y);
         §§push(1);
         if(false)
         {
            throw true;
         }
         §§pop().y = §§pop() * (§§pop() / _loc4_);
         return _loc3_;
      }
      
      b2internal static function §\x1b\x15§(param1:§\x1d\x0f§, param2:Array, param3:int) : void
      {
         var _loc4_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:int = 0;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Mat22 = null;
         var _loc5_:Array = new Array(param3 + 1);
         _loc4_ = 0;
         while(_loc4_ < param3)
         {
            _loc5_[_loc4_] = param2[_loc4_];
            _loc4_++;
         }
         _loc5_[param3] = _loc5_[0];
         var _loc6_:Number = Number.MAX_VALUE;
         _loc4_ = 1;
         while(_loc4_ <= param3)
         {
            §§push(_loc5_);
            §§push(int(_loc4_ - 1));
            if(false)
            {
               return;
            }
            _loc7_ = §§pop()[§§pop()];
            _loc8_ = _loc5_[_loc4_].x - _loc7_.x;
            §§push(_loc5_[_loc4_].y);
            §§push(_loc7_.y);
            if(false)
            {
               return;
            }
            _loc9_ = §§pop() - §§pop();
            §§push(Math);
            §§push(_loc8_ * _loc8_);
            if(false)
            {
               return;
            }
            _loc10_ = Number(§§pop().sqrt(§§pop() + _loc9_ * _loc9_));
            _loc8_ /= _loc10_;
            _loc9_ /= _loc10_;
            _loc11_ = -_loc9_;
            _loc12_ = _loc8_;
            §§push(Number);
            if(false)
            {
               return;
            }
            _loc13_ = Number(§§pop().MAX_VALUE);
            _loc14_ = Number.MAX_VALUE;
            _loc15_ = -Number.MAX_VALUE;
            _loc16_ = -Number.MAX_VALUE;
            _loc17_ = 0;
            while(_loc17_ < param3)
            {
               _loc19_ = _loc5_[_loc17_].x - _loc7_.x;
               _loc20_ = _loc5_[_loc17_].y - _loc7_.y;
               _loc21_ = _loc8_ * _loc19_ + _loc9_ * _loc20_;
               _loc22_ = _loc11_ * _loc19_ + _loc12_ * _loc20_;
               if(_loc21_ < _loc13_)
               {
                  _loc13_ = _loc21_;
               }
               if(_loc22_ < _loc14_)
               {
                  _loc14_ = _loc22_;
               }
               §§push(_loc21_);
               if(false)
               {
                  return;
               }
               if(§§pop() > _loc15_)
               {
                  _loc15_ = _loc21_;
               }
               if(_loc22_ > _loc16_)
               {
                  _loc16_ = _loc22_;
               }
               _loc17_++;
            }
            _loc18_ = (_loc15_ - _loc13_) * (_loc16_ - _loc14_);
            if(_loc18_ < 0.95 * _loc6_)
            {
               _loc6_ = _loc18_;
               param1.R.col1.x = _loc8_;
               param1.R.col1.y = _loc9_;
               §§push(param1.R.col2);
               §§push(_loc11_);
               if(false)
               {
                  return;
               }
               §§pop().x = §§pop();
               param1.R.col2.y = _loc12_;
               _loc23_ = 0.5 * (_loc13_ + _loc15_);
               _loc24_ = 0.5 * (_loc14_ + _loc16_);
               _loc25_ = param1.R;
               §§push(param1.center);
               §§push(_loc7_.x);
               if(false)
               {
                  throw true;
               }
               §§pop().x = §§pop() + (_loc25_.col1.x * _loc23_ + _loc25_.col2.x * _loc24_);
               §§push(param1.center);
               §§push(_loc7_);
               if(false)
               {
                  return;
               }
               §§pop().y = §§pop().y + (_loc25_.col1.y * _loc23_ + _loc25_.col2.y * _loc24_);
               param1.extents.x = 0.5 * (_loc15_ - _loc13_);
               §§push(param1.extents);
               if(false)
               {
                  return;
               }
               §§pop().y = 0.5 * (_loc16_ - _loc14_);
            }
            _loc4_++;
         }
      }
      
      override public function Copy() : b2Shape
      {
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         _loc1_.Set(this);
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2PolygonShape = null;
         var _loc3_:int = 0;
         super.Set(param1);
         if(param1 is b2PolygonShape)
         {
            _loc2_ = param1 as b2PolygonShape;
            m_centroid.SetV(_loc2_.m_centroid);
            m_vertexCount = _loc2_.m_vertexCount;
            §\r\x10§(m_vertexCount);
            _loc3_ = 0;
            while(_loc3_ < m_vertexCount)
            {
               m_vertices[_loc3_].SetV(_loc2_.m_vertices[_loc3_]);
               m_normals[_loc3_].SetV(_loc2_.m_normals[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      public function §\f\x1b§(param1:Array, param2:Number = 0) : void
      {
         var _loc4_:b2Vec2 = null;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1)
         {
            _loc3_.push(_loc4_);
         }
         §§push(§§findproperty(§\f\x17§));
         §§push(_loc3_);
         if(false)
         {
            return false;
         }
         §§pop().§\f\x17§(§§pop(),param2);
      }
      
      public function §\f\x17§(param1:Array, param2:Number = 0) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:b2Vec2 = null;
         if(param2 == 0)
         {
            param2 = param1.length;
         }
         b2Settings.b2Assert(2 <= param2);
         m_vertexCount = param2;
         §\r\x10§(param2);
         _loc3_ = 0;
         while(_loc3_ < m_vertexCount)
         {
            m_vertices[_loc3_].SetV(param1[_loc3_]);
            _loc3_++;
            if(false)
            {
               return;
            }
         }
         _loc3_ = 0;
         while(_loc3_ < m_vertexCount)
         {
            _loc4_ = _loc3_;
            _loc5_ = _loc3_ + 1 >= m_vertexCount ? 0 : int(_loc3_ + 1);
            _loc6_ = b2Math.SubtractVV(m_vertices[_loc5_],m_vertices[_loc4_]);
            b2Settings.b2Assert(_loc6_.LengthSquared() > Number.MIN_VALUE);
            m_normals[_loc3_].SetV(b2Math.CrossVF(_loc6_,1));
            m_normals[_loc3_].Normalize();
            _loc3_++;
         }
         m_centroid = §\x1b\x16§(m_vertices,m_vertexCount);
      }
      
      public function §\f\x1a§(param1:Number, param2:Number) : void
      {
         m_vertexCount = 4;
         §\r\x10§(4);
         m_vertices[0].Set(-param1,-param2);
         m_vertices[1].Set(param1,-param2);
         m_vertices[2].Set(param1,param2);
         m_vertices[3].Set(-param1,param2);
         m_normals[0].Set(0,-1);
         m_normals[1].Set(1,0);
         m_normals[2].Set(0,1);
         m_normals[3].Set(-1,0);
         m_centroid.SetZero();
      }
      
      public function §\f\x18§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0) : void
      {
         m_vertexCount = 4;
         §\r\x10§(4);
         m_vertices[0].Set(-param1,-param2);
         §§push(m_vertices[1]);
         §§push(param1);
         if(false)
         {
            return;
         }
         §§pop().Set(§§pop(),-param2);
         m_vertices[2].Set(param1,param2);
         m_vertices[3].Set(-param1,param2);
         m_normals[0].Set(0,-1);
         m_normals[1].Set(1,0);
         m_normals[2].Set(0,1);
         m_normals[3].Set(-1,0);
         m_centroid = param3;
         var _loc5_:§\x1d\x04§ = new §\x1d\x04§();
         _loc5_.position = param3;
         _loc5_.R.Set(param4);
         var _loc6_:int = 0;
         while(_loc6_ < m_vertexCount)
         {
            m_vertices[_loc6_] = b2Math.MulX(_loc5_,m_vertices[_loc6_]);
            m_normals[_loc6_] = b2Math.MulMV(_loc5_.R,m_normals[_loc6_]);
            _loc6_++;
         }
      }
      
      public function §\f\x19§(param1:b2Vec2, param2:b2Vec2) : void
      {
         m_vertexCount = 2;
         §\r\x10§(2);
         m_vertices[0].SetV(param1);
         m_vertices[1].SetV(param2);
         m_centroid.x = 0.5 * (param1.x + param2.x);
         m_centroid.y = 0.5 * (param1.y + param2.y);
         m_normals[0] = b2Math.CrossVF(b2Math.SubtractVV(param2,param1),1);
         m_normals[0].Normalize();
         m_normals[1].x = -m_normals[0].x;
         m_normals[1].y = -m_normals[0].y;
      }
      
      override public function TestPoint(param1:§\x1d\x04§, param2:b2Vec2) : Boolean
      {
         var _loc3_:b2Vec2 = null;
         var _loc10_:Number = NaN;
         var _loc4_:b2Mat22 = param1.R;
         var _loc5_:Number = param2.x - param1.position.x;
         var _loc6_:Number = param2.y - param1.position.y;
         var _loc7_:Number = _loc5_ * _loc4_.col1.x + _loc6_ * _loc4_.col1.y;
         var _loc8_:Number = _loc5_ * _loc4_.col2.x + _loc6_ * _loc4_.col2.y;
         var _loc9_:int = 0;
         while(_loc9_ < m_vertexCount)
         {
            §§push(m_vertices);
            if(false)
            {
               return;
            }
            _loc3_ = §§pop()[_loc9_];
            _loc5_ = _loc7_ - _loc3_.x;
            _loc6_ = _loc8_ - _loc3_.y;
            _loc3_ = m_normals[_loc9_];
            _loc10_ = _loc3_.x * _loc5_ + _loc3_.y * _loc6_;
            if(_loc10_ > 0)
            {
               return false;
            }
            _loc9_++;
         }
         return true;
      }
      
      override public function RayCast(param1:§\x1d\f§, param2:§\x1d\r§, param3:§\x1d\x04§) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:b2Mat22 = null;
         var _loc9_:b2Vec2 = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc4_:Number = 0;
         var _loc5_:Number = param2.maxFraction;
         _loc6_ = param2.p1.x - param3.position.x;
         §§push(param2.p1.y - param3.position.y);
         if(false)
         {
            return;
         }
         _loc7_ = §§pop();
         _loc8_ = param3.R;
         var _loc10_:Number = _loc6_ * _loc8_.col1.x + _loc7_ * _loc8_.col1.y;
         §§push(_loc6_);
         §§push(_loc8_.col2.x);
         if(false)
         {
            return;
         }
         var _loc11_:Number = §§pop() * §§pop() + _loc7_ * _loc8_.col2.y;
         _loc6_ = param2.p2.x - param3.position.x;
         _loc7_ = param2.p2.y - param3.position.y;
         _loc8_ = param3.R;
         if(false)
         {
            return;
         }
         var _loc12_:Number = _loc6_ * _loc8_.col1.x + _loc7_ * _loc8_.col1.y;
         var _loc13_:Number = _loc6_ * _loc8_.col2.x + _loc7_ * _loc8_.col2.y;
         var _loc14_:Number = _loc12_ - _loc10_;
         var _loc15_:Number = _loc13_ - _loc11_;
         var _loc16_:int = -1;
         var _loc17_:int = 0;
         while(_loc17_ < m_vertexCount)
         {
            _loc9_ = m_vertices[_loc17_];
            _loc6_ = _loc9_.x - _loc10_;
            _loc7_ = _loc9_.y - _loc11_;
            _loc9_ = m_normals[_loc17_];
            _loc18_ = _loc9_.x * _loc6_ + _loc9_.y * _loc7_;
            _loc19_ = _loc9_.x * _loc14_ + _loc9_.y * _loc15_;
            if(_loc19_ != 0)
            {
               if(!(_loc19_ < 0 && _loc18_ < _loc4_ * _loc19_))
               {
                  if(_loc19_ > 0 && _loc18_ < _loc5_ * _loc19_)
                  {
                     _loc5_ = _loc18_ / _loc19_;
                  }
               }
               else
               {
                  _loc4_ = _loc18_ / _loc19_;
                  _loc16_ = _loc17_;
               }
            }
            else if(_loc18_ < 0)
            {
               return false;
            }
            if(_loc5_ < _loc4_ - Number.MIN_VALUE)
            {
               return false;
            }
            _loc17_++;
         }
         if(_loc16_ < 0)
         {
            return false;
         }
         param1.fraction = _loc4_;
         _loc8_ = param3.R;
         _loc9_ = m_normals[_loc16_];
         param1.normal.x = _loc8_.col1.x * _loc9_.x + _loc8_.col2.x * _loc9_.y;
         param1.normal.y = _loc8_.col1.y * _loc9_.x + _loc8_.col2.y * _loc9_.y;
         return true;
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:§\x1d\x04§) : void
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = m_vertices[0];
         var _loc5_:Number = param2.position.x + (_loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y);
         §§push(param2.position.y + (_loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y));
         if(false)
         {
            return;
         }
         var _loc6_:Number = §§pop();
         var _loc7_:Number = _loc5_;
         var _loc8_:Number = _loc6_;
         var _loc9_:int = 1;
         while(_loc9_ < m_vertexCount)
         {
            _loc4_ = m_vertices[_loc9_];
            _loc10_ = param2.position.x + (_loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y);
            _loc11_ = param2.position.y + (_loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y);
            if(_loc5_ >= _loc10_)
            {
               §§push(_loc10_);
               if(false)
               {
                  return;
               }
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(_loc5_);
            }
            _loc5_ = §§pop();
            _loc6_ = _loc6_ >= _loc11_ ? _loc11_ : _loc6_;
            _loc7_ = _loc7_ <= _loc10_ ? _loc10_ : _loc7_;
            _loc8_ = _loc8_ <= _loc11_ ? _loc11_ : _loc8_;
            _loc9_++;
         }
         param1.lowerBound.x = _loc5_ - m_radius;
         param1.lowerBound.y = _loc6_ - m_radius;
         param1.upperBound.x = _loc7_ + m_radius;
         param1.upperBound.y = _loc8_ + m_radius;
      }
      
      override public function ComputeMass(param1:§\x1d\x12§, param2:Number) : void
      {
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(false)
         {
            return;
         }
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         if(m_vertexCount != 2)
         {
            var _loc3_:Number = 0;
            var _loc4_:Number = 0;
            var _loc5_:Number = 0;
            var _loc6_:Number = 0;
            var _loc7_:Number = 0;
            var _loc8_:Number = 0;
            var _loc9_:Number = 1 / 3;
            var _loc10_:int = 0;
            while(_loc10_ < m_vertexCount)
            {
               _loc11_ = m_vertices[_loc10_];
               if(_loc10_ + 1 >= m_vertexCount)
               {
                  §§push(m_vertices[0]);
               }
               else
               {
                  §§push(m_vertices);
                  §§push(int(_loc10_ + 1));
                  if(false)
                  {
                     return;
                  }
                  §§push(§§pop()[§§pop()]);
               }
               _loc12_ = §§pop();
               _loc13_ = _loc11_.x - _loc7_;
               _loc14_ = _loc11_.y - _loc8_;
               _loc15_ = _loc12_.x - _loc7_;
               _loc16_ = _loc12_.y - _loc8_;
               _loc17_ = _loc13_ * _loc16_ - _loc14_ * _loc15_;
               _loc18_ = 0.5 * _loc17_;
               _loc5_ += _loc18_;
               §§push(_loc3_);
               §§push(_loc18_ * _loc9_);
               §§push(_loc7_);
               §§push(_loc11_);
               if(false)
               {
                  return;
               }
               _loc3_ = §§pop() + §§pop() * (§§pop() + §§pop().x + _loc12_.x);
               _loc4_ += _loc18_ * _loc9_ * (_loc8_ + _loc11_.y + _loc12_.y);
               _loc19_ = _loc7_;
               if(false)
               {
                  return;
               }
               _loc20_ = _loc8_;
               _loc21_ = _loc13_;
               _loc22_ = _loc14_;
               _loc23_ = _loc15_;
               _loc24_ = _loc16_;
               _loc25_ = _loc9_ * (0.25 * (_loc21_ * _loc21_ + _loc23_ * _loc21_ + _loc23_ * _loc23_) + (_loc19_ * _loc21_ + _loc19_ * _loc23_)) + 0.5 * _loc19_ * _loc19_;
               §§push(_loc9_ * (0.25 * (_loc22_ * _loc22_ + _loc24_ * _loc22_ + _loc24_ * _loc24_) + (_loc20_ * _loc22_ + _loc20_ * _loc24_)));
               §§push(0.5 * _loc20_);
               if(false)
               {
                  return;
               }
               _loc26_ = §§pop() + §§pop() * _loc20_;
               _loc6_ += _loc17_ * (_loc25_ + _loc26_);
               _loc10_++;
            }
            param1.mass = param2 * _loc5_;
            _loc3_ *= 1 / _loc5_;
            _loc4_ *= 1 / _loc5_;
            param1.center.Set(_loc3_,_loc4_);
            param1.I = param2 * _loc6_;
            return;
         }
         param1.center.x = 0.5 * (m_vertices[0].x + m_vertices[1].x);
         §§push(param1.center);
         §§push(0.5);
         §§push(m_vertices[0].y);
         §§push(m_vertices);
         §§push(1);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop() * (§§pop() + §§pop()[§§pop()].y);
         param1.mass = 0;
         param1.I = 0;
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:§\x1d\x04§, param4:b2Vec2) : Number
      {
         var _loc12_:int = 0;
         §§push(null);
         if(false)
         {
            return;
         }
         var _loc22_:* = §§pop();
         var _loc23_:Boolean = false;
         var _loc24_:§\x1d\x12§ = null;
         var _loc25_:Number = NaN;
         var _loc5_:b2Vec2 = b2Math.MulTMV(param3.R,param1);
         §§push(param2);
         if(false)
         {
            return;
         }
         var _loc6_:Number = §§pop() - b2Math.Dot(param1,param3.position);
         var _loc7_:Array = new Array();
         var _loc8_:int = 0;
         var _loc9_:int = -1;
         var _loc10_:int = -1;
         var _loc11_:Boolean = false;
         _loc12_ = 0;
         while(_loc12_ < m_vertexCount)
         {
            _loc7_[_loc12_] = b2Math.Dot(_loc5_,m_vertices[_loc12_]) - _loc6_;
            _loc23_ = _loc7_[_loc12_] < -Number.MIN_VALUE;
            if(_loc12_ > 0)
            {
               if(_loc23_)
               {
                  if(!_loc11_)
                  {
                     _loc9_ = _loc12_ - 1;
                     _loc8_++;
                  }
               }
               else if(_loc11_)
               {
                  _loc10_ = _loc12_ - 1;
                  _loc8_++;
               }
            }
            _loc11_ = _loc23_;
            _loc12_++;
         }
         switch(_loc8_)
         {
            case 0:
               §§push(_loc11_);
               if(false)
               {
                  return;
               }
               if(!§§pop())
               {
                  return 0;
               }
               _loc24_ = new §\x1d\x12§();
               ComputeMass(_loc24_,1);
               param4.SetV(b2Math.MulX(param3,_loc24_.center));
               return _loc24_.mass;
               break;
            case 1:
               if(_loc9_ != -1)
               {
                  _loc10_ = m_vertexCount - 1;
               }
               else
               {
                  _loc9_ = m_vertexCount - 1;
               }
         }
         var _loc13_:int = (_loc9_ + 1) % m_vertexCount;
         var _loc14_:int = (_loc10_ + 1) % m_vertexCount;
         var _loc15_:Number = (0 - _loc7_[_loc9_]) / (_loc7_[_loc13_] - _loc7_[_loc9_]);
         var _loc16_:Number = (0 - _loc7_[_loc10_]) / (_loc7_[_loc14_] - _loc7_[_loc10_]);
         §§push(§§findproperty(b2Vec2));
         if(false)
         {
            return;
         }
         §§push(m_vertices[_loc9_].x * (1 - _loc15_) + m_vertices[_loc13_].x * _loc15_);
         §§push(m_vertices[_loc9_].y);
         if(false)
         {
            return;
         }
         var _loc17_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() * (1 - _loc15_) + m_vertices[_loc13_].y * _loc15_);
         var _loc18_:b2Vec2 = new b2Vec2(m_vertices[_loc10_].x * (1 - _loc16_) + m_vertices[_loc14_].x * _loc16_,m_vertices[_loc10_].y * (1 - _loc16_) + m_vertices[_loc14_].y * _loc16_);
         var _loc19_:Number = 0;
         §§push(new b2Vec2());
         if(false)
         {
            return false;
         }
         var _loc20_:b2Vec2 = §§pop();
         var _loc21_:b2Vec2 = m_vertices[_loc13_];
         _loc12_ = _loc13_;
         while(_loc12_ != _loc14_)
         {
            _loc12_ = (_loc12_ + 1) % m_vertexCount;
            if(_loc12_ != _loc14_)
            {
               _loc22_ = m_vertices[_loc12_];
            }
            else
            {
               _loc22_ = _loc18_;
            }
            §§push(0.5);
            §§push((_loc21_.x - _loc17_.x) * (_loc22_.y - _loc17_.y));
            §§push(_loc21_.y);
            if(false)
            {
               throw true;
            }
            §§push((§§pop() - _loc17_.y) * (_loc22_.x - _loc17_.x));
            if(false)
            {
               throw true;
            }
            _loc25_ = §§pop() * (§§pop() - §§pop());
            _loc19_ += _loc25_;
            _loc20_.x += _loc25_ * (_loc17_.x + _loc21_.x + _loc22_.x) / 3;
            _loc20_.y += _loc25_ * (_loc17_.y + _loc21_.y + _loc22_.y) / 3;
            _loc21_ = _loc22_;
         }
         _loc20_.Multiply(1 / _loc19_);
         param4.SetV(b2Math.MulX(param3,_loc20_));
         return _loc19_;
      }
      
      public function GetVertexCount() : int
      {
         return m_vertexCount;
      }
      
      public function §\x11\x19§() : Array
      {
         return m_vertices;
      }
      
      public function §\x12\x13§() : Array
      {
         return m_normals;
      }
      
      public function §\x12\x04§(param1:b2Vec2) : int
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = m_vertices[0].x * param1.x + m_vertices[0].y * param1.y;
         var _loc4_:int = 1;
         while(true)
         {
            §§push(_loc4_);
            if(false)
            {
               break;
            }
            if(§§pop() >= m_vertexCount)
            {
               return _loc2_;
            }
            _loc5_ = m_vertices[_loc4_].x * param1.x + m_vertices[_loc4_].y * param1.y;
            §§push(_loc5_);
            §§push(_loc3_);
            if(false)
            {
               return;
            }
            if(§§pop() > §§pop())
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
      }
      
      public function §\x12\x03§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = m_vertices[0].x * param1.x + m_vertices[0].y * param1.y;
         var _loc4_:int = 1;
         if(false)
         {
            throw true;
         }
         while(_loc4_ < m_vertexCount)
         {
            _loc5_ = m_vertices[_loc4_].x * param1.x + m_vertices[_loc4_].y * param1.y;
            if(_loc5_ > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return m_vertices[_loc2_];
      }
      
      private function Validate() : Boolean
      {
         return false;
      }
      
      private function §\r\x10§(param1:int) : void
      {
         var _loc2_:int = int(m_vertices.length);
         while(_loc2_ < param1)
         {
            m_vertices[_loc2_] = new b2Vec2();
            m_normals[_loc2_] = new b2Vec2();
            _loc2_++;
         }
      }
   }
}


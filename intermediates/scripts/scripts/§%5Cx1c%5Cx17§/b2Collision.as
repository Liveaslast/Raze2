package §\x1c\x17§
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x14§;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2GearJointDef;
   import §\x1c\x10§.b2Joint;
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
   import §\x1c\x16§.*;
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
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var s_incidentEdge:Array = §\x10\x02§();
      
      private static var s_clipPoints1:Array = §\x10\x02§();
      
      private static var s_clipPoints2:Array = §\x10\x02§();
      
      private static var s_edgeAO:Array = new Array(1);
      
      private static var s_edgeBO:Array = new Array(1);
      
      private static var s_localTangent:b2Vec2 = new b2Vec2();
      
      §§push(§§findproperty(s_localNormal));
      §§push(new b2Vec2());
      if(false)
      {
         throw true;
      }
      
      private static var s_localNormal:b2Vec2 = §§pop();
      
      private static var s_planePoint:b2Vec2 = new b2Vec2();
      
      private static var s_normal:b2Vec2 = new b2Vec2();
      
      private static var s_tangent:b2Vec2 = new b2Vec2();
      
      private static var s_tangent2:b2Vec2 = new b2Vec2();
      
      private static var s_v11:b2Vec2 = new b2Vec2();
      
      private static var s_v12:b2Vec2 = new b2Vec2();
      
      private static var b2CollidePolyTempVec:b2Vec2 = new b2Vec2();
      
      public function b2Collision()
      {
         super();
      }
      
      public static function §\x1b\x1d§(param1:Array, param2:Array, param3:b2Vec2, param4:Number) : int
      {
         var _loc5_:§\x1b\x1c§ = null;
         var _loc6_:* = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§\x1b\x1c§ = null;
         _loc6_ = 0;
         _loc5_ = param2[0];
         _loc7_ = _loc5_.v;
         _loc5_ = param2[1];
         var _loc8_:b2Vec2 = _loc5_.v;
         _loc9_ = param3.x * _loc7_.x + param3.y * _loc7_.y - param4;
         var _loc10_:Number = param3.x * _loc8_.x + param3.y * _loc8_.y - param4;
         if(_loc9_ <= 0)
         {
            §§push(param1);
            var _temp_3:* = _loc6_;
            §§pop()[_loc6_++].Set(param2[0]);
         }
         if(_loc10_ <= 0)
         {
            §§push(param1[_loc6_++]);
            §§push(param2);
            §§push(1);
            if(false)
            {
               return false;
            }
            §§pop().Set(§§pop()[§§pop()]);
         }
         if(_loc9_ * _loc10_ < 0)
         {
            _loc11_ = _loc9_ / (_loc9_ - _loc10_);
            _loc5_ = param1[_loc6_];
            _loc12_ = _loc5_.v;
            _loc12_.x = _loc7_.x + _loc11_ * (_loc8_.x - _loc7_.x);
            _loc12_.y = _loc7_.y + _loc11_ * (_loc8_.y - _loc7_.y);
            _loc5_ = param1[_loc6_];
            if(_loc9_ <= 0)
            {
               _loc13_ = param2[1];
               §§push(_loc5_);
               if(false)
               {
                  throw true;
               }
               §§pop().id = _loc13_.id;
            }
            else
            {
               _loc13_ = param2[0];
               _loc5_.id = _loc13_.id;
            }
            _loc6_++;
         }
         return _loc6_;
      }
      
      public static function §\x1a\x04§(param1:b2PolygonShape, param2:§\x1d\x04§, param3:int, param4:b2PolygonShape, param5:§\x1d\x04§) : Number
      {
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:Number = NaN;
         var _loc6_:int = param1.m_vertexCount;
         if(false)
         {
            throw true;
         }
         var _loc7_:Array = param1.m_vertices;
         var _loc8_:Array = param1.m_normals;
         var _loc9_:int = param4.m_vertexCount;
         var _loc10_:Array = param4.m_vertices;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1);
         if(false)
         {
            return false;
         }
         var _loc13_:Number = §§pop().x * _loc12_.x + _loc11_.col2.x * _loc12_.y;
         var _loc14_:Number = _loc11_.col1.y * _loc12_.x + _loc11_.col2.y * _loc12_.y;
         _loc11_ = param5.R;
         §§push(_loc11_.col1.x * _loc13_);
         §§push(_loc11_.col1.y);
         if(false)
         {
            return;
         }
         var _loc15_:Number = §§pop() + §§pop() * _loc14_;
         var _loc16_:Number = _loc11_.col2.x * _loc13_ + _loc11_.col2.y * _loc14_;
         var _loc17_:int = 0;
         var _loc18_:Number = Number.MAX_VALUE;
         var _loc19_:int = 0;
         while(_loc19_ < _loc9_)
         {
            §§push(_loc10_[_loc19_]);
            if(false)
            {
               throw true;
            }
            _loc12_ = §§pop();
            _loc25_ = _loc12_.x * _loc15_ + _loc12_.y * _loc16_;
            if(_loc25_ < _loc18_)
            {
               _loc18_ = _loc25_;
               _loc17_ = _loc19_;
            }
            _loc19_++;
         }
         _loc12_ = _loc7_[param3];
         _loc11_ = param2.R;
         var _loc20_:Number = param2.position.x + (_loc11_.col1.x * _loc12_.x + _loc11_.col2.x * _loc12_.y);
         §§push(param2.position.y);
         §§push(_loc11_.col1.y);
         §§push(_loc12_.x);
         if(false)
         {
            return;
         }
         var _loc21_:Number = §§pop() + (§§pop() * §§pop() + _loc11_.col2.y * _loc12_.y);
         _loc12_ = _loc10_[_loc17_];
         _loc11_ = param5.R;
         §§push(param5.position.x);
         §§push(_loc11_.col1.x * _loc12_.x);
         §§push(_loc11_.col2.x);
         §§push(_loc12_);
         if(false)
         {
            return false;
         }
         var _loc22_:Number = §§pop() + (§§pop() + §§pop() * §§pop().y);
         var _loc23_:Number = param5.position.y + (_loc11_.col1.y * _loc12_.x + _loc11_.col2.y * _loc12_.y);
         _loc22_ -= _loc20_;
         _loc23_ -= _loc21_;
         return _loc22_ * _loc13_ + _loc23_ * _loc14_;
      }
      
      public static function §\x19\x0e§(param1:Array, param2:b2PolygonShape, param3:§\x1d\x04§, param4:b2PolygonShape, param5:§\x1d\x04§) : Number
      {
         var _loc8_:* = null;
         var _loc9_:b2Mat22 = null;
         §§push(0);
         if(false)
         {
            return;
         }
         var _loc22_:* = §§pop();
         var _loc23_:Number = NaN;
         var _loc24_:int = 0;
         var _loc25_:Number = NaN;
         if(false)
         {
            return;
         }
         var _loc6_:int = param2.m_vertexCount;
         §§push(param2.m_normals);
         if(false)
         {
            return;
         }
         var _loc7_:* = §§pop();
         _loc9_ = param5.R;
         _loc8_ = param4.m_centroid;
         var _loc10_:Number = param5.position.x + (_loc9_.col1.x * _loc8_.x + _loc9_.col2.x * _loc8_.y);
         var _loc11_:Number = param5.position.y + (_loc9_.col1.y * _loc8_.x + _loc9_.col2.y * _loc8_.y);
         _loc9_ = param3.R;
         _loc8_ = param2.m_centroid;
         _loc10_ -= param3.position.x + (_loc9_.col1.x * _loc8_.x + _loc9_.col2.x * _loc8_.y);
         _loc11_ -= param3.position.y + (_loc9_.col1.y * _loc8_.x + _loc9_.col2.y * _loc8_.y);
         var _loc12_:Number = _loc10_ * param3.R.col1.x + _loc11_ * param3.R.col1.y;
         var _loc13_:Number = _loc10_ * param3.R.col2.x + _loc11_ * param3.R.col2.y;
         var _loc14_:int = 0;
         var _loc15_:Number = -Number.MAX_VALUE;
         var _loc16_:int = 0;
         while(_loc16_ < _loc6_)
         {
            var _temp_2:* = _loc7_[_loc16_];
            §§push(_temp_2);
            §§push(_temp_2);
            if(false)
            {
               return;
            }
            _loc8_ = §§pop();
            _loc25_ = §§pop().x * _loc12_ + _loc8_.y * _loc13_;
            if(_loc25_ > _loc15_)
            {
               _loc15_ = _loc25_;
               _loc14_ = _loc16_;
            }
            _loc16_++;
         }
         var _loc17_:Number = §\x1a\x04§(param2,param3,_loc14_,param4,param5);
         var _loc18_:int = _loc14_ - 1 < 0 ? int(_loc6_ - 1) : int(_loc14_ - 1);
         var _loc19_:Number = §\x1a\x04§(param2,param3,_loc18_,param4,param5);
         var _loc20_:int = _loc14_ + 1 >= _loc6_ ? 0 : int(_loc14_ + 1);
         var _loc21_:Number = §\x1a\x04§(param2,param3,_loc20_,param4,param5);
         §§push(_loc19_ > _loc17_);
         if(false)
         {
            return;
         }
         if(§§pop() && _loc19_ > _loc21_)
         {
            _loc24_ = -1;
            _loc22_ = _loc18_;
            _loc23_ = _loc19_;
         }
         else
         {
            if(_loc21_ <= _loc17_)
            {
               §§push(param1);
               §§push(0);
               if(false)
               {
                  throw true;
               }
               §§pop()[§§pop()] = _loc14_;
               return _loc17_;
            }
            _loc24_ = 1;
            _loc22_ = _loc20_;
            _loc23_ = _loc21_;
         }
         while(true)
         {
            if(_loc24_ != -1)
            {
               §§push(_loc22_ + 1 < _loc6_);
               if(false)
               {
                  break;
               }
               _loc14_ = !§§pop() ? 0 : int(_loc22_ + 1);
            }
            else
            {
               _loc14_ = _loc22_ - 1 >= 0 ? int(_loc22_ - 1) : int(_loc6_ - 1);
            }
            _loc17_ = §\x1a\x04§(param2,param3,_loc14_,param4,param5);
            if(_loc17_ <= _loc23_)
            {
               param1[0] = _loc22_;
               return _loc23_;
            }
            _loc22_ = _loc14_;
            _loc23_ = _loc17_;
            if(false)
            {
               return;
            }
         }
      }
      
      public static function §\x19\x0f§(param1:Array, param2:b2PolygonShape, param3:§\x1d\x04§, param4:int, param5:b2PolygonShape, param6:§\x1d\x04§) : void
      {
         var _loc12_:b2Mat22 = null;
         §§push(null);
         if(false)
         {
            return;
         }
         var _loc13_:* = §§pop();
         var _loc20_:§\x1b\x1c§ = null;
         var _loc23_:Number = NaN;
         var _loc7_:int = param2.m_vertexCount;
         var _loc8_:Array = param2.m_normals;
         var _loc9_:int = param5.m_vertexCount;
         var _loc10_:Array = param5.m_vertices;
         var _loc11_:Array = param5.m_normals;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         var _loc14_:Number = _loc12_.col1.x * _loc13_.x + _loc12_.col2.x * _loc13_.y;
         §§push(_loc12_.col1.y * _loc13_.x);
         §§push(_loc12_.col2.y * _loc13_.y);
         if(false)
         {
            return;
         }
         var _loc15_:Number = §§pop() + §§pop();
         _loc12_ = param6.R;
         var _loc16_:Number = _loc12_.col1.x * _loc14_ + _loc12_.col1.y * _loc15_;
         _loc15_ = _loc12_.col2.x * _loc14_ + _loc12_.col2.y * _loc15_;
         _loc14_ = _loc16_;
         var _loc17_:int = 0;
         var _loc18_:Number = Number.MAX_VALUE;
         var _loc19_:int = 0;
         while(_loc19_ < _loc9_)
         {
            _loc13_ = _loc11_[_loc19_];
            _loc23_ = _loc14_ * _loc13_.x + _loc15_ * _loc13_.y;
            if(_loc23_ < _loc18_)
            {
               _loc18_ = _loc23_;
               _loc17_ = _loc19_;
            }
            _loc19_++;
         }
         var _loc21_:int = _loc17_;
         var _loc22_:int = _loc21_ + 1 >= _loc9_ ? 0 : int(_loc21_ + 1);
         _loc20_ = param1[0];
         _loc13_ = _loc10_[_loc21_];
         _loc12_ = param6.R;
         _loc20_.v.x = param6.position.x + (_loc12_.col1.x * _loc13_.x + _loc12_.col2.x * _loc13_.y);
         _loc20_.v.y = param6.position.y + (_loc12_.col1.y * _loc13_.x + _loc12_.col2.y * _loc13_.y);
         _loc20_.id.features.referenceEdge = param4;
         _loc20_.id.features.incidentEdge = _loc21_;
         _loc20_.id.features.incidentVertex = 0;
         _loc20_ = param1[1];
         _loc13_ = _loc10_[_loc22_];
         _loc12_ = param6.R;
         _loc20_.v.x = param6.position.x + (_loc12_.col1.x * _loc13_.x + _loc12_.col2.x * _loc13_.y);
         §§push(_loc20_.v);
         §§push(param6.position);
         if(false)
         {
            throw true;
         }
         §§pop().y = §§pop().y + (_loc12_.col1.y * _loc13_.x + _loc12_.col2.y * _loc13_.y);
         _loc20_.id.features.referenceEdge = param4;
         §§push(_loc20_);
         if(false)
         {
            return;
         }
         §§pop().id.features.incidentEdge = _loc22_;
         _loc20_.id.features.incidentVertex = 1;
      }
      
      private static function §\x10\x02§() : Array
      {
         var _loc1_:Array = new Array(2);
         _loc1_[0] = new §\x1b\x1c§();
         _loc1_[1] = new §\x1b\x1c§();
         return _loc1_;
      }
      
      public static function CollidePolygons(param1:b2Manifold, param2:b2PolygonShape, param3:§\x1d\x04§, param4:b2PolygonShape, param5:§\x1d\x04§) : void
      {
         var _loc6_:§\x1b\x1c§ = null;
         var _loc12_:b2PolygonShape = null;
         var _loc13_:b2PolygonShape = null;
         var _loc14_:§\x1d\x04§ = null;
         var _loc15_:§\x1d\x04§ = null;
         var _loc16_:int = 0;
         §§push(0);
         if(false)
         {
            return false;
         }
         var _loc17_:* = §§pop();
         var _loc20_:b2Mat22 = null;
         var _loc25_:b2Vec2 = null;
         var _loc39_:int = 0;
         var _loc42_:Number = NaN;
         var _loc43_:b2ManifoldPoint = null;
         if(false)
         {
            return;
         }
         var _loc44_:Number = NaN;
         var _loc45_:Number = NaN;
         param1.m_pointCount = 0;
         var _loc7_:Number = param2.m_radius + param4.m_radius;
         var _loc8_:int = 0;
         s_edgeAO[0] = _loc8_;
         §§push(§§findproperty(§\x19\x0e§));
         §§push(s_edgeAO);
         §§push(param2);
         if(false)
         {
            return;
         }
         var _loc9_:Number = Number(§§pop().§\x19\x0e§(§§pop(),§§pop(),param3,param4,param5));
         _loc8_ = int(s_edgeAO[0]);
         §§push(_loc9_);
         §§push(_loc7_);
         if(false)
         {
            return;
         }
         if(§§pop() <= §§pop())
         {
            var _loc10_:int = 0;
            s_edgeBO[0] = _loc10_;
            var _loc11_:Number = §\x19\x0e§(s_edgeBO,param4,param5,param2,param3);
            _loc10_ = int(s_edgeBO[0]);
            if(_loc11_ <= _loc7_)
            {
               var _loc18_:Number = 0.98;
               var _loc19_:Number = 0.001;
               if(_loc11_ <= _loc18_ * _loc9_ + _loc19_)
               {
                  _loc12_ = param2;
                  _loc13_ = param4;
                  _loc14_ = param3;
                  _loc15_ = param5;
                  _loc16_ = _loc8_;
                  §§push(param1);
                  §§push(b2Manifold);
                  if(false)
                  {
                     return;
                  }
                  §§pop().m_type = §§pop().e_faceA;
                  _loc17_ = 0;
               }
               else
               {
                  _loc12_ = param4;
                  _loc13_ = param2;
                  _loc14_ = param5;
                  _loc15_ = param3;
                  _loc16_ = _loc10_;
                  param1.m_type = b2Manifold.e_faceB;
                  _loc17_ = 1;
               }
               var _loc21_:Array = s_incidentEdge;
               §§push(§§findproperty(§\x19\x0f§));
               §§push(_loc21_);
               §§push(_loc12_);
               §§push(_loc14_);
               §§push(_loc16_);
               §§push(_loc13_);
               §§push(_loc15_);
               if(false)
               {
                  return false;
               }
               §§pop().§\x19\x0f§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
               var _loc22_:int = _loc12_.m_vertexCount;
               var _loc23_:Array = _loc12_.m_vertices;
               var _loc24_:b2Vec2 = _loc23_[_loc16_];
               if(_loc16_ + 1 >= _loc22_)
               {
                  _loc25_ = _loc23_[0];
               }
               else
               {
                  §§push(_loc23_);
                  §§push(§§findproperty(int));
                  §§push(_loc16_);
                  §§push(1);
                  if(false)
                  {
                     return;
                  }
                  _loc25_ = §§pop()[§§pop().int(§§pop() + §§pop())];
               }
               var _loc26_:b2Vec2 = s_localTangent;
               _loc26_.Set(_loc25_.x - _loc24_.x,_loc25_.y - _loc24_.y);
               _loc26_.Normalize();
               §§push(s_localNormal);
               if(false)
               {
                  return;
               }
               var _loc27_:b2Vec2 = §§pop();
               _loc27_.x = _loc26_.y;
               _loc27_.y = -_loc26_.x;
               var _temp_4:* = s_planePoint;
               var _loc28_:b2Vec2 = s_planePoint;
               §§push(_loc28_);
               §§push(0.5 * (_loc24_.x + _loc25_.x));
               §§push(0.5);
               §§push(_loc24_);
               if(false)
               {
                  return;
               }
               §§pop().Set(§§pop(),§§pop() * (§§pop().y + _loc25_.y));
               var _loc29_:b2Vec2 = s_tangent;
               _loc20_ = _loc14_.R;
               _loc29_.x = _loc20_.col1.x * _loc26_.x + _loc20_.col2.x * _loc26_.y;
               §§push(_loc29_);
               §§push(_loc20_.col1.y * _loc26_.x + _loc20_.col2.y * _loc26_.y);
               if(false)
               {
                  throw true;
               }
               §§pop().y = §§pop();
               var _loc30_:b2Vec2 = s_tangent2;
               _loc30_.x = -_loc29_.x;
               _loc30_.y = -_loc29_.y;
               var _loc31_:b2Vec2 = s_normal;
               _loc31_.x = _loc29_.y;
               _loc31_.y = -_loc29_.x;
               var _loc32_:b2Vec2 = s_v11;
               var _loc33_:b2Vec2 = s_v12;
               §§push(_loc32_);
               §§push(_loc14_.position.x);
               §§push(_loc20_.col1.x);
               §§push(_loc24_);
               if(false)
               {
                  return;
               }
               §§pop().x = §§pop() + (§§pop() * §§pop().x + _loc20_.col2.x * _loc24_.y);
               _loc32_.y = _loc14_.position.y + (_loc20_.col1.y * _loc24_.x + _loc20_.col2.y * _loc24_.y);
               §§push(_loc33_);
               if(false)
               {
                  throw true;
               }
               §§push(_loc14_.position.x);
               §§push(_loc20_.col1.x);
               §§push(_loc25_.x);
               if(false)
               {
                  return;
               }
               §§push(§§pop() * §§pop() + _loc20_.col2.x * _loc25_.y);
               if(false)
               {
                  return false;
               }
               §§pop().x = §§pop() + §§pop();
               _loc33_.y = _loc14_.position.y + (_loc20_.col1.y * _loc25_.x + _loc20_.col2.y * _loc25_.y);
               var _loc34_:Number = _loc31_.x * _loc32_.x + _loc31_.y * _loc32_.y;
               var _loc35_:Number = -_loc29_.x * _loc32_.x - _loc29_.y * _loc32_.y + _loc7_;
               var _loc36_:Number = _loc29_.x * _loc33_.x + _loc29_.y * _loc33_.y + _loc7_;
               §§push(s_clipPoints1);
               if(false)
               {
                  return false;
               }
               var _loc37_:* = §§pop();
               var _loc38_:Array = s_clipPoints2;
               _loc39_ = §\x1b\x1d§(_loc37_,_loc21_,_loc30_,_loc35_);
               if(_loc39_ >= 2)
               {
                  _loc39_ = §\x1b\x1d§(_loc38_,_loc37_,_loc29_,_loc36_);
                  if(_loc39_ >= 2)
                  {
                     param1.m_localPlaneNormal.SetV(_loc27_);
                     param1.m_localPoint.SetV(_loc28_);
                     var _loc40_:int = 0;
                     var _loc41_:int = 0;
                     while(_loc41_ < b2Settings.b2_maxManifoldPoints)
                     {
                        _loc6_ = _loc38_[_loc41_];
                        §§push(_loc31_.x * _loc6_.v.x + _loc31_.y * _loc6_.v.y);
                        §§push(_loc34_);
                        if(false)
                        {
                           return;
                        }
                        _loc42_ = §§pop() - §§pop();
                        if(_loc42_ <= _loc7_)
                        {
                           _loc43_ = param1.m_points[_loc40_];
                           _loc20_ = _loc15_.R;
                           _loc44_ = _loc6_.v.x - _loc15_.position.x;
                           _loc45_ = _loc6_.v.y - _loc15_.position.y;
                           _loc43_.m_localPoint.x = _loc44_ * _loc20_.col1.x + _loc45_ * _loc20_.col1.y;
                           _loc43_.m_localPoint.y = _loc44_ * _loc20_.col2.x + _loc45_ * _loc20_.col2.y;
                           _loc43_.m_id.Set(_loc6_.id);
                           _loc43_.m_id.features.flip = _loc17_;
                           _loc40_++;
                        }
                        _loc41_++;
                     }
                     param1.m_pointCount = _loc40_;
                     return;
                  }
                  return;
               }
               return;
            }
            return;
         }
      }
      
      public static function CollideCircles(param1:b2Manifold, param2:b2CircleShape, param3:§\x1d\x04§, param4:b2CircleShape, param5:§\x1d\x04§) : void
      {
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         param1.m_pointCount = 0;
         _loc6_ = param3.R;
         _loc7_ = param2.m_p;
         var _loc8_:Number = param3.position.x + (_loc6_.col1.x * _loc7_.x + _loc6_.col2.x * _loc7_.y);
         var _loc9_:Number = param3.position.y + (_loc6_.col1.y * _loc7_.x + _loc6_.col2.y * _loc7_.y);
         _loc6_ = param5.R;
         _loc7_ = param4.m_p;
         var _loc10_:Number = param5.position.x + (_loc6_.col1.x * _loc7_.x + _loc6_.col2.x * _loc7_.y);
         var _loc11_:Number = param5.position.y + (_loc6_.col1.y * _loc7_.x + _loc6_.col2.y * _loc7_.y);
         var _loc12_:Number = _loc10_ - _loc8_;
         var _loc13_:Number = _loc11_ - _loc9_;
         var _loc14_:Number = _loc12_ * _loc12_ + _loc13_ * _loc13_;
         var _loc15_:Number = param2.m_radius + param4.m_radius;
         if(_loc14_ <= _loc15_ * _loc15_)
         {
            param1.m_type = b2Manifold.e_circles;
            param1.m_localPoint.SetV(param2.m_p);
            param1.m_localPlaneNormal.SetZero();
            param1.m_pointCount = 1;
            param1.m_points[0].m_localPoint.SetV(param4.m_p);
            param1.m_points[0].m_id.key = 0;
            if(false)
            {
               return;
            }
            return;
         }
      }
      
      public static function CollidePolygonAndCircle(param1:b2Manifold, param2:b2PolygonShape, param3:§\x1d\x04§, param4:b2CircleShape, param5:§\x1d\x04§) : void
      {
         var _loc6_:b2ManifoldPoint = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Mat22 = null;
         var _loc17_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         param1.m_pointCount = 0;
         _loc12_ = param5.R;
         _loc11_ = param4.m_p;
         §§push(param5.position.x + (_loc12_.col1.x * _loc11_.x + _loc12_.col2.x * _loc11_.y));
         if(false)
         {
            return;
         }
         var _loc13_:Number = §§pop();
         var _loc14_:Number = param5.position.y + (_loc12_.col1.y * _loc11_.x + _loc12_.col2.y * _loc11_.y);
         _loc7_ = _loc13_ - param3.position.x;
         _loc8_ = _loc14_ - param3.position.y;
         _loc12_ = param3.R;
         var _loc15_:Number = _loc7_ * _loc12_.col1.x + _loc8_ * _loc12_.col1.y;
         var _loc16_:Number = _loc7_ * _loc12_.col2.x + _loc8_ * _loc12_.col2.y;
         var _loc18_:int = 0;
         var _loc19_:* = -Number.MAX_VALUE;
         §§push(param2.m_radius);
         if(false)
         {
            throw true;
         }
         var _loc20_:Number = §§pop() + param4.m_radius;
         var _loc21_:int = param2.m_vertexCount;
         var _loc22_:Array = param2.m_vertices;
         var _loc23_:Array = param2.m_normals;
         var _loc24_:int = 0;
         while(_loc24_ < _loc21_)
         {
            _loc11_ = _loc22_[_loc24_];
            _loc7_ = _loc15_ - _loc11_.x;
            _loc8_ = _loc16_ - _loc11_.y;
            var _temp_1:* = _loc23_[_loc24_];
            _loc11_ = _loc23_[_loc24_];
            _loc31_ = _loc11_.x * _loc7_ + _loc11_.y * _loc8_;
            if(_loc31_ > _loc20_)
            {
               return;
            }
            if(_loc31_ > _loc19_)
            {
               _loc19_ = _loc31_;
               _loc18_ = _loc24_;
            }
            _loc24_++;
         }
         var _loc25_:int = _loc18_;
         var _loc26_:int = _loc25_ + 1 >= _loc21_ ? 0 : int(_loc25_ + 1);
         var _loc27_:b2Vec2 = _loc22_[_loc25_];
         var _loc28_:b2Vec2 = _loc22_[_loc26_];
         §§push(_loc19_);
         if(false)
         {
            return false;
         }
         if(§§pop() >= Number.MIN_VALUE)
         {
            var _loc29_:Number = (_loc15_ - _loc27_.x) * (_loc28_.x - _loc27_.x) + (_loc16_ - _loc27_.y) * (_loc28_.y - _loc27_.y);
            §§push((_loc15_ - _loc28_.x) * (_loc27_.x - _loc28_.x));
            §§push(_loc16_ - _loc28_.y);
            §§push(_loc27_.y - _loc28_.y);
            if(false)
            {
               return;
            }
            var _loc30_:Number = §§pop() + §§pop() * §§pop();
            if(_loc29_ > 0)
            {
               if(_loc30_ > 0)
               {
                  §§push(0.5);
                  §§push(_loc27_.x + _loc28_.x);
                  if(false)
                  {
                     return;
                  }
                  _loc32_ = §§pop() * §§pop();
                  _loc33_ = 0.5 * (_loc27_.y + _loc28_.y);
                  var _temp_4:* = (_loc15_ - _loc32_) * _loc23_[_loc25_].x + (_loc16_ - _loc33_) * _loc23_[_loc25_].y;
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(false)
                  {
                     return;
                  }
                  _loc19_ = §§pop();
                  if(§§pop() > _loc20_)
                  {
                     return;
                  }
                  param1.m_pointCount = 1;
                  param1.m_type = b2Manifold.e_faceA;
                  param1.m_localPlaneNormal.x = _loc23_[_loc25_].x;
                  param1.m_localPlaneNormal.y = _loc23_[_loc25_].y;
                  param1.m_localPlaneNormal.Normalize();
                  param1.m_localPoint.Set(_loc32_,_loc33_);
                  §§push(param1);
                  if(false)
                  {
                     return;
                  }
                  §§pop().m_points[0].m_localPoint.SetV(param4.m_p);
                  param1.m_points[0].m_id.key = 0;
               }
               else
               {
                  if((_loc15_ - _loc28_.x) * (_loc15_ - _loc28_.x) + (_loc16_ - _loc28_.y) * (_loc16_ - _loc28_.y) > _loc20_ * _loc20_)
                  {
                     return;
                  }
                  param1.m_pointCount = 1;
                  param1.m_type = b2Manifold.e_faceA;
                  param1.m_localPlaneNormal.x = _loc15_ - _loc28_.x;
                  param1.m_localPlaneNormal.y = _loc16_ - _loc28_.y;
                  param1.m_localPlaneNormal.Normalize();
                  param1.m_localPoint.SetV(_loc28_);
                  §§push(param1.m_points[0].m_localPoint);
                  §§push(param4);
                  if(false)
                  {
                     throw true;
                  }
                  §§pop().SetV(§§pop().b2internal::m_p);
                  param1.m_points[0].m_id.key = 0;
               }
            }
            else
            {
               §§push((_loc15_ - _loc27_.x) * (_loc15_ - _loc27_.x) + (_loc16_ - _loc27_.y) * (_loc16_ - _loc27_.y));
               if(false)
               {
                  return;
               }
               if(§§pop() > _loc20_ * _loc20_)
               {
                  return;
               }
               param1.m_pointCount = 1;
               param1.m_type = b2Manifold.e_faceA;
               param1.m_localPlaneNormal.x = _loc15_ - _loc27_.x;
               param1.m_localPlaneNormal.y = _loc16_ - _loc27_.y;
               param1.m_localPlaneNormal.Normalize();
               param1.m_localPoint.SetV(_loc27_);
               param1.m_points[0].m_localPoint.SetV(param4.m_p);
               §§push(param1);
               if(false)
               {
                  return;
               }
               §§pop().m_points[0].m_id.key = 0;
            }
            return;
         }
         param1.m_pointCount = 1;
         param1.m_type = b2Manifold.e_faceA;
         param1.m_localPlaneNormal.SetV(_loc23_[_loc18_]);
         param1.m_localPoint.x = 0.5 * (_loc27_.x + _loc28_.x);
         param1.m_localPoint.y = 0.5 * (_loc27_.y + _loc28_.y);
         param1.m_points[0].m_localPoint.SetV(param4.m_p);
         param1.m_points[0].m_id.key = 0;
      }
      
      public static function TestOverlap(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc3_:b2Vec2 = param2.lowerBound;
         var _loc4_:b2Vec2 = param1.upperBound;
         var _loc5_:Number = _loc3_.x - _loc4_.x;
         var _loc6_:Number = _loc3_.y - _loc4_.y;
         _loc3_ = param1.lowerBound;
         _loc4_ = param2.upperBound;
         §§push(_loc3_.x);
         §§push(_loc4_.x);
         if(false)
         {
            return;
         }
         var _loc7_:Number = §§pop() - §§pop();
         var _loc8_:Number = _loc3_.y - _loc4_.y;
         if(false)
         {
            return false;
         }
         var _temp_1:* = _loc5_ > 0;
         §§push(_temp_1);
         if(!_temp_1)
         {
            §§pop();
            §§push(_loc6_ > 0);
            if(false)
            {
               return;
            }
         }
         if(!§§pop())
         {
            if(_loc7_ > 0 || _loc8_ > 0)
            {
               return false;
            }
            return true;
         }
         return false;
      }
   }
}


package §\x1c\x17§
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2FrictionJointDef;
   import §\x1c\x10§.b2MouseJointDef;
   import §\x1c\x10§.b2PrismaticJointDef;
   import §\x1c\x10§.b2PulleyJointDef;
   import §\x1c\x10§.b2RevoluteJointDef;
   import §\x1c\x10§.b2WeldJointDef;
   import §\x1c\x11§.§\x1e\b§;
   import §\x1c\x11§.§\x1e\t§;
   import §\x1c\x12§.§\x1e\n§;
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
   
   use namespace b2internal;
   
   public class §\x1d\x01§
   {
      
      public var m_normal:b2Vec2 = new b2Vec2();
      
      public var m_points:Array;
      
      public function §\x1d\x01§()
      {
         super();
         §§push(§§findproperty(m_points));
         if(false)
         {
            return;
         }
         §§pop().m_points = new Array(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            if(false)
            {
               return;
            }
            m_points[_loc1_] = new b2Vec2();
            _loc1_++;
         }
      }
      
      public function §\x10\x1d§(param1:b2Manifold, param2:§\x1d\x04§, param3:Number, param4:§\x1d\x04§, param5:Number) : void
      {
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Mat22 = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         §§push(NaN);
         if(false)
         {
            return;
         }
         var _loc24_:* = §§pop();
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         if(param1.m_pointCount != 0)
         {
            switch(param1.m_type)
            {
               case b2Manifold.e_circles:
                  _loc8_ = param2.R;
                  _loc7_ = param1.m_localPoint;
                  §§push(param2.position.x + _loc8_.col1.x * _loc7_.x);
                  §§push(_loc8_.col2.x);
                  if(false)
                  {
                     return;
                  }
                  _loc15_ = §§pop() + §§pop() * _loc7_.y;
                  _loc16_ = param2.position.y + _loc8_.col1.y * _loc7_.x + _loc8_.col2.y * _loc7_.y;
                  _loc8_ = param4.R;
                  _loc7_ = param1.m_points[0].m_localPoint;
                  _loc17_ = param4.position.x + _loc8_.col1.x * _loc7_.x + _loc8_.col2.x * _loc7_.y;
                  §§push(param4.position.y + _loc8_.col1.y * _loc7_.x);
                  §§push(_loc8_.col2.y * _loc7_.y);
                  if(false)
                  {
                     throw true;
                  }
                  _loc18_ = §§pop() + §§pop();
                  _loc19_ = _loc17_ - _loc15_;
                  _loc20_ = _loc18_ - _loc16_;
                  _loc21_ = _loc19_ * _loc19_ + _loc20_ * _loc20_;
                  if(_loc21_ <= Number.MIN_VALUE * Number.MIN_VALUE)
                  {
                     m_normal.x = 1;
                     m_normal.y = 0;
                  }
                  else
                  {
                     _loc26_ = Math.sqrt(_loc21_);
                     m_normal.x = _loc19_ / _loc26_;
                     m_normal.y = _loc20_ / _loc26_;
                  }
                  _loc22_ = _loc15_ + param3 * m_normal.x;
                  _loc23_ = _loc16_ + param3 * m_normal.y;
                  _loc24_ = _loc17_ - param5 * m_normal.x;
                  §§push(_loc18_);
                  §§push(param5);
                  §§push(m_normal.y);
                  if(false)
                  {
                     return;
                  }
                  _loc25_ = §§pop() - §§pop() * §§pop();
                  m_points[0].x = 0.5 * (_loc22_ + _loc24_);
                  §§push(m_points[0]);
                  §§push(0.5);
                  §§push(_loc23_);
                  if(false)
                  {
                     return;
                  }
                  §§pop().y = §§pop() * (§§pop() + _loc25_);
                  break;
               case b2Manifold.e_faceA:
                  _loc8_ = param2.R;
                  _loc7_ = param1.m_localPlaneNormal;
                  §§push(_loc8_.col1.x * _loc7_.x);
                  §§push(_loc8_.col2.x);
                  §§push(_loc7_.y);
                  if(false)
                  {
                     return;
                  }
                  _loc9_ = §§pop() + §§pop() * §§pop();
                  _loc10_ = _loc8_.col1.y * _loc7_.x + _loc8_.col2.y * _loc7_.y;
                  _loc8_ = param2.R;
                  §§push(param1);
                  if(false)
                  {
                     return;
                  }
                  _loc7_ = §§pop().m_localPoint;
                  _loc11_ = param2.position.x + _loc8_.col1.x * _loc7_.x + _loc8_.col2.x * _loc7_.y;
                  §§push(param2.position.y);
                  §§push(_loc8_.col1.y);
                  §§push(_loc7_.x);
                  if(false)
                  {
                     return false;
                  }
                  _loc12_ = §§pop() + §§pop() * §§pop() + _loc8_.col2.y * _loc7_.y;
                  m_normal.x = _loc9_;
                  m_normal.y = _loc10_;
                  _loc6_ = 0;
                  while(_loc6_ < param1.m_pointCount)
                  {
                     _loc8_ = param4.R;
                     if(false)
                     {
                        return;
                     }
                     _loc7_ = param1.m_points[_loc6_].m_localPoint;
                     §§push(param4.position.x + _loc8_.col1.x * _loc7_.x);
                     §§push(_loc8_.col2.x * _loc7_.y);
                     if(false)
                     {
                        return;
                     }
                     _loc13_ = §§pop() + §§pop();
                     _loc14_ = param4.position.y + _loc8_.col1.y * _loc7_.x + _loc8_.col2.y * _loc7_.y;
                     §§push(m_points[_loc6_]);
                     §§push(_loc13_);
                     §§push(0.5);
                     §§push(param3);
                     §§push((_loc13_ - _loc11_) * _loc9_);
                     if(false)
                     {
                        return;
                     }
                     §§pop().x = §§pop() + §§pop() * (§§pop() - §§pop() - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc9_;
                     m_points[_loc6_].y = _loc14_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc10_;
                     _loc6_++;
                  }
                  break;
               case b2Manifold.e_faceB:
                  _loc8_ = param4.R;
                  _loc7_ = param1.m_localPlaneNormal;
                  _loc9_ = _loc8_.col1.x * _loc7_.x + _loc8_.col2.x * _loc7_.y;
                  §§push(_loc8_.col1.y * _loc7_.x);
                  §§push(_loc8_.col2);
                  if(false)
                  {
                     throw true;
                  }
                  _loc10_ = §§pop() + §§pop().y * _loc7_.y;
                  _loc8_ = param4.R;
                  _loc7_ = param1.m_localPoint;
                  §§push(param4.position.x);
                  if(false)
                  {
                     return;
                  }
                  _loc11_ = §§pop() + _loc8_.col1.x * _loc7_.x + _loc8_.col2.x * _loc7_.y;
                  §§push(param4.position.y + _loc8_.col1.y * _loc7_.x);
                  §§push(_loc8_.col2.y);
                  §§push(_loc7_.y);
                  if(false)
                  {
                     return;
                  }
                  _loc12_ = §§pop() + §§pop() * §§pop();
                  m_normal.x = -_loc9_;
                  m_normal.y = -_loc10_;
                  _loc6_ = 0;
                  while(_loc6_ < param1.m_pointCount)
                  {
                     _loc8_ = param2.R;
                     _loc7_ = param1.m_points[_loc6_].m_localPoint;
                     §§push(param2.position.x);
                     §§push(_loc8_);
                     if(false)
                     {
                        return;
                     }
                     _loc13_ = §§pop() + §§pop().col1.x * _loc7_.x + _loc8_.col2.x * _loc7_.y;
                     _loc14_ = param2.position.y + _loc8_.col1.y * _loc7_.x + _loc8_.col2.y * _loc7_.y;
                     m_points[_loc6_].x = _loc13_ + 0.5 * (param5 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param3) * _loc9_;
                     m_points[_loc6_].y = _loc14_ + 0.5 * (param5 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param3) * _loc10_;
                     _loc6_++;
                  }
            }
            return;
         }
      }
   }
}


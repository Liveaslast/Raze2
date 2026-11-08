package §\x1c\x17§
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
   
   internal class §\x1d\x0b§
   {
      
      public static const e_points:int = 1;
      
      §§push(§§findproperty(e_faceA));
      if(false)
      {
         return false;
      }
      
      public static const e_faceA:int = 2;
      
      public static const e_faceB:int = 4;
      
      public var m_proxyA:§\x1e\x03§;
      
      public var m_proxyB:§\x1e\x03§;
      
      public var m_type:int;
      
      public var m_localPoint:b2Vec2 = new b2Vec2();
      
      public var m_axis:b2Vec2 = new b2Vec2();
      
      public function §\x1d\x0b§()
      {
         super();
      }
      
      public function §\x10\x1d§(param1:§\x1d\t§, param2:§\x1e\x03§, param3:§\x1d\x04§, param4:§\x1e\x03§, param5:§\x1d\x04§) : void
      {
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:* = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:b2Mat22 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc25_:b2Vec2 = null;
         var _loc26_:b2Vec2 = null;
         var _loc27_:Number = NaN;
         if(false)
         {
            throw true;
         }
         var _loc28_:Number = NaN;
         var _loc29_:b2Vec2 = null;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         m_proxyA = param2;
         m_proxyB = param4;
         var _loc6_:int = int(param1.count);
         b2Settings.b2Assert(0 < _loc6_ && _loc6_ < 3);
         if(_loc6_ != 1)
         {
            if(param1.indexB[0] != param1.indexB[1])
            {
               if(param1.indexA[0] != param1.indexA[0])
               {
                  _loc8_ = m_proxyA.§\x11\x1c§(param1.indexA[0]);
                  §§push(m_proxyA.§\x11\x1c§(param1.indexA[1]));
                  if(false)
                  {
                     throw true;
                  }
                  _loc9_ = §§pop();
                  _loc11_ = m_proxyB.§\x11\x1c§(param1.indexB[0]);
                  _loc12_ = m_proxyB.§\x11\x1c§(param1.indexB[1]);
                  _loc23_ = b2Math.MulX(param3,_loc7_);
                  _loc24_ = b2Math.MulMV(param3.R,b2Math.SubtractVV(_loc9_,_loc8_));
                  _loc25_ = b2Math.MulX(param5,_loc10_);
                  if(false)
                  {
                     return;
                  }
                  _loc26_ = b2Math.MulMV(param5.R,b2Math.SubtractVV(_loc12_,_loc11_));
                  _loc27_ = _loc24_.x * _loc24_.x + _loc24_.y * _loc24_.y;
                  _loc28_ = _loc26_.x * _loc26_.x + _loc26_.y * _loc26_.y;
                  _loc29_ = b2Math.SubtractVV(_loc26_,_loc24_);
                  _loc30_ = _loc24_.x * _loc29_.x + _loc24_.y * _loc29_.y;
                  _loc31_ = _loc26_.x * _loc29_.x + _loc26_.y * _loc29_.y;
                  _loc32_ = _loc24_.x * _loc26_.x + _loc24_.y * _loc26_.y;
                  if(false)
                  {
                     throw true;
                  }
                  _loc33_ = _loc27_ * _loc28_ - _loc32_ * _loc32_;
                  _loc21_ = 0;
                  if(_loc33_ != 0)
                  {
                     §§push(b2Math);
                     §§push(_loc32_ * _loc31_);
                     §§push(_loc30_ * _loc28_);
                     if(false)
                     {
                        return false;
                     }
                     _loc21_ = Number(§§pop().Clamp((§§pop() - §§pop()) / _loc33_,0,1));
                  }
                  _loc34_ = (_loc32_ * _loc21_ + _loc31_) / _loc28_;
                  if(_loc34_ < 0)
                  {
                     _loc34_ = 0;
                     §§push(b2Math);
                     §§push(_loc32_);
                     if(false)
                     {
                        return;
                     }
                     _loc21_ = Number(§§pop().Clamp((§§pop() - _loc30_) / _loc27_,0,1));
                  }
                  _loc7_ = new b2Vec2();
                  _loc7_.x = _loc8_.x + _loc21_ * (_loc9_.x - _loc8_.x);
                  _loc7_.y = _loc8_.y + _loc21_ * (_loc9_.y - _loc8_.y);
                  _loc10_ = new b2Vec2();
                  _loc10_.x = _loc11_.x + _loc21_ * (_loc12_.x - _loc11_.x);
                  _loc10_.y = _loc11_.y + _loc21_ * (_loc12_.y - _loc11_.y);
                  if(!(_loc21_ == 0 || _loc21_ == 1))
                  {
                     m_type = e_faceA;
                     §§push(§§findproperty(m_axis));
                     §§push(b2Math);
                     §§push(b2Math.SubtractVV(_loc9_,_loc8_));
                     if(false)
                     {
                        return;
                     }
                     §§pop().m_axis = §§pop().CrossVF(§§pop(),1);
                     m_localPoint = _loc7_;
                     _loc20_ = m_axis;
                     var _temp_6:* = param3.R;
                     _loc19_ = param3.R;
                     _loc17_ = _loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y;
                     _loc18_ = _loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y;
                     _loc20_ = m_localPoint;
                     _loc19_ = param3.R;
                     §§push(param3.position.x);
                     §§push(_loc19_.col1.x * _loc20_.x);
                     §§push(_loc19_.col2.x);
                     §§push(_loc20_);
                     if(false)
                     {
                        return;
                     }
                     _loc13_ = §§pop() + (§§pop() + §§pop() * §§pop().y);
                     _loc14_ = param3.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
                     _loc20_ = _loc10_;
                     _loc19_ = param5.R;
                     _loc15_ = param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
                     §§push(param5.position.y);
                     §§push(_loc19_.col1.y);
                     §§push(_loc20_);
                     if(false)
                     {
                        return;
                     }
                     §§push(§§pop() * §§pop().x);
                     §§push(_loc19_.col2.y * _loc20_.y);
                     if(false)
                     {
                        return;
                     }
                     _loc16_ = §§pop() + (§§pop() + §§pop());
                     §§push(_loc15_);
                     §§push(_loc13_);
                     if(false)
                     {
                        return;
                     }
                     _loc22_ = (§§pop() - §§pop()) * _loc17_ + (_loc16_ - _loc14_) * _loc18_;
                     if(_loc21_ < 0)
                     {
                        m_axis.§\x0f\b§();
                     }
                  }
                  else
                  {
                     m_type = e_faceB;
                     m_axis = b2Math.CrossVF(b2Math.SubtractVV(_loc12_,_loc11_),1);
                     m_axis.Normalize();
                     m_localPoint = _loc10_;
                     _loc20_ = m_axis;
                     _loc19_ = param5.R;
                     _loc17_ = _loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y;
                     _loc18_ = _loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y;
                     _loc20_ = m_localPoint;
                     _loc19_ = param5.R;
                     _loc15_ = param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
                     _loc16_ = param5.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
                     _loc20_ = _loc7_;
                     _loc19_ = param3.R;
                     §§push(param3.position.x);
                     §§push(_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
                     if(false)
                     {
                        throw true;
                     }
                     _loc13_ = §§pop() + §§pop();
                     _loc14_ = param3.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
                     _loc22_ = (_loc13_ - _loc15_) * _loc17_ + (_loc14_ - _loc16_) * _loc18_;
                     if(_loc21_ < 0)
                     {
                        m_axis.§\x0f\b§();
                     }
                  }
               }
               else
               {
                  m_type = e_faceB;
                  _loc11_ = m_proxyB.§\x11\x1c§(param1.indexB[0]);
                  _loc12_ = m_proxyB.§\x11\x1c§(param1.indexB[1]);
                  _loc7_ = m_proxyA.§\x11\x1c§(param1.indexA[0]);
                  if(false)
                  {
                     throw true;
                  }
                  m_localPoint.x = 0.5 * (_loc11_.x + _loc12_.x);
                  m_localPoint.y = 0.5 * (_loc11_.y + _loc12_.y);
                  §§push(§§findproperty(m_axis));
                  §§push(b2Math);
                  §§push(b2Math.SubtractVV(_loc12_,_loc11_));
                  if(false)
                  {
                     return;
                  }
                  §§pop().m_axis = §§pop().CrossVF(§§pop(),1);
                  m_axis.Normalize();
                  _loc20_ = m_axis;
                  _loc19_ = param5.R;
                  _loc17_ = _loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y;
                  _loc18_ = _loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y;
                  _loc20_ = m_localPoint;
                  _loc19_ = param5.R;
                  _loc15_ = param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
                  §§push(param5.position);
                  if(false)
                  {
                     return false;
                  }
                  _loc16_ = §§pop().y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
                  _loc20_ = _loc7_;
                  _loc19_ = param3.R;
                  _loc13_ = param3.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
                  _loc14_ = param3.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
                  _loc21_ = (_loc13_ - _loc15_) * _loc17_ + (_loc14_ - _loc16_) * _loc18_;
                  if(_loc21_ < 0)
                  {
                     m_axis.§\x0f\b§();
                  }
               }
            }
            else
            {
               m_type = e_faceA;
               _loc8_ = m_proxyA.§\x11\x1c§(param1.indexA[0]);
               _loc9_ = m_proxyA.§\x11\x1c§(param1.indexA[1]);
               _loc10_ = m_proxyB.§\x11\x1c§(param1.indexB[0]);
               m_localPoint.x = 0.5 * (_loc8_.x + _loc9_.x);
               m_localPoint.y = 0.5 * (_loc8_.y + _loc9_.y);
               m_axis = b2Math.CrossVF(b2Math.SubtractVV(_loc9_,_loc8_),1);
               m_axis.Normalize();
               _loc20_ = m_axis;
               _loc19_ = param3.R;
               _loc17_ = _loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y;
               _loc18_ = _loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y;
               if(false)
               {
                  return;
               }
               _loc20_ = m_localPoint;
               _loc19_ = param3.R;
               _loc13_ = param3.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
               _loc14_ = param3.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
               _loc20_ = _loc10_;
               _loc19_ = param5.R;
               _loc15_ = param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
               §§push(param5.position.y);
               §§push(_loc19_.col1.y * _loc20_.x);
               §§push(_loc19_.col2.y);
               §§push(_loc20_);
               if(false)
               {
                  return;
               }
               _loc16_ = §§pop() + (§§pop() + §§pop() * §§pop().y);
               §§push((_loc15_ - _loc13_) * _loc17_ + (_loc16_ - _loc14_) * _loc18_);
               if(false)
               {
                  throw true;
               }
               _loc21_ = §§pop();
               if(_loc21_ < 0)
               {
                  m_axis.§\x0f\b§();
               }
            }
         }
         else
         {
            m_type = e_points;
            _loc7_ = m_proxyA.§\x11\x1c§(param1.indexA[0]);
            _loc10_ = m_proxyB.§\x11\x1c§(param1.indexB[0]);
            _loc20_ = _loc7_;
            if(false)
            {
               return;
            }
            _loc19_ = param3.R;
            _loc13_ = param3.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
            §§push(param3.position.y);
            §§push(_loc19_.col1.y);
            if(false)
            {
               return false;
            }
            §§push(§§pop() * _loc20_.x);
            §§push(_loc19_.col2.y);
            if(false)
            {
               throw true;
            }
            _loc14_ = §§pop() + (§§pop() + §§pop() * _loc20_.y);
            _loc20_ = _loc10_;
            _loc19_ = param5.R;
            §§push(param5.position.x);
            §§push(_loc19_.col1.x * _loc20_.x);
            §§push(_loc19_.col2);
            if(false)
            {
               return false;
            }
            _loc15_ = §§pop() + (§§pop() + §§pop().x * _loc20_.y);
            _loc16_ = param5.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
            m_axis.x = _loc15_ - _loc13_;
            m_axis.y = _loc16_ - _loc14_;
            m_axis.Normalize();
         }
      }
      
      public function Evaluate(param1:§\x1d\x04§, param2:§\x1d\x04§) : Number
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc10_:b2Vec2 = null;
         switch(m_type)
         {
            case e_points:
               _loc3_ = b2Math.MulTMV(param1.R,m_axis);
               §§push(b2Math.MulTMV(param2.R,m_axis.GetNegative()));
               if(false)
               {
                  return false;
               }
               _loc4_ = §§pop();
               _loc5_ = m_proxyA.§\x12\x03§(_loc3_);
               _loc6_ = m_proxyB.§\x12\x03§(_loc4_);
               _loc7_ = b2Math.MulX(param1,_loc5_);
               _loc8_ = b2Math.MulX(param2,_loc6_);
               return (_loc8_.x - _loc7_.x) * m_axis.x + (_loc8_.y - _loc7_.y) * m_axis.y;
               break;
            case e_faceA:
               _loc10_ = b2Math.MulMV(param1.R,m_axis);
               _loc7_ = b2Math.MulX(param1,m_localPoint);
               §§push(b2Math);
               §§push(param2.R);
               if(false)
               {
                  return;
               }
               _loc4_ = §§pop().MulTMV(§§pop(),_loc10_.GetNegative());
               _loc6_ = m_proxyB.§\x12\x03§(_loc4_);
               _loc8_ = b2Math.MulX(param2,_loc6_);
               return (_loc8_.x - _loc7_.x) * _loc10_.x + (_loc8_.y - _loc7_.y) * _loc10_.y;
               break;
            case e_faceB:
               _loc10_ = b2Math.MulMV(param2.R,m_axis);
               _loc8_ = b2Math.MulX(param2,m_localPoint);
               if(false)
               {
                  return;
               }
               _loc3_ = b2Math.MulTMV(param1.R,_loc10_.GetNegative());
               _loc5_ = m_proxyA.§\x12\x03§(_loc3_);
               _loc7_ = b2Math.MulX(param1,_loc5_);
               return (_loc7_.x - _loc8_.x) * _loc10_.x + (_loc7_.y - _loc8_.y) * _loc10_.y;
               break;
            default:
               b2Settings.b2Assert(false);
               return 0;
         }
      }
   }
}


package §\x1c\x17§
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
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
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var s_simplex:§\x1d\n§ = new §\x1d\n§();
      
      private static var s_saveA:Array = new Array(3);
      
      private static var s_saveB:Array = new Array(3);
      
      if(false)
      {
         throw true;
      }
      
      public function b2Distance()
      {
         super();
      }
      
      public static function Distance(param1:§\x1e\x04§, param2:§\x1d\t§, param3:§\x1e\x06§) : void
      {
         var _loc17_:int = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:§\x1d\b§ = null;
         var _loc22_:Boolean = false;
         if(false)
         {
            return;
         }
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Vec2 = null;
         if(false)
         {
            return;
         }
         var _loc26_:* = §§findproperty(b2_gjkCalls);
         var _loc27_:Number = _loc26_.b2_gjkCalls + 1;
         _loc26_.b2_gjkCalls = _loc27_;
         var _loc4_:§\x1e\x03§ = param3.proxyA;
         var _loc5_:§\x1e\x03§ = param3.proxyB;
         §§push(param3.transformA);
         if(false)
         {
            return;
         }
         var _loc6_:* = §§pop();
         var _loc7_:§\x1d\x04§ = param3.transformB;
         var _temp_2:* = s_simplex;
         var _loc8_:§\x1d\n§ = s_simplex;
         _loc8_.§\r\x19§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Array = _loc8_.m_vertices;
         var _loc10_:int = 20;
         var _loc11_:Array = s_saveA;
         §§push(s_saveB);
         if(false)
         {
            return;
         }
         var _loc12_:Array = §§pop();
         var _loc13_:int = 0;
         var _loc14_:b2Vec2 = _loc8_.§\x14\x11§();
         var _temp_4:* = _loc14_.LengthSquared();
         var _loc15_:Number;
         var _loc16_:Number = _loc15_ = _loc14_.LengthSquared();
         var _loc19_:int = 0;
         loop0:
         for(; _loc19_ < _loc10_; _loc26_ = _loc8_,_loc27_ = _loc26_.m_count + 1,_loc26_.m_count = _loc27_)
         {
            _loc13_ = _loc8_.m_count;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.m_count)
            {
               case 1:
                  break;
               case 2:
                  §§push(_loc8_);
                  if(false)
                  {
                     return;
                  }
                  §§pop().§\n\x02§();
                  break;
               case 3:
                  _loc8_.§\t\x1d§();
                  break;
               default:
                  b2Settings.b2Assert(false);
            }
            if(_loc8_.m_count == 3)
            {
               break;
            }
            var _temp_6:* = _loc8_.§\x14\x11§();
            _loc18_ = _loc8_.§\x14\x11§();
            _loc16_ = _loc18_.LengthSquared();
            if(_loc16_ <= _loc15_)
            {
            }
            _loc15_ = _loc16_;
            var _temp_8:* = _loc8_.§\x12\t§();
            _loc20_ = _loc8_.§\x12\t§();
            if(_loc20_.LengthSquared() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            _loc21_ = _loc9_[_loc8_.m_count];
            §§push(_loc21_);
            if(false)
            {
               return false;
            }
            §§pop().indexA = _loc4_.§\x12\x04§(b2Math.MulTMV(_loc6_.R,_loc20_.GetNegative()));
            _loc21_.wA = b2Math.MulX(_loc6_,_loc4_.§\x11\x1c§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§\x12\x04§(b2Math.MulTMV(_loc7_.R,_loc20_));
            _loc21_.wB = b2Math.MulX(_loc7_,_loc5_.§\x11\x1c§(_loc21_.indexB));
            _loc21_.w = b2Math.SubtractVV(_loc21_.wB,_loc21_.wA);
            _loc19_++;
            var _temp_10:* = §§findproperty(b2_gjkIters);
            _loc26_ = §§findproperty(b2_gjkIters);
            _loc27_ = _loc26_.b2_gjkIters + 1;
            _loc26_.b2_gjkIters = _loc27_;
            _loc22_ = false;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               if(!(_loc21_.indexA == _loc11_[_loc17_] && _loc21_.indexB == _loc12_[_loc17_]))
               {
                  _loc17_++;
                  continue;
               }
               addr04d5:
               _loc22_ = true;
               if(_loc22_)
               {
                  break loop0;
               }
               continue loop0;
            }
            §§goto(addr04d5);
         }
         b2_gjkMaxIters = b2Math.Max(b2_gjkMaxIters,_loc19_);
         _loc8_.§\x11\x18§(param1.pointA,param1.pointB);
         param1.distance = b2Math.SubtractVV(param1.pointA,param1.pointB).Length();
         param1.iterations = _loc19_;
         _loc8_.§\b\x15§(param2);
         if(param3.useRadii)
         {
            _loc23_ = _loc4_.m_radius;
            _loc24_ = _loc5_.m_radius;
            §§push(param1);
            if(false)
            {
               return;
            }
            if(!(§§pop().distance > _loc23_ + _loc24_ && param1.distance > Number.MIN_VALUE))
            {
               _loc18_ = new b2Vec2();
               _loc18_.x = 0.5 * (param1.pointA.x + param1.pointB.x);
               _loc18_.y = 0.5 * (param1.pointA.y + param1.pointB.y);
               §§push(param1.pointA);
               §§push(param1.pointB.x = _loc18_.x);
               if(false)
               {
                  return false;
               }
               §§pop().x = §§pop();
               param1.pointA.y = param1.pointB.y = _loc18_.y;
               param1.distance = 0;
            }
            else
            {
               param1.distance -= _loc23_ + _loc24_;
               _loc25_ = b2Math.SubtractVV(param1.pointB,param1.pointA);
               _loc25_.Normalize();
               §§push(param1.pointA);
               if(false)
               {
                  return;
               }
               §§pop().x = param1.pointA.x + _loc23_ * _loc25_.x;
               param1.pointA.y += _loc23_ * _loc25_.y;
               param1.pointB.x -= _loc24_ * _loc25_.x;
               §§push(param1.pointB);
               §§push(param1);
               if(false)
               {
                  throw true;
               }
               §§pop().y = §§pop().pointB.y - _loc24_ * _loc25_.y;
            }
         }
      }
   }
}


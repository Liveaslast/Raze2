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
   import §\x1c\x15§.§\x1e\x14§;
   import §\x1c\x15§.b2Settings;
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
   
   public class b2AABB
   {
      
      public var lowerBound:b2Vec2 = new b2Vec2();
      
      public var upperBound:b2Vec2 = new b2Vec2();
      
      public function b2AABB()
      {
         super();
      }
      
      public static function Combine(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.Combine(param1,param2);
         return _loc3_;
      }
      
      public function IsValid() : Boolean
      {
         var _loc1_:Number = upperBound.x - lowerBound.x;
         var _loc2_:Number = upperBound.y - lowerBound.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return _loc3_ && lowerBound.IsValid() && upperBound.IsValid();
      }
      
      public function GetCenter() : b2Vec2
      {
         §§push(§§findproperty(b2Vec2));
         §§push((lowerBound.x + upperBound.x) / 2);
         §§push((lowerBound.y + upperBound.y) / 2);
         if(false)
         {
            return;
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function GetExtents() : b2Vec2
      {
         return new b2Vec2((upperBound.x - lowerBound.x) / 2,(upperBound.y - lowerBound.y) / 2);
      }
      
      public function Contains(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ &&= lowerBound.x <= param1.lowerBound.x;
         _loc2_ &&= lowerBound.y <= param1.lowerBound.y;
         _loc2_ &&= param1.upperBound.x <= upperBound.x;
         return _loc2_ && param1.upperBound.y <= upperBound.y;
      }
      
      public function RayCast(param1:§\x1d\f§, param2:§\x1d\r§) : Boolean
      {
         var _loc11_:b2Vec2 = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc3_:Number = -Number.MAX_VALUE;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:Number = param2.p1.x;
         var _loc6_:Number = param2.p1.y;
         var _loc7_:Number = param2.p2.x - param2.p1.x;
         §§push(param2.p2.y);
         §§push(param2);
         if(false)
         {
            return;
         }
         var _loc8_:Number = §§pop() - §§pop().p1.y;
         var _loc9_:Number = Math.abs(_loc7_);
         var _loc10_:Number = Math.abs(_loc8_);
         §§push(param1.normal);
         if(false)
         {
            return false;
         }
         _loc11_ = §§pop();
         if(_loc9_ >= Number.MIN_VALUE)
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (lowerBound.x - _loc5_) * _loc12_;
            _loc14_ = (upperBound.x - _loc5_) * _loc12_;
            _loc16_ = -1;
            if(_loc13_ > _loc14_)
            {
               _loc15_ = _loc13_;
               _loc13_ = _loc14_;
               _loc14_ = _loc15_;
               _loc16_ = 1;
            }
            if(_loc13_ > _loc3_)
            {
               _loc11_.x = _loc16_;
               _loc11_.y = 0;
               _loc3_ = _loc13_;
            }
            _loc4_ = Math.min(_loc4_,_loc14_);
            if(_loc3_ > _loc4_)
            {
               return false;
            }
         }
         else if(_loc5_ < lowerBound.x || upperBound.x < _loc5_)
         {
            return false;
         }
         if(_loc10_ < Number.MIN_VALUE)
         {
            if(_loc6_ < lowerBound.y || upperBound.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (lowerBound.y - _loc6_) * _loc12_;
            _loc14_ = (upperBound.y - _loc6_) * _loc12_;
            _loc16_ = -1;
            if(_loc13_ > _loc14_)
            {
               _loc15_ = _loc13_;
               _loc13_ = _loc14_;
               _loc14_ = _loc15_;
               _loc16_ = 1;
            }
            if(_loc13_ > _loc3_)
            {
               _loc11_.y = _loc16_;
               _loc11_.x = 0;
               _loc3_ = _loc13_;
            }
            _loc4_ = Math.min(_loc4_,_loc14_);
            if(_loc3_ > _loc4_)
            {
               return false;
            }
         }
         param1.fraction = _loc3_;
         return true;
      }
      
      public function TestOverlap(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.lowerBound.x - upperBound.x;
         var _loc3_:Number = param1.lowerBound.y - upperBound.y;
         var _loc4_:Number = lowerBound.x - param1.upperBound.x;
         var _loc5_:Number = lowerBound.y - param1.upperBound.y;
         if(!(_loc2_ > 0 || _loc3_ > 0))
         {
            if(!(_loc4_ > 0 || _loc5_ > 0))
            {
               return true;
            }
            return false;
         }
         return false;
      }
      
      public function Combine(param1:b2AABB, param2:b2AABB) : void
      {
         lowerBound.x = Math.min(param1.lowerBound.x,param2.lowerBound.x);
         lowerBound.y = Math.min(param1.lowerBound.y,param2.lowerBound.y);
         upperBound.x = Math.max(param1.upperBound.x,param2.upperBound.x);
         upperBound.y = Math.max(param1.upperBound.y,param2.upperBound.y);
      }
   }
}

§§push(§§findproperty(b2AABB));
§§push(§§newclass(b2AABB,Object));
if(false)
{
   return;
}


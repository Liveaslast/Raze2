package §\x1c\x14§
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
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
   import §\x1c\x15§.§\x1e\x14§;
   import §\x1c\x15§.b2Settings;
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
   
   public class b2Mat22
   {
      
      public var col1:b2Vec2 = new b2Vec2();
      
      public var col2:b2Vec2 = new b2Vec2();
      
      public function b2Mat22()
      {
         super();
         col1.x = col2.y = 1;
      }
      
      public static function FromAngle(param1:Number) : b2Mat22
      {
         var _loc2_:b2Mat22 = new b2Mat22();
         _loc2_.Set(param1);
         return _loc2_;
      }
      
      public static function FromVV(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc3_:b2Mat22 = new b2Mat22();
         _loc3_.§\n\x10§(param1,param2);
         return _loc3_;
      }
      
      public function Set(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         _loc2_ = Math.cos(param1);
         var _loc3_:Number = Math.sin(param1);
         col1.x = _loc2_;
         col2.x = -_loc3_;
         col1.y = _loc3_;
         col2.y = _loc2_;
      }
      
      public function §\n\x10§(param1:b2Vec2, param2:b2Vec2) : void
      {
         col1.SetV(param1);
         col2.SetV(param2);
      }
      
      public function Copy() : b2Mat22
      {
         var _loc1_:b2Mat22 = new b2Mat22();
         _loc1_.§\x0b\x10§(this);
         return _loc1_;
      }
      
      public function §\x0b\x10§(param1:b2Mat22) : void
      {
         col1.SetV(param1.col1);
         col2.SetV(param1.col2);
      }
      
      public function §\x0f§(param1:b2Mat22) : void
      {
         col1.x += param1.col1.x;
         §§push(col1);
         §§push(col1.y + param1.col1.y);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop();
         §§push(col2);
         §§push(col2.x);
         §§push(param1.col2);
         if(false)
         {
            return;
         }
         §§pop().x = §§pop() + §§pop().x;
         §§push(col2);
         §§push(col2.y + param1.col2.y);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop();
      }
      
      public function SetIdentity() : void
      {
         col1.x = 1;
         col2.x = 0;
         §§push(col1);
         §§push(0);
         if(false)
         {
            throw true;
         }
         §§pop().y = §§pop();
         col2.y = 1;
      }
      
      public function SetZero() : void
      {
         col1.x = 0;
         col2.x = 0;
         col1.y = 0;
         col2.y = 0;
      }
      
      public function §\x14\x18§() : Number
      {
         return Math.atan2(col1.y,col1.x);
      }
      
      public function GetInverse(param1:b2Mat22) : b2Mat22
      {
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:Number = col1.x;
         _loc3_ = col2.x;
         var _loc4_:Number = col1.y;
         var _loc5_:Number = col2.y;
         _loc6_ = _loc2_ * _loc5_ - _loc3_ * _loc4_;
         if(_loc6_ != 0)
         {
            _loc6_ = 1 / _loc6_;
         }
         §§push(param1.col1);
         §§push(_loc6_);
         §§push(_loc5_);
         if(false)
         {
            return;
         }
         §§pop().x = §§pop() * §§pop();
         param1.col2.x = -_loc6_ * _loc3_;
         §§push(param1);
         if(false)
         {
            throw true;
         }
         §§pop().col1.y = -_loc6_ * _loc4_;
         param1.col2.y = _loc6_ * _loc2_;
         return param1;
      }
      
      public function §\n\x03§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc4_:Number = col1.x;
         var _loc5_:Number = col2.x;
         var _loc6_:Number = col1.y;
         var _loc7_:Number = col2.y;
         var _loc8_:Number = _loc4_ * _loc7_ - _loc5_ * _loc6_;
         if(_loc8_ != 0)
         {
            _loc8_ = 1 / _loc8_;
         }
         param1.x = _loc8_ * (_loc7_ * param2 - _loc5_ * param3);
         param1.y = _loc8_ * (_loc4_ * param3 - _loc6_ * param2);
         return param1;
      }
      
      public function Abs() : void
      {
         col1.Abs();
         col2.Abs();
      }
   }
}


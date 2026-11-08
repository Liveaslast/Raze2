package §\x1c\x14§
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
   
   public class b2Math
   {
      
      public static const b2Vec2_zero:b2Vec2 = new b2Vec2(0,0);
      
      public static const b2Mat22_identity:b2Mat22 = b2Mat22.FromVV(new b2Vec2(1,0),new b2Vec2(0,1));
      
      if(false)
      {
         return false;
      }
      
      public static const b2Transform_identity:§\x1d\x04§ = new §\x1d\x04§(b2Vec2_zero,b2Mat22_identity);
      
      public function b2Math()
      {
         super();
      }
      
      public static function IsValid(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function Dot(param1:b2Vec2, param2:b2Vec2) : Number
      {
         return param1.x * param2.x + param1.y * param2.y;
      }
      
      public static function CrossVV(param1:b2Vec2, param2:b2Vec2) : Number
      {
         return param1.x * param2.y - param1.y * param2.x;
      }
      
      public static function CrossVF(param1:b2Vec2, param2:Number) : b2Vec2
      {
         §§push(§§findproperty(b2Vec2));
         §§push(param2 * param1.y);
         §§push(param2);
         if(false)
         {
            return;
         }
         return new §§pop().b2Vec2(§§pop(),-§§pop() * param1.x);
      }
      
      public static function CrossFV(param1:Number, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(-param1 * param2.y,param1 * param2.x);
      }
      
      public static function MulMV(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x * param2.x + param1.col2.x * param2.y);
         §§push(param1.col1.y * param2.x);
         if(false)
         {
            return false;
         }
         return new §§pop().b2Vec2(§§pop(),§§pop() + param1.col2.y * param2.y);
      }
      
      public static function MulTMV(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(Dot(param2,param1.col1),Dot(param2,param1.col2));
      }
      
      public static function MulX(param1:§\x1d\x04§, param2:b2Vec2) : b2Vec2
      {
         var _loc3_:b2Vec2 = null;
         _loc3_ = MulMV(param1.R,param2);
         _loc3_.x += param1.position.x;
         _loc3_.y += param1.position.y;
         return _loc3_;
      }
      
      public static function MulXT(param1:§\x1d\x04§, param2:b2Vec2) : b2Vec2
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         _loc3_ = SubtractVV(param2,param1.position);
         _loc4_ = _loc3_.x * param1.R.col1.x + _loc3_.y * param1.R.col1.y;
         _loc3_.y = _loc3_.x * param1.R.col2.x + _loc3_.y * param1.R.col2.y;
         _loc3_.x = _loc4_;
         return _loc3_;
      }
      
      public static function AddVV(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x + param2.x);
         §§push(param1.y);
         §§push(param2.y);
         if(false)
         {
            throw true;
         }
         return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
      }
      
      public static function SubtractVV(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(param1.x - param2.x,param1.y - param2.y);
      }
      
      public static function Distance(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param2.y;
         §§push(Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_));
         if(false)
         {
            return;
         }
         return §§pop();
      }
      
      public static function §\x1a\x1b§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param2.y;
         return _loc3_ * _loc3_ + _loc4_ * _loc4_;
      }
      
      public static function MulFV(param1:Number, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(param1 * param2.x,param1 * param2.y);
      }
      
      public static function §\x0e§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.FromVV(AddVV(param1.col1,param2.col1),AddVV(param1.col2,param2.col2));
      }
      
      public static function §\x0f\x0b§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         §§push(b2Mat22.FromVV(MulMV(param1,param2.col1),MulMV(param1,param2.col2)));
         if(false)
         {
            return;
         }
         return §§pop();
      }
      
      public static function §\x0f\t§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         §§push(§§findproperty(b2Vec2));
         §§push(Dot(param1.col1,param2.col1));
         §§push(§§findproperty(Dot));
         §§push(param1.col2);
         §§push(param2.col1);
         if(false)
         {
            return false;
         }
         var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop().Dot(§§pop(),§§pop()));
         var _loc4_:b2Vec2 = new b2Vec2(Dot(param1.col1,param2.col2),Dot(param1.col2,param2.col2));
         return b2Mat22.FromVV(_loc3_,_loc4_);
      }
      
      public static function Abs(param1:Number) : Number
      {
         return param1 <= 0 ? -param1 : param1;
      }
      
      public static function AbsV(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Vec2 = new b2Vec2(Abs(param1.x),Abs(param1.y));
         if(false)
         {
            return;
         }
         return _loc2_;
      }
      
      public static function §\x1c§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.FromVV(AbsV(param1.col1),AbsV(param1.col2));
      }
      
      public static function Min(param1:Number, param2:Number) : Number
      {
         return param1 >= param2 ? param2 : param1;
      }
      
      public static function §\x0f\x11§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         §§push(§§findproperty(b2Vec2));
         §§push(Min(param1.x,param2.x));
         if(false)
         {
            return;
         }
         §§push(Min(param1.y,param2.y));
         if(false)
         {
            return;
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function Max(param1:Number, param2:Number) : Number
      {
         return param1 <= param2 ? param2 : param1;
      }
      
      public static function §\x0f\x1b§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(Max(param1.x,param2.x),Max(param1.y,param2.y));
      }
      
      public static function Clamp(param1:Number, param2:Number, param3:Number) : Number
      {
         return param1 >= param2 ? (param1 <= param3 ? param1 : param3) : param2;
      }
      
      public static function §\x1c\x07§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §\x0f\x1b§(param2,§\x0f\x11§(param1,param3));
      }
      
      public static function §\t\x0f§(param1:Array, param2:Array) : void
      {
         var _loc3_:* = param1[0];
         §§push(param1);
         §§push(0);
         §§push(param2[0]);
         if(false)
         {
            throw true;
         }
         §§pop()[§§pop()] = §§pop();
         param2[0] = _loc3_;
      }
      
      public static function §\x0e\x02§() : Number
      {
         return Math.random() * 2 - 1;
      }
      
      public static function §\x0e\x01§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = Math.random();
         return (param2 - param1) * _loc3_ + param1;
      }
      
      public static function §\x0f\x06§(param1:uint) : uint
      {
         param1 |= param1 >> 1 & 0x7FFFFFFF;
         param1 |= param1 >> 2 & 0x3FFFFFFF;
         param1 |= param1 >> 4 & 0x0FFFFFFF;
         param1 |= param1 >> 8 & 0xFFFFFF;
         param1 |= param1 >> 16 & 0xFFFF;
         return param1 + 1;
      }
      
      public static function §\x10\x11§(param1:uint) : Boolean
      {
         return param1 > 0 && (param1 & param1 - 1) == 0;
      }
   }
}


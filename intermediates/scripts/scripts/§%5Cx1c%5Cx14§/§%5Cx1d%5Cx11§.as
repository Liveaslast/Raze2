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
   
   public class §\x1d\x11§
   {
      
      public var col1:§\x1d\x03§ = new §\x1d\x03§();
      
      public var col2:§\x1d\x03§ = new §\x1d\x03§();
      
      public var col3:§\x1d\x03§ = new §\x1d\x03§();
      
      public function §\x1d\x11§(param1:§\x1d\x03§ = null, param2:§\x1d\x03§ = null, param3:§\x1d\x03§ = null)
      {
         super();
         if(false)
         {
            return;
         }
         if(!param1 && !param2 && !param3)
         {
            col1.SetZero();
            col2.SetZero();
            col3.SetZero();
         }
         else
         {
            col1.SetV(param1);
            col2.SetV(param2);
            col3.SetV(param3);
         }
      }
      
      public function §\n\x0f§(param1:§\x1d\x03§, param2:§\x1d\x03§, param3:§\x1d\x03§) : void
      {
         col1.SetV(param1);
         col2.SetV(param2);
         col3.SetV(param3);
      }
      
      public function Copy() : §\x1d\x11§
      {
         return new §\x1d\x11§(col1,col2,col3);
      }
      
      public function §\x0b\x10§(param1:§\x1d\x11§) : void
      {
         col1.SetV(param1.col1);
         col2.SetV(param1.col2);
         col3.SetV(param1.col3);
      }
      
      public function §\x0f§(param1:§\x1d\x11§) : void
      {
         col1.x += param1.col1.x;
         col1.y += param1.col1.y;
         col1.z += param1.col1.z;
         col2.x += param1.col2.x;
         col2.y += param1.col2.y;
         col2.z += param1.col2.z;
         col3.x += param1.col3.x;
         col3.y += param1.col3.y;
         col3.z += param1.col3.z;
      }
      
      public function SetIdentity() : void
      {
         col1.x = 1;
         col2.x = 0;
         col3.x = 0;
         col1.y = 0;
         col2.y = 1;
         col3.y = 0;
         col1.z = 0;
         col2.z = 0;
         col3.z = 1;
      }
      
      public function SetZero() : void
      {
         col1.x = 0;
         col2.x = 0;
         col3.x = 0;
         col1.y = 0;
         col2.y = 0;
         §§push(col3);
         §§push(0);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop();
         col1.z = 0;
         col2.z = 0;
         col3.z = 0;
      }
      
      public function §\n\x01§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc4_:Number = NaN;
         var _loc6_:Number = NaN;
         _loc4_ = col1.x;
         var _loc5_:Number = col2.x;
         §§push(col1.y);
         if(false)
         {
            return;
         }
         _loc6_ = §§pop();
         var _loc7_:Number = col2.y;
         var _temp_1:* = _loc4_ * _loc7_ - _loc5_ * _loc6_;
         var _loc8_:Number = _loc4_ * _loc7_ - _loc5_ * _loc6_;
         if(_loc8_ != 0)
         {
            _loc8_ = 1 / _loc8_;
         }
         param1.x = _loc8_ * (_loc7_ * param2 - _loc5_ * param3);
         §§push(param1);
         §§push(_loc8_);
         §§push(_loc4_);
         §§push(param3);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop() * (§§pop() * §§pop() - _loc6_ * param2);
         return param1;
      }
      
      public function §\t\x1c§(param1:§\x1d\x03§, param2:Number, param3:Number, param4:Number) : §\x1d\x03§
      {
         var _loc5_:Number = col1.x;
         var _loc6_:Number = col1.y;
         var _loc7_:Number = col1.z;
         var _loc8_:Number = col2.x;
         var _loc9_:Number = col2.y;
         var _loc10_:Number = col2.z;
         var _loc11_:Number = col3.x;
         var _loc12_:Number = col3.y;
         var _loc13_:Number = col3.z;
         §§push(_loc5_ * (_loc9_ * _loc13_ - _loc10_ * _loc12_));
         §§push(_loc6_);
         §§push(_loc10_ * _loc11_ - _loc8_ * _loc13_);
         if(false)
         {
            return;
         }
         var _loc14_:Number = §§pop() + §§pop() * §§pop() + _loc7_ * (_loc8_ * _loc12_ - _loc9_ * _loc11_);
         if(_loc14_ != 0)
         {
            _loc14_ = 1 / _loc14_;
            if(false)
            {
               return;
            }
         }
         param1.x = _loc14_ * (param2 * (_loc9_ * _loc13_ - _loc10_ * _loc12_) + param3 * (_loc10_ * _loc11_ - _loc8_ * _loc13_) + param4 * (_loc8_ * _loc12_ - _loc9_ * _loc11_));
         §§push(param1);
         §§push(_loc14_);
         §§push(_loc5_ * (param3 * _loc13_ - param4 * _loc12_));
         §§push(_loc6_);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop() * (§§pop() + §§pop() * (param4 * _loc11_ - param2 * _loc13_) + _loc7_ * (param2 * _loc12_ - param3 * _loc11_));
         param1.z = _loc14_ * (_loc5_ * (_loc9_ * param4 - _loc10_ * param3) + _loc6_ * (_loc10_ * param2 - _loc8_ * param4) + _loc7_ * (_loc8_ * param3 - _loc9_ * param2));
         return param1;
      }
   }
}


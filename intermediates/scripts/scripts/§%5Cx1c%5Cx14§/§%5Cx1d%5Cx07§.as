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
   
   public class §\x1d\x07§
   {
      
      public var localCenter:b2Vec2 = new b2Vec2();
      
      public var c0:b2Vec2 = new b2Vec2();
      
      public var c:b2Vec2 = new b2Vec2();
      
      public var a0:Number;
      
      public var a:Number;
      
      public var t0:Number;
      
      public function §\x1d\x07§()
      {
         super();
      }
      
      public function Set(param1:§\x1d\x07§) : void
      {
         localCenter.SetV(param1.localCenter);
         c0.SetV(param1.c0);
         c.SetV(param1.c);
         a0 = param1.a0;
         a = param1.a;
         t0 = param1.t0;
      }
      
      public function Copy() : §\x1d\x07§
      {
         var _loc1_:§\x1d\x07§ = new §\x1d\x07§();
         _loc1_.localCenter.SetV(localCenter);
         _loc1_.c0.SetV(c0);
         _loc1_.c.SetV(c);
         _loc1_.a0 = a0;
         _loc1_.a = a;
         _loc1_.t0 = t0;
         return _loc1_;
      }
      
      public function GetTransform(param1:§\x1d\x04§, param2:Number) : void
      {
         param1.position.x = (1 - param2) * c0.x + param2 * c.x;
         §§push(param1.position);
         §§push((1 - param2) * c0.y);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop() + param2 * c.y;
         var _loc3_:Number = (1 - param2) * a0 + param2 * a;
         param1.R.Set(_loc3_);
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position);
         §§push(param1.position.x);
         if(false)
         {
            return;
         }
         §§pop().x = §§pop() - (_loc4_.col1.x * localCenter.x + _loc4_.col2.x * localCenter.y);
         param1.position.y -= _loc4_.col1.y * localCenter.x + _loc4_.col2.y * localCenter.y;
      }
      
      public function Advance(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(t0 < param1 && 1 - t0 > Number.MIN_VALUE)
         {
            §§push(param1 - t0);
            §§push(1 - t0);
            if(false)
            {
               return;
            }
            _loc2_ = §§pop() / §§pop();
            c0.x = (1 - _loc2_) * c0.x + _loc2_ * c.x;
            c0.y = (1 - _loc2_) * c0.y + _loc2_ * c.y;
            if(false)
            {
               return;
            }
            a0 = (1 - _loc2_) * a0 + _loc2_ * a;
            t0 = param1;
         }
      }
   }
}


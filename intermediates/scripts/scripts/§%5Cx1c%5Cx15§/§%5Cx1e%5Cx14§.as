package §\x1c\x15§
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
   
   public class §\x1e\x14§
   {
      
      private var _r:uint = 0;
      
      private var _g:uint = 0;
      
      private var _b:uint = 0;
      
      public function §\x1e\x14§(param1:Number, param2:Number, param3:Number)
      {
         super();
         _r = uint(255 * b2Math.Clamp(param1,0,1));
         _g = uint(255 * b2Math.Clamp(param2,0,1));
         _b = uint(255 * b2Math.Clamp(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         _r = uint(255 * b2Math.Clamp(param1,0,1));
         §§push(§§findproperty(_g));
         §§push(§§findproperty(uint));
         §§push(255);
         §§push(b2Math);
         §§push(param2);
         if(false)
         {
            return;
         }
         §§pop()._g = §§pop().uint(§§pop() * §§pop().Clamp(§§pop(),0,1));
         _b = uint(255 * b2Math.Clamp(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         §§push(§§findproperty(_r));
         §§push(§§findproperty(uint));
         §§push(255);
         §§push(b2Math);
         §§push(param1);
         §§push(0);
         if(false)
         {
            return;
         }
         §§pop()._r = §§pop().uint(§§pop() * §§pop().Clamp(§§pop(),§§pop(),1));
      }
      
      public function set g(param1:Number) : void
      {
         _g = uint(255 * b2Math.Clamp(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         _b = uint(255 * b2Math.Clamp(param1,0,1));
      }
      
      public function get color() : uint
      {
         return _r << 16 | _g << 8 | _b;
      }
   }
}


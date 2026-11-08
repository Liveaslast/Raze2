package §\x1c\x10§
{
   import §\x0e\r§.*;
   import §\x1c\x11§.§\x1e\b§;
   import §\x1c\x11§.§\x1e\t§;
   import §\x1c\x12§.§\x1e\x11§;
   import §\x1c\x12§.§\x1e\x13§;
   import §\x1c\x12§.b2Contact;
   import §\x1c\x13§.*;
   import §\x1c\x14§.*;
   import §\x1c\x15§.§\x1e\x14§;
   import §\x1c\x15§.b2Settings;
   import §\x1c\x15§.b2internal;
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
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends §\x1d\x15§
   {
      
      public var localAnchorA:b2Vec2 = new b2Vec2();
      
      public var localAnchorB:b2Vec2 = new b2Vec2();
      
      public var length:Number;
      
      public var frequencyHz:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         super();
         if(false)
         {
            return false;
         }
         type = b2Joint.e_distanceJoint;
         §§push(§§findproperty(length));
         §§push(1);
         if(false)
         {
            return false;
         }
         §§pop().length = §§pop();
         frequencyHz = 0;
         dampingRatio = 0;
      }
      
      public function §\x10\x1d§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         bodyA = param1;
         bodyB = param2;
         localAnchorA.SetV(bodyA.§\x13\x06§(param3));
         localAnchorB.SetV(bodyB.§\x13\x06§(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         frequencyHz = 0;
         dampingRatio = 0;
      }
   }
}


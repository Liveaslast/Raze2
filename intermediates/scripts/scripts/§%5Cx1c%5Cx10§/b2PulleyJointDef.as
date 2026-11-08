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
   
   public class b2PulleyJointDef extends §\x1d\x15§
   {
      
      public var groundAnchorA:b2Vec2 = new b2Vec2();
      
      public var groundAnchorB:b2Vec2 = new b2Vec2();
      
      public var localAnchorA:b2Vec2 = new b2Vec2();
      
      public var localAnchorB:b2Vec2 = new b2Vec2();
      
      public var lengthA:Number;
      
      public var maxLengthA:Number;
      
      public var lengthB:Number;
      
      public var maxLengthB:Number;
      
      public var ratio:Number;
      
      public function b2PulleyJointDef()
      {
         super();
         type = b2Joint.e_pulleyJoint;
         groundAnchorA.Set(-1,1);
         groundAnchorB.Set(1,1);
         localAnchorA.Set(-1,0);
         localAnchorB.Set(1,0);
         lengthA = 0;
         maxLengthA = 0;
         lengthB = 0;
         maxLengthB = 0;
         ratio = 1;
         collideConnected = true;
      }
      
      public function §\x10\x1d§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         bodyA = param1;
         bodyB = param2;
         groundAnchorA.SetV(param3);
         groundAnchorB.SetV(param4);
         localAnchorA = bodyA.§\x13\x06§(param5);
         if(false)
         {
            return false;
         }
         localAnchorB = bodyB.§\x13\x06§(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         lengthA = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         lengthB = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         ratio = param7;
         var _loc12_:Number = lengthA + ratio * lengthB;
         maxLengthA = _loc12_ - ratio * b2PulleyJoint.b2_minPulleyLength;
         maxLengthB = (_loc12_ - b2PulleyJoint.b2_minPulleyLength) / ratio;
      }
   }
}


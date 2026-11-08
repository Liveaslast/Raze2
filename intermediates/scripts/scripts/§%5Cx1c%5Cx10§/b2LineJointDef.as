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
   
   public class b2LineJointDef extends §\x1d\x15§
   {
      
      public var localAnchorA:b2Vec2 = new b2Vec2();
      
      public var localAnchorB:b2Vec2;
      
      public var localAxisA:b2Vec2;
      
      public var enableLimit:Boolean;
      
      public var lowerTranslation:Number;
      
      public var upperTranslation:Number;
      
      public var enableMotor:Boolean;
      
      public var maxMotorForce:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         §§push(§§findproperty(localAnchorB));
         §§push(new b2Vec2());
         if(false)
         {
            return;
         }
         §§pop().localAnchorB = §§pop();
         localAxisA = new b2Vec2();
         super();
         type = b2Joint.e_lineJoint;
         localAxisA.Set(1,0);
         if(false)
         {
            throw true;
         }
         enableLimit = false;
         lowerTranslation = 0;
         upperTranslation = 0;
         enableMotor = false;
         maxMotorForce = 0;
         motorSpeed = 0;
      }
      
      public function §\x10\x1d§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         bodyA = param1;
         bodyB = param2;
         localAnchorA = bodyA.§\x13\x06§(param3);
         localAnchorB = bodyB.§\x13\x06§(param3);
         localAxisA = bodyA.§\x13\x04§(param4);
      }
   }
}

§§push(§§findproperty(b2LineJointDef));
if(false)
{
   throw true;
}


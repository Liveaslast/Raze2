package §\x1c\x12§
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
   
   public class b2PolyAndCircleContact extends b2Contact
   {
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function Create(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function Destroy(param1:b2Contact, param2:*) : void
      {
      }
      
      public function Reset(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.b2internal::Reset(param1,param2);
         b2Settings.b2Assert(param1.GetType() == b2Shape.e_polygonShape);
         b2Settings.b2Assert(param2.GetType() == b2Shape.e_circleShape);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = m_fixtureA.m_body;
         var _loc2_:b2Body = m_fixtureB.m_body;
         §§push(b2Collision);
         §§push(m_manifold);
         §§push(m_fixtureA.§\x12\b§() as b2PolygonShape);
         §§push(_loc1_.m_xf);
         §§push(m_fixtureB.§\x12\b§() as b2CircleShape);
         §§push(_loc2_);
         if(false)
         {
            return;
         }
         §§pop().CollidePolygonAndCircle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop().b2internal::m_xf);
      }
   }
}

§§push(§§findproperty(b2PolyAndCircleContact));
§§push(b2Contact);
if(false)
{
   return false;
}


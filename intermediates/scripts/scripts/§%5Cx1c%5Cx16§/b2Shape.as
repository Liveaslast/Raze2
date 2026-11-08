package §\x1c\x16§
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
   import §\x1c\x15§.§\x1e\x14§;
   import §\x1c\x15§.b2Settings;
   import §\x1c\x15§.b2internal;
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
   
   public class b2Shape
   {
      
      b2internal static const e_unknownShape:int = -1;
      
      b2internal static const e_circleShape:int = 0;
      
      b2internal static const e_polygonShape:int = 1;
      
      b2internal static const e_edgeShape:int = 2;
      
      b2internal static const e_shapeTypeCount:int = 3;
      
      public static const e_hitCollide:int = 1;
      
      public static const e_missCollide:int = 0;
      
      public static const e_startsInsideCollide:int = -1;
      
      if(false)
      {
         return;
      }
      
      b2internal var m_type:int;
      
      b2internal var m_radius:Number;
      
      public function b2Shape()
      {
         super();
         b2internal::m_type = b2internal::e_unknownShape;
         b2internal::m_radius = b2Settings.b2_linearSlop;
      }
      
      public static function TestOverlap(param1:b2Shape, param2:§\x1d\x04§, param3:b2Shape, param4:§\x1d\x04§) : Boolean
      {
         var _loc5_:§\x1e\x06§ = new §\x1e\x06§();
         _loc5_.proxyA = new §\x1e\x03§();
         _loc5_.proxyA.Set(param1);
         _loc5_.proxyB = new §\x1e\x03§();
         _loc5_.proxyB.Set(param3);
         _loc5_.transformA = param2;
         _loc5_.transformB = param4;
         _loc5_.useRadii = true;
         var _loc6_:§\x1d\t§ = new §\x1d\t§();
         _loc6_.count = 0;
         var _loc7_:§\x1e\x04§ = new §\x1e\x04§();
         b2Distance.Distance(_loc7_,_loc6_,_loc5_);
         if(false)
         {
            return false;
         }
         return _loc7_.distance < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         m_radius = param1.m_radius;
      }
      
      public function GetType() : int
      {
         return m_type;
      }
      
      public function TestPoint(param1:§\x1d\x04§, param2:b2Vec2) : Boolean
      {
         return false;
      }
      
      public function RayCast(param1:§\x1d\f§, param2:§\x1d\r§, param3:§\x1d\x04§) : Boolean
      {
         return false;
      }
      
      public function ComputeAABB(param1:b2AABB, param2:§\x1d\x04§) : void
      {
      }
      
      public function ComputeMass(param1:§\x1d\x12§, param2:Number) : void
      {
      }
      
      public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:§\x1d\x04§, param4:b2Vec2) : Number
      {
         return 0;
      }
   }
}


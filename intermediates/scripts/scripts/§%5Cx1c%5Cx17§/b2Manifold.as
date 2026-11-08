package §\x1c\x17§
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
   import §\x1c\x15§.*;
   import §\x1c\x16§.*;
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
   
   public class b2Manifold
   {
      
      public static const e_circles:int = 1;
      
      public static const e_faceA:int = 2;
      
      public static const e_faceB:int = 4;
      
      public var m_points:Array;
      
      public var m_localPlaneNormal:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var m_type:int;
      
      public var m_pointCount:int = 0;
      
      public function b2Manifold()
      {
         super();
         m_points = new Array(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            m_points[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         §§push(§§findproperty(m_localPlaneNormal));
         §§push(§§findproperty(b2Vec2));
         if(false)
         {
            return;
         }
         §§pop().m_localPlaneNormal = new §§pop().b2Vec2();
         m_localPoint = new b2Vec2();
      }
      
      public function Reset() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (m_points[_loc1_] as b2ManifoldPoint).Reset();
            _loc1_++;
         }
         m_localPlaneNormal.SetZero();
         m_localPoint.SetZero();
         m_type = 0;
         m_pointCount = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         m_pointCount = param1.m_pointCount;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (m_points[_loc2_] as b2ManifoldPoint).Set(param1.m_points[_loc2_]);
            _loc2_++;
         }
         §§push(m_localPlaneNormal);
         §§push(param1);
         if(false)
         {
            return;
         }
         §§pop().SetV(§§pop().m_localPlaneNormal);
         m_localPoint.SetV(param1.m_localPoint);
         m_type = param1.m_type;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}


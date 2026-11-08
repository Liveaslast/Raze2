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
   import §\x1c\x15§.§\x1e\x14§;
   import §\x1c\x15§.b2Settings;
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
   
   public class b2ManifoldPoint
   {
      
      public var m_localPoint:b2Vec2 = new b2Vec2();
      
      public var m_normalImpulse:Number;
      
      public var m_tangentImpulse:Number;
      
      public var m_id:§\x1e\x0f§ = new §\x1e\x0f§();
      
      public function b2ManifoldPoint()
      {
         super();
         Reset();
      }
      
      public function Reset() : void
      {
         m_localPoint.SetZero();
         m_normalImpulse = 0;
         §§push(§§findproperty(m_tangentImpulse));
         if(false)
         {
            return;
         }
         §§pop().m_tangentImpulse = 0;
         m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         m_localPoint.SetV(param1.m_localPoint);
         §§push(§§findproperty(m_normalImpulse));
         §§push(param1.m_normalImpulse);
         if(false)
         {
            throw true;
         }
         §§pop().m_normalImpulse = §§pop();
         m_tangentImpulse = param1.m_tangentImpulse;
         m_id.Set(param1.m_id);
      }
   }
}


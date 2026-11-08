package §\x1c\x12§
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x14§;
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
   import §\x1c\x15§.*;
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
   
   public class b2Contact
   {
      
      b2internal static var e_sensorFlag:uint = 1;
      
      b2internal static var e_continuousFlag:uint = 2;
      
      b2internal static var e_islandFlag:uint = 4;
      
      b2internal static var e_toiFlag:uint = 8;
      
      b2internal static var e_touchingFlag:uint = 16;
      
      b2internal static var e_enabledFlag:uint = 32;
      
      if(false)
      {
         return;
      }
      
      b2internal static var e_filterFlag:uint = 64;
      
      private static var s_input:§\x1d\x05§ = new §\x1d\x05§();
      
      b2internal var m_flags:uint;
      
      b2internal var m_prev:b2Contact;
      
      b2internal var m_next:b2Contact;
      
      b2internal var m_nodeA:§\x1e\x11§ = new §\x1e\x11§();
      
      b2internal var m_nodeB:§\x1e\x11§ = new §\x1e\x11§();
      
      b2internal var m_fixtureA:b2Fixture;
      
      b2internal var m_fixtureB:b2Fixture;
      
      b2internal var m_manifold:b2Manifold = new b2Manifold();
      
      b2internal var m_oldManifold:b2Manifold = new b2Manifold();
      
      b2internal var m_toi:Number;
      
      public function b2Contact()
      {
         super();
      }
      
      public function §\x13\x02§() : b2Manifold
      {
         return m_manifold;
      }
      
      public function §\x11\x16§(param1:§\x1d\x01§) : void
      {
         var _loc2_:b2Body = m_fixtureA.§\x14\x15§();
         var _loc3_:b2Body = m_fixtureB.§\x14\x15§();
         var _loc4_:b2Shape = m_fixtureA.§\x12\b§();
         var _loc5_:b2Shape = m_fixtureB.§\x12\b§();
         §§push(param1);
         §§push(m_manifold);
         §§push(_loc2_.GetTransform());
         §§push(_loc4_.m_radius);
         §§push(_loc3_.GetTransform());
         if(false)
         {
            return;
         }
         §§pop().§\x10\x1d§(§§pop(),§§pop(),§§pop(),§§pop(),_loc5_.m_radius);
      }
      
      public function IsTouching() : Boolean
      {
         return (m_flags & e_touchingFlag) == e_touchingFlag;
      }
      
      public function §\x10\x17§() : Boolean
      {
         return (m_flags & e_continuousFlag) == e_continuousFlag;
      }
      
      public function SetSensor(param1:Boolean) : void
      {
         if(!param1)
         {
            m_flags &= ~e_sensorFlag;
         }
         else
         {
            m_flags |= e_sensorFlag;
         }
      }
      
      public function IsSensor() : Boolean
      {
         return (m_flags & e_sensorFlag) == e_sensorFlag;
      }
      
      public function §\f\b§(param1:Boolean) : void
      {
         if(!param1)
         {
            m_flags &= ~e_enabledFlag;
         }
         else
         {
            m_flags |= e_enabledFlag;
         }
      }
      
      public function IsEnabled() : Boolean
      {
         §§push((m_flags & e_enabledFlag) == e_enabledFlag);
         if(false)
         {
            return;
         }
         return §§pop();
      }
      
      public function §\x12\x15§() : b2Contact
      {
         return m_next;
      }
      
      public function GetFixtureA() : b2Fixture
      {
         return m_fixtureA;
      }
      
      public function GetFixtureB() : b2Fixture
      {
         return m_fixtureB;
      }
      
      public function FlagForFiltering() : void
      {
         m_flags |= e_filterFlag;
      }
      
      b2internal function Reset(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         m_flags = e_enabledFlag;
         if(!(!param1 || !param2))
         {
            if(param1.IsSensor() || param2.IsSensor())
            {
               if(false)
               {
                  return;
               }
               m_flags |= e_sensorFlag;
            }
            var _loc3_:b2Body = param1.§\x14\x15§();
            var _loc4_:b2Body = param2.§\x14\x15§();
            if(false)
            {
               return;
            }
            if(_loc3_.GetType() != b2Body.b2_dynamicBody || _loc3_.§\x10\x18§() || _loc4_.GetType() != b2Body.b2_dynamicBody || _loc4_.§\x10\x18§())
            {
               m_flags |= e_continuousFlag;
            }
            m_fixtureA = param1;
            m_fixtureB = param2;
            m_manifold.m_pointCount = 0;
            m_prev = null;
            m_next = null;
            m_nodeA.contact = null;
            m_nodeA.prev = null;
            m_nodeA.next = null;
            m_nodeA.other = null;
            m_nodeB.contact = null;
            m_nodeB.prev = null;
            m_nodeB.next = null;
            m_nodeB.other = null;
            return;
         }
         m_fixtureA = null;
         m_fixtureB = null;
      }
      
      b2internal function §\b\x1c§(param1:b2ContactListener) : void
      {
         var _loc8_:b2Shape = null;
         var _loc9_:b2Shape = null;
         var _loc10_:§\x1d\x04§ = null;
         §§push(null);
         if(false)
         {
            return;
         }
         var _loc11_:§\x1d\x04§ = §§pop();
         var _loc12_:int = 0;
         var _loc13_:b2ManifoldPoint = null;
         var _loc14_:§\x1e\x0f§ = null;
         var _loc15_:int = 0;
         var _loc16_:b2ManifoldPoint = null;
         var _loc2_:b2Manifold = m_oldManifold;
         m_oldManifold = m_manifold;
         §§push(§§findproperty(b2internal::m_manifold));
         if(false)
         {
            return;
         }
         §§pop().b2internal::m_manifold = _loc2_;
         §§push(§§findproperty(b2internal::m_flags));
         §§push(m_flags | e_enabledFlag);
         if(false)
         {
            return;
         }
         §§pop().b2internal::m_flags = §§pop();
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = (m_flags & e_touchingFlag) == e_touchingFlag;
         var _loc5_:b2Body = m_fixtureA.m_body;
         var _loc6_:b2Body = m_fixtureB.m_body;
         var _loc7_:Boolean = m_fixtureA.m_aabb.TestOverlap(m_fixtureB.m_aabb);
         if(false)
         {
            return;
         }
         if(!(m_flags & e_sensorFlag))
         {
            if(!(_loc5_.GetType() != b2Body.b2_dynamicBody || _loc5_.§\x10\x18§() || _loc6_.GetType() != b2Body.b2_dynamicBody || _loc6_.§\x10\x18§()))
            {
               m_flags &= ~e_continuousFlag;
            }
            else
            {
               m_flags |= e_continuousFlag;
            }
            if(_loc7_)
            {
               Evaluate();
               _loc3_ = m_manifold.m_pointCount > 0;
               _loc12_ = 0;
               loop0:
               while(true)
               {
                  §§push(_loc12_);
                  if(false)
                  {
                     break;
                  }
                  if(§§pop() < m_manifold.m_pointCount)
                  {
                     _loc13_ = m_manifold.m_points[_loc12_];
                     _loc13_.m_normalImpulse = 0;
                     _loc13_.m_tangentImpulse = 0;
                     _loc14_ = _loc13_.m_id;
                     _loc15_ = 0;
                     while(true)
                     {
                        if(_loc15_ < m_oldManifold.m_pointCount)
                        {
                           var _temp_5:* = m_oldManifold.m_points[_loc15_];
                           _loc16_ = m_oldManifold.m_points[_loc15_];
                           if(_loc16_.m_id.key == _loc14_.key)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop0;
                        _loc15_++;
                     }
                     _loc13_.m_normalImpulse = _loc16_.m_normalImpulse;
                     _loc13_.m_tangentImpulse = _loc16_.m_tangentImpulse;
                     continue;
                  }
                  _loc12_++;
               }
               return;
            }
            m_manifold.m_pointCount = 0;
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         else
         {
            if(_loc7_)
            {
               _loc8_ = m_fixtureA.§\x12\b§();
               _loc9_ = m_fixtureB.§\x12\b§();
               _loc10_ = _loc5_.GetTransform();
               _loc11_ = _loc6_.GetTransform();
               _loc3_ = b2Shape.TestOverlap(_loc8_,_loc10_,_loc9_,_loc11_);
            }
            m_manifold.m_pointCount = 0;
         }
         §§push(_loc3_);
         if(false)
         {
            throw true;
         }
         if(!§§pop())
         {
            m_flags &= ~e_touchingFlag;
         }
         else
         {
            m_flags |= e_touchingFlag;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.§\x1c\x1d§(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.§\x19\x1c§(this);
         }
         if((m_flags & e_sensorFlag) == 0)
         {
            param1.§\x0e\x0b§(this,m_oldManifold);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §\x1b\x14§(param1:§\x1d\x07§, param2:§\x1d\x07§) : Number
      {
         s_input.proxyA.Set(m_fixtureA.§\x12\b§());
         s_input.proxyB.Set(m_fixtureB.§\x12\b§());
         s_input.sweepA = param1;
         s_input.sweepB = param2;
         s_input.tolerance = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.TimeOfImpact(s_input);
      }
   }
}


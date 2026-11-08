package §\x1c\x13§
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2LineJointDef;
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
   
   public class b2Fixture
   {
      
      private var m_massData:§\x1d\x12§;
      
      b2internal var m_aabb:b2AABB;
      
      b2internal var m_density:Number;
      
      b2internal var m_next:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var m_shape:b2Shape;
      
      b2internal var m_friction:Number;
      
      b2internal var m_restitution:Number;
      
      b2internal var m_proxy:*;
      
      b2internal var m_filter:§\x1d\x1b§ = new §\x1d\x1b§();
      
      b2internal var m_isSensor:Boolean;
      
      b2internal var m_userData:*;
      
      public function b2Fixture()
      {
         super();
         b2internal::m_aabb = new b2AABB();
         b2internal::m_userData = null;
         b2internal::m_body = null;
         b2internal::m_next = null;
         b2internal::m_shape = null;
         b2internal::m_density = 0;
         b2internal::m_friction = 0;
         b2internal::m_restitution = 0;
      }
      
      public function GetType() : int
      {
         return m_shape.GetType();
      }
      
      public function §\x12\b§() : b2Shape
      {
         return m_shape;
      }
      
      public function SetSensor(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(m_isSensor != param1)
         {
            m_isSensor = param1;
            if(m_body != null)
            {
               var _loc2_:§\x1e\x11§ = m_body.§\x14\x0e§();
               while(_loc2_)
               {
                  _loc3_ = _loc2_.contact;
                  _loc4_ = _loc3_.GetFixtureA();
                  _loc5_ = _loc3_.GetFixtureB();
                  if(_loc4_ == this || _loc5_ == this)
                  {
                     _loc3_.SetSensor(_loc4_.IsSensor() || _loc5_.IsSensor());
                  }
                  _loc2_ = _loc2_.next;
               }
               return;
            }
            return;
         }
      }
      
      public function IsSensor() : Boolean
      {
         return m_isSensor;
      }
      
      public function §\f\x03§(param1:§\x1d\x1b§) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         m_filter = param1.Copy();
         if(!m_body)
         {
            var _loc2_:§\x1e\x11§ = m_body.§\x14\x0e§();
            while(_loc2_)
            {
               _loc3_ = _loc2_.contact;
               _loc4_ = _loc3_.GetFixtureA();
               _loc5_ = _loc3_.GetFixtureB();
               if(_loc4_ == this || _loc5_ == this)
               {
                  _loc3_.FlagForFiltering();
               }
               _loc2_ = _loc2_.next;
            }
            return;
         }
      }
      
      public function §\x14\x01§() : §\x1d\x1b§
      {
         return m_filter.Copy();
      }
      
      public function §\x14\x15§() : b2Body
      {
         return m_body;
      }
      
      public function §\x12\x15§() : b2Fixture
      {
         return m_next;
      }
      
      public function GetUserData() : *
      {
         return m_userData;
      }
      
      public function §\n\x11§(param1:*) : void
      {
         m_userData = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return m_shape.TestPoint(m_body.GetTransform(),param1);
      }
      
      public function RayCast(param1:§\x1d\f§, param2:§\x1d\r§) : Boolean
      {
         return m_shape.RayCast(param1,param2,m_body.GetTransform());
      }
      
      public function §\x12\x1d§(param1:§\x1d\x12§ = null) : §\x1d\x12§
      {
         if(param1 == null)
         {
            param1 = new §\x1d\x12§();
         }
         m_shape.ComputeMass(param1,m_density);
         return param1;
      }
      
      public function §\f\x0b§(param1:Number) : void
      {
         m_density = param1;
      }
      
      public function §\x14\x06§() : Number
      {
         return m_density;
      }
      
      public function §\x13\x19§() : Number
      {
         return m_friction;
      }
      
      public function §\x0b\x1c§(param1:Number) : void
      {
         m_friction = param1;
      }
      
      public function §\x12\n§() : Number
      {
         return m_restitution;
      }
      
      public function §\n\x1c§(param1:Number) : void
      {
         m_restitution = param1;
      }
      
      public function §\x14\x1b§() : b2AABB
      {
         return m_aabb;
      }
      
      b2internal function Create(param1:b2Body, param2:§\x1d\x04§, param3:§\x1d\x1a§) : void
      {
         m_userData = param3.userData;
         m_friction = param3.friction;
         m_restitution = param3.restitution;
         m_body = param1;
         m_next = null;
         m_filter = param3.filter.Copy();
         m_isSensor = param3.isSensor;
         m_shape = param3.shape.Copy();
         §§push(§§findproperty(b2internal::m_density));
         §§push(param3.density);
         if(false)
         {
            return;
         }
         §§pop().b2internal::m_density = §§pop();
      }
      
      b2internal function Destroy() : void
      {
         m_shape = null;
      }
      
      b2internal function §\x1b\n§(param1:§\x11\x06§, param2:§\x1d\x04§) : void
      {
         m_shape.ComputeAABB(m_aabb,param2);
         m_proxy = param1.§\x1b\n§(m_aabb,this);
      }
      
      b2internal function §\x1b\x02§(param1:§\x11\x06§) : void
      {
         if(m_proxy != null)
         {
            param1.§\x1b\x02§(m_proxy);
            m_proxy = null;
            return;
         }
      }
      
      b2internal function §\t\x0e§(param1:§\x11\x06§, param2:§\x1d\x04§, param3:§\x1d\x04§) : void
      {
         if(m_proxy)
         {
            var _loc4_:b2AABB = new b2AABB();
            var _loc5_:b2AABB = new b2AABB();
            m_shape.ComputeAABB(_loc4_,param2);
            m_shape.ComputeAABB(_loc5_,param3);
            m_aabb.Combine(_loc4_,_loc5_);
            var _loc6_:b2Vec2 = b2Math.SubtractVV(param3.position,param2.position);
            param1.§\x0f\x0f§(m_proxy,m_aabb,_loc6_);
            return;
         }
      }
   }
}


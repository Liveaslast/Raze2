package §\x1c\x13§
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
   import §\x1c\x12§.§\x1e\n§;
   import §\x1c\x12§.§\x1e\x10§;
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
   
   public class §\x1e\r§
   {
      
      private static const s_evalCP:§\x1e\f§ = new §\x1e\f§();
      
      b2internal var m_world:b2World;
      
      b2internal var m_broadPhase:§\x11\x06§;
      
      b2internal var m_contactList:b2Contact;
      
      b2internal var m_contactCount:int;
      
      b2internal var m_contactFilter:b2ContactFilter;
      
      b2internal var m_contactListener:b2ContactListener;
      
      b2internal var m_contactFactory:§\x1e\x10§;
      
      b2internal var m_allocator:*;
      
      public function §\x1e\r§()
      {
         super();
         b2internal::m_world = null;
         b2internal::m_contactCount = 0;
         b2internal::m_contactFilter = b2ContactFilter.b2_defaultFilter;
         b2internal::m_contactListener = b2ContactListener.b2_defaultListener;
         b2internal::m_contactFactory = new §\x1e\x10§(b2internal::m_allocator);
         b2internal::m_broadPhase = new §\x1e\x01§();
      }
      
      public function §\r§(param1:*, param2:*) : void
      {
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.§\x14\x15§();
         §§push(_loc4_);
         if(false)
         {
            return;
         }
         var _loc6_:b2Body = §§pop().§\x14\x15§();
         if(_loc5_ != _loc6_)
         {
            var _loc7_:§\x1e\x11§ = _loc6_.§\x14\x0e§();
            while(_loc7_)
            {
               if(_loc7_.other == _loc5_)
               {
                  _loc9_ = _loc7_.contact.GetFixtureA();
                  _loc10_ = _loc7_.contact.GetFixtureB();
                  if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
                  {
                     return;
                  }
                  if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
                  {
                     return;
                  }
               }
               §§push(_loc7_.next);
               if(false)
               {
                  return;
               }
               _loc7_ = §§pop();
            }
            §§push(_loc6_.§\n\b§(_loc5_));
            §§push(false);
            if(false)
            {
               return;
            }
            if(§§pop() != §§pop())
            {
               if(m_contactFilter.§\n\b§(_loc3_,_loc4_) == false)
               {
                  return;
               }
               var _loc8_:b2Contact = m_contactFactory.Create(_loc3_,_loc4_);
               _loc3_ = _loc8_.GetFixtureA();
               _loc4_ = _loc8_.GetFixtureB();
               _loc5_ = _loc3_.m_body;
               _loc6_ = _loc4_.m_body;
               _loc8_.m_prev = null;
               if(false)
               {
                  return;
               }
               _loc8_.m_next = m_world.m_contactList;
               if(m_world.m_contactList != null)
               {
                  m_world.m_contactList.m_prev = _loc8_;
               }
               m_world.m_contactList = _loc8_;
               _loc8_.m_nodeA.contact = _loc8_;
               _loc8_.m_nodeA.other = _loc6_;
               _loc8_.m_nodeA.prev = null;
               _loc8_.m_nodeA.next = _loc5_.m_contactList;
               if(_loc5_.m_contactList != null)
               {
                  _loc5_.m_contactList.prev = _loc8_.m_nodeA;
               }
               _loc5_.m_contactList = _loc8_.m_nodeA;
               _loc8_.m_nodeB.contact = _loc8_;
               _loc8_.m_nodeB.other = _loc5_;
               _loc8_.m_nodeB.prev = null;
               _loc8_.m_nodeB.next = _loc6_.m_contactList;
               if(_loc6_.m_contactList != null)
               {
                  _loc6_.m_contactList.prev = _loc8_.m_nodeB;
               }
               _loc6_.m_contactList = _loc8_.m_nodeB;
               var _loc11_:b2World = m_world;
               var _loc12_:Number = _loc11_.m_contactCount + 1;
               _loc11_.m_contactCount = _loc12_;
               return;
            }
            return;
         }
      }
      
      public function FindNewContacts() : void
      {
         m_broadPhase.§\b\x1b§(§\r§);
      }
      
      public function Destroy(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.GetFixtureA();
         var _loc3_:b2Fixture = param1.GetFixtureB();
         var _loc4_:b2Body = _loc2_.§\x14\x15§();
         var _loc5_:b2Body = _loc3_.§\x14\x15§();
         if(param1.IsTouching())
         {
            m_contactListener.§\x19\x1c§(param1);
            if(false)
            {
               return;
            }
         }
         if(param1.m_prev)
         {
            param1.m_prev.m_next = param1.m_next;
         }
         if(param1.m_next)
         {
            param1.m_next.m_prev = param1.m_prev;
         }
         if(param1 == m_world.m_contactList)
         {
            m_world.m_contactList = param1.m_next;
         }
         if(param1.m_nodeA.prev)
         {
            param1.m_nodeA.prev.next = param1.m_nodeA.next;
         }
         if(param1.m_nodeA.next)
         {
            param1.m_nodeA.next.prev = param1.m_nodeA.prev;
         }
         if(param1.m_nodeA == _loc4_.m_contactList)
         {
            _loc4_.m_contactList = param1.m_nodeA.next;
         }
         if(param1.m_nodeB.prev)
         {
            param1.m_nodeB.prev.next = param1.m_nodeB.next;
         }
         if(param1.m_nodeB.next)
         {
            §§push(param1);
            if(false)
            {
               return false;
            }
            §§pop().b2internal::m_nodeB.next.prev = param1.m_nodeB.prev;
         }
         if(param1.m_nodeB == _loc5_.m_contactList)
         {
            _loc5_.m_contactList = param1.m_nodeB.next;
         }
         m_contactFactory.Destroy(param1);
         --m_contactCount;
      }
      
      public function §\x1b\x1a§() : void
      {
         var _loc2_:b2Fixture = null;
         §§push(null);
         if(false)
         {
            return;
         }
         var _loc3_:b2Fixture = §§pop();
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         if(false)
         {
            return false;
         }
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = m_world.m_contactList;
         while(_loc1_)
         {
            _loc2_ = _loc1_.GetFixtureA();
            _loc3_ = _loc1_.GetFixtureB();
            _loc4_ = _loc2_.§\x14\x15§();
            _loc5_ = _loc3_.§\x14\x15§();
            var _temp_1:* = _loc4_.§\x10\x19§() == false;
            §§push(_temp_1);
            if(_temp_1)
            {
               §§pop();
               if(false)
               {
                  return;
               }
               §§push(_loc5_.§\x10\x19§() == false);
            }
            if(!§§pop())
            {
               if(_loc1_.m_flags & b2Contact.e_filterFlag)
               {
                  if(_loc5_.§\n\b§(_loc4_) == false)
                  {
                     _loc9_ = _loc1_;
                     _loc1_ = _loc9_.§\x12\x15§();
                     Destroy(_loc9_);
                     continue;
                  }
                  if(m_contactFilter.§\n\b§(_loc2_,_loc3_) == false)
                  {
                     var _temp_3:* = _loc1_;
                     _loc9_ = _loc1_;
                     _loc1_ = _loc9_.§\x12\x15§();
                     Destroy(_loc9_);
                     continue;
                  }
                  _loc1_.m_flags &= ~b2Contact.e_filterFlag;
               }
               _loc6_ = _loc2_.m_proxy;
               _loc7_ = _loc3_.m_proxy;
               var _temp_4:* = m_broadPhase.TestOverlap(_loc6_,_loc7_);
               _loc8_ = m_broadPhase.TestOverlap(_loc6_,_loc7_);
               if(_loc8_ != false)
               {
                  _loc1_.§\b\x1c§(m_contactListener);
                  _loc1_ = _loc1_.§\x12\x15§();
               }
               else
               {
                  _loc9_ = _loc1_;
                  _loc1_ = _loc9_.§\x12\x15§();
                  Destroy(_loc9_);
               }
            }
            else
            {
               _loc1_ = _loc1_.§\x12\x15§();
            }
         }
      }
   }
}


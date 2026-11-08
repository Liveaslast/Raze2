package §\x1c\x13§
{
   import §\x0e\r§.*;
   import §\x1c\x10§.*;
   import §\x1c\x11§.§\x1e\b§;
   import §\x1c\x11§.§\x1e\t§;
   import §\x1c\x12§.*;
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
   
   public class b2World
   {
      
      private static var m_warmStarting:Boolean;
      
      private static var m_continuousPhysics:Boolean;
      
      private static var s_timestep2:§\x1d\x06§ = new §\x1d\x06§();
      
      private static var s_xf:§\x1d\x04§ = new §\x1d\x04§();
      
      private static var s_backupA:§\x1d\x07§ = new §\x1d\x07§();
      
      private static var s_backupB:§\x1d\x07§ = new §\x1d\x07§();
      
      private static var s_timestep:§\x1d\x06§ = new §\x1d\x06§();
      
      private static var s_queue:Array = new Array();
      
      private static var s_jointColor:§\x1e\x14§ = new §\x1e\x14§(0.5,0.8,0.8);
      
      public static const e_newFixture:int = 1;
      
      public static const e_locked:int = 2;
      
      private var s_stack:Array = new Array();
      
      b2internal var m_flags:int;
      
      b2internal var m_contactManager:§\x1e\r§ = new §\x1e\r§();
      
      private var m_contactSolver:§\x1e\n§ = new §\x1e\n§();
      
      private var m_island:§\x1d\x17§ = new §\x1d\x17§();
      
      b2internal var m_bodyList:b2Body;
      
      private var m_jointList:b2Joint;
      
      b2internal var m_contactList:b2Contact;
      
      private var m_bodyCount:int;
      
      b2internal var m_contactCount:int;
      
      private var m_jointCount:int;
      
      private var m_controllerList:§\x1e\t§;
      
      private var m_controllerCount:int;
      
      private var m_gravity:b2Vec2;
      
      private var m_allowSleep:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var m_destructionListener:§\x1e\x07§;
      
      private var m_debugDraw:b2DebugDraw;
      
      private var m_inv_dt0:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         super();
         m_destructionListener = null;
         m_debugDraw = null;
         b2internal::m_bodyList = null;
         b2internal::m_contactList = null;
         m_jointList = null;
         m_controllerList = null;
         m_bodyCount = 0;
         b2internal::m_contactCount = 0;
         m_jointCount = 0;
         m_controllerCount = 0;
         m_warmStarting = true;
         m_continuousPhysics = true;
         m_allowSleep = param2;
         m_gravity = param1;
         m_inv_dt0 = 0;
         b2internal::m_contactManager.m_world = this;
         var _loc3_:§\x1e\x17§ = new §\x1e\x17§();
         b2internal::m_groundBody = CreateBody(_loc3_);
      }
      
      public function §\f\n§(param1:§\x1e\x07§) : void
      {
         m_destructionListener = param1;
      }
      
      public function §\f\x11§(param1:b2ContactFilter) : void
      {
         m_contactManager.m_contactFilter = param1;
      }
      
      public function §\f\x10§(param1:b2ContactListener) : void
      {
         m_contactManager.m_contactListener = param1;
      }
      
      public function §\f\f§(param1:b2DebugDraw) : void
      {
         m_debugDraw = param1;
      }
      
      public function §\f\x15§(param1:§\x11\x06§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§\x11\x06§ = m_contactManager.m_broadPhase;
         §§push(m_contactManager);
         if(false)
         {
            return;
         }
         §§pop().b2internal::m_broadPhase = param1;
         var _loc3_:b2Body = m_bodyList;
         loop0:
         while(_loc3_)
         {
            _loc4_ = _loc3_.m_fixtureList;
            while(true)
            {
               if(_loc4_)
               {
                  §§push(_loc4_);
                  §§push(param1);
                  §§push(_loc2_.§\x14\x03§(_loc4_.m_proxy));
                  if(false)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
               §§pop().b2internal::m_proxy = §§pop().§\x1b\n§(§§pop(),_loc4_);
               _loc3_ = _loc3_.m_next;
               _loc4_ = _loc4_.m_next;
            }
            return;
         }
      }
      
      public function Validate() : void
      {
         m_contactManager.m_broadPhase.Validate();
      }
      
      public function GetProxyCount() : int
      {
         return m_contactManager.m_broadPhase.GetProxyCount();
      }
      
      public function CreateBody(param1:§\x1e\x17§) : b2Body
      {
         if(§\x10\x13§() != true)
         {
            var _loc2_:b2Body = new b2Body(param1,this);
            _loc2_.m_prev = null;
            _loc2_.m_next = m_bodyList;
            if(m_bodyList)
            {
               m_bodyList.m_prev = _loc2_;
            }
            m_bodyList = _loc2_;
            var _temp_1:* = §§findproperty(m_bodyCount);
            ++m_bodyCount;
            return _loc2_;
         }
         return null;
      }
      
      public function DestroyBody(param1:b2Body) : void
      {
         var _loc6_:§\x1d\x14§ = null;
         var _loc7_:§\x1e\b§ = null;
         var _loc8_:§\x1e\x11§ = null;
         var _loc9_:b2Fixture = null;
         if(§\x10\x13§() != true)
         {
            var _loc2_:§\x1d\x14§ = param1.m_jointList;
            while(_loc2_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.next;
               if(m_destructionListener)
               {
                  m_destructionListener.§\r\n§(_loc6_.joint);
               }
               §§push(§§findproperty(§\x1b\x03§));
               §§push(_loc6_.joint);
               if(false)
               {
                  return;
               }
               §§pop().§\x1b\x03§(§§pop());
            }
            var _loc3_:§\x1e\b§ = param1.m_controllerList;
            while(_loc3_)
            {
               _loc7_ = _loc3_;
               _loc3_ = _loc3_.nextController;
               _loc7_.controller.RemoveBody(param1);
            }
            var _loc4_:§\x1e\x11§ = param1.m_contactList;
            while(_loc4_)
            {
               _loc8_ = _loc4_;
               _loc4_ = _loc4_.next;
               m_contactManager.Destroy(_loc8_.contact);
            }
            param1.m_contactList = null;
            var _loc5_:b2Fixture = param1.m_fixtureList;
            while(_loc5_)
            {
               _loc9_ = _loc5_;
               _loc5_ = _loc5_.m_next;
               if(m_destructionListener)
               {
                  m_destructionListener.§\r\x0b§(_loc9_);
               }
               _loc9_.§\x1b\x02§(m_contactManager.m_broadPhase);
               _loc9_.Destroy();
               if(false)
               {
                  return;
               }
            }
            param1.m_fixtureList = null;
            param1.m_fixtureCount = 0;
            if(param1.m_prev)
            {
               param1.m_prev.m_next = param1.m_next;
               if(false)
               {
                  return;
               }
            }
            if(param1.m_next)
            {
               param1.m_next.m_prev = param1.m_prev;
            }
            if(param1 == m_bodyList)
            {
               m_bodyList = param1.m_next;
            }
            --m_bodyCount;
            return;
         }
      }
      
      public function CreateJoint(param1:§\x1d\x15§) : b2Joint
      {
         var _loc5_:§\x1e\x11§ = null;
         §§push(b2Joint.Create(param1,null));
         if(false)
         {
            return false;
         }
         var _loc2_:b2Joint = §§pop();
         _loc2_.m_prev = null;
         _loc2_.m_next = m_jointList;
         if(m_jointList)
         {
            m_jointList.m_prev = _loc2_;
         }
         m_jointList = _loc2_;
         var _temp_1:* = §§findproperty(m_jointCount);
         var _loc6_:* = §§findproperty(m_jointCount);
         var _loc7_:Number = _loc6_.m_jointCount + 1;
         _loc6_.m_jointCount = _loc7_;
         _loc2_.m_edgeA.joint = _loc2_;
         _loc2_.m_edgeA.other = _loc2_.m_bodyB;
         _loc2_.m_edgeA.prev = null;
         _loc2_.m_edgeA.next = _loc2_.m_bodyA.m_jointList;
         §§push(_loc2_.m_bodyA);
         if(false)
         {
            return;
         }
         if(§§pop().b2internal::m_jointList)
         {
            _loc2_.m_bodyA.m_jointList.prev = _loc2_.m_edgeA;
         }
         _loc2_.m_bodyA.m_jointList = _loc2_.m_edgeA;
         _loc2_.m_edgeB.joint = _loc2_;
         _loc2_.m_edgeB.other = _loc2_.m_bodyA;
         _loc2_.m_edgeB.prev = null;
         if(false)
         {
            return;
         }
         _loc2_.m_edgeB.next = _loc2_.m_bodyB.m_jointList;
         if(_loc2_.m_bodyB.m_jointList)
         {
            _loc2_.m_bodyB.m_jointList.prev = _loc2_.m_edgeB;
         }
         _loc2_.m_bodyB.m_jointList = _loc2_.m_edgeB;
         var _loc3_:b2Body = param1.bodyA;
         var _loc4_:b2Body = param1.bodyB;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§\x14\x0e§();
            while(_loc5_)
            {
               if(_loc5_.other == _loc3_)
               {
                  _loc5_.contact.FlagForFiltering();
               }
               _loc5_ = _loc5_.next;
            }
         }
         return _loc2_;
      }
      
      public function §\x1b\x03§(param1:b2Joint) : void
      {
         var _loc5_:§\x1e\x11§ = null;
         var _loc2_:Boolean = param1.m_collideConnected;
         if(param1.m_prev)
         {
            param1.m_prev.m_next = param1.m_next;
         }
         if(param1.m_next)
         {
            param1.m_next.m_prev = param1.m_prev;
         }
         if(param1 == m_jointList)
         {
            m_jointList = param1.m_next;
         }
         var _loc3_:b2Body = param1.m_bodyA;
         var _loc4_:b2Body = param1.m_bodyB;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.m_edgeA.prev)
         {
            param1.m_edgeA.prev.next = param1.m_edgeA.next;
         }
         if(param1.m_edgeA.next)
         {
            param1.m_edgeA.next.prev = param1.m_edgeA.prev;
         }
         if(param1.m_edgeA == _loc3_.m_jointList)
         {
            §§push(_loc3_);
            §§push(param1.m_edgeA);
            if(false)
            {
               return;
            }
            §§pop().b2internal::m_jointList = §§pop().next;
         }
         param1.m_edgeA.prev = null;
         param1.m_edgeA.next = null;
         if(false)
         {
            return;
         }
         if(param1.m_edgeB.prev)
         {
            param1.m_edgeB.prev.next = param1.m_edgeB.next;
         }
         if(param1.m_edgeB.next)
         {
            param1.m_edgeB.next.prev = param1.m_edgeB.prev;
         }
         if(param1.m_edgeB == _loc4_.m_jointList)
         {
            _loc4_.m_jointList = param1.m_edgeB.next;
         }
         param1.m_edgeB.prev = null;
         param1.m_edgeB.next = null;
         b2Joint.Destroy(param1,null);
         var _loc6_:* = §§findproperty(m_jointCount);
         §§push(_loc6_);
         if(false)
         {
            return;
         }
         var _loc7_:Number = §§pop().m_jointCount - 1;
         _loc6_.m_jointCount = _loc7_;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§\x14\x0e§();
            while(_loc5_)
            {
               if(_loc5_.other == _loc3_)
               {
                  _loc5_.contact.FlagForFiltering();
               }
               _loc5_ = _loc5_.next;
            }
         }
      }
      
      public function §\x14§(param1:§\x1e\t§) : §\x1e\t§
      {
         param1.m_next = m_controllerList;
         param1.m_prev = null;
         m_controllerList = param1;
         param1.m_world = this;
         var _loc2_:* = §§findproperty(m_controllerCount);
         §§push(_loc2_.m_controllerCount);
         if(false)
         {
            return false;
         }
         var _loc3_:Number = §§pop() + 1;
         _loc2_.m_controllerCount = _loc3_;
         return param1;
      }
      
      public function §\r\x15§(param1:§\x1e\t§) : void
      {
         if(param1.m_prev)
         {
            param1.m_prev.m_next = param1.m_next;
         }
         if(param1.m_next)
         {
            param1.m_next.m_prev = param1.m_prev;
         }
         if(m_controllerList == param1)
         {
            m_controllerList = param1.m_next;
         }
         var _loc2_:* = §§findproperty(m_controllerCount);
         var _loc3_:Number = _loc2_.m_controllerCount - 1;
         §§push(_loc2_);
         if(false)
         {
            return;
         }
         §§pop().m_controllerCount = _loc3_;
      }
      
      public function §\x1b\x10§(param1:§\x1e\t§) : §\x1e\t§
      {
         if(param1.m_world == this)
         {
            param1.m_next = m_controllerList;
            param1.m_prev = null;
            §§push(m_controllerList);
            if(false)
            {
               return;
            }
            if(§§pop())
            {
               m_controllerList.m_prev = param1;
            }
            m_controllerList = param1;
            var _loc2_:* = §§findproperty(m_controllerCount);
            var _loc3_:Number = _loc2_.m_controllerCount + 1;
            _loc2_.m_controllerCount = _loc3_;
            param1.m_world = this;
            return param1;
         }
         throw new Error("Controller can only be a member of one world");
      }
      
      public function §\x1b\x05§(param1:§\x1e\t§) : void
      {
         param1.§\x1c\x04§();
         §§push(param1.m_next);
         if(false)
         {
            return;
         }
         if(§§pop())
         {
            param1.m_next.m_prev = param1.m_prev;
         }
         if(param1.m_prev)
         {
            param1.m_prev.m_next = param1.m_next;
         }
         if(param1 == m_controllerList)
         {
            §§push(§§findproperty(m_controllerList));
            §§push(param1);
            if(false)
            {
               return;
            }
            §§pop().m_controllerList = §§pop().b2internal::m_next;
         }
         --m_controllerCount;
      }
      
      public function §\n\x0e§(param1:Boolean) : void
      {
         m_warmStarting = param1;
      }
      
      public function §\f\x0f§(param1:Boolean) : void
      {
         m_continuousPhysics = param1;
      }
      
      public function §\x14\x14§() : int
      {
         return m_bodyCount;
      }
      
      public function §\x13\x13§() : int
      {
         return m_jointCount;
      }
      
      public function §\x14\x0f§() : int
      {
         return m_contactCount;
      }
      
      public function §\x0b\x1a§(param1:b2Vec2) : void
      {
         m_gravity = param1;
      }
      
      public function §\x13\x18§() : b2Vec2
      {
         return m_gravity;
      }
      
      public function §\x13\x16§() : b2Body
      {
         return m_groundBody;
      }
      
      public function §\t\x12§(param1:Number, param2:int, param3:int) : void
      {
         if(m_flags & e_newFixture)
         {
            m_contactManager.FindNewContacts();
            m_flags &= ~e_newFixture;
         }
         m_flags |= e_locked;
         var _temp_1:* = s_timestep2;
         var _loc4_:§\x1d\x06§ = s_timestep2;
         _loc4_.dt = param1;
         _loc4_.velocityIterations = param2;
         _loc4_.positionIterations = param3;
         if(param1 <= 0)
         {
            _loc4_.inv_dt = 0;
         }
         else
         {
            _loc4_.inv_dt = 1 / param1;
         }
         _loc4_.dtRatio = m_inv_dt0 * param1;
         _loc4_.warmStarting = m_warmStarting;
         m_contactManager.§\x1b\x1a§();
         if(_loc4_.dt > 0)
         {
            §\n\x03§(_loc4_);
         }
         var _temp_2:* = m_continuousPhysics;
         §§push(_temp_2);
         if(_temp_2)
         {
            §§pop();
            §§push(_loc4_.dt > 0);
            if(false)
            {
               return;
            }
         }
         if(§§pop())
         {
            §\t\x1b§(_loc4_);
         }
         if(_loc4_.dt > 0)
         {
            m_inv_dt0 = _loc4_.inv_dt;
         }
         m_flags &= ~e_locked;
      }
      
      public function §\x1c\x02§() : void
      {
         var _loc1_:b2Body = m_bodyList;
         while(_loc1_)
         {
            _loc1_.m_force.SetZero();
            _loc1_.m_torque = 0;
            _loc1_ = _loc1_.m_next;
         }
      }
      
      public function §\x1a\x0f§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§\x11\x06§ = null;
         var _loc11_:§\x1d\x04§ = null;
         var _loc16_:§\x1e\t§ = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(m_debugDraw != null)
         {
            m_debugDraw.m_sprite.graphics.clear();
            var _loc1_:uint = m_debugDraw.§\x13\x1b§();
            var _loc8_:b2Vec2 = new b2Vec2();
            var _loc9_:b2Vec2 = new b2Vec2();
            var _loc10_:b2Vec2 = new b2Vec2();
            var _loc12_:b2AABB = new b2AABB();
            var _loc13_:b2AABB = new b2AABB();
            var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            §§push(§§findproperty(§\x1e\x14§));
            §§push(0);
            §§push(0);
            §§push(0);
            if(false)
            {
               return;
            }
            var _loc15_:§\x1e\x14§ = new §§pop().§\x1e\x14§(§§pop(),§§pop(),§§pop());
            if(_loc1_ & b2DebugDraw.e_shapeBit)
            {
               _loc3_ = m_bodyList;
               while(_loc3_)
               {
                  _loc11_ = _loc3_.m_xf;
                  _loc4_ = _loc3_.§\x13\x1c§();
                  while(_loc4_)
                  {
                     _loc5_ = _loc4_.§\x12\b§();
                     if(_loc3_.IsActive() != false)
                     {
                        if(_loc3_.GetType() != b2Body.b2_staticBody)
                        {
                           if(_loc3_.GetType() != b2Body.b2_kinematicBody)
                           {
                              if(_loc3_.§\x10\x19§() != false)
                              {
                                 _loc15_.Set(0.9,0.7,0.7);
                                 §\x1a\x0b§(_loc5_,_loc11_,_loc15_);
                              }
                              else
                              {
                                 §§push(_loc15_);
                                 if(false)
                                 {
                                    return;
                                 }
                                 §§pop().Set(0.6,0.6,0.6);
                                 §\x1a\x0b§(_loc5_,_loc11_,_loc15_);
                              }
                           }
                           else
                           {
                              §§push(_loc15_);
                              if(false)
                              {
                                 return;
                              }
                              §§pop().Set(0.5,0.5,0.9);
                              §\x1a\x0b§(_loc5_,_loc11_,_loc15_);
                           }
                        }
                        else
                        {
                           §§push(_loc15_);
                           §§push(0.5);
                           if(false)
                           {
                              throw true;
                           }
                           §§pop().Set(§§pop(),0.9,0.5);
                           §\x1a\x0b§(_loc5_,_loc11_,_loc15_);
                        }
                     }
                     else
                     {
                        _loc15_.Set(0.5,0.5,0.3);
                        §\x1a\x0b§(_loc5_,_loc11_,_loc15_);
                     }
                     _loc4_ = _loc4_.m_next;
                  }
                  _loc3_ = _loc3_.m_next;
               }
            }
            if(_loc1_ & b2DebugDraw.e_jointBit)
            {
               _loc6_ = m_jointList;
               while(_loc6_)
               {
                  §\x1a\x0e§(_loc6_);
                  _loc6_ = _loc6_.m_next;
               }
            }
            if(_loc1_ & b2DebugDraw.e_controllerBit)
            {
               _loc16_ = m_controllerList;
               while(_loc16_)
               {
                  _loc16_.§\x1a\x11§(m_debugDraw);
                  _loc16_ = _loc16_.m_next;
               }
            }
            if(_loc1_ & b2DebugDraw.e_pairBit)
            {
               _loc15_.Set(0.3,0.9,0.9);
               §§push(m_contactManager.m_contactList);
               if(false)
               {
                  return;
               }
               _loc17_ = §§pop();
               while(_loc17_)
               {
                  _loc18_ = _loc17_.GetFixtureA();
                  _loc19_ = _loc17_.GetFixtureB();
                  _loc20_ = _loc18_.§\x14\x1b§().GetCenter();
                  _loc21_ = _loc19_.§\x14\x1b§().GetCenter();
                  m_debugDraw.§\x1a\f§(_loc20_,_loc21_,_loc15_);
                  _loc17_ = _loc17_.§\x12\x15§();
               }
            }
            if(_loc1_ & b2DebugDraw.e_aabbBit)
            {
               _loc7_ = m_contactManager.m_broadPhase;
               _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
               _loc3_ = m_bodyList;
               while(_loc3_)
               {
                  if(_loc3_.IsActive() != false)
                  {
                     _loc4_ = _loc3_.§\x13\x1c§();
                     while(_loc4_)
                     {
                        _loc22_ = _loc7_.§\x14\x03§(_loc4_.m_proxy);
                        _loc14_[0].Set(_loc22_.lowerBound.x,_loc22_.lowerBound.y);
                        _loc14_[1].Set(_loc22_.upperBound.x,_loc22_.lowerBound.y);
                        _loc14_[2].Set(_loc22_.upperBound.x,_loc22_.upperBound.y);
                        _loc14_[3].Set(_loc22_.lowerBound.x,_loc22_.upperBound.y);
                        m_debugDraw.§\x1a\r§(_loc14_,4,_loc15_);
                        _loc4_ = _loc4_.§\x12\x15§();
                     }
                  }
                  _loc3_ = _loc3_.§\x12\x15§();
                  if(false)
                  {
                     return;
                  }
               }
            }
            if(_loc1_ & b2DebugDraw.e_centerOfMassBit)
            {
               _loc3_ = m_bodyList;
               while(_loc3_)
               {
                  _loc11_ = s_xf;
                  _loc11_.R = _loc3_.m_xf.R;
                  _loc11_.position = _loc3_.GetWorldCenter();
                  m_debugDraw.§\x1a\b§(_loc11_);
                  _loc3_ = _loc3_.m_next;
               }
            }
            return;
         }
      }
      
      public function §\x0e\x07§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§\x11\x06§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = m_contactManager.m_broadPhase;
         broadPhase.Query(WorldQueryWrapper,aabb);
      }
      
      public function §\x0e\x05§(param1:Function, param2:b2Shape, param3:§\x1d\x04§ = null) : void
      {
         var aabb:b2AABB;
         var broadPhase:§\x11\x06§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:§\x1d\x04§ = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(!b2Shape.TestOverlap(shape,transform,_loc2_.§\x12\b§(),_loc2_.§\x14\x15§().GetTransform()))
            {
               return true;
            }
            return callback(_loc2_);
         };
         if(transform == null)
         {
            transform = new §\x1d\x04§();
            transform.SetIdentity();
         }
         broadPhase = m_contactManager.m_broadPhase;
         §§push(§§newactivation());
         §§push(new b2AABB());
         if(false)
         {
            throw true;
         }
         §§pop().§§slot[6] = §§pop();
         shape.ComputeAABB(aabb,transform);
         if(false)
         {
            return;
         }
         broadPhase.Query(WorldQueryWrapper,aabb);
      }
      
      public function §\x0e\x06§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§\x11\x06§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var p:b2Vec2 = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(!_loc2_.TestPoint(p))
            {
               return true;
            }
            return callback(_loc2_);
         };
         broadPhase = m_contactManager.m_broadPhase;
         var aabb:b2AABB = new b2AABB();
         aabb.lowerBound.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.upperBound.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.Query(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§\x11\x06§ = null;
         var output:§\x1d\f§ = null;
         var RayCastWrapper:Function = null;
         var callback:Function = param1;
         var point1:b2Vec2 = param2;
         var point2:b2Vec2 = param3;
         RayCastWrapper = function(param1:§\x1d\r§, param2:*):Number
         {
            var _loc6_:Number = NaN;
            var _loc7_:b2Vec2 = null;
            §§push(broadPhase.GetUserData(param2));
            if(false)
            {
               return;
            }
            var _loc3_:* = §§pop();
            var _loc4_:b2Fixture = _loc3_ as b2Fixture;
            var _loc5_:Boolean = _loc4_.RayCast(output,param1);
            if(!_loc5_)
            {
               §§push(param1);
               if(false)
               {
                  return;
               }
               return §§pop().maxFraction;
            }
            _loc6_ = output.fraction;
            _loc7_ = new b2Vec2((1 - _loc6_) * point1.x + _loc6_ * point2.x,(1 - _loc6_) * point1.y + _loc6_ * point2.y);
            return callback(_loc4_,_loc7_,output.normal,_loc6_);
         };
         broadPhase = m_contactManager.m_broadPhase;
         output = new §\x1d\f§();
         var input:§\x1d\r§ = new §\x1d\r§(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §\r\x1c§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
      {
         var point1:b2Vec2;
         var point2:b2Vec2;
         var RayCastOneWrapper:Function;
         var result:b2Fixture = null;
         §§push(§§newactivation());
         if(false)
         {
            return;
         }
         §§pop().§§slot[4] = null;
         point1 = param1;
         point2 = param2;
         RayCastOneWrapper = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
         {
            result = param1;
            return param4;
         };
         if(false)
         {
            return;
         }
         RayCast(RayCastOneWrapper,point1,point2);
         return result;
      }
      
      public function §\r\x1d§(param1:b2Vec2, param2:b2Vec2) : Array
      {
         var result:Array = null;
         var RayCastAllWrapper:Function = null;
         var point1:b2Vec2 = param1;
         var point2:b2Vec2 = param2;
         RayCastAllWrapper = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
         {
            result[result.length] = param1;
            return 1;
         };
         result = new Array();
         RayCast(RayCastAllWrapper,point1,point2);
         return result;
      }
      
      public function §\x14\x13§() : b2Body
      {
         return m_bodyList;
      }
      
      public function §\x13\x12§() : b2Joint
      {
         return m_jointList;
      }
      
      public function §\x14\x0e§() : b2Contact
      {
         return m_contactList;
      }
      
      public function §\x10\x13§() : Boolean
      {
         return (m_flags & e_locked) > 0;
      }
      
      b2internal function §\n\x03§(param1:§\x1d\x06§) : void
      {
         var _loc2_:* = null;
         var _loc10_:* = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:§\x1e\x11§ = null;
         var _loc14_:§\x1d\x14§ = null;
         var _loc3_:§\x1e\t§ = m_controllerList;
         while(_loc3_)
         {
            _loc3_.§\t\x12§(param1);
            if(false)
            {
               return;
            }
            _loc3_ = _loc3_.m_next;
         }
         var _loc4_:§\x1d\x17§ = m_island;
         _loc4_.§\x10\x1d§(m_bodyCount,m_contactCount,m_jointCount,null,m_contactManager.m_contactListener,m_contactSolver);
         §§push(m_bodyList);
         if(false)
         {
            throw true;
         }
         _loc2_ = §§pop();
         while(_loc2_)
         {
            _loc2_.b2internal::m_flags &= ~b2Body.e_islandFlag;
            _loc2_ = _loc2_.b2internal::m_next;
         }
         var _loc5_:* = m_contactList;
         while(_loc5_)
         {
            _loc5_.b2internal::m_flags &= ~b2Contact.e_islandFlag;
            §§push(_loc5_.b2internal::m_next);
            if(false)
            {
               throw true;
            }
            _loc5_ = §§pop();
         }
         var _loc6_:b2Joint = m_jointList;
         while(_loc6_)
         {
            _loc6_.m_islandFlag = false;
            _loc6_ = _loc6_.m_next;
         }
         var _loc7_:int = m_bodyCount;
         var _loc8_:Array = s_stack;
         var _loc9_:b2Body = m_bodyList;
         while(_loc9_)
         {
            §§push(_loc9_.m_flags & b2Body.e_islandFlag);
            if(false)
            {
               return false;
            }
            if(!§§pop())
            {
               if(!(_loc9_.§\x10\x19§() == false || _loc9_.IsActive() == false))
               {
                  if(_loc9_.GetType() != b2Body.b2_staticBody)
                  {
                     _loc4_.§\x1c\x04§();
                     _loc10_ = 0;
                     var _loc15_:Number;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.m_flags |= b2Body.e_islandFlag;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§\x18§(_loc2_);
                        if(_loc2_.§\x10\x19§() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.GetType() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.b2internal::m_contactList;
                           while(_loc13_)
                           {
                              §§push(_loc13_.contact.m_flags & b2Contact.e_islandFlag);
                              if(false)
                              {
                                 return;
                              }
                              if(!§§pop())
                              {
                                 if(!(_loc13_.contact.IsSensor() == true || _loc13_.contact.IsEnabled() == false || _loc13_.contact.IsTouching() == false))
                                 {
                                    _loc4_.§\x15§(_loc13_.contact);
                                    _loc13_.contact.m_flags |= b2Contact.e_islandFlag;
                                    _loc12_ = _loc13_.other;
                                    if(!(_loc12_.m_flags & b2Body.e_islandFlag))
                                    {
                                       §§push(_loc8_);
                                       var _temp_9:* = _loc10_;
                                       var _loc16_:* = _loc10_++;
                                       §§pop()[_loc16_] = _loc12_;
                                       if(false)
                                       {
                                          return;
                                       }
                                       _loc12_.m_flags |= b2Body.e_islandFlag;
                                       if(false)
                                       {
                                          return;
                                       }
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.next;
                           }
                           _loc14_ = _loc2_.b2internal::m_jointList;
                           while(_loc14_)
                           {
                              if(_loc14_.joint.m_islandFlag != true)
                              {
                                 §§push(_loc14_);
                                 if(false)
                                 {
                                    return;
                                 }
                                 _loc12_ = §§pop().other;
                                 if(_loc12_.IsActive() != false)
                                 {
                                    §§push(_loc4_);
                                    §§push(_loc14_);
                                    if(false)
                                    {
                                       return;
                                    }
                                    §§pop().§\x10§(§§pop().joint);
                                    _loc14_.joint.m_islandFlag = true;
                                    §§push(_loc12_);
                                    if(false)
                                    {
                                       return;
                                    }
                                    if(!(§§pop().b2internal::m_flags & b2Body.e_islandFlag))
                                    {
                                       §§push(_loc8_);
                                       var _temp_12:* = _loc10_;
                                       §§push(_temp_12);
                                       §§push(_temp_12);
                                       if(false)
                                       {
                                          return;
                                       }
                                       _loc10_ = §§pop() + 1;
                                       _loc16_ = §§pop();
                                       §§pop()[_loc16_] = _loc12_;
                                       _loc12_.m_flags |= b2Body.e_islandFlag;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.next;
                           }
                        }
                     }
                     _loc4_.§\n\x03§(param1,m_gravity,m_allowSleep);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.m_bodyCount)
                     {
                        _loc2_ = _loc4_.m_bodies[_loc11_];
                        §§push(_loc2_);
                        if(false)
                        {
                           throw true;
                        }
                        if(§§pop().GetType() == b2Body.b2_staticBody)
                        {
                           §§push(_loc2_);
                           §§push(_loc2_.b2internal::m_flags);
                           §§push(~b2Body.e_islandFlag);
                           if(false)
                           {
                              return;
                           }
                           §§pop().b2internal::m_flags = §§pop() & §§pop();
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.m_next;
         }
         _loc11_ = 0;
         while(_loc11_ < _loc8_.length)
         {
            if(!_loc8_[_loc11_])
            {
               break;
            }
            _loc8_[_loc11_] = null;
            _loc11_++;
         }
         _loc2_ = m_bodyList;
         while(_loc2_)
         {
            if(false)
            {
               return;
            }
            if(!(_loc2_.§\x10\x19§() == false || _loc2_.IsActive() == false))
            {
               if(_loc2_.GetType() != b2Body.b2_staticBody)
               {
                  _loc2_.b2internal::§\t\r§();
               }
            }
            _loc2_ = _loc2_.b2internal::m_next;
         }
         m_contactManager.FindNewContacts();
         if(false)
         {
            return;
         }
      }
      
      b2internal function §\t\x1b§(param1:§\x1d\x06§) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Fixture = null;
         if(false)
         {
            return;
         }
         var _loc5_:b2Body = null;
         var _loc6_:b2Body = null;
         var _loc7_:§\x1e\x11§ = null;
         var _loc8_:b2Joint = null;
         var _loc11_:b2Contact = null;
         var _loc12_:b2Contact = null;
         var _loc13_:Number = NaN;
         var _loc14_:b2Body = null;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:§\x1d\x06§ = null;
         var _loc18_:* = 0;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:§\x1d\x14§ = null;
         var _loc22_:b2Body = null;
         var _loc9_:§\x1d\x17§ = m_island;
         _loc9_.§\x10\x1d§(m_bodyCount,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,m_contactManager.m_contactListener,m_contactSolver);
         var _loc10_:Array = s_queue;
         _loc2_ = m_bodyList;
         while(_loc2_)
         {
            _loc2_.m_flags &= ~b2Body.e_islandFlag;
            _loc2_.m_sweep.t0 = 0;
            §§push(_loc2_);
            if(false)
            {
               throw true;
            }
            _loc2_ = §§pop().b2internal::m_next;
         }
         _loc11_ = m_contactList;
         while(_loc11_)
         {
            _loc11_.m_flags &= ~(b2Contact.e_toiFlag | b2Contact.e_islandFlag);
            _loc11_ = _loc11_.m_next;
            if(false)
            {
               return false;
            }
         }
         _loc8_ = m_jointList;
         while(_loc8_)
         {
            _loc8_.m_islandFlag = false;
            _loc8_ = _loc8_.m_next;
         }
         loop3:
         while(true)
         {
            _loc12_ = null;
            if(false)
            {
               break;
            }
            _loc13_ = 1;
            _loc11_ = m_contactList;
            for(; _loc11_; _loc11_ = _loc11_.m_next)
            {
               var _temp_3:* = _loc11_.IsSensor() == true || _loc11_.IsEnabled() == false;
               §§push(_temp_3);
               if(!_temp_3)
               {
                  §§pop();
                  §§push(_loc11_);
                  if(false)
                  {
                     return;
                  }
                  §§push(§§pop().§\x10\x17§() == false);
               }
               if(!§§pop())
               {
                  _loc19_ = 1;
                  §§push(_loc11_);
                  if(false)
                  {
                     return;
                  }
                  if(!(§§pop().b2internal::m_flags & b2Contact.e_toiFlag))
                  {
                     _loc3_ = _loc11_.m_fixtureA;
                     _loc4_ = _loc11_.m_fixtureB;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     var _temp_5:* = _loc5_.GetType() != b2Body.b2_dynamicBody || _loc5_.§\x10\x19§() == false;
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        §§pop();
                        §§push(_loc6_.GetType() != b2Body.b2_dynamicBody);
                        if(false)
                        {
                           throw true;
                        }
                        var _temp_6:* = §§pop();
                        §§push(_temp_6);
                        if(!_temp_6)
                        {
                           §§pop();
                           §§push(_loc6_.§\x10\x19§());
                           §§push(false);
                           if(false)
                           {
                              return;
                           }
                           §§push(§§pop() == §§pop());
                        }
                     }
                     if(§§pop())
                     {
                        continue;
                     }
                     §§push(_loc5_.m_sweep.t0);
                     if(false)
                     {
                        return;
                     }
                     _loc20_ = §§pop();
                     if(_loc5_.m_sweep.t0 >= _loc6_.m_sweep.t0)
                     {
                        if(_loc6_.m_sweep.t0 < _loc5_.m_sweep.t0)
                        {
                           _loc20_ = _loc5_.m_sweep.t0;
                           _loc6_.m_sweep.Advance(_loc20_);
                        }
                     }
                     else
                     {
                        _loc20_ = _loc6_.m_sweep.t0;
                        _loc5_.m_sweep.Advance(_loc20_);
                     }
                     _loc19_ = _loc11_.§\x1b\x14§(_loc5_.m_sweep,_loc6_.m_sweep);
                     §§push(b2Settings);
                     §§push(0 <= _loc19_);
                     if(false)
                     {
                        return false;
                     }
                     §§pop().b2Assert(§§pop() && _loc19_ <= 1);
                     §§push(_loc19_);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() > 0 && _loc19_ < 1)
                     {
                        var _temp_9:* = (1 - _loc19_) * _loc20_ + _loc19_;
                        _loc19_ = (1 - _loc19_) * _loc20_ + _loc19_;
                        if(_loc19_ > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.m_toi = _loc19_;
                     _loc11_.m_flags |= b2Contact.e_toiFlag;
                  }
                  else
                  {
                     _loc19_ = _loc11_.m_toi;
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     §§push(_loc19_);
                     if(false)
                     {
                        throw true;
                     }
                     _loc13_ = §§pop();
                  }
               }
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               return;
            }
            _loc3_ = _loc12_.m_fixtureA;
            _loc4_ = _loc12_.m_fixtureB;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            s_backupA.Set(_loc5_.m_sweep);
            s_backupB.Set(_loc6_.m_sweep);
            §§push(_loc5_);
            if(false)
            {
               throw true;
            }
            §§pop().b2internal::Advance(_loc13_);
            _loc6_.Advance(_loc13_);
            _loc12_.§\b\x1c§(m_contactManager.m_contactListener);
            _loc12_.m_flags &= ~b2Contact.e_toiFlag;
            if(!(_loc12_.IsSensor() == true || _loc12_.IsEnabled() == false))
            {
               if(_loc12_.IsTouching() != false)
               {
                  _loc14_ = _loc5_;
                  if(_loc14_.GetType() != b2Body.b2_dynamicBody)
                  {
                     _loc14_ = _loc6_;
                  }
                  _loc9_.§\x1c\x04§();
                  _loc15_ = 0;
                  _loc16_ = 0;
                  §§push(_loc10_);
                  §§push(_loc15_);
                  var _temp_14:* = _loc16_;
                  §§pop()[§§pop() + _loc16_++] = _loc14_;
                  §§push(_loc14_);
                  §§push(_loc14_.m_flags);
                  §§push(b2Body.e_islandFlag);
                  if(false)
                  {
                     return;
                  }
                  §§pop().b2internal::m_flags = §§pop() | §§pop();
                  while(_loc16_ > 0)
                  {
                     _loc2_ = _loc10_[_loc15_++];
                     §§push(_loc16_ - 1);
                     if(false)
                     {
                        throw true;
                     }
                     _loc16_ = §§pop();
                     _loc9_.§\x18§(_loc2_);
                     if(_loc2_.§\x10\x19§() == false)
                     {
                        _loc2_.SetAwake(true);
                     }
                     if(_loc2_.GetType() == b2Body.b2_dynamicBody)
                     {
                        _loc7_ = _loc2_.m_contactList;
                        while(_loc7_)
                        {
                           if(_loc9_.m_contactCount == _loc9_.m_contactCapacity)
                           {
                              break;
                           }
                           if(!(_loc7_.contact.m_flags & b2Contact.e_islandFlag))
                           {
                              if(!(_loc7_.contact.IsSensor() == true || _loc7_.contact.IsEnabled() == false || _loc7_.contact.IsTouching() == false))
                              {
                                 _loc9_.§\x15§(_loc7_.contact);
                                 _loc7_.contact.m_flags |= b2Contact.e_islandFlag;
                                 _loc22_ = _loc7_.other;
                                 if(!(_loc22_.m_flags & b2Body.e_islandFlag))
                                 {
                                    if(_loc22_.GetType() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.Advance(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.m_flags |= b2Body.e_islandFlag;
                                 }
                              }
                           }
                           _loc7_ = _loc7_.next;
                        }
                        _loc21_ = _loc2_.m_jointList;
                        while(_loc21_)
                        {
                           if(_loc9_.m_jointCount != _loc9_.m_jointCapacity)
                           {
                              if(_loc21_.joint.m_islandFlag != true)
                              {
                                 _loc22_ = _loc21_.other;
                                 if(_loc22_.IsActive() != false)
                                 {
                                    _loc9_.§\x10§(_loc21_.joint);
                                    _loc21_.joint.m_islandFlag = true;
                                    if(!(_loc22_.m_flags & b2Body.e_islandFlag))
                                    {
                                       if(_loc22_.GetType() != b2Body.b2_staticBody)
                                       {
                                          _loc22_.Advance(_loc13_);
                                          _loc22_.SetAwake(true);
                                       }
                                       _loc10_[_loc15_ + _loc16_] = _loc22_;
                                       _loc16_++;
                                       _loc22_.m_flags |= b2Body.e_islandFlag;
                                    }
                                 }
                              }
                           }
                           _loc21_ = _loc21_.next;
                        }
                     }
                  }
                  _loc17_ = s_timestep;
                  §§push(_loc17_);
                  if(false)
                  {
                     return;
                  }
                  §§pop().warmStarting = false;
                  _loc17_.dt = (1 - _loc13_) * param1.dt;
                  _loc17_.inv_dt = 1 / _loc17_.dt;
                  _loc17_.dtRatio = 0;
                  _loc17_.velocityIterations = param1.velocityIterations;
                  _loc17_.positionIterations = param1.positionIterations;
                  _loc9_.§\t\x1b§(_loc17_);
                  _loc18_ = 0;
                  while(_loc18_ < _loc9_.m_bodyCount)
                  {
                     _loc2_ = _loc9_.m_bodies[_loc18_];
                     _loc2_.m_flags &= ~b2Body.e_islandFlag;
                     if(_loc2_.§\x10\x19§() != false)
                     {
                        if(_loc2_.GetType() == b2Body.b2_dynamicBody)
                        {
                           _loc2_.§\t\r§();
                           _loc7_ = _loc2_.m_contactList;
                           while(_loc7_)
                           {
                              _loc7_.contact.m_flags &= ~b2Contact.e_toiFlag;
                              _loc7_ = _loc7_.next;
                           }
                        }
                     }
                     _loc18_++;
                  }
                  §§push(0);
                  if(false)
                  {
                     return;
                  }
                  _loc18_ = §§pop();
                  while(true)
                  {
                     §§push(_loc18_);
                     §§push(_loc9_);
                     if(false)
                     {
                        break;
                     }
                     if(§§pop() < §§pop().b2internal::m_contactCount)
                     {
                        continue;
                     }
                     _loc18_ = 0;
                     while(_loc18_ < _loc9_.m_jointCount)
                     {
                        _loc8_ = _loc9_.m_joints[_loc18_];
                        _loc8_.m_islandFlag = false;
                        _loc18_++;
                     }
                     m_contactManager.FindNewContacts();
                     continue loop3;
                     _loc11_ = _loc9_.m_contacts[_loc18_];
                     _loc11_.m_flags &= ~(b2Contact.e_toiFlag | b2Contact.e_islandFlag);
                     _loc18_++;
                  }
                  return false;
               }
            }
            else
            {
               _loc5_.m_sweep.Set(s_backupA);
               _loc6_.m_sweep.Set(s_backupB);
               _loc5_.§\t\f§();
               _loc6_.§\t\f§();
            }
         }
         return false;
      }
      
      b2internal function §\x1a\x0e§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.GetBodyA();
         var _loc3_:b2Body = param1.GetBodyB();
         var _loc4_:§\x1d\x04§ = _loc2_.m_xf;
         var _loc5_:§\x1d\x04§ = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:§\x1e\x14§ = s_jointColor;
         switch(param1.m_type)
         {
            case b2Joint.e_distanceJoint:
               §§push(m_debugDraw);
               §§push(_loc8_);
               if(false)
               {
                  return false;
               }
               §§pop().§\x1a\f§(§§pop(),_loc9_,_loc10_);
               break;
            case b2Joint.e_pulleyJoint:
               var _temp_1:* = param1 as b2PulleyJoint;
               _loc11_ = param1 as b2PulleyJoint;
               _loc12_ = _loc11_.GetGroundAnchorA();
               _loc13_ = _loc11_.§\x13\x17§();
               m_debugDraw.§\x1a\f§(_loc12_,_loc8_,_loc10_);
               m_debugDraw.§\x1a\f§(_loc13_,_loc9_,_loc10_);
               m_debugDraw.§\x1a\f§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.e_mouseJoint:
               m_debugDraw.§\x1a\f§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != m_groundBody)
               {
                  m_debugDraw.§\x1a\f§(_loc6_,_loc8_,_loc10_);
               }
               m_debugDraw.§\x1a\f§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != m_groundBody)
               {
                  m_debugDraw.§\x1a\f§(_loc7_,_loc9_,_loc10_);
               }
         }
      }
      
      b2internal function §\x1a\x0b§(param1:b2Shape, param2:§\x1d\x04§, param3:§\x1e\x14§) : void
      {
         var _loc4_:b2CircleShape = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:int = 0;
         §§push(null);
         if(false)
         {
            return;
         }
         var _loc9_:* = §§pop();
         var _loc10_:int = 0;
         var _loc11_:Array = null;
         var _loc12_:Array = null;
         var _loc13_:b2EdgeShape = null;
         var _loc14_:int = param1.m_type;
         switch(_loc14_)
         {
            case b2Shape.e_circleShape:
               §§push(0);
               break;
            case b2Shape.e_polygonShape:
               §§push(1);
               break;
            default:
               §§push(b2Shape);
               if(false)
               {
                  return;
               }
               if(§§pop().b2internal::e_edgeShape !== _loc14_)
               {
                  §§push(3);
                  break;
               }
               §§push(2);
         }
         switch(§§pop())
         {
            case 0:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.MulX(param2,_loc4_.m_p);
               _loc6_ = _loc4_.m_radius;
               _loc7_ = param2.R.col1;
               §§push(m_debugDraw);
               if(false)
               {
                  return;
               }
               §§pop().§\x1a\n§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case 1:
               §§push(param1 as b2PolygonShape);
               if(false)
               {
                  return;
               }
               _loc9_ = §§pop();
               _loc10_ = _loc9_.GetVertexCount();
               _loc11_ = _loc9_.§\x11\x19§();
               _loc12_ = new Array(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.MulX(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               m_debugDraw.§\x1a\t§(_loc12_,_loc10_,param3);
               break;
            case 2:
               if(false)
               {
                  return;
               }
               _loc13_ = param1 as b2EdgeShape;
               m_debugDraw.§\x1a\f§(b2Math.MulX(param2,_loc13_.§\x11\x1b§()),b2Math.MulX(param2,_loc13_.§\x11\x1a§()),param3);
         }
      }
   }
}


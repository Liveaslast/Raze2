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
   
   public class §\x1e\x10§
   {
      
      private var m_registers:Array;
      
      private var m_allocator:*;
      
      public function §\x1e\x10§(param1:*)
      {
         super();
         m_allocator = param1;
         b2internal::§\x10\x1c§();
      }
      
      b2internal function §\n§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         m_registers[param3][param4].createFcn = param1;
         m_registers[param3][param4].destroyFcn = param2;
         §§push(m_registers[param3]);
         §§push(param4);
         if(false)
         {
            return;
         }
         §§pop()[§§pop()].primary = true;
         if(param3 != param4)
         {
            m_registers[param4][param3].createFcn = param1;
            §§push(m_registers);
            §§push(param4);
            if(false)
            {
               throw true;
            }
            §§pop()[§§pop()][param3].destroyFcn = param2;
            §§push(m_registers[param4][param3]);
            if(false)
            {
               return;
            }
            §§pop().primary = false;
         }
      }
      
      b2internal function §\x10\x1c§() : void
      {
         var _loc2_:int = 0;
         m_registers = new Array(b2Shape.e_shapeTypeCount);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.e_shapeTypeCount)
         {
            m_registers[_loc1_] = new Array(b2Shape.e_shapeTypeCount);
            _loc2_ = 0;
            if(false)
            {
               return;
            }
            while(_loc2_ < b2Shape.e_shapeTypeCount)
            {
               m_registers[_loc1_][_loc2_] = new §\x1e\x0b§();
               _loc2_++;
            }
            _loc1_++;
         }
         §§push(§§findproperty(b2internal::§\n§));
         §§push(b2CircleContact.Create);
         §§push(b2CircleContact);
         if(false)
         {
            return;
         }
         §§pop().b2internal::§\n§(§§pop(),§§pop().Destroy,b2Shape.e_circleShape,b2Shape.e_circleShape);
         §\n§(b2PolyAndCircleContact.Create,b2PolyAndCircleContact.Destroy,b2Shape.e_polygonShape,b2Shape.e_circleShape);
         §\n§(b2PolygonContact.Create,b2PolygonContact.Destroy,b2Shape.e_polygonShape,b2Shape.e_polygonShape);
         §\n§(b2EdgeAndCircleContact.Create,b2EdgeAndCircleContact.Destroy,b2Shape.e_edgeShape,b2Shape.e_circleShape);
         §\n§(b2PolyAndEdgeContact.Create,b2PolyAndEdgeContact.Destroy,b2Shape.e_polygonShape,b2Shape.e_edgeShape);
      }
      
      public function Create(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.GetType();
         var _loc4_:int = param2.GetType();
         var _loc5_:§\x1e\x0b§ = m_registers[_loc3_][_loc4_];
         if(!_loc5_.pool)
         {
            var _loc7_:Function = _loc5_.createFcn;
            if(_loc7_ == null)
            {
               return null;
            }
            if(_loc5_.primary)
            {
               if(false)
               {
                  return;
               }
               _loc6_ = _loc7_(m_allocator);
               _loc6_.Reset(param1,param2);
               return _loc6_;
            }
            _loc6_ = _loc7_(m_allocator);
            _loc6_.Reset(param2,param1);
            return _loc6_;
         }
         _loc6_ = _loc5_.pool;
         _loc5_.pool = _loc6_.m_next;
         --_loc5_.poolCount;
         _loc6_.Reset(param1,param2);
         return _loc6_;
      }
      
      public function Destroy(param1:b2Contact) : void
      {
         if(param1.m_manifold.m_pointCount > 0)
         {
            param1.m_fixtureA.m_body.SetAwake(true);
            param1.m_fixtureB.m_body.SetAwake(true);
         }
         §§push(param1);
         if(false)
         {
            return false;
         }
         var _loc2_:int = int(§§pop().b2internal::m_fixtureA.GetType());
         var _loc3_:int = param1.m_fixtureB.GetType();
         var _loc4_:§\x1e\x0b§ = m_registers[_loc2_][_loc3_];
         var _temp_2:* = _loc4_;
         ++_loc4_.poolCount;
         param1.m_next = _loc4_.pool;
         _loc4_.pool = param1;
         §§push(_loc4_.destroyFcn);
         if(false)
         {
            return;
         }
         var _loc5_:Function = §§pop();
         _loc5_(param1,m_allocator);
      }
   }
}

§§push(§§findproperty(§\x1e\x10§));
§§push(Object);
if(false)
{
   return;
}


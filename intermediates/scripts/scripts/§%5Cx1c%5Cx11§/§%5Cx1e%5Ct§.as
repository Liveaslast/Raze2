package §\x1c\x11§
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2MouseJointDef;
   import §\x1c\x10§.b2PrismaticJointDef;
   import §\x1c\x10§.b2PulleyJointDef;
   import §\x1c\x10§.b2RevoluteJointDef;
   import §\x1c\x10§.b2WeldJointDef;
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
   
   public class §\x1e\t§
   {
      
      b2internal var m_next:§\x1e\t§;
      
      b2internal var m_prev:§\x1e\t§;
      
      protected var m_bodyList:§\x1e\b§;
      
      protected var m_bodyCount:int;
      
      b2internal var m_world:b2World;
      
      public function §\x1e\t§()
      {
         super();
      }
      
      public function §\t\x12§(param1:§\x1d\x06§) : void
      {
      }
      
      public function §\x1a\x11§(param1:b2DebugDraw) : void
      {
      }
      
      public function §\x18§(param1:b2Body) : void
      {
         var _loc2_:§\x1e\b§ = new §\x1e\b§();
         _loc2_.controller = this;
         _loc2_.body = param1;
         _loc2_.nextBody = m_bodyList;
         _loc2_.prevBody = null;
         m_bodyList = _loc2_;
         if(_loc2_.nextBody)
         {
            _loc2_.nextBody.prevBody = _loc2_;
         }
         ++m_bodyCount;
         _loc2_.nextController = param1.m_controllerList;
         _loc2_.prevController = null;
         param1.m_controllerList = _loc2_;
         if(_loc2_.nextController)
         {
            _loc2_.nextController.prevController = _loc2_;
         }
         ++param1.m_controllerCount;
      }
      
      public function RemoveBody(param1:b2Body) : void
      {
         var _loc2_:§\x1e\b§ = param1.m_controllerList;
         while(Boolean(_loc2_) && _loc2_.controller != this)
         {
            _loc2_ = _loc2_.nextController;
         }
         if(_loc2_.prevBody)
         {
            _loc2_.prevBody.nextBody = _loc2_.nextBody;
         }
         if(_loc2_.nextBody)
         {
            _loc2_.nextBody.prevBody = _loc2_.prevBody;
         }
         §§push(_loc2_.nextController);
         if(false)
         {
            throw true;
         }
         if(§§pop())
         {
            _loc2_.nextController.prevController = _loc2_.prevController;
         }
         if(_loc2_.prevController)
         {
            _loc2_.prevController.nextController = _loc2_.nextController;
         }
         if(m_bodyList == _loc2_)
         {
            m_bodyList = _loc2_.nextBody;
         }
         if(param1.m_controllerList == _loc2_)
         {
            param1.m_controllerList = _loc2_.nextController;
         }
         var _temp_2:* = param1;
         var _loc3_:b2Body = param1;
         var _loc4_:Number = _loc3_.m_controllerCount - 1;
         _loc3_.m_controllerCount = _loc4_;
         --m_bodyCount;
         if(false)
         {
            return;
         }
      }
      
      public function §\x1c\x04§() : void
      {
         while(m_bodyList)
         {
            RemoveBody(m_bodyList.body);
         }
      }
      
      public function §\x12\x15§() : §\x1e\t§
      {
         return m_next;
      }
      
      public function §\x11\x17§() : b2World
      {
         return m_world;
      }
      
      public function §\x14\x13§() : §\x1e\b§
      {
         return m_bodyList;
      }
   }
}


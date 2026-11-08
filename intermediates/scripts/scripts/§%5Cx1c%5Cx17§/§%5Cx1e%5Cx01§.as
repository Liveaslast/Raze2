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
   
   public class §\x1e\x01§ implements §\x11\x06§
   {
      
      private var m_tree:§\x1e\x02§ = new §\x1e\x02§();
      
      private var m_proxyCount:int;
      
      private var m_moveBuffer:Array = new Array();
      
      private var m_pairBuffer:Array = new Array();
      
      private var m_pairCount:int = 0;
      
      public function §\x1e\x01§()
      {
         super();
      }
      
      public function §\x1b\n§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:§\x1d\x1d§ = m_tree.§\x1b\n§(param1,param2);
         var _temp_1:* = §§findproperty(m_proxyCount);
         ++m_proxyCount;
         §\x1c\x0f§(_loc3_);
         return _loc3_;
      }
      
      public function §\x1b\x02§(param1:*) : void
      {
         §\t\b§(param1);
         var _temp_1:* = §§findproperty(m_proxyCount);
         --m_proxyCount;
         m_tree.§\x1b\x02§(param1);
      }
      
      public function §\x0f\x0f§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         §§push(m_tree.§\x0f\x0f§(param1,param2,param3));
         if(false)
         {
            return;
         }
         var _loc4_:* = §§pop();
         if(_loc4_)
         {
            §\x1c\x0f§(param1);
         }
      }
      
      public function TestOverlap(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = m_tree.§\x14\x03§(param1);
         var _loc4_:b2AABB = m_tree.§\x14\x03§(param2);
         return _loc3_.TestOverlap(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return m_tree.GetUserData(param1);
      }
      
      public function §\x14\x03§(param1:*) : b2AABB
      {
         return m_tree.§\x14\x03§(param1);
      }
      
      public function GetProxyCount() : int
      {
         return m_proxyCount;
      }
      
      public function §\b\x1b§(param1:Function) : void
      {
         var callback:Function;
         var QueryCallback:Function;
         var userDataB:*;
         var pair:§\x1d\x1c§;
         var queryProxy:§\x1d\x1d§ = null;
         var i:int = 0;
         var fatAABB:b2AABB = null;
         var primaryPair:§\x1d\x1c§ = null;
         var userDataA:* = undefined;
         if(false)
         {
            return false;
         }
         userDataB = undefined;
         pair = null;
         callback = param1;
         m_pairCount = 0;
         for each(queryProxy in m_moveBuffer)
         {
            QueryCallback = function(param1:§\x1d\x1d§):Boolean
            {
               if(param1 != queryProxy)
               {
                  §§push(m_pairCount);
                  if(false)
                  {
                     return;
                  }
                  if(§§pop() == m_pairBuffer.length)
                  {
                     m_pairBuffer[m_pairCount] = new §\x1d\x1c§();
                  }
                  var _loc2_:§\x1d\x1c§ = m_pairBuffer[m_pairCount];
                  _loc2_.proxyA = param1 >= queryProxy ? queryProxy : param1;
                  §§push(_loc2_);
                  if(false)
                  {
                     return;
                  }
                  §§pop().proxyB = param1 < queryProxy ? queryProxy : param1;
                  var _loc3_:* = §§findproperty(m_pairCount);
                  var _loc4_:Number = _loc3_.m_pairCount + 1;
                  _loc3_.m_pairCount = _loc4_;
                  return true;
               }
               return true;
            };
            §§push(§§newactivation());
            §§push(m_tree);
            §§push(queryProxy);
            if(false)
            {
               return;
            }
            §§pop().§§slot[5] = §§pop().§\x14\x03§(§§pop());
            m_tree.Query(QueryCallback,fatAABB);
         }
         m_moveBuffer.length = 0;
         i = 0;
         while(i < m_pairCount)
         {
            primaryPair = m_pairBuffer[i];
            §§push(§§newactivation());
            §§push(m_tree.GetUserData(primaryPair.proxyA));
            if(false)
            {
               throw true;
            }
            §§pop().§§slot[7] = §§pop();
            userDataB = m_tree.GetUserData(primaryPair.proxyB);
            callback(userDataA,userDataB);
            i++;
            while(true)
            {
               if(i < m_pairCount)
               {
                  pair = m_pairBuffer[i];
                  if(pair.proxyA != primaryPair.proxyA || pair.proxyB != primaryPair.proxyB)
                  {
                     break;
                  }
                  continue;
               }
               break;
               i++;
            }
         }
      }
      
      public function Query(param1:Function, param2:b2AABB) : void
      {
         m_tree.Query(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:§\x1d\r§) : void
      {
         m_tree.RayCast(param1,param2);
      }
      
      public function Validate() : void
      {
      }
      
      public function §\r\x18§(param1:int) : void
      {
         m_tree.§\r\x18§(param1);
      }
      
      private function §\x1c\x0f§(param1:§\x1d\x1d§) : void
      {
         m_moveBuffer[m_moveBuffer.length] = param1;
      }
      
      private function §\t\b§(param1:§\x1d\x1d§) : void
      {
         var _loc2_:int = m_moveBuffer.indexOf(param1);
         m_moveBuffer.splice(_loc2_,1);
      }
      
      private function §\x1b\x19§(param1:§\x1d\x1c§, param2:§\x1d\x1c§) : int
      {
         return 0;
      }
   }
}


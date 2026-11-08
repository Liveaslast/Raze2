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
   
   public class §\x1e\x03§
   {
      
      public var m_vertices:Array;
      
      public var m_count:int;
      
      public var m_radius:Number;
      
      public function §\x1e\x03§()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         var _loc4_:int = param1.GetType();
         if(false)
         {
            return;
         }
         switch(_loc4_)
         {
            case b2Shape.e_circleShape:
               _loc2_ = param1 as b2CircleShape;
               §§push(§§findproperty(m_vertices));
               if(false)
               {
                  return false;
               }
               §§pop().m_vertices = new Array(1,true);
               m_vertices[0] = _loc2_.m_p;
               m_count = 1;
               m_radius = _loc2_.m_radius;
               break;
            case b2Shape.e_polygonShape:
               _loc3_ = param1 as b2PolygonShape;
               §§push(§§findproperty(m_vertices));
               §§push(_loc3_.m_vertices);
               if(false)
               {
                  throw true;
               }
               §§pop().m_vertices = §§pop();
               m_count = _loc3_.m_vertexCount;
               m_radius = _loc3_.m_radius;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §\x12\x04§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = m_vertices[0].x * param1.x + m_vertices[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < m_count)
         {
            _loc5_ = m_vertices[_loc4_].x * param1.x + m_vertices[_loc4_].y * param1.y;
            if(_loc5_ > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
               if(false)
               {
                  return;
               }
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §\x12\x03§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         if(false)
         {
            return;
         }
         var _loc3_:Number = m_vertices[0].x * param1.x + m_vertices[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < m_count)
         {
            _loc5_ = m_vertices[_loc4_].x * param1.x + m_vertices[_loc4_].y * param1.y;
            if(_loc5_ > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return m_vertices[_loc2_];
      }
      
      public function GetVertexCount() : int
      {
         return m_count;
      }
      
      public function §\x11\x1c§(param1:int) : b2Vec2
      {
         §§push(b2Settings);
         var _temp_1:* = 0 <= param1;
         §§push(_temp_1);
         if(_temp_1)
         {
            §§pop();
            §§push(param1);
            if(false)
            {
               return;
            }
            §§push(§§pop() < m_count);
         }
         §§pop().b2Assert(§§pop());
         return m_vertices[param1];
      }
   }
}

if(false)
{
   return false;
}


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
   import §\x1c\x15§.b2internal;
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
   
   public class §\x19\x11§
   {
      
      b2internal var _referenceEdge:int;
      
      b2internal var _incidentEdge:int;
      
      b2internal var _incidentVertex:int;
      
      b2internal var _flip:int;
      
      b2internal var _m_id:§\x1e\x0f§;
      
      public function §\x19\x11§()
      {
         super();
      }
      
      public function get referenceEdge() : int
      {
         return _referenceEdge;
      }
      
      public function set referenceEdge(param1:int) : void
      {
         _referenceEdge = param1;
         _m_id._key = _m_id._key & 0xFFFFFF00 | _referenceEdge & 0xFF;
      }
      
      public function get incidentEdge() : int
      {
         return _incidentEdge;
      }
      
      public function set incidentEdge(param1:int) : void
      {
         _incidentEdge = param1;
         _m_id._key = _m_id._key & 0xFFFF00FF | _incidentEdge << 8 & 0xFF00;
      }
      
      public function get incidentVertex() : int
      {
         return _incidentVertex;
      }
      
      public function set incidentVertex(param1:int) : void
      {
         _incidentVertex = param1;
         _m_id._key = _m_id._key & 0xFF00FFFF | _incidentVertex << 16 & 0xFF0000;
      }
      
      public function get flip() : int
      {
         return _flip;
      }
      
      public function set flip(param1:int) : void
      {
         _flip = param1;
         _m_id._key = _m_id._key & 0xFFFFFF | _flip << 24 & 0xFF000000;
      }
   }
}


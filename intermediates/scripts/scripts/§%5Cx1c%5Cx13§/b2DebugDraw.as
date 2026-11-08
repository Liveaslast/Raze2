package §\x1c\x13§
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2Joint;
   import §\x1c\x10§.b2MouseJointDef;
   import §\x1c\x10§.b2PrismaticJointDef;
   import §\x1c\x10§.b2PulleyJointDef;
   import §\x1c\x10§.b2RevoluteJointDef;
   import §\x1c\x10§.b2WeldJointDef;
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
   
   public class b2DebugDraw
   {
      
      public static var e_shapeBit:uint = 1;
      
      public static var e_jointBit:uint = 2;
      
      if(false)
      {
         return false;
      }
      
      public static var e_aabbBit:uint = 4;
      
      public static var e_pairBit:uint = 8;
      
      §§push(§§findproperty(e_centerOfMassBit));
      §§push(16);
      if(false)
      {
         return;
      }
      
      public static var e_centerOfMassBit:uint = §§pop();
      
      public static var e_controllerBit:uint = 32;
      
      private var m_drawFlags:uint;
      
      b2internal var m_sprite:Sprite;
      
      private var m_drawScale:Number = 1;
      
      private var m_lineThickness:Number = 1;
      
      private var m_alpha:Number = 1;
      
      private var m_fillAlpha:Number = 1;
      
      private var m_xformScale:Number = 1;
      
      public function b2DebugDraw()
      {
         super();
         m_drawFlags = 0;
      }
      
      public function §\f\x01§(param1:uint) : void
      {
         m_drawFlags = param1;
      }
      
      public function §\x13\x1b§() : uint
      {
         return m_drawFlags;
      }
      
      public function §\x04§(param1:uint) : void
      {
         m_drawFlags |= param1;
      }
      
      public function §\x1c\x03§(param1:uint) : void
      {
         m_drawFlags &= ~param1;
      }
      
      public function §\n\x19§(param1:Sprite) : void
      {
         m_sprite = param1;
      }
      
      public function §\x12\x05§() : Sprite
      {
         return m_sprite;
      }
      
      public function §\f\t§(param1:Number) : void
      {
         m_drawScale = param1;
      }
      
      public function §\x14\x04§() : Number
      {
         return m_drawScale;
      }
      
      public function §\x0b\x12§(param1:Number) : void
      {
         m_lineThickness = param1;
      }
      
      public function §\x13\b§() : Number
      {
         return m_lineThickness;
      }
      
      public function §\r\x03§(param1:Number) : void
      {
         m_alpha = param1;
      }
      
      public function §\x14\x19§() : Number
      {
         return m_alpha;
      }
      
      public function §\f\x04§(param1:Number) : void
      {
         m_fillAlpha = param1;
      }
      
      public function §\x14\x02§() : Number
      {
         return m_fillAlpha;
      }
      
      public function §\n\x0b§(param1:Number) : void
      {
         m_xformScale = param1;
      }
      
      public function §\x11\x13§() : Number
      {
         return m_xformScale;
      }
      
      public function §\x1a\r§(param1:Array, param2:int, param3:§\x1e\x14§) : void
      {
         m_sprite.graphics.lineStyle(m_lineThickness,param3.color,m_alpha);
         m_sprite.graphics.moveTo(param1[0].x * m_drawScale,param1[0].y * m_drawScale);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            m_sprite.graphics.lineTo(param1[_loc4_].x * m_drawScale,param1[_loc4_].y * m_drawScale);
            _loc4_++;
         }
         m_sprite.graphics.lineTo(param1[0].x * m_drawScale,param1[0].y * m_drawScale);
      }
      
      public function §\x1a\t§(param1:Array, param2:int, param3:§\x1e\x14§) : void
      {
         m_sprite.graphics.lineStyle(m_lineThickness,param3.color,m_alpha);
         §§push(m_sprite.graphics);
         §§push(param1[0].x * m_drawScale);
         if(false)
         {
            throw true;
         }
         §§pop().moveTo(§§pop(),param1[0].y * m_drawScale);
         m_sprite.graphics.beginFill(param3.color,m_fillAlpha);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            m_sprite.graphics.lineTo(param1[_loc4_].x * m_drawScale,param1[_loc4_].y * m_drawScale);
            _loc4_++;
         }
         m_sprite.graphics.lineTo(param1[0].x * m_drawScale,param1[0].y * m_drawScale);
         m_sprite.graphics.endFill();
      }
      
      public function §\x1a\x10§(param1:b2Vec2, param2:Number, param3:§\x1e\x14§) : void
      {
         m_sprite.graphics.lineStyle(m_lineThickness,param3.color,m_alpha);
         §§push(m_sprite.graphics);
         §§push(param1.x * m_drawScale);
         §§push(param1.y * m_drawScale);
         if(false)
         {
            return false;
         }
         §§pop().drawCircle(§§pop(),§§pop(),param2 * m_drawScale);
      }
      
      public function §\x1a\n§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:§\x1e\x14§) : void
      {
         m_sprite.graphics.lineStyle(m_lineThickness,param4.color,m_alpha);
         m_sprite.graphics.moveTo(0,0);
         §§push(m_sprite.graphics);
         §§push(param4);
         if(false)
         {
            return;
         }
         §§pop().beginFill(§§pop().color,m_fillAlpha);
         m_sprite.graphics.drawCircle(param1.x * m_drawScale,param1.y * m_drawScale,param2 * m_drawScale);
         m_sprite.graphics.endFill();
         §§push(m_sprite.graphics);
         §§push(param1.x * m_drawScale);
         §§push(param1);
         if(false)
         {
            return;
         }
         §§pop().moveTo(§§pop(),§§pop().y * m_drawScale);
         m_sprite.graphics.lineTo((param1.x + param3.x * param2) * m_drawScale,(param1.y + param3.y * param2) * m_drawScale);
      }
      
      public function §\x1a\f§(param1:b2Vec2, param2:b2Vec2, param3:§\x1e\x14§) : void
      {
         m_sprite.graphics.lineStyle(m_lineThickness,param3.color,m_alpha);
         m_sprite.graphics.moveTo(param1.x * m_drawScale,param1.y * m_drawScale);
         m_sprite.graphics.lineTo(param2.x * m_drawScale,param2.y * m_drawScale);
      }
      
      public function §\x1a\b§(param1:§\x1d\x04§) : void
      {
         m_sprite.graphics.lineStyle(m_lineThickness,16711680,m_alpha);
         §§push(m_sprite.graphics);
         §§push(param1);
         if(false)
         {
            return false;
         }
         §§pop().moveTo(§§pop().position.x * m_drawScale,param1.position.y * m_drawScale);
         m_sprite.graphics.lineTo((param1.position.x + m_xformScale * param1.R.col1.x) * m_drawScale,(param1.position.y + m_xformScale * param1.R.col1.y) * m_drawScale);
         §§push(m_sprite.graphics);
         if(false)
         {
            return;
         }
         §§pop().lineStyle(m_lineThickness,65280,m_alpha);
         m_sprite.graphics.moveTo(param1.position.x * m_drawScale,param1.position.y * m_drawScale);
         §§push(m_sprite.graphics);
         §§push((param1.position.x + m_xformScale * param1.R.col2.x) * m_drawScale);
         §§push(param1.position.y);
         §§push(m_xformScale * param1.R.col2.y);
         if(false)
         {
            return;
         }
         §§pop().lineTo(§§pop(),(§§pop() + §§pop()) * m_drawScale);
      }
   }
}


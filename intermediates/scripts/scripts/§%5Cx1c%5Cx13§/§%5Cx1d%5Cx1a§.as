package §\x1c\x13§
{
   import §\x0e\r§.*;
   import §\x1c\x14§.b2Mat22;
   import §\x1c\x16§.b2Shape;
   import §\x1c\x17§.§\x1d\x05§;
   import §\x1c\x17§.§\x1d\x1d§;
   import flash.display.Sprite;
   import flash.events.HTTPStatusEvent;
   
   public class §\x1d\x1a§
   {
      
      public var shape:b2Shape;
      
      public var userData:*;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var isSensor:Boolean;
      
      public var filter:§\x1d\x1b§ = new §\x1d\x1b§();
      
      public function §\x1d\x1a§()
      {
         super();
         shape = null;
         userData = null;
         §§push(§§findproperty(friction));
         if(false)
         {
            return;
         }
         §§pop().friction = 0.2;
         restitution = 0;
         density = 0;
         filter.categoryBits = 1;
         filter.maskBits = 65535;
         filter.groupIndex = 0;
         isSensor = false;
      }
   }
}


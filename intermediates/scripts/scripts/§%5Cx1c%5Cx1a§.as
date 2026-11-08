package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.b2RevoluteJointDef;
   import §\x1c\x13§.§\x1d\x1a§;
   import §\x1c\x13§.b2Body;
   import §\x1c\x13§.b2World;
   import §\x1c\x14§.b2Vec2;
   import §\x1c\x15§.b2Settings;
   import §\x1c\x16§.b2PolygonShape;
   import §\x1c\x17§.§\x11\x06§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §\x1c\x1a§ extends Bitmap
   {
      
      public var data:BitmapData = new BitmapData(Main.WIDTH,Main.HEIGHT,true,0);
      
      private var game:Game;
      
      private var rect:Rectangle;
      
      private var useBit:BitmapData;
      
      private var usePoint:Point;
      
      public function §\x1c\x1a§(param1:Game)
      {
         if(false)
         {
            return;
         }
         super(data);
         game = param1;
         rect = new Rectangle(0,0,data.width,data.height);
      }
      
      public function EnterFrame() : void
      {
         data.fillRect(rect,0);
      }
      
      public function paint(param1:Number, param2:Number, param3:Boolean, param4:String, param5:String = "", param6:uint = 1) : void
      {
         useBit = BH.getBit(param4,param5,param6);
         usePoint = !param3 ? new Point(param1,param2) : new Point(param1 - useBit.width / 2,param2 - useBit.height / 2);
         data.copyPixels(useBit,new Rectangle(0,0,useBit.width,useBit.height),usePoint,null,null,true);
      }
      
      public function destroy() : void
      {
         data.dispose();
      }
   }
}

§§push(§§findproperty(§\x1c\x1a§));
§§push(§§newclass(§\x1c\x1a§,Bitmap));
if(false)
{
   throw true;
}


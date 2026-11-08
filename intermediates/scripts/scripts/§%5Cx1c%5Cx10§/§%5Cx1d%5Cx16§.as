package §\x1c\x10§
{
   import §\x1c\x14§.b2Vec2;
   import §\x1c\x16§.b2PolygonShape;
   import §\x1c\x17§.b2Manifold;
   import flash.display.Sprite;
   import flash.net.SharedObject;
   
   public class §\x1d\x16§
   {
      
      public var linearA:b2Vec2 = new b2Vec2();
      
      public var angularA:Number;
      
      public var linearB:b2Vec2 = new b2Vec2();
      
      public var angularB:Number;
      
      public function §\x1d\x16§()
      {
         super();
      }
      
      public function SetZero() : void
      {
         linearA.SetZero();
         angularA = 0;
         linearB.SetZero();
         angularB = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         linearA.SetV(param1);
         angularA = param2;
         linearB.SetV(param3);
         angularB = param4;
      }
      
      public function §\x1b\x17§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return linearA.x * param1.x + linearA.y * param1.y + angularA * param2 + (linearB.x * param3.x + linearB.y * param3.y) + angularB * param4;
      }
   }
}


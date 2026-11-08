package §\x1c\x17§
{
   import §\x1c\x14§.b2Vec2;
   
   public class §\x1d\r§
   {
      
      public var p1:b2Vec2 = new b2Vec2();
      
      public var p2:b2Vec2 = new b2Vec2();
      
      public var maxFraction:Number;
      
      public function §\x1d\r§(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         super();
         if(param1)
         {
            this.p1.SetV(param1);
         }
         if(param2)
         {
            this.p2.SetV(param2);
         }
         this.maxFraction = param3;
      }
   }
}


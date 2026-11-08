package §\x1c\x14§
{
   import §\x1c\x13§.b2DebugDraw;
   
   public class §\x1d\x04§
   {
      
      public var position:b2Vec2 = new b2Vec2();
      
      public var R:b2Mat22 = new b2Mat22();
      
      public function §\x1d\x04§(param1:b2Vec2 = null, param2:b2Mat22 = null)
      {
         super();
         if(param1)
         {
            position.SetV(param1);
            R.§\x0b\x10§(param2);
         }
      }
      
      public function §\x10\x1d§(param1:b2Vec2, param2:b2Mat22) : void
      {
         position.SetV(param1);
         R.§\x0b\x10§(param2);
      }
      
      public function SetIdentity() : void
      {
         position.SetZero();
         R.SetIdentity();
      }
      
      public function Set(param1:§\x1d\x04§) : void
      {
         position.SetV(param1.position);
         R.§\x0b\x10§(param1.R);
      }
      
      public function §\x14\x18§() : Number
      {
         §§push(Math);
         §§push(R.col1.y);
         §§push(R.col1);
         if(false)
         {
            return;
         }
         return §§pop().atan2(§§pop(),§§pop().x);
      }
   }
}


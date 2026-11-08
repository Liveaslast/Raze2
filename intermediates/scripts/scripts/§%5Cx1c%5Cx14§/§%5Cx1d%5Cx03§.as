package §\x1c\x14§
{
   import §\x0e\r§.*;
   import §\x1c\x13§.§\x1e\x17§;
   import §\x1c\x17§.§\x1d\t§;
   import §\x1c\x17§.§\x1d\x1c§;
   
   public class §\x1d\x03§
   {
      
      public var x:Number;
      
      public var y:Number;
      
      public var z:Number;
      
      public function §\x1d\x03§(param1:Number = 0, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         if(false)
         {
            return false;
         }
         this.z = param3;
      }
      
      public function SetZero() : void
      {
         x = y = z = 0;
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.x = param1;
         this.y = param2;
         this.z = param3;
      }
      
      public function SetV(param1:§\x1d\x03§) : void
      {
         x = param1.x;
         y = param1.y;
         z = param1.z;
      }
      
      public function GetNegative() : §\x1d\x03§
      {
         return new §\x1d\x03§(-x,-y,-z);
      }
      
      public function §\x0f\b§() : void
      {
         x = -x;
         y = -y;
         z = -z;
      }
      
      public function Copy() : §\x1d\x03§
      {
         return new §\x1d\x03§(x,y,z);
      }
      
      public function §\x1a§(param1:§\x1d\x03§) : void
      {
         x += param1.x;
         y += param1.y;
         z += param1.z;
      }
      
      public function §\t\x11§(param1:§\x1d\x03§) : void
      {
         x -= param1.x;
         y -= param1.y;
         z -= param1.z;
      }
      
      public function Multiply(param1:Number) : void
      {
         x *= param1;
         y *= param1;
         z *= param1;
      }
   }
}


package §\x1c\x13§
{
   public class §\x1d\x1b§
   {
      
      public var categoryBits:uint = 1;
      
      public var maskBits:uint = 65535;
      
      public var groupIndex:int = 0;
      
      public function §\x1d\x1b§()
      {
         super();
      }
      
      public function Copy() : §\x1d\x1b§
      {
         var _loc1_:§\x1d\x1b§ = new §\x1d\x1b§();
         _loc1_.categoryBits = categoryBits;
         §§push(_loc1_);
         if(false)
         {
            return;
         }
         §§pop().maskBits = maskBits;
         _loc1_.groupIndex = groupIndex;
         return _loc1_;
      }
   }
}


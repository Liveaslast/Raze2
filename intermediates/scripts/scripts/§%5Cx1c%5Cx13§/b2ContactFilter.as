package §\x1c\x13§
{
   import §\x1c\x15§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var b2_defaultFilter:b2ContactFilter = new b2ContactFilter();
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §\n\b§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:§\x1d\x1b§ = param1.§\x14\x01§();
         var _loc4_:§\x1d\x1b§ = param2.§\x14\x01§();
         if(!(_loc3_.groupIndex == _loc4_.groupIndex && _loc3_.groupIndex != 0))
         {
            return (_loc3_.maskBits & _loc4_.categoryBits) != 0 && (_loc3_.categoryBits & _loc4_.maskBits) != 0;
         }
         return _loc3_.groupIndex > 0;
      }
      
      public function §\r\x1b§(param1:*, param2:b2Fixture) : Boolean
      {
         if(param1)
         {
            return §\n\b§(param1 as b2Fixture,param2);
         }
         return true;
      }
   }
}


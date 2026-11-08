package §\x1c\x17§
{
   import §\x1c\x15§.b2internal;
   
   use namespace b2internal;
   
   public class §\x1e\x0f§
   {
      
      public var features:§\x19\x11§ = new §\x19\x11§();
      
      b2internal var _key:uint;
      
      public function §\x1e\x0f§()
      {
         super();
         features._m_id = this;
      }
      
      public function Set(param1:§\x1e\x0f§) : void
      {
         key = param1._key;
      }
      
      public function Copy() : §\x1e\x0f§
      {
         var _loc1_:§\x1e\x0f§ = new §\x1e\x0f§();
         _loc1_.key = key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return _key;
      }
      
      public function set key(param1:uint) : void
      {
         _key = param1;
         §§push(features);
         if(false)
         {
            return;
         }
         §§pop().b2internal::_referenceEdge = _key & 0xFF;
         §§push(features);
         §§push(_key);
         §§push(65280);
         if(false)
         {
            return;
         }
         §§pop().b2internal::_incidentEdge = (§§pop() & §§pop()) >> 8 & 0xFF;
         features._incidentVertex = (_key & 0xFF0000) >> 16 & 0xFF;
         features._flip = (_key & 0xFF000000) >> 24 & 0xFF;
      }
   }
}

§§push(§§findproperty(§\x1e\x0f§));
§§push(Object);
if(false)
{
   return;
}


package §\x1c\x12§
{
   import §\x1c\x13§.b2Body;
   import §\x1c\x13§.b2Fixture;
   import §\x1c\x14§.§\x1d\x04§;
   import §\x1c\x15§.b2internal;
   import §\x1c\x16§.b2CircleShape;
   import §\x1c\x16§.b2EdgeShape;
   import §\x1c\x17§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function Create(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function Destroy(param1:b2Contact, param2:*) : void
      {
      }
      
      public function Reset(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.b2internal::Reset(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = m_fixtureA.§\x14\x15§();
         §§push(m_fixtureB.§\x14\x15§());
         if(false)
         {
            return;
         }
         var _loc2_:* = §§pop();
         §§push(§§findproperty(§\x1e\x16§));
         §§push(m_manifold);
         §§push(m_fixtureA.§\x12\b§() as b2EdgeShape);
         if(false)
         {
            throw true;
         }
         §§pop().§\x1e\x16§(§§pop(),§§pop(),_loc1_.m_xf,m_fixtureB.§\x12\b§() as b2CircleShape,_loc2_.b2internal::m_xf);
      }
      
      private function §\x1e\x16§(param1:b2Manifold, param2:b2EdgeShape, param3:§\x1d\x04§, param4:b2CircleShape, param5:§\x1d\x04§) : void
      {
      }
   }
}

§§push(§§findproperty(b2EdgeAndCircleContact));
§§push(b2Contact);
if(false)
{
   return;
}


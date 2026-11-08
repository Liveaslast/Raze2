package §\x1c\x12§
{
   import §\x1c\x13§.b2Body;
   import §\x1c\x13§.b2Fixture;
   import §\x1c\x15§.b2internal;
   import §\x1c\x16§.b2CircleShape;
   import §\x1c\x17§.b2Collision;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function Create(param1:*) : b2Contact
      {
         return new b2CircleContact();
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
         var _loc2_:b2Body = m_fixtureB.§\x14\x15§();
         §§push(b2Collision);
         §§push(m_manifold);
         §§push(m_fixtureA.§\x12\b§() as b2CircleShape);
         §§push(_loc1_.m_xf);
         §§push(m_fixtureB);
         if(false)
         {
            return;
         }
         §§pop().CollideCircles(§§pop(),§§pop(),§§pop(),§§pop().§\x12\b§() as b2CircleShape,_loc2_.m_xf);
      }
   }
}


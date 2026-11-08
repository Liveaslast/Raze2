package §\x1c\x10§
{
   import §\x1c\x13§.b2Body;
   import §\x1c\x15§.b2internal;
   
   use namespace b2internal;
   
   public class §\x1d\x15§
   {
      
      public var type:int;
      
      public var userData:*;
      
      public var bodyA:b2Body;
      
      public var bodyB:b2Body;
      
      public var collideConnected:Boolean;
      
      public function §\x1d\x15§()
      {
         super();
         type = b2Joint.e_unknownJoint;
         §§push(§§findproperty(userData));
         §§push(null);
         if(false)
         {
            return;
         }
         §§pop().userData = §§pop();
         bodyA = null;
         bodyB = null;
         collideConnected = false;
      }
   }
}


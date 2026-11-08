package §\x1c\x10§
{
   import §\x1c\x13§.b2Body;
   import §\x1c\x13§.b2World;
   import §\x1c\x14§.b2Vec2;
   import §\x1c\x15§.b2internal;
   import flash.net.SharedObject;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends §\x1d\x15§
   {
      
      public var localAnchorA:b2Vec2 = new b2Vec2();
      
      public var localAnchorB:b2Vec2 = new b2Vec2();
      
      public var maxForce:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         super();
         type = b2Joint.e_frictionJoint;
         maxForce = 0;
         maxTorque = 0;
      }
      
      public function §\x10\x1d§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         bodyA = param1;
         bodyB = param2;
         localAnchorA.SetV(bodyA.§\x13\x06§(param3));
         localAnchorB.SetV(bodyB.§\x13\x06§(param3));
      }
   }
}


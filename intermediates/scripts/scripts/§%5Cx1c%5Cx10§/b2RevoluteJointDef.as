package §\x1c\x10§
{
   import §\x1c\x13§.b2Body;
   import §\x1c\x13§.b2DebugDraw;
   import §\x1c\x13§.b2World;
   import §\x1c\x14§.b2Vec2;
   import §\x1c\x15§.b2internal;
   import §\x1c\x17§.§\x1d\x01§;
   import §\x1c\x17§.§\x1d\x1c§;
   import flash.media.SoundTransform;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends §\x1d\x15§
   {
      
      public var localAnchorA:b2Vec2 = new b2Vec2();
      
      public var localAnchorB:b2Vec2 = new b2Vec2();
      
      public var referenceAngle:Number;
      
      public var enableLimit:Boolean;
      
      public var lowerAngle:Number;
      
      public var upperAngle:Number;
      
      public var enableMotor:Boolean;
      
      public var motorSpeed:Number;
      
      public var maxMotorTorque:Number;
      
      public function b2RevoluteJointDef()
      {
         super();
         type = b2Joint.e_revoluteJoint;
         localAnchorA.Set(0,0);
         localAnchorB.Set(0,0);
         referenceAngle = 0;
         lowerAngle = 0;
         upperAngle = 0;
         maxMotorTorque = 0;
         motorSpeed = 0;
         enableLimit = false;
         enableMotor = false;
      }
      
      public function §\x10\x1d§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         bodyA = param1;
         bodyB = param2;
         localAnchorA = bodyA.§\x13\x06§(param3);
         §§push(§§findproperty(localAnchorB));
         §§push(bodyB);
         if(false)
         {
            return;
         }
         §§pop().localAnchorB = §§pop().§\x13\x06§(param3);
         referenceAngle = bodyB.§\x14\x18§() - bodyA.§\x14\x18§();
      }
   }
}


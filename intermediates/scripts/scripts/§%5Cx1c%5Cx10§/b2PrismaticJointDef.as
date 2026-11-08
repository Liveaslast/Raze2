package §\x1c\x10§
{
   import §\x1c\x13§.b2Body;
   import §\x1c\x14§.b2Vec2;
   import §\x1c\x15§.b2internal;
   import flash.display.BitmapData;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends §\x1d\x15§
   {
      
      public var localAnchorA:b2Vec2 = new b2Vec2();
      
      public var localAnchorB:b2Vec2 = new b2Vec2();
      
      public var localAxisA:b2Vec2 = new b2Vec2();
      
      public var referenceAngle:Number;
      
      public var enableLimit:Boolean;
      
      public var lowerTranslation:Number;
      
      public var upperTranslation:Number;
      
      public var enableMotor:Boolean;
      
      public var maxMotorForce:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         super();
         type = b2Joint.e_prismaticJoint;
         localAxisA.Set(1,0);
         referenceAngle = 0;
         enableLimit = false;
         lowerTranslation = 0;
         upperTranslation = 0;
         if(false)
         {
            throw true;
         }
         enableMotor = false;
         maxMotorForce = 0;
         if(false)
         {
            return;
         }
         motorSpeed = 0;
      }
      
      public function §\x10\x1d§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         bodyA = param1;
         bodyB = param2;
         localAnchorA = bodyA.§\x13\x06§(param3);
         localAnchorB = bodyB.§\x13\x06§(param3);
         localAxisA = bodyA.§\x13\x04§(param4);
         referenceAngle = bodyB.§\x14\x18§() - bodyA.§\x14\x18§();
      }
   }
}


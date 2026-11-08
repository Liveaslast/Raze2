package §\x1c\x10§
{
   import §\x1c\x13§.§\x1e\x17§;
   import §\x1c\x13§.b2Body;
   import §\x1c\x14§.b2Mat22;
   import §\x1c\x14§.b2Vec2;
   import §\x1c\x15§.b2internal;
   import §\x1c\x17§.§\x1d\x05§;
   import §\x1c\x17§.§\x1d\x1d§;
   import flash.display.Sprite;
   import flash.events.HTTPStatusEvent;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends §\x1d\x15§
   {
      
      public var localAnchorA:b2Vec2 = new b2Vec2();
      
      public var localAnchorB:b2Vec2 = new b2Vec2();
      
      public var referenceAngle:Number;
      
      public function b2WeldJointDef()
      {
         super();
         type = b2Joint.e_weldJoint;
         referenceAngle = 0;
      }
      
      public function §\x10\x1d§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         bodyA = param1;
         bodyB = param2;
         localAnchorA.SetV(bodyA.§\x13\x06§(param3));
         localAnchorB.SetV(bodyB.§\x13\x06§(param3));
         referenceAngle = bodyB.§\x14\x18§() - bodyA.§\x14\x18§();
      }
   }
}

§§push(§§findproperty(b2WeldJointDef));
§§push(§§newclass(b2WeldJointDef,§\x1d\x15§));
if(false)
{
   return;
}


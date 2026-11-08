package §\x1c\x10§
{
   import §\x1c\x14§.b2Vec2;
   import §\x1c\x15§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends §\x1d\x15§
   {
      
      public var target:b2Vec2 = new b2Vec2();
      
      public var maxForce:Number;
      
      public var frequencyHz:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         super();
         type = b2Joint.e_mouseJoint;
         maxForce = 0;
         frequencyHz = 5;
         dampingRatio = 0.7;
      }
   }
}


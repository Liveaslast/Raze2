package §\x1c\x10§
{
   import §\x1c\x15§.b2internal;
   import flash.events.KeyboardEvent;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends §\x1d\x15§
   {
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var ratio:Number;
      
      public function b2GearJointDef()
      {
         super();
         type = b2Joint.e_gearJoint;
         joint1 = null;
         joint2 = null;
         ratio = 1;
      }
   }
}


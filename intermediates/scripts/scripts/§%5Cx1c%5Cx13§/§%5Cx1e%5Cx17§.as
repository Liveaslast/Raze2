package §\x1c\x13§
{
   import §\x0e\r§.*;
   import §\x1c\x14§.b2Vec2;
   import §\x1c\x17§.§\x1d\x1c§;
   
   public class §\x1e\x17§
   {
      
      public var type:uint;
      
      public var position:b2Vec2 = new b2Vec2();
      
      public var angle:Number;
      
      public var linearVelocity:b2Vec2;
      
      public var angularVelocity:Number;
      
      public var linearDamping:Number;
      
      public var angularDamping:Number;
      
      public var allowSleep:Boolean;
      
      public var awake:Boolean;
      
      public var fixedRotation:Boolean;
      
      public var bullet:Boolean;
      
      public var active:Boolean;
      
      public var userData:*;
      
      public var inertiaScale:Number;
      
      public function §\x1e\x17§()
      {
         §§push(§§findproperty(linearVelocity));
         §§push(new b2Vec2());
         if(false)
         {
            return;
         }
         §§pop().linearVelocity = §§pop();
         super();
         userData = null;
         position.Set(0,0);
         angle = 0;
         linearVelocity.Set(0,0);
         angularVelocity = 0;
         linearDamping = 0;
         angularDamping = 0;
         allowSleep = true;
         awake = true;
         fixedRotation = false;
         bullet = false;
         type = b2Body.b2_staticBody;
         active = true;
         inertiaScale = 1;
      }
   }
}


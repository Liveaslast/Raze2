package §\x1c\x13§
{
   import §\x0e\r§.Link;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §\x1d\x06§
   {
      
      public var dt:Number;
      
      public var inv_dt:Number;
      
      public var dtRatio:Number;
      
      public var velocityIterations:int;
      
      public var positionIterations:int;
      
      public var warmStarting:Boolean;
      
      public function §\x1d\x06§()
      {
         super();
      }
      
      public function Set(param1:§\x1d\x06§) : void
      {
         dt = param1.dt;
         inv_dt = param1.inv_dt;
         positionIterations = param1.positionIterations;
         velocityIterations = param1.velocityIterations;
         warmStarting = param1.warmStarting;
      }
   }
}


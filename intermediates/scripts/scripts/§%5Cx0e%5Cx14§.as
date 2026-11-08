package
{
   import §\x0e\r§.*;
   import §\x1c\x13§.§\x1e\x17§;
   import §\x1c\x13§.b2DebugDraw;
   import §\x1c\x14§.b2Vec2;
   import §\x1c\x17§.§\x1d\x1c§;
   import flash.text.TextField;
   
   public class §\x0e\x14§
   {
      
      public var x:Number;
      
      public var y:Number;
      
      public var ymov:Number;
      
      public var ymax:Number;
      
      public var yspd:Number;
      
      public var col:uint;
      
      public function §\x0e\x14§(param1:Number, param2:Number, param3:uint)
      {
         super();
         x = param1;
         y = param2;
         col = param3;
         §§push(§§findproperty(ymov));
         §§push(0);
         if(false)
         {
            return false;
         }
         §§pop().ymov = §§pop();
         ymax = UT.rand(5,30);
         yspd = UT.rand(2,7);
      }
   }
}


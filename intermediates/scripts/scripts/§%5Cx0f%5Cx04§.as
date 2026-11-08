package
{
   import §\x1c\x10§.b2WeldJointDef;
   import §\x1c\x12§.§\x1e\x13§;
   import §\x1c\x13§.*;
   import §\x1c\x14§.*;
   import §\x1c\x16§.*;
   import §\x1c\x17§.*;
   import flash.display.Sprite;
   import flash.net.SharedObject;
   
   public class §\x0f\x04§
   {
      
      public var dist:Number;
      
      public var nodes:uint;
      
      public var path:String;
      
      public function §\x0f\x04§(param1:*, param2:Object)
      {
         super();
         path = param1;
         nodes = path.length;
         dist = 0;
         var _loc3_:uint = 0;
         while(_loc3_ < nodes - 1)
         {
            dist += UT.getDist(param2[path.charAt(_loc3_)].x,param2[path.charAt(_loc3_)].y,param2[path.charAt(_loc3_ + 1)].x,param2[path.charAt(_loc3_ + 1)].y);
            _loc3_++;
         }
      }
   }
}


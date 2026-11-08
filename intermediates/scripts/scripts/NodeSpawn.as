package
{
   import §\x0e\r§.*;
   import §\x1c\x17§.§\x11\x06§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol573")]
   public class NodeSpawn extends Sprite
   {
      
      public var txt_id:TextField;
      
      public var id:String;
      
      public var team:uint;
      
      public var waypoint:NodeWaypoint;
      
      public var initialSpawned:Boolean;
      
      public function NodeSpawn()
      {
         super();
         var _loc1_:Array = name.split("_");
         id = _loc1_[0];
         if(!_loc1_.length)
         {
            team = 0;
         }
         else
         {
            §§push(§§findproperty(team));
            §§push(_loc1_);
            §§push(1);
            if(false)
            {
               return;
            }
            §§pop().team = §§pop()[§§pop()];
         }
         txt_id.text = id.toUpperCase();
         visible = SD.debug;
      }
      
      public function setWaypoint(param1:NodeWaypoint) : void
      {
         waypoint = param1;
      }
   }
}


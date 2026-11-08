package
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1850")]
   public class Render extends Sprite
   {
      
      public var txt_load2:TextField;
      
      public var txt_info:TextField;
      
      public var txt_load1:TextField;
      
      public var bar1:MovieClip;
      
      public var mc_sponsor:MovieClip;
      
      public var bar2:MovieClip;
      
      private var obarWidth:Number;
      
      private var infoAr:Array;
      
      private var curInfo:String = "";
      
      private var infoNum:uint = 1;
      
      public function Render(param1:Main, param2:Object)
      {
         super();
         obarWidth = bar1.width;
         bar1.width = 0;
         bar2.width = 0;
         txt_info.text = "";
         infoAr = [];
         var _loc3_:uint = 0;
         while(_loc3_ < 15)
         {
            infoAr.push("\n");
            _loc3_++;
         }
         mc_sponsor.buttonMode = true;
      }
      
      public function setBar(param1:Number, param2:Number) : void
      {
         §§push(bar1);
         §§push(bar2);
         var _temp_1:* = param1 / param2 * obarWidth;
         §§push(_temp_1);
         §§push(_temp_1);
         if(false)
         {
            return;
         }
         var _loc3_:* = §§pop();
         §§pop().width = §§pop();
         §§pop().width = _loc3_;
      }
      
      public function addText(param1:String) : void
      {
      }
      
      public function EnterFrame() : void
      {
      }
      
      public function MouseDown() : void
      {
         if(mc_sponsor.hitTestPoint(mouseX,mouseY,false))
         {
            AGI.urlSponsor();
         }
      }
      
      public function MouseUp() : void
      {
      }
      
      public function KeyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function KeyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function flashActivate() : void
      {
      }
      
      public function flashDeactivate() : void
      {
      }
   }
}


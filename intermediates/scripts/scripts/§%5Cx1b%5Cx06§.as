package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x14§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1426")]
   public dynamic class §\x1b\x06§ extends MovieClip
   {
      
      public var iBar:MovieClip;
      
      public var tf:TextField;
      
      public var time:Number;
      
      public var frameTime:Number;
      
      public var prevFrameTime:Number;
      
      public var secondTime:Number;
      
      public var prevSecondTime:Number;
      
      public var frames:Number;
      
      public var fps:String;
      
      public function §\x1b\x06§()
      {
         super();
         §§push(§§findproperty(addFrameScript));
         §§push(0);
         §§push(§\x19\b§);
         §§push(1);
         if(false)
         {
            return false;
         }
         §§pop().addFrameScript(§§pop(),§§pop(),§§pop(),§\x18\x03§);
      }
      
      public function §\x0f\x02§(param1:Event) : void
      {
         time = getTimer();
         frameTime = time - prevFrameTime;
         secondTime = time - prevSecondTime;
         §§push(secondTime);
         §§push(1000);
         if(false)
         {
            return;
         }
         if(§§pop() < §§pop())
         {
            var _temp_1:* = §§findproperty(frames);
            ++frames;
         }
         else
         {
            fps = frames.toString();
            frames = 0;
            prevSecondTime = time;
         }
         prevFrameTime = time;
         tf.text = fps + " FPS / " + frameTime + " MS";
         §§push(iBar);
         §§push(iBar.scaleX);
         §§push(iBar.scaleX - frameTime / 10);
         if(false)
         {
            return;
         }
         §§pop().scaleX = §§pop() - §§pop() / 5;
      }
      
      internal function §\x19\b§() : *
      {
         prevFrameTime = getTimer();
         prevSecondTime = getTimer();
         frames = 0;
         fps = "...";
      }
      
      internal function §\x18\x03§() : *
      {
         stop();
         this.addEventListener(Event.ENTER_FRAME,§\x0f\x02§);
      }
   }
}


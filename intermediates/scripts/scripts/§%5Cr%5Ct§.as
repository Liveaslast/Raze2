package
{
   import §\x1c\x17§.§\x1d\t§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol464")]
   public class §\r\t§ extends MovieClip
   {
      
      public var mc_skull:MovieClip;
      
      public var txt_deaths:TextField;
      
      public var txt_score:TextField;
      
      public var txt_kills:TextField;
      
      public var txt_pos:TextField;
      
      public var txt_name:TextField;
      
      public function §\r\t§(param1:Boolean, param2:Number, param3:String, param4:*, param5:*, param6:*, param7:*, param8:*, param9:String = "无\x1f")
      {
         super();
         if(!param1 && param3.charAt(0) != "p")
         {
            alpha = 0.7;
         }
         y = param2;
         gotoAndStop(param3);
         txt_pos.text = param4 + "";
         txt_name.text = param5 + "";
         txt_score.text = param6 + "";
         txt_kills.text = param7 + "";
         txt_deaths.text = param8 + "";
         mc_skull.gotoAndStop(param9);
      }
   }
}


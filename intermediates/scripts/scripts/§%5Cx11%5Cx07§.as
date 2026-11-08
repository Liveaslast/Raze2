package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1447")]
   public class §\x11\x07§ extends MovieClip
   {
      
      public var highlight:MovieClip;
      
      public var bar_ammo:MovieClip;
      
      public var txt_num:TextField;
      
      public var weapon:MovieClip;
      
      public var hud:Hud;
      
      public function §\x11\x07§()
      {
         super();
         §§push(§§findproperty(addFrameScript));
         §§push(5);
         if(false)
         {
            return false;
         }
         §§pop().addFrameScript(§§pop(),§\x15\x1a§);
         stop();
         weapon.stop();
      }
      
      internal function §\x15\x1a§() : *
      {
         stop();
         §§push(Hud(parent));
         if(false)
         {
            return false;
         }
         §§pop().setMiniAmmoBars();
      }
   }
}

§§push(§§findproperty(§\x11\x07§));
§§push(§§newclass(§\x11\x07§,MovieClip));
if(false)
{
   return;
}


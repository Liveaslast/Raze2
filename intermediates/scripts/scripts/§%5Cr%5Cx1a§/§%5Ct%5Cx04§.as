package §\r\x1a§
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol895")]
   public dynamic class §\t\x04§ extends MovieClip
   {
      
      public var body:PhysBody;
      
      public var legup2:PhysUpperLeg;
      
      public var foot1:PhysFoot;
      
      public var headhold:PhysHead;
      
      public var foot2:PhysFoot;
      
      public var arm1hold:MovieClip;
      
      public var leglow1:PhysLowerLeg;
      
      public var leglow2:PhysLowerLeg;
      
      public var legup1:PhysUpperLeg;
      
      public function §\t\x04§()
      {
         super();
         §§push(§§findproperty(addFrameScript));
         §§push(19);
         §§push(§\x18\x02§);
         §§push(40);
         §§push(§\x16\x11§);
         §§push(144);
         if(false)
         {
            throw true;
         }
         §§pop().addFrameScript(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§\x18\x15§,178,§\x18\r§);
      }
      
      internal function §\x18\x02§() : *
      {
         gotoAndPlay("idle");
      }
      
      internal function §\x16\x11§() : *
      {
         gotoAndPlay("run");
      }
      
      internal function §\x18\x15§() : *
      {
         gotoAndPlay("runback");
      }
      
      internal function §\x18\r§() : *
      {
         gotoAndPlay("duck");
      }
   }
}

§§push(this);
§§push(§§newclass(§\t\x04§,MovieClip));
if(false)
{
   return;
}


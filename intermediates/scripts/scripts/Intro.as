package
{
   import §\x1c\x14§.b2Mat22;
   import §\x1c\x16§.b2PolygonShape;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1846")]
   public class Intro extends MovieClip
   {
      
      public var mc_hitbox:MovieClip;
      
      private var main:Main;
      
      private var butType:String;
      
      public function Intro(param1:Main, param2:Object)
      {
         super();
         addFrameScript(0,§\x19\b§,33,§\x16\x14§,230,§\x17\x1a§,236,§\x17\x19§,380,§\x16\x17§,392,§\x16\x14§);
         main = param1;
      }
      
      public function EnterFrame() : void
      {
      }
      
      public function MouseDown() : void
      {
         if(Boolean(butType) && mc_hitbox.hitTestPoint(mouseX,mouseY,false))
         {
            if(butType == "sponsor")
            {
               AGI.urlSponsor();
            }
            else if(butType == "developer")
            {
               AGI.urlDeveloper();
            }
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
      
      public function §\x1a\x16§() : void
      {
         stop();
         main.§\t\x19§(Menu,{"noMusic":true});
         trace("Start menu class");
      }
      
      public function §\f\x13§(param1:String) : void
      {
         butType = param1;
         mc_hitbox.buttonMode = !!butType;
      }
      
      internal function §\x19\b§() : *
      {
         SH.playSound(S_CamelJizz,true);
      }
      
      internal function §\x16\x12§() : *
      {
         §\f\x13§("sponsor");
         SH.playMusic(M_MenuIntro);
         if(false)
         {
            throw true;
         }
      }
      
      internal function §\x17\x1a§() : *
      {
         §\f\x13§("");
      }
      
      internal function §\x17\x19§() : *
      {
         §\f\x13§("developer");
      }
      
      internal function §\x16\x17§() : *
      {
         §\f\x13§("");
      }
      
      internal function §\x16\x14§() : *
      {
         §\x1a\x16§();
      }
   }
}


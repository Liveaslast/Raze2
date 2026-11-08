package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2MouseJointDef;
   import §\x1c\x10§.b2PrismaticJointDef;
   import §\x1c\x10§.b2PulleyJointDef;
   import §\x1c\x10§.b2RevoluteJointDef;
   import §\x1c\x10§.b2WeldJointDef;
   import §\x1c\x11§.§\x1e\b§;
   import §\x1c\x11§.§\x1e\t§;
   import §\x1c\x12§.§\x1e\x11§;
   import §\x1c\x12§.§\x1e\x13§;
   import §\x1c\x12§.b2Contact;
   import §\x1c\x13§.*;
   import §\x1c\x14§.*;
   import §\x1c\x15§.§\x1e\x14§;
   import §\x1c\x15§.b2Settings;
   import §\x1c\x16§.*;
   import §\x1c\x17§.*;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.filters.GlowFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;
   import flash.system.Security;
   import flash.text.TextField;
   
   public class §\x1a\x03§
   {
      
      private var game:Game;
      
      public var remove:Boolean;
      
      private var name:String;
      
      private var sub:String;
      
      private var x:Number;
      
      private var y:Number;
      
      private var stats:Object;
      
      private var frame:uint;
      
      private var rotation:uint;
      
      public function §\x1a\x03§(param1:Game, param2:Number, param3:Number, param4:String, param5:String, param6:uint)
      {
         super();
         game = param1;
         §§push(§§findproperty(x));
         §§push(param2);
         if(false)
         {
            return;
         }
         §§pop().x = §§pop();
         y = param3;
         name = param4;
         if(false)
         {
            throw true;
         }
         sub = param5;
         stats = BH.getBitAniStats(name + 0,sub);
         rotation = UT.irand(0,stats.rotAmt - 1);
         frame = param6;
         name += rotation;
      }
      
      public function EnterFrame() : void
      {
         if(!remove)
         {
            game.bitscreen.paint(x + game.arena.x,y + game.arena.y,true,name,sub,frame);
            ++frame;
            if(frame > stats.frames)
            {
               remove = true;
            }
            return;
         }
      }
   }
}


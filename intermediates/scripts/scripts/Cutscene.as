package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x14§;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2111")]
   public class Cutscene extends MovieClip
   {
      
      public var but_next:MovieClip;
      
      public var txt_title:TextField;
      
      public var but_prev:MovieClip;
      
      private var main:Main;
      
      private var type:String;
      
      private var song:*;
      
      private var frames:Array;
      
      private var curFrame:uint = 0;
      
      public function Cutscene(param1:Main, param2:Object)
      {
         super();
         addFrameScript(21,§\x17\x1d§,40,§\x16\x11§);
         main = param1;
         txt_title.text = MatchSettings.matchName;
         type = param2.type;
         §§push(§§findproperty(song));
         §§push(MatchSettings);
         §§push(type);
         §§push("CutSong");
         if(false)
         {
            return;
         }
         §§pop().song = §§pop()[§§pop() + §§pop()];
         frames = MatchSettings[type + "CutFrames"];
         if(song)
         {
            §§push(SH);
            if(false)
            {
               throw true;
            }
            §§pop().playMusic(song);
         }
         gotoAndStop(frames[curFrame]);
         §§push(but_prev);
         §§push(but_next);
         if(false)
         {
            return;
         }
         §§pop().visible = §§pop().visible = false;
         if(false)
         {
            return;
         }
      }
      
      public function EnterFrame() : void
      {
         if(!(but_prev.currentLabel == "up" && §\x11\t§(but_prev)))
         {
            var _temp_2:* = but_prev.currentLabel == "on";
            §§push(_temp_2);
            if(_temp_2)
            {
               §§pop();
               §§push(§§findproperty(§\x11\t§));
               if(false)
               {
                  return;
               }
               §§push(!§§pop().§\x11\t§(but_prev));
            }
            if(§§pop())
            {
               but_prev.gotoAndPlay("out");
            }
         }
         else
         {
            if(but_prev.currentFrame == 1)
            {
               SH.playSound(S_Click);
            }
            but_prev.gotoAndPlay("over");
         }
         if(!(but_next.currentLabel == "up" && §\x11\t§(but_next)))
         {
            if(but_next.currentLabel == "on" && !§\x11\t§(but_next))
            {
               but_next.gotoAndPlay("out");
            }
         }
         else
         {
            if(but_next.currentFrame == 1)
            {
               SH.playSound(S_Click);
            }
            but_next.gotoAndPlay("over");
         }
      }
      
      public function MouseDown() : void
      {
         if(!(§\x11\t§(but_prev) && but_prev.txt_word.text == "Previous"))
         {
            if(!(§\x11\t§(but_next) && but_next.txt_word.text == "Next"))
            {
               §§push(§\x11\t§(but_next));
               if(false)
               {
                  return;
               }
               if(!(Boolean(§§pop()) && but_next.txt_word.text == "开 始\x1f\x1f\x1f"))
               {
                  if(§\x11\t§(but_next) && but_next.txt_word.text == "返回战役\x1f\x1f\x1f\x1f")
                  {
                     main.§\t\x19§(Menu);
                  }
               }
               else
               {
                  main.§\t\x19§(Game);
                  if(false)
                  {
                     return;
                  }
               }
            }
            else
            {
               var _loc1_:* = §§findproperty(curFrame);
               var _loc2_:Number = _loc1_.curFrame + 1;
               _loc1_.curFrame = _loc2_;
               gotoAndStop(frames[curFrame]);
               setButs();
            }
         }
         else
         {
            _loc1_ = §§findproperty(curFrame);
            _loc2_ = _loc1_.curFrame - 1;
            _loc1_.curFrame = _loc2_;
            gotoAndStop(frames[curFrame]);
            setButs();
         }
      }
      
      public function setButs() : void
      {
         if(!(curFrame == frames.length - 1 && type == "pre"))
         {
            §§push(curFrame == frames.length - 1);
            if(false)
            {
               throw true;
            }
            if(!(§§pop() && type == "post"))
            {
               if(curFrame != 0)
               {
                  but_prev.visible = true;
                  but_next.visible = true;
                  but_prev.txt_word.text = "Previous";
                  but_next.txt_word.text = "Next";
               }
               else
               {
                  §§push(but_prev);
                  §§push(false);
                  if(false)
                  {
                     return;
                  }
                  §§pop().visible = §§pop();
                  but_next.visible = true;
                  but_prev.txt_word.text = "";
                  but_next.txt_word.text = "Next";
               }
            }
            else
            {
               if(frames.length > 1)
               {
                  but_prev.visible = true;
                  but_prev.txt_word.text = "Previous";
               }
               else
               {
                  but_prev.visible = false;
                  but_prev.txt_word.text = "";
               }
               but_next.visible = true;
               if(false)
               {
                  throw true;
               }
               but_next.txt_word.text = "返回战役\x1f\x1f\x1f\x1f";
            }
         }
         else
         {
            if(frames.length <= 1)
            {
               but_prev.visible = false;
               but_prev.txt_word.text = "";
            }
            else
            {
               but_prev.visible = true;
               but_prev.txt_word.text = "Previous";
            }
            but_next.visible = true;
            but_next.txt_word.text = "开 始\x1f\x1f\x1f";
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
      
      private function §\x11\t§(param1:*) : Boolean
      {
         if(!(!param1.hitbox || !param1.visible))
         {
            §§push(param1.hitbox);
            if(false)
            {
               return;
            }
            return §§pop().hitTestPoint(mouseX,mouseY,false);
         }
         return false;
      }
      
      internal function §\x17\x1d§() : *
      {
         but_next.visible = false;
         §§push(but_prev);
         §§push(false);
         if(false)
         {
            return;
         }
         §§pop().visible = §§pop();
      }
      
      internal function §\x16\x11§() : *
      {
         but_next.visible = false;
         but_prev.visible = false;
         SH.playMusic(M_Warhead);
      }
   }
}

§§push(§§findproperty(Cutscene));
§§push(DisplayObject);
if(false)
{
   return false;
}


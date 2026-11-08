package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2Joint;
   import §\x1c\x10§.b2LineJointDef;
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
   import flash.display.Bitmap;
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
   import flash.geom.Rectangle;
   import flash.media.SoundTransform;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;
   import flash.system.Security;
   import flash.text.TextField;
   
   public class Transition extends Bitmap
   {
      
      private static var tran1:Transition;
      
      private static var tran2:Transition;
      
      private static var MC:*;
      
      public static var working:Boolean;
      
      private static var waitFunc:Object;
      
      private var bmpData:BitmapData;
      
      public var action:Object;
      
      public var spr:Sprite;
      
      public function Transition()
      {
         §§push(§§findproperty(bmpData));
         §§push(§§findproperty(BitmapData));
         §§push(Main.STAGE);
         if(false)
         {
            return;
         }
         §§pop().bmpData = new §§pop().BitmapData(§§pop().stageWidth,Main.STAGE.stageHeight,true,0);
         super(bmpData);
         visible = false;
         action = {"id":""};
      }
      
      public static function init(param1:Transition, param2:Transition) : *
      {
         tran1 = param1;
         tran2 = param2;
         waitFunc = {
            "func":null,
            "timer":-1
         };
      }
      
      public static function slideLeft(param1:*, param2:*, param3:String = "") : void
      {
         working = true;
         MC = param1;
         tran1.bmpData.draw(MC);
         tran1.action.id = "slideLeft";
         tran1.x = 0;
         tran1.y = 0;
         tran1.action.toX = -Main.STAGE.stageWidth;
         tran1.action.toY = 0;
         MC.gotoAndStop(param2);
         waitFunc.func = slideLeft2;
         waitFunc.timer = 2;
         tran1.visible = true;
         MC.visible = false;
      }
      
      private static function slideLeft2() : void
      {
         tran2.bmpData.draw(MC);
         §§push(tran2);
         if(false)
         {
            return;
         }
         §§pop().action.id = "slideLeft";
         tran2.action.mcVis = true;
         tran2.x = Main.STAGE.stageWidth;
         tran2.y = 0;
         tran2.action.toX = 0;
         tran2.action.toY = 0;
         tran2.visible = true;
      }
      
      public static function slideRight(param1:*, param2:*, param3:String = "") : void
      {
         working = true;
         MC = param1;
         tran1.bmpData.draw(MC);
         tran1.action.id = "slideRight";
         tran1.x = 0;
         tran1.y = 0;
         tran1.action.toX = Main.STAGE.stageWidth;
         tran1.action.toY = 0;
         MC.gotoAndStop(param2);
         waitFunc.func = slideRight2;
         if(false)
         {
            return;
         }
         waitFunc.timer = 2;
         tran1.visible = true;
         MC.visible = false;
      }
      
      private static function slideRight2() : void
      {
         tran2.bmpData.draw(MC);
         tran2.action.id = "slideRight";
         tran2.action.mcVis = true;
         tran2.x = -Main.STAGE.stageWidth;
         tran2.y = 0;
         tran2.action.toX = 0;
         tran2.action.toY = 0;
         tran2.visible = true;
      }
      
      public static function §\x19\x12§(param1:*, param2:*, param3:String = "") : void
      {
         working = true;
         MC = param1;
         tran1.bmpData.draw(MC);
         tran1.action.id = "fall";
         tran1.action.rot = Math.random() * 4 - 1;
         tran1.action.velY = -Math.random() * 20;
         MC.gotoAndStop(param2);
         tran1.visible = true;
      }
      
      public static function zoomIn(param1:*, param2:*, param3:String = "") : void
      {
         working = true;
         MC = param1;
         tran1.bmpData.draw(MC);
         tran1.action.id = "zoomIn";
         tran1.action.count = 4;
         tran1.action.alphCh = -0.16;
         tran1.action.mcVis = false;
         tran1.spr.scaleX = 1;
         tran1.spr.scaleY = 1;
         tran2.spr.alpha = 1;
         tran1.visible = true;
         MC.gotoAndStop(param2);
         waitFunc.func = zoomIn2;
         waitFunc.timer = 2;
         MC.visible = false;
      }
      
      private static function zoomIn2() : void
      {
         tran2.bmpData.draw(MC);
         tran2.action.id = "zoomIn";
         tran2.action.count = 0;
         tran2.action.alphCh = 0.1;
         tran2.action.mcVis = true;
         tran2.spr.scaleX = 0.5;
         tran2.spr.scaleY = 0.5;
         tran2.spr.alpha = 0;
         tran2.visible = true;
      }
      
      public static function zoomOut(param1:*, param2:*, param3:String = "") : void
      {
         working = true;
         MC = param1;
         tran1.bmpData.draw(MC);
         tran1.action.id = "zoomOut";
         tran1.action.count = 4;
         §§push(tran1.action);
         §§push(-0.16);
         if(false)
         {
            return;
         }
         §§pop().alphCh = §§pop();
         tran1.action.mcVis = false;
         tran1.spr.scaleX = 1;
         tran1.spr.scaleY = 1;
         tran2.spr.alpha = 1;
         tran1.visible = true;
         MC.gotoAndStop(param2);
         waitFunc.func = zoomOut2;
         waitFunc.timer = 2;
         MC.visible = false;
      }
      
      private static function zoomOut2() : void
      {
         tran2.bmpData.draw(MC);
         tran2.action.id = "zoomOut";
         tran2.action.count = 0;
         tran2.action.alphCh = 0.1;
         tran2.action.mcVis = true;
         tran2.spr.scaleX = 1.5;
         tran2.spr.scaleY = 1.5;
         tran2.spr.alpha = 0;
         tran2.visible = true;
      }
      
      public function destroy() : void
      {
         bmpData.dispose();
      }
      
      public function EnterFrame() : void
      {
         if(waitFunc.timer > -1)
         {
            if(waitFunc.timer == 0)
            {
               waitFunc.func();
            }
            --waitFunc.timer;
         }
         var _loc1_:* = action.id;
         switch(if("slideLeft" !== _loc1_)
         {
            §§push("slideRight");
            §§push(_loc1_);
            if(false)
            {
               return false;
            }
            else if(§§pop() !== §§pop())
            {
               switch(_loc1_)
               {
                  case "zoomIn":
                     §§push(2);
                     break;
                  case "zoomOut":
                     §§push(3);
                     break;
                  case "fall":
                     §§push(4);
                     break;
                  default:
                     §§push(5);
               }
            }
            else
            {
               §§push(1);
            }
         }
         else
         {
            §§push(0);
         })
         {
            case 0:
               §§push(§§findproperty(x));
               §§push(x + (action.toX - x) * 0.3);
               if(false)
               {
                  return;
               }
               §§pop().x = §§pop();
               x -= 5;
               if(x - action.toX < 1)
               {
                  x = action.toX;
                  §\x19\x1d§(action.mcVis);
               }
               break;
            case 1:
               §§push(§§findproperty(x));
               §§push(x);
               §§push(action.toX - x);
               if(false)
               {
                  return;
               }
               §§pop().x = §§pop() + §§pop() * 0.3;
               x += 5;
               if(x - action.toX > -1)
               {
                  x = action.toX;
                  §\x19\x1d§(action.mcVis);
               }
               break;
            case 2:
               action.count += 1;
               spr.scaleX += 0.05;
               spr.scaleY += 0.05;
               spr.alpha += action.alphCh;
               if(false)
               {
                  return;
               }
               if(action.count == 10)
               {
                  §\x19\x1d§(action.mcVis);
                  spr.scaleX = 1;
                  spr.scaleY = 1;
                  §§push(spr);
                  §§push(1);
                  if(false)
                  {
                     return false;
                  }
                  §§pop().alpha = §§pop();
               }
               break;
            case 3:
               §§push(action);
               §§push(action.count);
               if(false)
               {
                  return;
               }
               §§pop().count = §§pop() + 1;
               spr.scaleX -= 0.05;
               spr.scaleY -= 0.05;
               §§push(spr);
               §§push(spr);
               if(false)
               {
                  return false;
               }
               §§pop().alpha = §§pop().alpha + action.alphCh;
               if(action.count == 10)
               {
                  §\x19\x1d§(action.mcVis);
                  spr.scaleX = 1;
                  spr.scaleY = 1;
                  spr.alpha = 1;
               }
               break;
            case 4:
               rotation += action.rot;
               action.velY += 4;
               y += action.velY;
               if(y > Main.STAGE.stageHeight + 100)
               {
                  §\x19\x1d§();
               }
         }
      }
      
      private function §\x19\x1d§(param1:Boolean = true) : void
      {
         action.id = "";
         visible = false;
         rotation = 0;
         if(param1)
         {
            MC.visible = true;
            working = false;
         }
         bmpData.fillRect(new Rectangle(0,0,bmpData.width,bmpData.height),0);
      }
   }
}


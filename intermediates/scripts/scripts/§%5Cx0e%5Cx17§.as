package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2Joint;
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
   import flash.geom.Matrix;
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
   
   public class §\x0e\x17§ extends MovieClip
   {
      
      private var physWorld:§\x0e\x16§;
      
      private var target:§\x0e\x18§;
      
      private var data:BitmapData;
      
      private var pixels:Array;
      
      private var leavers:Array;
      
      private var vapList:Array;
      
      public function §\x0e\x17§(param1:§\x0e\x16§)
      {
         super();
         physWorld = param1;
         vapList = [];
         data = new BitmapData(100,100,true,0);
         addChild(new Bitmap(data));
         filters = [new GlowFilter(16737792,1,4,4,1)];
      }
      
      public function vaporize(param1:§\x0e\x18§) : void
      {
         vapList.push(param1);
         if(!target)
         {
            §\x1a\x12§();
         }
      }
      
      public function §\x1a\x12§() : void
      {
         var _loc3_:Matrix = null;
         var _loc4_:uint = 0;
         target = vapList.shift();
         if(SD.graphRagev)
         {
            data.fillRect(new Rectangle(0,0,100,100),0);
            x = target.rdBody.GetDefinition().userData.x - 50;
            y = target.rdBody.GetDefinition().userData.y - 50;
            var _loc1_:uint = 0;
            while(_loc1_ < target.parts.length)
            {
               _loc3_ = new Matrix();
               _loc3_.a = target.flip;
               §§push(_loc3_);
               §§push(target);
               if(false)
               {
                  return;
               }
               §§pop().rotate(§§pop().parts[_loc1_].GetDefinition().userData.rotation * Math.PI / 180);
               _loc3_.tx = 50 + (target.parts[_loc1_].GetDefinition().userData.x - target.rdBody.GetDefinition().userData.x);
               _loc3_.ty = 50 + (target.parts[_loc1_].GetDefinition().userData.y - target.rdBody.GetDefinition().userData.y);
               data.draw(target.parts[_loc1_].GetDefinition().userData,_loc3_);
               _loc1_++;
            }
            pixels = [];
            leavers = [];
            §§push(0);
            if(false)
            {
               return;
            }
            var _loc2_:* = §§pop();
            loop1:
            while(_loc2_ < 100)
            {
               _loc4_ = 0;
               while(true)
               {
                  if(_loc4_ < 100)
                  {
                     if(data.getPixel32(_loc2_,_loc4_))
                     {
                        §§push(pixels);
                        §§push(new §\x0e\x14§(_loc2_,_loc4_,data.getPixel32(_loc2_,_loc4_)));
                        if(false)
                        {
                           break;
                        }
                        §§pop().push(§§pop());
                     }
                     continue;
                  }
                  continue loop1;
                  _loc2_++;
                  _loc4_++;
               }
               return;
            }
            target.destroy();
            return;
         }
         target.destroy();
         §§push(§§findproperty(§\x1a\x15§));
         if(false)
         {
            return;
         }
         §§pop().§\x1a\x15§();
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:Array = null;
         if(target)
         {
            §§push(data);
            §§push(§§findproperty(Rectangle));
            §§push(0);
            §§push(0);
            §§push(100);
            §§push(100);
            if(false)
            {
               return false;
            }
            §§pop().fillRect(new §§pop().Rectangle(§§pop(),§§pop(),§§pop(),§§pop()),0);
            _loc1_ = 0;
            while(_loc1_ < 40 && Boolean(pixels.length))
            {
               _loc2_ = pixels.splice(UT.irand(0,pixels.length - 1),1);
               leavers.push(_loc2_[0]);
               _loc1_++;
            }
            _loc1_ = 0;
            while(_loc1_ < pixels.length)
            {
               §§push(data);
               §§push(pixels);
               §§push(_loc1_);
               if(false)
               {
                  return false;
               }
               §§push(§§pop()[§§pop()].x);
               §§push(pixels[_loc1_].y);
               §§push(pixels[_loc1_]);
               if(false)
               {
                  return;
               }
               §§pop().setPixel32(§§pop(),§§pop(),§§pop().col);
               _loc1_++;
            }
            _loc1_ = 0;
            while(_loc1_ < leavers.length)
            {
               leavers[_loc1_].ymov -= leavers[_loc1_].yspd;
               if(leavers[_loc1_].ymov >= -leavers[_loc1_].ymax)
               {
                  data.setPixel32(leavers[_loc1_].x,leavers[_loc1_].y + leavers[_loc1_].ymov,leavers[_loc1_].col);
               }
               else
               {
                  leavers.splice(_loc1_,1);
               }
               _loc1_++;
            }
            if(!pixels.length && leavers.length < 20)
            {
               §\x1a\x15§();
            }
         }
         _loc1_ = 0;
         while(_loc1_ < vapList.length)
         {
            if(!physWorld.game.onScreen(vapList[_loc1_].rdBody.GetDefinition().userData.x,vapList[_loc1_].rdBody.GetDefinition().userData.y,100))
            {
               §§push(vapList[_loc1_]);
               if(false)
               {
                  return false;
               }
               §§pop().destroy();
               vapList.splice(_loc1_,1);
               _loc1_--;
            }
            _loc1_++;
         }
      }
      
      public function §\x1a\x15§() : void
      {
         target = null;
         §§push(data);
         §§push(§§findproperty(Rectangle));
         if(false)
         {
            return false;
         }
         §§pop().fillRect(new §§pop().Rectangle(0,0,100,100),0);
         if(vapList.length)
         {
            §\x1a\x12§();
         }
      }
      
      public function destroy() : void
      {
         data.dispose();
      }
   }
}

§§push(§§findproperty(§\x0e\x17§));
§§push(§§newclass(§\x0e\x17§,MovieClip));
if(false)
{
   return;
}


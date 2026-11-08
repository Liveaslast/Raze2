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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1809")]
   public class BH extends MovieClip
   {
      
      private static var BitAr:Array;
      
      public static var BITS:Object;
      
      public var MC:MovieClip;
      
      public var complete:Boolean;
      
      private var main:Main;
      
      private var i:uint;
      
      public var rotate:int;
      
      public function BH(param1:Main)
      {
         super();
         §§push(§§findproperty(addFrameScript));
         §§push(0);
         §§push(§\x19\b§);
         §§push(1);
         §§push(§\x18\x03§);
         §§push(2);
         §§push(§\x17\t§);
         §§push(3);
         §§push(§\x16\x13§);
         §§push(4);
         §§push(§\x16\b§);
         §§push(5);
         §§push(§\x15\x1a§);
         §§push(6);
         §§push(§\x15\x14§);
         §§push(7);
         §§push(§\x15\x0f§);
         §§push(8);
         §§push(§\x15\b§);
         §§push(9);
         §§push(§\x19\x07§);
         §§push(10);
         §§push(§\x19\x03§);
         §§push(11);
         §§push(§\x18\x1c§);
         §§push(12);
         §§push(§\x18\x18§);
         §§push(13);
         §§push(§\x18\x16§);
         §§push(14);
         §§push(§\x18\x14§);
         §§push(15);
         §§push(§\x18\x13§);
         §§push(16);
         §§push(§\x18\x10§);
         §§push(17);
         §§push(§\x18\f§);
         §§push(18);
         §§push(§\x18\b§);
         §§push(19);
         §§push(§\x18\x02§);
         §§push(20);
         §§push(§\x18\x01§);
         §§push(21);
         §§push(§\x17\x1d§);
         §§push(22);
         §§push(§\x17\x1c§);
         §§push(23);
         §§push(§\x17\x17§);
         §§push(24);
         §§push(§\x17\x12§);
         if(false)
         {
            return;
         }
         §§push(25);
         §§push(§\x17\x11§);
         §§push(26);
         §§push(§\x17\x10§);
         §§push(27);
         §§push(§\x17\x0f§);
         §§push(28);
         if(false)
         {
            return;
         }
         §§push(§\x17\x0b§);
         §§push(29);
         §§push(§\x17\b§);
         §§push(30);
         §§push(§\x17\x06§);
         §§push(31);
         §§push(§\x17\x05§);
         §§push(32);
         §§push(§\x17\x04§);
         §§push(33);
         §§push(§\x17\x03§);
         §§push(34);
         §§push(§\x17\x02§);
         §§push(35);
         §§push(§\x16\x1d§);
         §§push(36);
         §§push(§\x16\x1b§);
         §§push(37);
         §§push(§\x16\x18§);
         §§push(38);
         §§push(§\x16\x15§);
         §§push(39);
         §§push(§\x16\x12§);
         §§push(40);
         §§push(§\x16\x11§);
         §§push(41);
         §§push(§\x16\x10§);
         §§push(42);
         §§push(§\x16\x0f§);
         §§push(43);
         §§push(§\x16\x0e§);
         §§push(44);
         §§push(§\x16\r§);
         §§push(45);
         §§push(§\x16\f§);
         §§push(46);
         §§push(§\x16\x0b§);
         §§push(47);
         §§push(§\x16\n§);
         §§push(48);
         §§push(§\x16\t§);
         §§push(49);
         §§push(§\x16\x07§);
         §§push(50);
         §§push(§\x16\x06§);
         §§push(51);
         §§push(§\x16\x04§);
         §§push(52);
         if(false)
         {
            throw true;
         }
         §§pop().addFrameScript(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§\x16\x03§,53,§\x16\x02§,54,§\x16\x01§,55,§\x15\x1d§,56,§\x15\x1c§,57,frame58);
         main = param1;
         BitAr = [];
         BITS = {};
         i = 1;
         complete = false;
      }
      
      public static function getBitAniStats(param1:String, param2:String) : Object
      {
         if(!BITS[param1] || !BITS[param1].sub[param2])
         {
            trace("Bit",param1,param2,"not found!");
         }
         "name"; //unpopped
         param1; //unpopped
         "sub"; //unpopped
         param2; //unpopped
         "width"; //unpopped
         BITS[param1].width; //unpopped
         "height"; //unpopped
         if(false)
         {
            return;
         }
         return null;
      }
      
      public static function getBit(param1:String, param2:String = "", param3:uint = 1) : BitmapData
      {
         var name:String = param1;
         var sub:String = param2;
         var frame:uint = param3;
         try
         {
            if(sub)
            {
               return BitAr[BITS[name].sub[sub].pos + (frame - 1)];
            }
            §§push(BitAr);
            if(false)
            {
               return;
            }
            return §§pop()[BITS[name].pos];
         }
         catch(e:Error)
         {
            §§push(e);
            §§push(BH);
            if(false)
            {
               return;
            }
            var _temp_1:* = e;
            §§push(_temp_1);
            if(false)
            {
               return;
            }
            var _temp_2:* = §§pop();
            §§pop().§§slot[1] = _temp_2;
            trace("Error: Could not find bit: " + name + ", " + sub + ", " + frame);
            return BitAr[BITS["error"].pos];
         }
      }
      
      public function §\n\x12§() : *
      {
         var _loc1_:BitmapData = null;
         var _loc2_:uint = 0;
         §§push(NaN);
         if(false)
         {
            return;
         }
         var _loc3_:* = §§pop();
         var _loc4_:uint = 0;
         var _loc5_:Object = null;
         §§push(null);
         if(false)
         {
            return false;
         }
         var _loc6_:* = §§pop();
         var _loc7_:uint = 0;
         if(!MC)
         {
            _loc1_ = new BitmapData(width,height,true,0);
            _loc1_.draw(this);
            BitAr.push(_loc1_);
            BITS[currentLabel + "" + 0] = {
               "pos":BitAr.length - 1,
               "width":width,
               "height":height,
               "rot":rotate,
               "rotAmt":1
            };
            Main.curClass.addText(currentLabel);
         }
         else
         {
            _loc2_ = rotate ? uint(rotate) : 1;
            if(false)
            {
               throw true;
            }
            _loc3_ = 360 / _loc2_;
            _loc4_ = 0;
            loop0:
            while(_loc4_ < _loc2_)
            {
               MC.rotation = _loc4_ * _loc3_;
               _loc5_ = {};
               _loc6_ = "";
               _loc7_ = 1;
               while(true)
               {
                  if(_loc7_ <= MC.totalFrames)
                  {
                     MC.gotoAndStop(_loc7_);
                     if(MC.currentLabel != _loc6_)
                     {
                        _loc6_ = MC.currentLabel;
                        _loc5_[_loc6_] = {
                           "pos":BitAr.length,
                           "frames":0
                        };
                     }
                     var _temp_1:* = _loc5_[_loc6_];
                     var _loc8_:* = _loc5_[_loc6_];
                     var _loc9_:Number = _loc8_.frames + 1;
                     if(false)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
                  _loc8_.frames = _loc9_;
                  _loc1_ = new BitmapData(width,height,true,0);
                  _loc1_.draw(this);
                  BitAr.push(_loc1_);
                  BITS[currentLabel + "" + _loc4_] = {
                     "sub":_loc5_,
                     "width":width,
                     "height":height,
                     "rot":rotate,
                     "rotAmt":_loc2_
                  };
                  Main.curClass.addText(currentLabel);
                  _loc4_++;
                  _loc7_++;
               }
               return false;
            }
         }
         if(i != totalFrames)
         {
            ++i;
            if(false)
            {
               return false;
            }
            gotoAndStop(i);
         }
         else
         {
            §\x1a\x19§();
         }
      }
      
      public function §\x1a\x19§() : void
      {
         complete = true;
         main.§\r\x13§();
      }
      
      public function MouseDown() : void
      {
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
      
      internal function §\x19\b§() : *
      {
         rotate = 3;
      }
      
      internal function §\x18\x03§() : *
      {
         rotate = 3;
      }
      
      internal function §\x17\t§() : *
      {
         rotate = 0;
      }
      
      internal function §\x16\x13§() : *
      {
         rotate = 3;
      }
      
      internal function §\x16\b§() : *
      {
         rotate = 0;
      }
      
      internal function §\x15\x1a§() : *
      {
         rotate = 3;
      }
      
      internal function §\x15\x14§() : *
      {
         rotate = 3;
      }
      
      internal function §\x15\x0f§() : *
      {
         rotate = 0;
      }
      
      internal function §\x15\b§() : *
      {
         rotate = 0;
      }
      
      internal function §\x19\x07§() : *
      {
         rotate = 3;
      }
      
      internal function §\x19\x03§() : *
      {
         rotate = 3;
      }
      
      internal function §\x18\x1c§() : *
      {
         rotate = 3;
      }
      
      internal function §\x18\x18§() : *
      {
         rotate = 0;
      }
      
      internal function §\x18\x16§() : *
      {
         rotate = 3;
      }
      
      internal function §\x18\x14§() : *
      {
         rotate = 3;
      }
      
      internal function §\x18\x13§() : *
      {
         rotate = 3;
      }
      
      internal function §\x18\x10§() : *
      {
         rotate = 3;
      }
      
      internal function §\x18\f§() : *
      {
         rotate = 3;
      }
      
      internal function §\x18\b§() : *
      {
         rotate = 0;
      }
      
      internal function §\x18\x02§() : *
      {
         rotate = 3;
      }
      
      internal function §\x18\x01§() : *
      {
         rotate = 3;
      }
      
      internal function §\x17\x1d§() : *
      {
         rotate = 0;
      }
      
      internal function §\x17\x1c§() : *
      {
         rotate = 3;
      }
      
      internal function §\x17\x17§() : *
      {
         rotate = 0;
      }
      
      internal function §\x17\x12§() : *
      {
         rotate = 0;
      }
      
      internal function §\x17\x11§() : *
      {
         rotate = 0;
      }
      
      internal function §\x17\x10§() : *
      {
         rotate = 0;
      }
      
      internal function §\x17\x0f§() : *
      {
         rotate = 0;
      }
      
      internal function §\x17\x0b§() : *
      {
         rotate = 0;
      }
      
      internal function §\x17\b§() : *
      {
         rotate = 0;
      }
      
      internal function §\x17\x06§() : *
      {
         rotate = 0;
      }
      
      internal function §\x17\x05§() : *
      {
         rotate = 0;
      }
      
      internal function §\x17\x04§() : *
      {
         rotate = 0;
      }
      
      internal function §\x17\x03§() : *
      {
         rotate = 0;
      }
      
      internal function §\x17\x02§() : *
      {
         rotate = 0;
      }
      
      internal function §\x16\x1d§() : *
      {
         rotate = 3;
      }
      
      internal function §\x16\x1b§() : *
      {
         rotate = 3;
      }
      
      internal function §\x16\x18§() : *
      {
         rotate = 3;
      }
      
      internal function §\x16\x15§() : *
      {
         rotate = 3;
      }
      
      internal function §\x16\x12§() : *
      {
         rotate = 0;
      }
      
      internal function §\x16\x11§() : *
      {
         rotate = 3;
      }
      
      internal function §\x16\x10§() : *
      {
         rotate = 0;
      }
      
      internal function §\x16\x0f§() : *
      {
         rotate = 3;
      }
      
      internal function §\x16\x0e§() : *
      {
         rotate = 3;
      }
      
      internal function §\x16\r§() : *
      {
         rotate = 3;
      }
      
      internal function §\x16\f§() : *
      {
         rotate = 3;
      }
      
      internal function §\x16\x0b§() : *
      {
         rotate = 3;
      }
      
      internal function §\x16\n§() : *
      {
         rotate = 0;
      }
      
      internal function §\x16\t§() : *
      {
         rotate = 3;
      }
      
      internal function §\x16\x07§() : *
      {
         rotate = 0;
      }
      
      internal function §\x16\x06§() : *
      {
         rotate = 0;
      }
      
      internal function §\x16\x04§() : *
      {
         rotate = 3;
      }
      
      internal function §\x16\x03§() : *
      {
         rotate = 0;
      }
      
      internal function §\x16\x02§() : *
      {
         rotate = 3;
      }
      
      internal function §\x16\x01§() : *
      {
         rotate = 0;
      }
      
      internal function §\x15\x1d§() : *
      {
         rotate = 0;
      }
      
      internal function §\x15\x1c§() : *
      {
         rotate = 3;
      }
      
      internal function frame58() : *
      {
         rotate = 0;
      }
   }
}

§§push(§§findproperty(BH));
§§push(DisplayObject);
if(false)
{
   return;
}


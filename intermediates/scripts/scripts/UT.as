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
   
   public class UT
   {
      
      public function UT()
      {
         super();
      }
      
      public static function rotateDirection(param1:Number, param2:Number) : int
      {
         return fixRotation(param2 - param1) <= 0 ? -1 : 1;
      }
      
      public static function fixRotation(param1:Number) : Number
      {
         if(param1 > 180)
         {
            param1 -= 360;
         }
         if(param1 < -180)
         {
            §§push(param1 + 360);
            if(false)
            {
               return false;
            }
            param1 = §§pop();
         }
         return param1;
      }
      
      public static function §\x19\f§(param1:Number) : Number
      {
         if(param1 > 360)
         {
            param1 -= 360;
         }
         if(param1 < 0)
         {
            param1 += 360;
         }
         return param1;
      }
      
      public static function §\r\r§(param1:Number, param2:Number) : Number
      {
         return fixRotation(param2 - param1);
      }
      
      public static function getDist(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = param1 - param3;
         var _loc6_:Number = param2 - param4;
         return Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
      }
      
      public static function getRotation(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc8_:Number = NaN;
         var _loc5_:Number = param1 - param3;
         var _loc6_:Number = param2 - param4;
         var _loc7_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         if(_loc6_ >= 0)
         {
            §§push(Math);
            §§push(_loc5_);
            if(false)
            {
               throw true;
            }
            _loc8_ = Number(§§pop().acos(§§pop() / _loc7_));
         }
         else
         {
            _loc8_ = Math.PI * 2 - Math.acos(_loc5_ / _loc7_);
         }
         §§push(UT);
         §§push(_loc8_);
         §§push(180);
         if(false)
         {
            return;
         }
         return §§pop().fixRotation(§§pop() * §§pop() / Math.PI - 90);
      }
      
      public static function randLinePoint(param1:Number, param2:Number, param3:Number, param4:Number) : Point
      {
         var _temp_1:* = new Point();
         var _loc5_:Point = new Point();
         _loc5_.x = UT.rand(param1,param3);
         _loc5_.y = param2 + (_loc5_.x - param1) / (param3 - param1) * (param4 - param2);
         return _loc5_;
      }
      
      public static function rand(param1:Number, param2:Number) : Number
      {
         return Math.random() * (param2 - param1) + param1;
      }
      
      public static function irand(param1:int, param2:int) : int
      {
         return uint(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public static function §\x12\x11§(param1:uint) : String
      {
         var _loc2_:String = null;
         if(!(param1 % 100 > 10 && param1 % 100 < 14))
         {
            switch(param1 % 10)
            {
               case 0:
                  _loc2_ = "th";
                  break;
               case 1:
                  _loc2_ = "st";
                  break;
               case 2:
                  _loc2_ = "nd";
                  break;
               case 3:
                  _loc2_ = "rd";
                  break;
               default:
                  _loc2_ = "th";
            }
         }
         else
         {
            _loc2_ = "th";
         }
         return param1 + _loc2_;
      }
      
      public static function §\x19\r§(param1:Number) : Number
      {
         return int(Math.round(param1 * 10)) / 10;
      }
      
      public static function getRatio(param1:int, param2:int) : String
      {
         var _loc3_:String = "UT Error";
         if(!param1 && !param2 || param1 == param2)
         {
            _loc3_ = "1 : 1";
         }
         else
         {
            var _temp_3:* = Boolean(param1);
            §§push(_temp_3);
            if(_temp_3)
            {
               §§pop();
               §§push(param2);
               if(false)
               {
                  return false;
               }
               §§push(!§§pop());
            }
            if(!§§pop())
            {
               if(!(!param1 && Boolean(param2)))
               {
                  if(param1 <= param2)
                  {
                     if(param2 > param1)
                     {
                        _loc3_ = "1 : " + Math.round(param2 / param1 * 100) / 100;
                     }
                  }
                  else
                  {
                     _loc3_ = Math.round(param1 / param2 * 100) / 100 + " : 1";
                  }
               }
               else
               {
                  _loc3_ = "0 : " + param2;
               }
            }
            else
            {
               _loc3_ = param1 + " : 0";
            }
         }
         return _loc3_;
      }
      
      public static function inBox(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Boolean
      {
         return param1 > param3 && param1 < param3 + param5 && param2 > param4 && param2 < param4 + param6;
      }
      
      public static function xMoveToRot(param1:Number, param2:Number) : Number
      {
         return Math.sin(param1 * (Math.PI / 180)) * param2;
      }
      
      public static function yMoveToRot(param1:Number, param2:Number) : Number
      {
         return Math.cos(param1 * (Math.PI / 180)) * -param2;
      }
      
      public static function randEl(param1:Array) : *
      {
         return param1[uint(Math.random() * param1.length)];
      }
      
      public static function getPosNegSign(param1:*) : int
      {
         return param1 < 0 ? -1 : 1;
      }
      
      public static function §\b\x16§(param1:String, param2:TextField) : String
      {
         param2.text = param1;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         while(_loc4_ < param2.numLines - 1)
         {
            _loc3_ += param2.getLineLength(_loc4_);
            §§push(param1);
            §§push(0);
            §§push(_loc3_);
            §§push(_loc4_);
            if(false)
            {
               return;
            }
            param1 = §§pop().substring(§§pop(),§§pop() + §§pop()) + "\n" + param1.substring(_loc3_ + _loc4_);
            _loc4_++;
         }
         param2.text = "";
         return param1;
      }
      
      public static function rotBounceOff(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Number
      {
         var _loc6_:Number = UT.getRotation(param2,param3,param4,param5);
         var _loc7_:Number = UT.fixRotation(param1 - _loc6_);
         return UT.fixRotation(param1 - _loc7_ + 180);
      }
      
      public static function §\x12\x07§(param1:Number) : String
      {
         param1 = UT.fixRotation(param1);
         var _loc2_:String = "";
         if(param1 >= -45 && param1 <= 45)
         {
            _loc2_ = "up";
         }
         else
         {
            var _temp_2:* = param1 >= -135;
            §§push(_temp_2);
            §§push(_temp_2);
            if(false)
            {
               return;
            }
            if(§§pop())
            {
               §§pop();
               §§push(param1 <= -45);
            }
            if(§§pop())
            {
               _loc2_ = "left";
            }
            else if(param1 <= 135 && param1 >= 45)
            {
               _loc2_ = "right";
            }
            else
            {
               _loc2_ = "down";
            }
         }
         return _loc2_;
      }
      
      public static function getTimeString(param1:uint, param2:Boolean) : String
      {
         var _loc3_:uint = param1 / 30 % 60;
         var _loc4_:uint = param1 / 30 / 60;
         return (!(param2 && _loc4_ < 10) ? _loc4_ : "0" + _loc4_) + ":" + (_loc3_ >= 10 ? _loc3_ : "0" + _loc3_);
      }
      
      public static function §\r\x12§(param1:String, param2:String, param3:String = "") : String
      {
         while(param1.indexOf(param2) != -1)
         {
            param1 = param1.replace(param2,param3);
         }
         return param1;
      }
      
      public static function §\x0f\x14§(param1:Object, param2:Object) : void
      {
         var _loc3_:String = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
            if(false)
            {
               throw true;
            }
         }
      }
      
      public static function §\x1b\x1b§(param1:Object) : Object
      {
         var _loc3_:String = null;
         var _loc2_:Object = {};
         for(_loc3_ in param1)
         {
            §§push(_loc2_);
            §§push(_loc3_);
            §§push(param1);
            if(false)
            {
               return false;
            }
            §§pop()[§§pop()] = §§pop()[_loc3_];
         }
         return _loc2_;
      }
      
      public static function addNumCommas(param1:int) : String
      {
         var _loc2_:Boolean = param1 < 0;
         var _loc3_:String = "" + Math.abs(param1);
         var _loc4_:uint = uint(_loc3_.length);
         var _loc5_:uint = 0;
         while(_loc5_ < _loc3_.length)
         {
            if(_loc4_ < _loc3_.length && _loc4_ > 0)
            {
               if(false)
               {
                  return;
               }
               §§push(_loc3_.substring(0,_loc4_) + "," + _loc3_.substring(_loc4_));
               if(false)
               {
                  return;
               }
               _loc3_ = §§pop();
            }
            _loc4_ -= 3;
            _loc5_ += 3;
         }
         return (_loc2_ ? "-" : "") + _loc3_;
      }
      
      public static function getEl(param1:uint, param2:Array) : *
      {
         return param2[param1];
      }
      
      public static function getNextEl(param1:*, param2:Boolean, param3:Array) : *
      {
         var _loc4_:* = param3.indexOf(param1);
         §§push(_loc4_);
         if(!param2)
         {
            §§push(-1);
            if(false)
            {
               return;
            }
            §§push(§§pop());
         }
         else
         {
            §§push(1);
         }
         _loc4_ = int(§§pop() + §§pop());
         if(_loc4_ == param3.length)
         {
            §§push(0);
            if(false)
            {
               return false;
            }
            _loc4_ = §§pop();
         }
         if(_loc4_ < 0)
         {
            _loc4_ = int(param3.length - 1);
         }
         return param3[_loc4_];
      }
      
      public static function roundToDecimal(param1:Number, param2:uint) : Number
      {
         var _loc3_:uint = Math.pow(10,param2);
         return Math.round(param1 * _loc3_) / _loc3_;
      }
      
      public static function getPythagorean(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
   }
}


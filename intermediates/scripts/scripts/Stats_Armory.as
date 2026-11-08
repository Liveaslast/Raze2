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
   
   public class Stats_Armory
   {
      
      public static var gunsAr:Array;
      
      public static var gunsArmoryAr:Array;
      
      public function Stats_Armory()
      {
         super();
      }
      
      public static function Init() : void
      {
         var _loc1_:uint = 0;
         gunsAr = new Array(8);
         gunsArmoryAr = new Array(8);
         _loc1_ = 0;
         while(_loc1_ < gunsAr.length)
         {
            gunsAr[_loc1_] = [];
            gunsArmoryAr[_loc1_] = [];
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < Stats_Guns.gunAr.length)
         {
            gunsAr[Stats_Guns.gunAr[_loc1_].type].push(Stats_Guns.gunAr[_loc1_].id);
            if(Stats_Guns.gunAr[_loc1_].cost >= 0)
            {
               gunsArmoryAr[Stats_Guns.gunAr[_loc1_].type].push(Stats_Guns.gunAr[_loc1_].id);
            }
            _loc1_++;
         }
      }
      
      public static function getGun(param1:uint, param2:uint) : Stats_Guns
      {
         return Stats_Guns.gunOb[gunsAr[param1][param2]];
      }
   }
}


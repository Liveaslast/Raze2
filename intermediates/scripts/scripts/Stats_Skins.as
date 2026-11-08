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
   
   public class Stats_Skins
   {
      
      public static var skinOb:Object;
      
      public static var skinAr:Array;
      
      public var frame:uint;
      
      public var id:String;
      
      public var blood:String;
      
      public var race:String;
      
      public var name:String;
      
      public var num:uint;
      
      public var cost:int;
      
      public function Stats_Skins()
      {
         super();
      }
      
      public static function Init() : void
      {
         skinAr = [];
         skinOb = {};
         §\f§(3,"raze",0,"bloodHuman","Human","Raze Soldier");
         §§push(§§findproperty(§\f§));
         §§push(4);
         §§push("raze2");
         §§push(0);
         §§push("bloodHuman");
         §§push("Human");
         §§push("Covert Ops");
         if(false)
         {
            throw true;
         }
         §§pop().§\f§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
         §\f§(152,"raze3",50,"bloodHuman","Human","Cpt. Biggs");
         §\f§(1,"space",50,"bloodHuman","Human","Space");
         §\f§(2,"camo",50,"bloodHuman","Human","Camouflage ");
         §\f§(6,"soldier",50,"bloodHuman","Human","Soldier");
         §\f§(5,"soldier2",50,"bloodHuman","Human","Soldier (Alt)");
         §\f§(7,"rambo",100,"bloodHuman","Human","Johnny Rockit");
         §\f§(8,"rambo2",100,"bloodHuman","Human","Johnny Rambo");
         §\f§(9,"mine",100,"bloodHuman","Human","Miner");
         §\f§(10,"girl",100,"bloodHuman","Human","Dani");
         §\f§(11,"girl2",100,"bloodHuman","Human","Dani (Helmet)");
         §\f§(12,"addison",250,"bloodHuman","Human","AddisonR");
         §\f§(13,"justin",250,"bloodHuman","Human","Juice-Tin");
         §\f§(50,"asnow",150,"bloodAlien","Alien","Albino Alien");
         §§push(§§findproperty(§\f§));
         §§push(51);
         §§push("adesert");
         §§push(150);
         if(false)
         {
            return;
         }
         §§pop().§\f§(§§pop(),§§pop(),§§pop(),"bloodAlien","Alien","Desert Alien");
         §\f§(52,"amarine",150,"bloodAlien","Alien","Marine Alien");
         §\f§(53,"aspace",150,"bloodAlien","Alien","Space Alien");
         §\f§(54,"ajungle",150,"bloodAlien","Alien","Jungle Alien");
         §\f§(55,"acommander",200,"bloodAlien","Alien","Commander Alien");
         §\f§(100,"bdesert",150,"bloodRobot","Robot","Desert Bot");
         §§push(§§findproperty(§\f§));
         if(false)
         {
            return false;
         }
         §§pop().§\f§(101,"bspace",150,"bloodRobot","Robot","Space Bot");
         §\f§(102,"bmine",150,"bloodRobot","Robot","Mining Bot");
         §\f§(103,"bsnow",200,"bloodRobot","Robot","Snow Bot");
         §\f§(104,"bjungle",200,"bloodRobot","Robot","Jungle Bot");
         §\f§(150,"zurban",150,"bloodZombie","Zombie","Urban Zombie");
         §\f§(151,"zbeach",150,"bloodZombie","Zombie","Beach Zombie");
         §\f§(153,"zelderly",150,"bloodZombie","Zombie","Elderly Zombie");
         §\f§(154,"zbiker",200,"bloodZombie","Zombie","Biker Zombie");
         §\f§(155,"zbiker2",200,"bloodZombie","Zombie","Biker Zombie (Alt)");
         §\f§(14,"mutate",-1,"bloodZombie","Human","Mutate");
         var _loc1_:uint = 0;
         §§push(0);
         if(false)
         {
            return false;
         }
         var _loc2_:uint = §§pop();
         while(_loc2_ < skinAr.length)
         {
            if(skinAr[_loc2_].cost > 0)
            {
               _loc1_ += skinAr[_loc2_].cost;
            }
            _loc2_++;
         }
         trace("Total Skin costs:",_loc1_);
      }
      
      public static function §\f§(param1:uint, param2:String, param3:int, param4:String, param5:String, param6:String) : void
      {
         var _temp_1:* = new Stats_Skins();
         var _loc7_:Stats_Skins = new Stats_Skins();
         §§push(_loc7_);
         if(false)
         {
            return;
         }
         §§pop().frame = param1;
         _loc7_.id = param2;
         _loc7_.cost = param3;
         _loc7_.blood = param4;
         _loc7_.race = param5;
         _loc7_.name = param6;
         _loc7_.num = skinAr.length;
         §§push(skinAr);
         if(false)
         {
            return false;
         }
         §§pop().push(_loc7_);
         skinOb[param2] = _loc7_;
      }
   }
}


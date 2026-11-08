package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x14§;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2FrictionJointDef;
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
   
   public class Stats_Equipment
   {
      
      public static var equip0Ar:Array;
      
      public static var equip1Ar:Array;
      
      public static var equip2Ar:Array;
      
      public static var equipOb:Object;
      
      public var cls:uint;
      
      public var name:String;
      
      public var type:String;
      
      public var value:Number;
      
      public var desc:String;
      
      public var cost:uint;
      
      public function Stats_Equipment()
      {
         super();
      }
      
      public static function Init() : void
      {
         var _loc2_:uint = 0;
         equip0Ar = [];
         §§push(§§findproperty(equip1Ar));
         if(false)
         {
            return;
         }
         §§pop().equip1Ar = [];
         equip2Ar = [];
         §\x12§(0,"无\x1f\x1f\x1f\x1f","",0,0,"无\x1f");
         §\x12§(0,"能量电容\x1f\x1f","shield",0.8,400,"有盔甲时，伤害减少20%\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x12§));
         §§push(0);
         §§push("急救\x1f\x1f");
         §§push("hprecover");
         if(false)
         {
            return;
         }
         §§pop().§\x12§(§§pop(),§§pop(),§§pop(),0.2,800,"体力低于40%时快速恢复\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x12§(0,"电镀盔甲\x1f","critdef",1,1200,"头/臀/裆对火攻击和致命攻击免疫\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x12§(0,"战斗盔甲","health",50,1600,"增加50%体力");
         §§push(§§findproperty(§\x12§));
         §§push(0);
         §§push("肾上腺素\x1f\x1f\x1f\x1f");
         §§push("final");
         §§push(1);
         §§push(2000);
         if(false)
         {
            return;
         }
         §§pop().§\x12§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),"受到致命攻击后恢复1%的体力\x1f\x1f\x1f\x1f");
         §\x12§(0,"","health",100,0,"6");
         §§push(§§findproperty(§\x12§));
         §§push(0);
         §§push("");
         §§push("health");
         §§push(400);
         §§push(0);
         §§push("7");
         if(false)
         {
            throw true;
         }
         §§pop().§\x12§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
         §\x12§(1,"无\x1f\x1f\x1f\x1f","",0,0,"无\x1f");
         §\x12§(1,"点数收集器","credits",2,600,"杀敌获得2个金币\x1f\x1f\x1f\x1f");
         §\x12§(1,"增倍器\x1f\x1f\x1f\x1f\x1f","pcboost",1.6,900,"血甲物品效果增加60%\x1f\x1f\x1f\x1f");
         §\x12§(1,"爆发延续\x1f\x1f","powerup",1.4,1200,"爆发时间延长40%");
         §\x12§(1,"冷却套装\x1f","recharge",1.3,1500,"技能恢复快30%\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x12§));
         §§push(1);
         if(false)
         {
            return;
         }
         §§pop().§\x12§(§§pop(),"盔甲电池\x1f\x1f","spspawn",25,1800,"25%的初始盔甲\x1f\x1f\x1f");
         §\x12§(1,"","spspawn",50,0,"6");
         §§push(§§findproperty(§\x12§));
         §§push(2);
         §§push("无\x1f\x1f\x1f\x1f");
         if(false)
         {
            return;
         }
         §§pop().§\x12§(§§pop(),§§pop(),"",0,0,"无\x1f");
         §\x12§(2,"稳定器\x1f","recoil",0.6,1000,"武器精度加40%\x1f\x1f");
         §\x12§(2,"螺旋弹膛\x1f\x1f","range",10,1200,"增加武器射程\x1f\x1f");
         §\x12§(2,"目标印记\x1f","critical",1.2,1400,"对敌人头/臀/裆伤害增加20%\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x12§(2,"发丝扳机","rof",0.8,1600,"武器射速加20%\x1f\x1f\x1f\x1f");
         §\x12§(2,"子弹夹\x1f\x1f","ammo",1,1800,"拾取武器获得满子弹\x1f\x1f\x1f");
         var _loc1_:uint = 0;
         _loc2_ = 0;
         while(_loc2_ < equip0Ar.length)
         {
            §§push(equip0Ar);
            if(false)
            {
               return false;
            }
            if(§§pop()[_loc2_].cost > 0)
            {
               _loc1_ += equip0Ar[_loc2_].cost;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < equip1Ar.length)
         {
            if(equip1Ar[_loc2_].cost > 0)
            {
               §§push(_loc1_);
               §§push(equip1Ar);
               if(false)
               {
                  throw true;
               }
               _loc1_ = §§pop() + §§pop()[_loc2_].cost;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < equip2Ar.length)
         {
            if(equip2Ar[_loc2_].cost > 0)
            {
               _loc1_ += equip2Ar[_loc2_].cost;
            }
            _loc2_++;
         }
         trace("Total Equipment costs:",_loc1_);
      }
      
      public static function §\x12§(param1:uint, param2:String, param3:String, param4:Number, param5:uint, param6:String) : void
      {
         var _temp_1:* = new Stats_Equipment();
         var _loc7_:Stats_Equipment = new Stats_Equipment();
         _loc7_.cls = param1;
         _loc7_.name = param2;
         _loc7_.type = param3;
         _loc7_.value = param4;
         _loc7_.cost = param5;
         _loc7_.desc = param6;
         Stats_Equipment["equip" + param1 + "Ar"].push(_loc7_);
      }
      
      public static function getEquipment(param1:int, param2:int) : Stats_Equipment
      {
         return Stats_Equipment["equip" + param1 + "Ar"][param2];
      }
   }
}


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
   
   public class Stats_KillBonuses
   {
      
      public static var bonusOb:Object;
      
      public static var bonusAr:Array;
      
      public var id:String;
      
      public var name:String;
      
      public var desc:String;
      
      public var worth:uint;
      
      public var num:uint;
      
      public function Stats_KillBonuses()
      {
         super();
      }
      
      public static function Init() : void
      {
         bonusAr = [];
         §§push(§§findproperty(bonusOb));
         §§push({});
         if(false)
         {
            return false;
         }
         §§pop().bonusOb = §§pop();
         §\x17§("headMult",4,"爆头!\x1f\x1f","击中头部杀死一个敌人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x17§("crotchMult",5,"射裆!\x1f\x1f\x1f\x1f\x1f","击中裆部杀死一个敌人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x17§));
         §§push("buttMult");
         §§push(12);
         §§push("爆菊!\x1f\x1f\x1f");
         §§push("击中臀部杀死一个敌人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         if(false)
         {
            throw true;
         }
         §§pop().§\x17§(§§pop(),§§pop(),§§pop(),§§pop());
         §\x17§("assassin",10,"暗杀!\x1f\x1f","从背后击中头部杀死一个敌人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x17§));
         §§push("burrowMult");
         if(false)
         {
            return;
         }
         §§pop().§\x17§(§§pop(),8,"惊喜!\x1f","挖洞穿透地面杀敌一个敌人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x17§("splashDirect",3,"命中!\x1f\x1f\x1f\x1f","使用爆炸武器直接击中杀死敌人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x17§));
         §§push("splashIndirect");
         §§push(5);
         if(false)
         {
            throw true;
         }
         §§pop().§\x17§(§§pop(),§§pop(),"溅射溅射!\x1f","使用非爆炸性武器的溅射杀死敌人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x17§("spreeEnd",10,"败兴者!\x1f\x1f","杀死一个大开杀戒的敌人。(未死状态杀5人以上)\x1f\x1f");
         §\x17§("reflect",4,"反射!\x1f\x1f\x1f\x1f","通过静力场/刀魂反射杀死敌人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x17§("jugKill",15,"终结者!\x1f","杀死并取代重装机甲。\x1f\x1f\x1f");
         §\x17§("hasFlag",10,"障碍物!\x1f\x1f\x1f","杀死一个携带旗子的敌人。\x1f\x1f");
         §\x17§("sword",4,"刀客!\x1f","使用刀魂杀死敌人。\x1f\x1f\x1f");
         §\x17§("fire",2,"热 热 热!","让一个敌人着火并被火烧死。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x17§("dead",5,"灵异!\x1f","死后杀死一个敌人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x17§("mauser",2,"令人尴尬!","用最弱的黄金毛瑟手枪杀死一个敌人。\x1f\x1f\x1f\x1f");
         §\x17§("chill",4,"冰药丸!\x1f","使用冰风暴弹射两次后杀死一个敌人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x17§("steal",2,"偷袭!\x1f\x1f\x1f\x1f","杀死一个正在与其他人战斗的低体力敌人。\x1f\x1f\x1f\x1f");
         §\x17§("onfire",3,"舞蹈火山!\x1f","身上起火时杀死敌人。\x1f\x1f\x1f\x1f\x1f");
         §\x17§("mine",3,"小心脚下!\x1f\x1f","用地雷杀死一个无防备的敌人。\x1f\x1f");
         if(false)
         {
            return;
         }
         §\x17§("domKill2",5,"领主!\x1f\x1f\x1f\x1f\x1f\x1f","控制赛中夺旗时杀死敌人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x17§("domKill",5,"后卫!\x1f\x1f","控制赛中杀死一个抢夺你旗子的敌人。\x1f\x1f\x1f\x1f");
         §\x17§("juice",2,"Juiced!","杀死神奇的Juice-Tin。");
         §\x17§("rad",2,"Rad!","杀死全能的AddisonR。\x1f");
         §\x17§("survive",3,"幸存!\x1f\x1f","只剩一体力时杀死一个敌人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x17§("speed",5,"速射!\x1f\x1f\x1f\x1f","以35英里时速移动时杀死敌人。");
         §§push(§§findproperty(§\x17§));
         §§push("hasFlag2");
         §§push(5);
         §§push("卖弄!\x1f\x1f");
         if(false)
         {
            return;
         }
         §§pop().§\x17§(§§pop(),§§pop(),§§pop(),"带着旗子时杀死敌人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x17§("noShield",5,"有盔甲？","敌人盔甲超过20%时一击杀死对方。\x1f\x1f\x1f");
         §\x17§("invis",12,"那是什么?\x1f","杀死隐形的敌人。");
         §\x17§("corpsestick",15,"尸爆术!\x1f\x1f","用粘在尸体上的手雷杀死一个敌人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x17§("refBounce",10,"谢谢!","用场/刀魂反弹敌人子弹杀死另外一个人。\x1f\x1f\x1f\x1f\x1f\x1f");
      }
      
      public static function §\x17§(param1:String, param2:uint, param3:String, param4:String) : void
      {
         var _temp_1:* = new Stats_KillBonuses();
         var _loc5_:Stats_KillBonuses = new Stats_KillBonuses();
         _loc5_.id = param1;
         _loc5_.worth = param2;
         _loc5_.name = param3;
         _loc5_.desc = param4;
         _loc5_.num = bonusAr.length;
         bonusAr.push(_loc5_);
         §§push(bonusOb);
         §§push(param1);
         if(false)
         {
            return;
         }
         §§pop()[§§pop()] = _loc5_;
      }
   }
}


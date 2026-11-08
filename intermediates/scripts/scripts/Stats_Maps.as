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
   import §\x1c\x12§.§\x1e\n§;
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
   
   public class Stats_Maps
   {
      
      public static var mapOrder:Array;
      
      public function Stats_Maps()
      {
         super();
      }
      
      public static function Init() : void
      {
         mapOrder = ["jungle","jungle2","city","city2","desert","desert2","ocean","ocean2","mines","mines2","space","space2","snow","snow2","tutq","tutq2"];
      }
      
      public static function getMap(param1:String) : Object
      {
         var _loc2_:Object = {};
         _loc2_.id = param1;
         switch(param1)
         {
            case "test":
               _loc2_.map = "test";
               _loc2_.bg1 = "";
               _loc2_.bg2 = "";
               _loc2_.sky = "";
               _loc2_.particles = "test";
               _loc2_.name = "Test Map";
               _loc2_.desc = "For devs only!";
               break;
            case "tut":
               §§push(_loc2_);
               if(false)
               {
                  return;
               }
               §§pop().map = "tut";
               _loc2_.bg1 = "mountainbiglow";
               _loc2_.bg2 = "mountainsmalllow";
               _loc2_.sky = "tut";
               _loc2_.particles = "tut";
               _loc2_.name = "指挥中心";
               _loc2_.desc = "";
               break;
            case "tutq":
               _loc2_.map = "tutq";
               §§push(_loc2_);
               §§push("mountainbiglow");
               if(false)
               {
                  return false;
               }
               §§pop().bg1 = §§pop();
               _loc2_.bg2 = "mountainsmalllow";
               _loc2_.sky = "tut";
               _loc2_.particles = "";
               _loc2_.name = "指挥中心";
               _loc2_.desc = "Raze小组的总部，新兵的训练基地。(超小地图，-100%奖金)\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               break;
            case "tutq2":
               _loc2_.map = "tutq";
               _loc2_.bg1 = "mountainbiglow";
               if(false)
               {
                  return;
               }
               _loc2_.bg2 = "mountainsmalllow";
               _loc2_.sky = "tut_attack";
               _loc2_.particles = "";
               _loc2_.name = "指挥中心(入侵)\x1f\x1f\x1f";
               _loc2_.desc = "Raze小组的总部，新兵的训练基地。(超小地图，-100%奖金)\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               break;
            case "jungle":
               _loc2_.map = "jungle";
               _loc2_.bg1 = "";
               _loc2_.bg2 = "dome";
               _loc2_.sky = "red";
               _loc2_.particles = "jungle";
               _loc2_.name = "圆顶";
               _loc2_.desc = "用巨型玻璃圆顶保护起来的森林。原本是为了在恶劣气候下保护地球上最后幸存的野生动物建造的。现已成为实验的场所。\x1f";
               break;
            case "jungle2":
               _loc2_.map = "jungle2";
               _loc2_.bg1 = "dark";
               if(false)
               {
                  throw true;
               }
               _loc2_.bg2 = "dome";
               _loc2_.sky = "night";
               _loc2_.particles = "jungle2";
               _loc2_.name = "圆顶 (夜)";
               _loc2_.desc = "用巨型玻璃圆顶保护起来的森林。原本是为了在恶劣气候下保护地球上最后幸存的野生动物建造的。现已成为实验的场所。\x1f";
               break;
            case "jungle3":
               _loc2_.map = "jungle";
               _loc2_.bg1 = "";
               _loc2_.bg2 = "dome";
               _loc2_.sky = "meteor";
               _loc2_.particles = "jungle";
               _loc2_.name = "圆顶";
               _loc2_.desc = "用巨型玻璃圆顶保护起来的森林。原本是为了在恶劣气候下保护地球上最后幸存的野生动物建造的。现已成为实验的场所。\x1f";
               break;
            case "city":
               _loc2_.map = "city";
               _loc2_.bg1 = "city";
               _loc2_.bg2 = "city2";
               _loc2_.sky = "city";
               _loc2_.particles = "city";
               _loc2_.name = "审判\x1f\x1f\x1f";
               _loc2_.desc = "一个曾经人口繁茂的城市，现在已经被夜行生物占领了。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               break;
            case "city2":
               _loc2_.map = "city";
               _loc2_.bg1 = "city";
               _loc2_.bg2 = "city2";
               _loc2_.sky = "mday";
               _loc2_.particles = "city";
               _loc2_.name = "审判 (日)\x1f\x1f\x1f";
               _loc2_.desc = "一个曾经人口繁茂的城市，现在已经被夜行生物占领了。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               break;
            case "desert":
               _loc2_.map = "desert";
               _loc2_.bg1 = "dunes";
               _loc2_.bg2 = "shipyard2";
               _loc2_.sky = "desert";
               _loc2_.particles = "desert";
               _loc2_.name = "船坞 \x1f";
               _loc2_.desc = "原来是人类造船的基地，现在已经被异形占领用于发展它们的空军力量。\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               break;
            case "desert2":
               _loc2_.map = "desert";
               _loc2_.bg1 = "dunes";
               _loc2_.bg2 = "shipyard2";
               _loc2_.sky = "desert2";
               _loc2_.particles = "desert";
               _loc2_.name = "船坞 (日)\x1f\x1f";
               _loc2_.desc = "原来是人类造船的基地，现在已经被异形占领用于发展它们的空军力量。\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               break;
            case "ocean":
               _loc2_.map = "ocean";
               _loc2_.bg1 = "oceanf";
               _loc2_.bg2 = "oceanb";
               _loc2_.sky = "day";
               _loc2_.particles = "ocean";
               _loc2_.name = "实验室";
               _loc2_.desc = "水下实验基地。一个用来研发新型战斗装备的场所，建在水下的目的是防止被敌人发现。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               break;
            case "ocean2":
               _loc2_.map = "ocean";
               _loc2_.bg1 = "oceanf";
               _loc2_.bg2 = "oceanb";
               _loc2_.sky = "space";
               _loc2_.particles = "ocean";
               §§push(_loc2_);
               §§push("实验室 (夜)\x1f");
               if(false)
               {
                  return;
               }
               §§pop().name = §§pop();
               _loc2_.desc = "水下实验基地。一个用来研发新型战斗装备的场所，建在水下的目的是防止被敌人发现。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               break;
            case "mines":
               _loc2_.map = "mines";
               _loc2_.bg1 = "mountainbig";
               _loc2_.bg2 = "mountainsmall";
               _loc2_.sky = "city";
               _loc2_.particles = "mines";
               _loc2_.name = "矿山";
               _loc2_.desc = "一个十分富饶的矿山基地。高纯度元素矿石让这里成为了多方力量争相抢夺的地点。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               break;
            case "mines2":
               _loc2_.map = "mines2";
               _loc2_.bg1 = "mountainbig";
               _loc2_.bg2 = "mountainsmall";
               _loc2_.sky = "mday";
               _loc2_.particles = "mines2";
               _loc2_.name = "矿山 (日)";
               _loc2_.desc = "一个十分富饶的矿山基地。高纯度元素矿石让这里成为了多方力量争相抢夺的地点。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               break;
            case "space":
               _loc2_.map = "space";
               _loc2_.bg1 = "pillars";
               _loc2_.bg2 = "pillarsmall";
               _loc2_.sky = "space";
               _loc2_.particles = "space";
               _loc2_.name = "坠毁点\x1f\x1f\x1f\x1f";
               §§push(_loc2_);
               §§push("与敌方飞船的一场空战导致Echo-1飞船坠毁在这个不知名的星球。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
               if(false)
               {
                  return;
               }
               §§pop().desc = §§pop();
               _loc2_.moon = true;
               break;
            case "space2":
               _loc2_.map = "space";
               if(false)
               {
                  return false;
               }
               _loc2_.bg1 = "pillars";
               _loc2_.bg2 = "pillarsmall";
               _loc2_.sky = "dawn";
               _loc2_.particles = "space";
               _loc2_.name = "坠毁点 (黎明)\x1f\x1f";
               _loc2_.desc = "与敌方飞船的一场空战导致Echo-1飞船坠毁在这个不知名的星球。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.moon = true;
               break;
            case "snow":
               _loc2_.map = "snow";
               _loc2_.bg1 = "snow";
               _loc2_.bg2 = "snow2";
               _loc2_.sky = "day";
               _loc2_.particles = "snow";
               _loc2_.name = "冰雪原";
               _loc2_.desc = "一个座落在山顶制高点的瞭望点。这里保存了大量的敏感信息，但被敌人发现了。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               break;
            case "snow2":
               _loc2_.map = "snow";
               _loc2_.bg1 = "snow";
               _loc2_.bg2 = "snow2";
               _loc2_.sky = "nlights";
               _loc2_.particles = "snow2";
               _loc2_.name = "冰雪原 (夜)\x1f\x1f";
               _loc2_.desc = "一个座落在山顶制高点的瞭望点。这里保存了大量的敏感信息，但被敌人发现了。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
         }
         return _loc2_;
      }
   }
}


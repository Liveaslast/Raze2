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
   
   public class Stats_Guns
   {
      
      public static var gunOb:Object;
      
      public static var gunAr:Array;
      
      public var id:String;
      
      public var sprite:String;
      
      public var name:String;
      
      public var race:String;
      
      public var cost:int;
      
      public var shotSound:*;
      
      public var hitSound:*;
      
      public var type:uint;
      
      public var dmg:Number;
      
      public var mults:Array;
      
      public var force:Number;
      
      public var splash:Number;
      
      public var splashMult:Number;
      
      public var clipSize:uint;
      
      public var clipMax:uint;
      
      public var clipCur:uint;
      
      public var range:uint;
      
      public var recoil:Number;
      
      public var autoFire:Boolean;
      
      public var shootDelay:Number;
      
      public var effShoot:String;
      
      public var effHit:String;
      
      public var effShell:String;
      
      public var params:Array;
      
      public var frameIdle:String;
      
      public var frameFire:String;
      
      public var frameReload:String;
      
      public var cls:*;
      
      public var extra:Object;
      
      public var special:String;
      
      public var desc:String;
      
      public var xOff:uint;
      
      public var yOff:int;
      
      public function Stats_Guns()
      {
         super();
      }
      
      public static function Init() : void
      {
         gunOb = {};
         gunAr = [];
         if(false)
         {
            return;
         }
         §§push(§§findproperty(§\x11§));
         §§push(0);
         §§push("pistol");
         §§push("pistol");
         §§push("M9巴特\x1f");
         §§push("Human");
         §§push(0);
         §§push(12);
         §§push(1.2);
         §§push(2);
         if(false)
         {
            return;
         }
         §§push(null);
         §§push(3);
         §§push(0);
         §§push(0);
         §§push(18);
         §§push(10);
         §§push(60);
         §§push(5);
         §§push(false);
         §§push(0.25);
         §§push(6);
         §§push(0);
         §§push("gas_small");
         §§push("gas_small");
         §§push("pistol");
         §§push("pistol");
         if(false)
         {
            throw true;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),"pistol","pistol",S_pistolFire,null,Bullet_Line_Basic,[true,3.5,16777156,0.3,1.5,16777156,0.6],{},"射裆+\x1f\x1f\x1f\x1f","所有初级士兵的标配手枪。对敌人的裆部有特殊的伤害效果。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         if(false)
         {
            throw true;
         }
         §§pop().§\x11§(0,"plaspistol","plasmapistol","离子手枪\x1f","Alien",850,10,[1.2,1,1],3,0,0,14,10,45,5,true,0.2,6,0,"plasmapistol_hit","plasmapistol_hit","","pistol","pistol","pistol",S_plasmaFire,null,Bullet_Proj_Follow,["plasmapistol_shot",2,0,200,7],{},"追踪","发射蓝色热离子束并追踪敌人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         §§push(0);
         §§push("burster");
         §§push("burster");
         §§push("爆裂");
         §§push("Human");
         §§push(850);
         §§push(4);
         §§push([1.2,1.2,1.2]);
         §§push(3);
         if(false)
         {
            return false;
         }
         §§push(0);
         §§push(0);
         §§push(18);
         §§push(10);
         §§push(30);
         §§push(5);
         §§push(true);
         §§push(0.15);
         §§push(7);
         §§push(0);
         §§push("gas_small");
         §§push("gas_small");
         §§push("pistol");
         §§push("pistol");
         §§push("pistol");
         §§push("pistol");
         §§push(S_pistolFire);
         §§push(null);
         §§push(Bullet_Line_Basic);
         §§push([true,2.5,16777156,0.3,0.5,16777156,0.6]);
         §§push("extraShots");
         §§push(1);
         if(false)
         {
            return;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null,"散射\x1f\x1f\x1f\x1f","这把小手枪不仅一次能发射2发子弹，而且射速非常的快。有人称它是霰弹枪的弟弟。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         §§push(0);
         §§push("mauser");
         §§push("mauser");
         if(false)
         {
            return;
         }
         §§push("黄金毛瑟\x1f");
         §§push("Human");
         §§push(600);
         §§push(9);
         §§push([1.2,1.2,1.2]);
         §§push(1);
         §§push(0);
         §§push(0);
         §§push(12);
         §§push(10);
         §§push(45);
         §§push(5);
         §§push(false);
         §§push(0.25);
         §§push(5);
         §§push(0);
         §§push("gas_small");
         if(false)
         {
            throw true;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),"gas_small","pistol","pistol","pistol","pistol",S_pistolFire,null,Bullet_Line_Sniper,[true,1.5,16776960,0.3,0.5,16776960,0.6],{"mauser":true},"金钱+\x1f","一把威力异乎寻常小的手枪。因为被这个手枪打死十分令人尴尬，所以用它杀敌通常会奖励金钱。\x1f\x1f\x1f\x1f");
         §\x11§(1,"uzi","uzi","乌兹","Human",0,12,[1.5,1.2,1.2],5,0,0,28,3,38,9,true,0.15,7,0,"gas_small","gas_small","pistol","pistol","pistol","pistol",S_uziFire,null,Bullet_Line_Bend,[true,1.5,16777156,0.3,0.5,16777156,0.6],{},"无\x1f","射速快但不准确。远距离时较弱，但近距离非常致命。");
         §\x11§(1,"magnum","magnum","麦农","Human",900,25,[2.5,1.2,1.2],10,0,0,6,3,60,2,false,0.4,9,0,"gas_small","gas_small","pistol","pistol","pistol","pistol",S_sniperFire,null,Bullet_Line_Basic,[false,5.5,16777156,0.3,1.5,16777156,0.8],{},"爆头++\x1f\x1f","子弹有限、射速慢但是威力巨大的手枪。瞄准头可以快速杀敌。\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         §§push(1);
         §§push("sparkgun");
         §§push("sparkgun");
         §§push("火球枪\x1f\x1f");
         §§push("Alien");
         §§push(1300);
         §§push(10);
         §§push([1.2,1.2,1.2]);
         §§push(7);
         §§push(60);
         §§push(0.1);
         §§push(10);
         §§push(3);
         §§push(70);
         if(false)
         {
            return;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3,false,0.25,8,0,"gas_small","fexpand","","pistol","pistol","pistol",S_plasmaFire,null,Bullet_Proj_Basic,["ember",14,0.5],{"setFire":1},"火+\x1f","原本是焊接工具，被改装成能喷射火焰子弹的武器。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x11§(1,"blaster","blaster","光子炮\x1f\x1f\x1f\x1f\x1f","Alien",1800,4,[1.2,1.2,1.2],3,0,0,18,3,50,5,true,0.2,7,2,"purple_fire","purple_fire","","pistol","pistol","pistol",S_plasmaFire,null,Bullet_Proj_Basic,["photon_shot",7,0.5],{"extraShots":2},"散射\x1f\x1f\x1f\x1f","在高手手中， 光子炮是绝对致命的。在它炽热等离子喷射之下，很少会有敌人活下来。\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         §§push(1);
         §§push("blood");
         §§push("blood");
         §§push("吸血鬼\x1f\x1f\x1f");
         §§push("不详\x1f");
         §§push(2600);
         §§push(9);
         §§push([0,0,0]);
         §§push(0);
         §§push(0);
         §§push(0);
         §§push(20);
         if(false)
         {
            throw true;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3,60,6,false,0.25,7,-3,"chain_hit","bloodHuman","","pistol","pistol","pistol",S_plasmaFire,null,Bullet_Proj_Basic,["blood_shot",4,3],{
            "useHp":3,
            "stealHp":9
         },"吸血\x1f\x1f\x1f","吸取使用者的体力作为子弹。但是击中敌人后将补充使用者体力。武器的来源是个谜。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         §§push(2);
         §§push("shotgun");
         §§push("shotgun");
         §§push("鸟铳\x1f");
         §§push("Human");
         §§push(0);
         §§push(22);
         §§push([1.2,1.2,1.2]);
         §§push(4);
         §§push(0);
         §§push(0);
         §§push(4);
         §§push(3);
         §§push(23);
         §§push(10);
         §§push(false);
         §§push(0.8);
         §§push(9);
         §§push(0);
         §§push("gas_small");
         §§push("gas_small");
         §§push("shotgun");
         §§push("shotgun");
         §§push("shotgun");
         §§push("shotgun");
         if(false)
         {
            return;
         }
         §§push(S_shotgunFire);
         §§push(null);
         §§push(Bullet_Line_Basic);
         §§push(true);
         §§push(3.5);
         §§push(16777156);
         §§push(0.3);
         §§push(1.5);
         §§push(16777156);
         §§push(0.6);
         if(false)
         {
            return;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null,{"extraShots":4},"散射\x1f\x1f\x1f\x1f","一次发射5颗子弹的强力霰弹枪。接近敌人可获得做大输出。\x1f\x1f\x1f\x1f\x1f");
         §\x11§(2,"pshotgun","pshotgun","离子枪\x1f\x1f","Alien",900,7,[1.2,1.2,1.2],2,0,0,12,3,28,6,true,0.2,11,0,"purple_fire","purple_fire","","shotgun","shotgun","shotgun",S_laserBig,null,Bullet_Line_Bend,[true,5.5,10066431,0.3,2.5,14510826,0.7],{"extraShots":2},"散射\x1f\x1f\x1f\x1f","这把枪可以发射出黏黏的\'触手\'粘住目标。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         §§push(2);
         if(false)
         {
            throw true;
         }
         §§pop().§\x11§(§§pop(),"zapper","zapper","微波","Alien",1300,3.5,[0,0,0],0,0,0,100,3,20,0,true,0.05,8,0,"","purple_fire","","rifle","rifle","rifle",S_Zapper,null,Bullet_Line_Zapper,[],{"soundFrames":9},"激光","强大的原子加速器，用\'微波\'从内部摧毁目标。武器的威力取决离目标的距离。（近身时可提升2倍）\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         §§push(2);
         §§push("tshotgun");
         §§push("tshotgun");
         §§push("终结者\x1f");
         §§push("Human");
         if(false)
         {
            return;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),1800,15,[1.2,1.2,1.2],5,0,0,5,3,43,5,false,0.7,10,0,"gas_small","gas_small","shotgun","shotgun","shotgun","shotgun",S_shotgunFire,null,Bullet_Line_Sniper,[false,3.5,16764006,0.2,1.5,16764006,0.3],{"extraShots":3},"散射\x1f\x1f\x1f\x1f","尽管比较陈旧，但终结者由于良好的射程和精度，仍在继续服役。\x1f");
         §\x11§(2,"pcanon","pcanon","粒子加农炮","Alien",2600,10,[1.2,1.2,1.2],5,0,0,5,3,23,9,false,0.8,9,0,"gas_small","gas_small","","shotgun","shotgun","shotgun",S_shotgunFire,null,Bullet_Proj_Bounce,["ember",4,3,1.5],{
            "extraShots":4,
            "setFire":0.5
         },"火/散射","作为火球枪的升级版本，这把枪能一次射出多个火球，火球将在坚硬的地面持续反弹，直到击中生命体。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         §§push(3);
         §§push("arifle");
         §§push("arifle");
         §§push("突击步枪\x1f");
         §§push("Human");
         §§push(0);
         §§push(9);
         §§push([1.2,1.2,1.2]);
         §§push(6);
         §§push(0);
         §§push(0);
         if(false)
         {
            return;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),24,3,80,4,true,0.15,9,0,"gas_small","gas_small","pistol","rifle","rifle","rifle",S_assaultFire,null,Bullet_Line_Basic,[true,3.5,16777156,0.3,1.5,16777156,0.6],{},"无\x1f","高等级突击步枪，兼备射速和精度。战场上士兵的最爱。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x11§(3,"alienrifle","bubrifle","泡泡枪\x1f\x1f\x1f\x1f\x1f","Alien",900,8,[1,1,1],3,0,0,20,3,60,7,true,0.15,6,0,"plasmapistol_hit","plasmapistol_hit","","rifle","rifle","rifle",S_plasmaFire,null,Bullet_Proj_Follow,["bubble_shot",8,0,250,7],{},"追踪","以一种特殊化学物质产生的泡泡作为子弹的武器，具有一定的追踪性能。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x11§(3,"laserrifle","laserrifle","透射激光枪","Alien",1300,7,[2.7,2.5,2.5],6,0,0,24,3,70,1,true,0.2,9,0,"green_shot","green_shot","pistol","rifle","rifle","rifle",S_assaultFire,null,Bullet_Line_Basic,[false,3.5,6938712,0.4,1.5,16777215,0.9],{},"致命++\x1f\x1f","透射激光枪是远距离高精度的武器。尽管它的基本攻击力不是很高，但是击中要害后的威力非常惊人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x11§(3,"icegun","icegun","冰风暴\x1f","Human",1800,9.5,[1.2,1.2,1.2],4,0,0,100,2,90,2,true,0.2,11,-6,"snow_splash","snow_splash","","rocket","rocket","rocket",S_plasmaFire,null,Bullet_Proj_Bounce,["snow_fall",4,3,1.5],{},"反弹","原本设计用来娱乐的装备，临时改装成的武器。它快速发射出的坚硬的冰球在地面上反弹直到击中目标为止。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         §§push(3);
         §§push("arifl2");
         if(false)
         {
            return;
         }
         §§push("arifle2");
         §§push("突击跳弹枪");
         §§push("Human");
         §§push(2600);
         §§push(5);
         §§push([0,0,0]);
         if(false)
         {
            return;
         }
         §§push(1);
         §§push(0);
         §§push(0);
         §§push(14);
         §§push(3);
         §§push(45);
         §§push(5);
         §§push(true);
         §§push(0.2);
         §§push(6);
         §§push(0);
         §§push("gas_small");
         §§push("");
         §§push("");
         §§push("rifle");
         §§push("rifle");
         §§push("rifle");
         §§push(S_plasmaFire);
         §§push(null);
         if(false)
         {
            return;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Bullet_Proj_Follow,["ember",10,1],{
            "bounceShots":3,
            "setFire":0.5
         },"反弹/火\x1f","突击跳弹枪的名字并非来自它子弹开始的样子，而是结束时的形态。子弹击中目标后，迅速分解成无数个跳动的燃烧小球。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x11§(4,"sniper","sniper","50mm狙击枪\x1f","Human",0,45,[2.5,1.2,1.2],15,0,0,4,3,300,1,false,0.6,13,0,"gas_small","spark_big","sniper","sniper","sniper","sniper",S_sniperFire,null,Bullet_Line_Sniper,[true,3.5,13421772,0.3,1.5,15658734,0.6],{},"爆头+\x1f\x1f","可以穿透坦克装甲的重型狙击枪。爆头威力大的难以想象。\x1f\x1f\x1f\x1f");
         §\x11§(4,"railgun","railgun","轨迹枪","Human",1300,55,[1.5,1,1],15,0,0,3,3,300,1,false,0.8,13,0,"chain_hit","getweapon","","sniper","sniper","sniper",S_alienSniper,null,Bullet_Line_Effect,["chain_fire",5.5,14352898,0.6,2.5,16777215,0.8],{"pierce":true},"穿透\x1f","以电池为能量的狙击枪，发射出的加速粒子光线可以穿透多个敌人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         §§push(4);
         §§push("asniper");
         §§push("asniper");
         §§push("震荡波");
         §§push("Alien");
         §§push(1800);
         §§push(70);
         §§push([1.2,1,1]);
         §§push(15);
         §§push(60);
         §§push(1);
         §§push(5);
         §§push(3);
         §§push(300);
         §§push(2);
         §§push(false);
         §§push(0.7);
         §§push(9);
         §§push(0);
         §§push("purple_fire");
         §§push("plasma_explode");
         §§push("");
         §§push("sniper");
         §§push("sniper");
         §§push("sniper");
         §§push(S_alienSniper);
         if(false)
         {
            return;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null,Bullet_Proj_Basic,["plasma_shot",8,0.5],{},"溅射","和它的手枪版本一样，发射炙热等离子子弹。但是少了子弹追踪功能，取而代之的是子弹接触人后剧烈爆炸，伤害周围所有人。\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         §§push(4);
         §§push("sniper2");
         if(false)
         {
            return;
         }
         §§push("sniper2");
         §§push("圣杯\x1f\x1f\x1f\x1f");
         §§push("Alien");
         §§push(2600);
         §§push(110);
         §§push([0,0,0]);
         §§push(20);
         §§push(0);
         §§push(0);
         §§push(1);
         §§push(6);
         §§push(300);
         §§push(0);
         §§push(false);
         §§push(2);
         §§push(12);
         §§push(0);
         §§push("orange_shot");
         §§push("orange_shot");
         §§push("sniper");
         §§push("sniper");
         §§push("sniper");
         §§push("sniper");
         §§push(S_sniperFire);
         if(false)
         {
            return;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null,Bullet_Line_Sniper,[false,7,16764006,0.2,4,16764006,0.3],{"setFire":0.5},"火\x1f","有人说这个武器的威力来自太阳。无论真假，反正被它直接击中后，不穿盔甲的很难活下来。\x1f\x1f\x1f\x1f\x1f");
         §\x11§(4,"railgun2","railgun2","电光箭\x1f\x1f\x1f","Alien",3400,45,[0,0,0],1,0,0,6,3,300,1,false,0.5,9,0,"chain_hit","getweapon","","sniper","sniper","sniper",S_alienSniper,null,Bullet_Line_Electric,[true,3.5,52479,0.4,2.5,39423,0.5,1.5,13434879,0.4],{"arc":400},"弧\x1f","原始设计的修改版，新的武器在击中敌人后会自动分散并击中附近的3个敌人（可穿墙）。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x11§(5,"chaingun","chaingun","激光加林\x1f","Human",0,3.5,[0,0,0],1,0,0,100,2,50,7,true,0.05,9,7,"chain_fire","chain_hit","","heavy","heavy","heavy",S_plasmaFire,null,Bullet_Line_Basic,[true,3.5,14352898,0.6,1,16777215,0.8],{"useAmmo":0.5},"巨弹夹","这把电池动力的加林枪拥有超大的子弹夹和无以伦比的射击速度。电池动力同时也使它消耗子弹的速度较慢。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x11§(5,"sawgun","sawgun","收割者","Human",1300,40,[1.2,1.2,2.5],10,0,0,12,3,300,6,false,0.6,9,10,"spark_big","spark_small","rocket","heavy","heavy","heavy",S_ripperFire,null,Bullet_Proj_Basic,["saw_shot",2,2],{"burrow":true},"挖洞\x1f","火苗刀锋可以穿透地面，直到它们击中目标。穿透地面后伤害加倍。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x11§(5,"beamer","beamer","束光枪\x1f","Alien",1800,3,[0,0,0],2,0,0,70,3,50,0,true,0.05,10,-5,"green_shot","green_shot","","rocket","rocket","rocket",S_Laser,null,Bullet_Line_Laser,[8,6736896,0.5,4,9882625,0.8],{"soundFrames":16},"激光","集束光枪发射一条固定的能量光柱攻击敌人。\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         §§push(5);
         §§push("destroyer");
         §§push("destroyer");
         §§push("毁灭者");
         §§push("Alien");
         §§push(2600);
         §§push(26);
         §§push(1.2);
         §§push(0);
         §§push(0);
         if(false)
         {
            return;
         }
         §§push(null);
         §§push(10);
         §§push(0);
         §§push(0);
         §§push(10);
         §§push(3);
         §§push(60);
         §§push(3);
         §§push(true);
         §§push(0.3);
         §§push(11);
         §§push(10);
         §§push("chain_hit");
         §§push("getweapon");
         §§push("");
         if(false)
         {
            return;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),"heavy","heavy","heavy",S_laserBig,null,Bullet_Line_Sniper,[true,6.5,14352898,0.8,4.5,16777215,0.8],{},"无\x1f","毁灭者曾是异形最高指挥官的武器。在他被杀之后，这种武器开始批量生产，供给最高级别的异形使用。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         if(false)
         {
            return false;
         }
         §§pop().§\x11§(5,"flamethrower","flamethrower","喷火器\x1f\x1f\x1f","Human",4200,2,[0,0,0],0,60,0.7,100,3,50,0,true,0.05,6,10,"","fexpand","","heavy","heavy","heavy",S_Fire,null,Bullet_Proj_Frames,["flame",2,-2,4],{
            "setFire":3,
            "soundFrames":16
         },"火++\x1f","喷火器朝着目标区域喷洒汽油，并让其燃烧。火苗可以让受攻击者身上着火，也包括你。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         §§push(6);
         §§push("rocket");
         §§push("rocket");
         §§push("火箭发射器");
         §§push("Human");
         §§push(0);
         §§push(112);
         §§push([1,1,1]);
         §§push(20);
         §§push(120);
         §§push(0.9);
         §§push(3);
         §§push(3);
         §§push(70);
         §§push(4);
         §§push(false);
         §§push(0.5);
         §§push(8);
         §§push(-5);
         §§push("gas_small");
         §§push("gas_big");
         §§push("rocket");
         §§push("rocket");
         §§push("rocket");
         §§push("rocket");
         §§push(S_rocketFire);
         §§push(S_rocketExplode);
         if(false)
         {
            return;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Bullet_Proj_Basic,["gas_small",7,0.5],{},"无\x1f","携带V-12火箭的标准火箭发射器可造成大范围的剧烈爆炸。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §\x11§(6,"icannon","icannon","离子炮\x1f","Human",1800,65,[1,1,1],25,120,0.8,6,3,90,3,false,0.7,11,-4,"gas_small","gas_big","","rocket","rocket","rocket",S_laserBig,S_rocketExplode,Bullet_Line_Sniper,[true,8.5,16763904,0.5,3.5,16777156,0.6],{"setFire":0.5},"火\x1f","使用最新的核聚变科技的离子炮发射出的子弹的速度快的令人无法想象。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         §§push(6);
         §§push("sticklaunch");
         §§push("stickylauncher");
         §§push("榴弹发射器\x1f");
         §§push("Alien");
         §§push(2600);
         §§push(40);
         §§push([0,0,0]);
         §§push(15);
         §§push(100);
         §§push(0.7);
         if(false)
         {
            return;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),8,3,60,3,false,0.3,10,2,"gas_small","gas_bred","rocket","rifle","rifle","rifle",S_ripperFire,S_rocketExplode,Bullet_Proj_Stick,["chain_fire",3,3,1],{},"粘人","榴弹发射器始终保持着最初的设计——榴弹粘在敌人身上后延时爆炸。是战场上士兵的最爱。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         if(false)
         {
            return;
         }
         §§push(6);
         §§push("hrocket");
         §§push("hrocket");
         §§push("冰猎人\x1f");
         §§push("Human");
         §§push(3200);
         §§push(45);
         §§push([1,1,1]);
         §§push(20);
         §§push(120);
         §§push(0.6);
         §§push(5);
         §§push(3);
         §§push(70);
         §§push(4);
         §§push(true);
         §§push(0.3);
         §§push(9);
         §§push(-5);
         §§push("gas_small");
         §§push("gas_bblue");
         §§push("rocket");
         §§push("rocket");
         §§push("rocket");
         §§push("rocket");
         §§push(S_rocketFire);
         §§push(S_rocketExplode);
         §§push(Bullet_Proj_Follow);
         §§push(["gas_sblue",2,1,180,7]);
         §§push({});
         §§push("追踪");
         §§push("火箭是热制导且射速很快，它们的核心其实是极冷的以免成为自己的目标。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         if(false)
         {
            return false;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
         §\x11§(6,"spitter","spitter","酸猎犬\x1f","Alien",5000,30,[0,0,0],15,100,0.4,24,2,60,6,true,0.2,8,10,"green_shot","gas_big2","rocket","heavy","heavy","heavy",S_laserBig,S_rocketExplode,Bullet_Proj_Basic,["gas_med",4,4],{},"无\x1f","尽管它的威力看上去没有传统火箭威力大，但是酸猎犬的威力在于命中后会立刻爆炸并溅射出大范围的腐蚀性强酸。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         §§push(6);
         §§push("creditsgun");
         §§push("creditsgun");
         §§push("黄金加农\x1f");
         §§push("奢侈\x1f\x1f");
         §§push(1);
         §§push(30);
         §§push([1.2,1.2,1.2]);
         §§push(30);
         §§push(60);
         §§push(0.5);
         §§push(1);
         §§push(1);
         §§push(55);
         §§push(2);
         §§push(true);
         §§push(0.2);
         §§push(9);
         §§push(3);
         §§push("plasmapistol_hit");
         §§push("gas_bigblue");
         §§push("pistol");
         §§push("rifle");
         §§push("rifle");
         §§push("rifle");
         §§push(S_laserBig);
         §§push(null);
         §§push(Bullet_Line_Sniper);
         §§push([true,7.5,26265,0.5,2.5,6737151,0.6]);
         §§push({"useCredits":4});
         if(false)
         {
            return false;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),"烧钱\x1f\x1f\x1f\x1f\x1f\x1f","黄金加农炮拥有一切：威力、速度、精度、爆炸。但是，与其他武器不同，它使用金币作为子弹。所以用它的时候，盯紧钱包吧。");
         §\x11§(6,"hrocket2","hrocket2","冰冻死神","Human",-1,30,[1,1,1],20,120,0.6,14,6,75,6,true,0.2,10,-6,"gas_small","gas_bblue","rocket","rocket","rocket","rocket",S_rocketFire,S_rocketExplode,Bullet_Proj_Follow,["gas_sblue",3,1,180,8],{},"追踪","火箭是热制导且射速很快，它们的核心其实是极冷的以免成为自己的目标。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
         §§push(§§findproperty(§\x11§));
         §§push(7);
         §§push("env");
         §§push("");
         §§push("Environment");
         §§push("");
         §§push(0);
         §§push(0);
         §§push([0,0,0]);
         §§push(0);
         §§push(0);
         if(false)
         {
            return;
         }
         var _temp_1:* = §§pop();
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),_temp_1,_temp_1,0,0,0,0,false,1,3,0,"","","","","","",null,null,null,[],{},"","");
         §§push(§§findproperty(§\x11§));
         §§push(7);
         §§push("fire");
         §§push("");
         §§push("火\x1f");
         §§push("");
         §§push(0);
         §§push(1);
         §§push([0,0,0]);
         §§push(0);
         §§push(0);
         §§push(0);
         §§push(0);
         §§push(0);
         §§push(0);
         §§push(0);
         if(false)
         {
            return;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),false,1,3,0,"","fexpand","","","","",null,null,null,[],{},"","");
         §\x11§(7,"sword","","刀魂","",0,75,[0,0,0],15,0,0,0,0,7,0,false,1,3,0,"","","","","","",S_Whip,null,Bullet_Melee_Basic,[],{},"","");
         if(false)
         {
            return;
         }
         §§push(§§findproperty(§\x11§));
         §§push(7);
         §§push("grenade");
         §§push("");
         §§push("手雷\x1f");
         §§push("");
         §§push(0);
         §§push(45);
         §§push([0,0,0]);
         §§push(15);
         §§push(79);
         §§push(0.7);
         §§push(0);
         §§push(0);
         §§push(0);
         §§push(0);
         §§push(false);
         §§push(1);
         §§push(3);
         §§push(0);
         if(false)
         {
            return;
         }
         §§pop().§\x11§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),"","gas_big","","","","",null,S_rocketExplode,Bullet_Proj_Bounce,["grenade",3,3,2],{},"","");
         §\x11§(7,"mine","","地雷\x1f\x1f\x1f","",0,55,[0,0,0],15,79,0.7,0,0,0,0,false,1,3,0,"","gas_big","","","","",null,S_rocketExplode,Bullet_Proj_Mine,[30],{},"","");
         §\x11§(7,"bouncer","","突击跳弹枪","",0,10,[0,0,0],1,0,0,0,0,0,0,false,1,3,0,"","","","","","",null,null,Bullet_Proj_Bounce,["ember",1,5,1],{"setFire":0.5},"","");
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         while(_loc2_ < gunAr.length)
         {
            if(gunAr[_loc2_].cost > 0)
            {
               _loc1_ += gunAr[_loc2_].cost;
            }
            _loc2_++;
         }
         trace("Total Gun costs:",_loc1_);
      }
      
      public static function §\x11§(param1:uint, param2:String, param3:String, param4:String, param5:String, param6:int, param7:Number, param8:Array, param9:Number, param10:Number, param11:Number, param12:uint, param13:uint, param14:uint, param15:Number, param16:Boolean, param17:Number, param18:uint, param19:int, param20:String, param21:String, param22:String, param23:String, param24:String, param25:String, param26:*, param27:*, param28:*, param29:Array, param30:Object, param31:String, param32:String) : void
      {
         var _temp_1:* = new Stats_Guns();
         §§push(_temp_1);
         §§push(_temp_1);
         if(false)
         {
            throw true;
         }
         var _loc33_:* = §§pop();
         §§pop().id = param2;
         _loc33_.sprite = param3;
         _loc33_.name = param4;
         _loc33_.race = param5;
         _loc33_.cost = param6;
         _loc33_.shotSound = param26;
         _loc33_.hitSound = param27;
         _loc33_.type = param1;
         _loc33_.dmg = param7;
         _loc33_.mults = param8;
         _loc33_.force = param9;
         _loc33_.splash = param10;
         _loc33_.splashMult = param11;
         _loc33_.clipSize = param12;
         _loc33_.clipMax = param13;
         _loc33_.range = param14;
         _loc33_.recoil = param15;
         _loc33_.autoFire = param16;
         _loc33_.shootDelay = param17;
         §§push(_loc33_);
         §§push(param18);
         if(false)
         {
            return;
         }
         §§pop().xOff = §§pop();
         _loc33_.yOff = param19;
         _loc33_.effShoot = param20;
         _loc33_.effShell = param22;
         _loc33_.effHit = param21;
         _loc33_.params = param29;
         _loc33_.frameIdle = param23;
         _loc33_.frameFire = param24;
         _loc33_.frameReload = param25;
         _loc33_.cls = param28;
         _loc33_.extra = param30;
         _loc33_.special = param31;
         _loc33_.desc = param32;
         _loc33_.clipCur = 0;
         §§push(gunOb);
         if(false)
         {
            return;
         }
         §§pop()[param2] = _loc33_;
         gunAr.push(_loc33_);
      }
   }
}


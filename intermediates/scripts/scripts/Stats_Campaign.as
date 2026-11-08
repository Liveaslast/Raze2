package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2FrictionJointDef;
   import §\x1c\x10§.b2GearJointDef;
   import §\x1c\x10§.b2Joint;
   import §\x1c\x10§.b2LineJointDef;
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
   import flash.text.TextFormat;
   
   public class Stats_Campaign
   {
      
      private static var sn:uint = 0;
      
      public function Stats_Campaign()
      {
         super();
      }
      
      public static function setMatch(param1:uint, param2:uint) : void
      {
         MatchSettings.matchType = param1;
         MatchSettings.matchLevel = param2;
         if(false)
         {
            return;
         }
         switch(MatchSettings.matchType)
         {
            case 0:
               switch(MatchSettings.matchLevel)
               {
                  case 0:
                     §§push(0);
                     break;
                  case 1:
                     §§push(1);
                     if(false)
                     {
                        throw true;
                     }
                     break;
                  case 2:
                     §§push(2);
                     break;
                  case 3:
                     if(false)
                     {
                        return;
                     }
                     §§push(3);
                     break;
                  case 4:
                     §§push(4);
                     break;
                  case 5:
                     §§push(5);
                     break;
                  case 6:
                     §§push(6);
                     break;
                  case 7:
                     §§push(7);
                     break;
                  case 8:
                     §§push(8);
                     break;
                  case 9:
                     §§push(9);
                     break;
                  case 10:
                     §§push(10);
                     break;
                  case 11:
                     §§push(11);
                     break;
                  case 12:
                     §§push(12);
                     break;
                  case 13:
                     §§push(13);
                     break;
                  case 14:
                     §§push(14);
                     break;
                  default:
                     §§push(15);
               }
               switch(§§pop())
               {
                  case 0:
                     §\f\x0e§(M_Infernal,[13,1,2],M_Throwdown,[4]);
                     §\n\x18§(15,"死亡赛\x1f",2,"tut",1,"raze",M_Throwdown,"闯入\x1f\x1f\x1f\x1f\x1f","距离上一次侵略战已经有9年了。跟你的最高长官Johnny Rockit重新学习一下战斗规则吧。\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     MatchSettings.matchExtra = "武器:鸟铳\x1f\x1f";
                     MatchSettings.player.extra.noAmmo = true;
                     MatchSettings.player.extra.spawn = {
                        "x":138,
                        "y":513,
                        "node":"a"
                     };
                     MatchSettings.player.ability = "none";
                     MatchSettings.player.weapons[2] = 0;
                     §\x16§("J. Rockit",1,"rambo",6,§\n\r§("johnny"),"sword",§\f\x07§("johnny"),{
                        "aimPlayer":true,
                        "speak":"b",
                        "spawn":{
                           "x":160,
                           "y":513,
                           "node":"a"
                        },
                        "noStand":true
                     });
                     §\x16§("Alien",2,"aspace",3,§\n\r§("alien"),"none",§\f\x07§("alien"),{"noSpawn":true});
                     §§push(§§findproperty(§\x16§));
                     §§push("Alien");
                     §§push(2);
                     §§push("aspace");
                     §§push(3);
                     §§push(§\n\r§("alien"));
                     §§push("none");
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§\f\x07§("alien"),{"noSpawn":true});
                     break;
                  case 1:
                     §\f\x0e§(null,null,null,null);
                     §§push(§§findproperty(§\n\x18§));
                     §§push(30);
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\n\x18§(§§pop(),"死亡赛\x1f",2,"city2",1,"raze",M_Necro,"幸存者搜寻\x1f","一周前我们和我们的战斗飞船Echo-1失去了联系。我们相信它是受到了攻击，在它坠毁僵尸隔离区或许还有幸存者。去那里查看一下情况，但是注意：那里有大量的僵尸。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     §\x16§("J. Rockit",1,"rambo",9,§\n\r§("johnny"),"sword",§\f\x07§("johnny"));
                     §\x16§("Zombie",2,"zurban",1,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{"noSpawn":true});
                     §§push(§§findproperty(§\x16§));
                     if(false)
                     {
                        return;
                     }
                     §§push("Zombie");
                     §§push(2);
                     §§push("zbeach");
                     §§push(1);
                     §§push(§\n\r§("zombie"));
                     §§push("none");
                     §§push(§§findproperty(§\f\x07§));
                     if(false)
                     {
                        throw true;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop().§\f\x07§("zombie"),{"noSpawn":true});
                     §\x16§("Zombie",2,"zelderly",1,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{"noSpawn":true});
                     §\x16§("Zombie",2,"zbiker",1,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{"noSpawn":true});
                     §\x16§("Zombie",2,"zbiker2",1,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{"noSpawn":true});
                     §§push(§§findproperty(§\x16§));
                     §§push("Zombie");
                     §§push(2);
                     §§push("zurban");
                     §§push(1);
                     §§push(§\n\r§("zombie"));
                     if(false)
                     {
                        return false;
                     }
                     §§push("none");
                     §§push(§\f\x07§("zombie"));
                     §§push("noSpawn");
                     §§push(true);
                     if(false)
                     {
                        return false;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null);
                     §\x16§("Zombie",2,"zbeach",1,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{"noSpawn":true});
                     §\x16§("Zombie",2,"zelderly",1,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{"noSpawn":true});
                     if(false)
                     {
                        return false;
                     }
                     §\x16§("Zombie",2,"zbiker",1,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{"noSpawn":true});
                     §\x16§("Zombie",2,"zbiker2",1,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{"noSpawn":true});
                     break;
                  case 2:
                     §\f\x0e§(null,null,null,null);
                     §\n\x18§(20,"淘汰赛\x1f\x1f",2,"city",1,"mine",M_Warhead,"清理和打扫","我们要给你配备更多装备回去处理那些情况。这次你将拥有喷火器和防火的盔甲。清理一下那个被感染的城市，保护发现幸存者。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     MatchSettings.matchExtra = "武器:喷火器\n装备:电镀盔甲\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
                     MatchSettings.player.extra.startWeap = 5;
                     MatchSettings.player.weapons[5] = 4;
                     MatchSettings.player.equip0 = 3;
                     §\x16§("J. Rockit",1,"mine",9,§\n\r§("explosives"),"sword",§\f\x07§("explosives"),{"startWeap":5});
                     §§push(§§findproperty(§\x16§));
                     §§push("Cpt. Biggs");
                     if(false)
                     {
                        return;
                     }
                     §§push(1);
                     §§push("raze3");
                     §§push(10);
                     §§push(§\n\r§("zombie"));
                     §§push("none");
                     §§push(§\f\x07§("zombie"));
                     §§push({"noSpawn":true});
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     §\x16§("Zombie",2,"zurban",1,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{
                        "lives":3,
                        "dblFire":true
                     });
                     §\x16§("Zombie",2,"zbeach",1,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{
                        "lives":3,
                        "dblFire":true
                     });
                     §\x16§("Zombie",2,"zelderly",1,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{
                        "lives":3,
                        "dblFire":true
                     });
                     §§push(§§findproperty(§\x16§));
                     §§push("Zombie");
                     §§push(2);
                     §§push("zbiker");
                     §§push(1);
                     §§push(§\n\r§("zombie"));
                     §§push("none");
                     §§push(§\f\x07§("zombie"));
                     §§push("lives");
                     §§push(3);
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null);
                     §\x16§("Zombie",2,"zbiker2",1,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{
                        "lives":3,
                        "dblFire":true
                     });
                     §\x16§("Zombie",2,"zurban",1,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{
                        "lives":3,
                        "dblFire":true
                     });
                     §\x16§("Zombie",2,"zbeach",1,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{
                        "lives":3,
                        "dblFire":true
                     });
                     §\x16§("Zombie",2,"zelderly",1,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{
                        "lives":3,
                        "dblFire":true
                     });
                     §\x16§("Zombie",2,"zbiker",1,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{
                        "lives":3,
                        "dblFire":true
                     });
                     break;
                  case 3:
                     §§push(§§findproperty(§\f\x0e§));
                     §§push(M_Theloop);
                     §§push([6,8]);
                     §§push(null);
                     §§push(10);
                     §§push(9);
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\f\x0e§(§§pop(),§§pop(),§§pop(),null);
                     §\n\x18§(16,"死亡赛\x1f",2,"space2",2,"raze2",M_Infernal,"因果效应\x1f\x1f\x1f\x1f","扮演一周前Biggs船长，看看那次导致Echo-1坠毁和整个异形入侵的事件。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     MatchSettings.matchExtra = "角色:Biggs船长\x1f\x1f\x1f";
                     if(false)
                     {
                        return false;
                     }
                     MatchSettings.player.name = "Cpt. Biggs";
                     §\x16§("Transport Bot",1,"bspace",6,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     §\x16§("Transport Bot",1,"bspace",6,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     §\x16§("Transport Bot",1,"bspace",6,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     §\x16§("Alien",2,"aspace",4,§\n\r§("alien"),"none",§\f\x07§("alien"),{"noSpawn":true});
                     §§push(§§findproperty(§\x16§));
                     §§push("Alien");
                     §§push(2);
                     §§push("aspace");
                     §§push(4);
                     §§push(§\n\r§("alien"));
                     §§push("none");
                     §§push(§§findproperty(§\f\x07§));
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop().§\f\x07§("alien"),{"noSpawn":true});
                     §\x16§("Alien",2,"aspace",4,§\n\r§("alien"),"none",§\f\x07§("alien"),{"noSpawn":true});
                     break;
                  case 4:
                     §§push(§§findproperty(§\f\x0e§));
                     if(false)
                     {
                        throw true;
                     }
                     §§pop().§\f\x0e§(null,null,null,null);
                     §\n\x18§(5,"夺旗赛\x1f\x1f\x1f\x1f\x1f\x1f\x1f",2,"space",2,"raze",M_Ricochet,"取回\x1f\x1f\x1f","异形一定是认为我们拿了它们的文物才发动攻击的。去飞船残骸那把那些东西拿来还给它们，立刻并永久终止这场无谓战争吧。\x1f");
                     §\x16§("J. Rockit",1,"space",9,§\n\r§("johnny"),"sword",§\f\x07§("johnny"));
                     §§push(§§findproperty(§\x16§));
                     §§push("Transport Bot");
                     §§push(2);
                     §§push("bspace");
                     §§push(4);
                     §§push(§\n\r§("robot"));
                     §§push("static");
                     §§push(§§findproperty(§\f\x07§));
                     §§push("robot");
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop().§\f\x07§(§§pop()));
                     §\x16§("Transport Bot",2,"bspace",4,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     §\x16§("Transport Bot",2,"bspace",4,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     break;
                  case 5:
                     §\f\x0e§(null,null,null,null);
                     if(false)
                     {
                        return;
                     }
                     §§push(§§findproperty(§\n\x18§));
                     §§push(10);
                     §§push("重装机甲");
                     §§push(0);
                     §§push("jungle");
                     §§push(3);
                     §§push("raze");
                     §§push(M_Throwdown);
                     §§push("新成员\x1f\x1f\x1f");
                     §§push("在我们退还文物之前，我们让最顶尖的科学家研究了一下它们。异形们这么想拿回它们肯定是有原因的。这段时间内，带着我们的新成员去试验圆顶，跟那些训练机器人玩玩吧。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\n\x18§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     §§push(§§findproperty(§\x16§));
                     §§push("Training Bot");
                     §§push(0);
                     §§push("bjungle");
                     §§push(3);
                     §§push(§§findproperty(§\n\r§));
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop().§\n\r§("robot"),"static",§\f\x07§("robot"));
                     §\x16§("Training Bot",0,"bjungle",3,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     §\x16§("Training Bot",0,"bjungle",3,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     §\x16§("Training Bot",0,"bjungle",3,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     §\x16§("Training Bot",0,"bjungle",3,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     break;
                  case 6:
                     §\f\x0e§(null,null,null,[14]);
                     §\n\x18§(100,"控制赛\x1f",2,"ocean",3,"raze",M_Theloop,"守住要塞\x1f","我们的研究员仍在探索文物的力量，但是异形发现了我们的水下实验室。过去那里保护好文物，在我们发现它们全部潜能之前，绝不能让它们被异形夺走。\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     §\x16§("J. Rockit",1,"mine",9,§\n\r§("johnny"),"sword",§\f\x07§("johnny"));
                     §§push(§§findproperty(§\x16§));
                     §§push("Security Bot");
                     §§push(1);
                     §§push("bsnow");
                     §§push(5);
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§\n\r§("robot"),"static",§\f\x07§("robot"));
                     §\x16§("Security Bot",1,"bsnow",5,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     §\x16§("Alien",2,"amarine",5,§\n\r§("alien"),"mine",§\f\x07§("alien"));
                     §§push(§§findproperty(§\x16§));
                     §§push("Alien");
                     §§push(2);
                     §§push("amarine");
                     §§push(5);
                     §§push(§§findproperty(§\n\r§));
                     §§push("alien");
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop().§\n\r§(§§pop()),"mine",§\f\x07§("alien"));
                     §§push(§§findproperty(§\x16§));
                     §§push("Alien");
                     §§push(2);
                     §§push("amarine");
                     §§push(5);
                     §§push(§\n\r§("alien"));
                     §§push("mine");
                     §§push(§\f\x07§("alien"));
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     §\x16§("Zombie",2,"zbeach",5,§\n\r§("zombie"),"none",§\f\x07§("zombie"));
                     break;
                  case 7:
                     §\f\x0e§(null,null,null,[11]);
                     §\n\x18§(15,"死亡赛\x1f",0,"desert2",4,"raze",M_Rocket,"处女任务\x1f\x1f\x1f\x1f","我们在沙漠里发现了异形的船坞。它们正在我们的星球上建造更多的飞船。带上我们第一次参加任务的新成员，教教他如何成为团队内杀敌最多的人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     MatchSettings.player.team = 1;
                     §§push(§§findproperty(§\x16§));
                     if(false)
                     {
                        return;
                     }
                     §§push("J. Rockit");
                     §§push(1);
                     §§push("rambo");
                     §§push(9);
                     §§push(§\n\r§("johnny"));
                     §§push("sword");
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§\f\x07§("johnny"));
                     §\x16§("Md. Sage",1,"soldier",6,§\n\r§("medic"),"heal",§\f\x07§("medic"));
                     §§push(§§findproperty(§\x16§));
                     §§push("Ex. Treem");
                     §§push(1);
                     §§push("soldier2");
                     §§push(6);
                     §§push(§\n\r§("explosives"));
                     §§push("grenade");
                     §§push(§\f\x07§("explosives"));
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     §\x16§("Alien",2,"adesert",5,§\n\r§("alien"),"mine",§\f\x07§("alien"));
                     §§push(§§findproperty(§\x16§));
                     §§push("Alien");
                     §§push(2);
                     if(false)
                     {
                        return false;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),"adesert",5,§\n\r§("alien"),"mine",§\f\x07§("alien"));
                     §\x16§("Alien",2,"adesert",5,§\n\r§("alien"),"mine",§\f\x07§("alien"));
                     break;
                  case 8:
                     §\f\x0e§(null,null,M_Infernal,[12,17,5,20]);
                     §§push(§§findproperty(§\n\x18§));
                     §§push(150);
                     §§push("控制赛\x1f");
                     §§push(2);
                     §§push("snow");
                     §§push(5);
                     if(false)
                     {
                        return false;
                     }
                     §§pop().§\n\x18§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),"raze",M_Theloop,"惊天发现\x1f\x1f\x1f\x1f\x1f\x1f","我们终于发现了文物的真实力量，但异形好像再次找到了它们的位置，好像文物发出了类似GPS的信号。不惜一切代价去保护好文物。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     §\x16§("J. Rockit",1,"rambo",9,§\n\r§("johnny"),"sword",§\f\x07§("johnny"));
                     §\x16§("Md. Sage",1,"soldier",6,§\n\r§("medic"),"heal",§\f\x07§("medic"));
                     §§push(§§findproperty(§\x16§));
                     §§push("Ex. Treem");
                     §§push(1);
                     §§push("soldier2");
                     §§push(6);
                     §§push(§\n\r§("explosives"));
                     if(false)
                     {
                        return false;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),"grenade",§\f\x07§("explosives"));
                     §§push(§§findproperty(§\x16§));
                     §§push("Alien");
                     §§push(2);
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),"asnow",5,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{"noSpawn":true});
                     §§push(§§findproperty(§\x16§));
                     §§push("Alien");
                     §§push(2);
                     §§push("asnow");
                     §§push(5);
                     §§push(§\n\r§("alien"));
                     §§push("cloak");
                     §§push(§§findproperty(§\f\x07§));
                     §§push("alien");
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop().§\f\x07§(§§pop()),{"noSpawn":true});
                     §§push(§§findproperty(§\x16§));
                     §§push("Alien");
                     §§push(2);
                     if(false)
                     {
                        return;
                     }
                     §§push("asnow");
                     §§push(5);
                     §§push(§\n\r§("alien"));
                     §§push("cloak");
                     §§push(§§findproperty(§\f\x07§));
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop().§\f\x07§("alien"),{"noSpawn":true});
                     §\x16§("Alien",2,"asnow",5,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{"noSpawn":true});
                     break;
                  case 9:
                     §\f\x0e§(null,null,null,null);
                     §\n\x18§(10,"淘汰赛\x1f\x1f",2,"desert",7,"raze",M_Rose,"奇怪的邂逅\x1f\x1f","我们和船厂失去了联系，最让人担心的是……你的小组现在正在执行任务，所以你必须独自过去查看一下情况。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     §\x16§("Commander",2,"acommander",6,§\n\r§("commander"),"teleport",§\f\x07§("commander"));
                     break;
                  case 10:
                     §\f\x0e§(null,[16],null,[15]);
                     §\n\x18§(150,"控制赛\x1f",2,"mines",5,"raze",M_Necro,"陷阱\x1f","去矿山安置第一个文物。那个区域有大量的僵尸，所以你必须在战斗中完成任务。你的小组仍然在执行其他任务，但他们很快就回来协助你。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     §\x16§("J. Rockit",1,"rambo",9,§\n\r§("johnny"),"sword",§\f\x07§("johnny"),{"noSpawn":true});
                     §\x16§("Md. Sage",1,"soldier",6,§\n\r§("medic"),"heal",§\f\x07§("medic"),{"noSpawn":true});
                     §\x16§("Ex. Treem",1,"soldier2",6,§\n\r§("explosives"),"grenade",§\f\x07§("explosives"),{"noSpawn":true});
                     §\x16§("Zombie",2,"zurban",3,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{});
                     §\x16§("Zombie",2,"zbeach",3,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{});
                     §§push(§§findproperty(§\x16§));
                     §§push("Zombie");
                     §§push(2);
                     §§push("zelderly");
                     §§push(3);
                     §§push(§\n\r§("zombie"));
                     §§push("none");
                     §§push(§§findproperty(§\f\x07§));
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop().§\f\x07§("zombie"),{});
                     §\x16§("Zombie",2,"zbiker",3,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{});
                     break;
                  case 11:
                     §\f\x0e§(null,[26],null,[23]);
                     §§push(§§findproperty(§\n\x18§));
                     §§push(10);
                     §§push("淘汰赛\x1f\x1f");
                     §§push(2);
                     §§push("ocean2");
                     §§push(6);
                     §§push("raze");
                     §§push(M_Theloop);
                     §§push("清扫\x1f\x1f");
                     §§push("第一个文物已经放置完毕并激活了。但现在放文物的水下实验室受到了攻击。把实验室的敌人清理掉！\x1f\x1f");
                     if(false)
                     {
                        throw true;
                     }
                     §§pop().§\n\x18§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     §§push(§§findproperty(§\x16§));
                     §§push("J. Rockit");
                     §§push(1);
                     §§push("rambo");
                     §§push(9);
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§\n\r§("johnny"),"sword",§\f\x07§("johnny"));
                     §\x16§("Md. Sage",1,"soldier",6,§\n\r§("medic"),"heal",§\f\x07§("medic"));
                     §\x16§("Security Bot",1,"bsnow",5,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     §\x16§("Alien",2,"amarine",5,§\n\r§("alien"),"mine",§\f\x07§("alien"));
                     §\x16§("Alien",2,"amarine",5,§\n\r§("alien"),"mine",§\f\x07§("alien"));
                     §§push(§§findproperty(§\x16§));
                     §§push("Alien");
                     §§push(2);
                     §§push("amarine");
                     §§push(5);
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§\n\r§("alien"),"mine",§\f\x07§("alien"));
                     §\x16§("Zombie",2,"zbeach",5,§\n\r§("zombie"),"none",§\f\x07§("zombie"));
                     break;
                  case 12:
                     §\f\x0e§(null,null,null,null);
                     §\n\x18§(5,"夺旗赛\x1f\x1f\x1f\x1f\x1f\x1f\x1f",2,"mines2",6,"raze",M_Rocket,"收回\x1f\x1f\x1f","异形发现了我们放置第一个文物的地点，正在把它运走。马上返回矿山，不惜一切把它抢回来。矿山的安全机器人将会协助你。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     §\x16§("J. Rockit",1,"rambo",9,§\n\r§("johnny"),"sword",§\f\x07§("johnny"));
                     §\x16§("Md. Sage",1,"soldier",6,§\n\r§("medic"),"heal",§\f\x07§("medic"));
                     §\x16§("Ex. Treem",1,"soldier2",6,§\n\r§("explosives"),"grenade",§\f\x07§("explosives"));
                     §\x16§("Security Bot",1,"bmine",5,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     §\x16§("Security Bot",1,"bmine",5,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     §\x16§("Alien",2,"ajungle",5,§\n\r§("alien"),"mine",§\f\x07§("alien"),{});
                     §\x16§("Alien",2,"ajungle",5,§\n\r§("alien"),"mine",§\f\x07§("alien"),{});
                     §\x16§("Alien",2,"ajungle",5,§\n\r§("alien"),"mine",§\f\x07§("alien"),{});
                     §\x16§("Alien",2,"ajungle",5,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{});
                     §§push(§§findproperty(§\x16§));
                     §§push("Alien");
                     §§push(2);
                     §§push("ajungle");
                     §§push(5);
                     §§push(§\n\r§("alien"));
                     §§push("cloak");
                     §§push(§\f\x07§("alien"));
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),{});
                     §\x16§("Alien",2,"ajungle",5,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{});
                     break;
                  case 13:
                     §\f\x0e§(null,[27],null,[24]);
                     §§push(§§findproperty(§\n\x18§));
                     §§push(30);
                     §§push("死亡赛\x1f");
                     §§push(2);
                     §§push("snow2");
                     §§push(6);
                     §§push("raze");
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\n\x18§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),M_Ricochet,"变异\x1f\x1f","放置第三个文物。病毒正在开始生效，你可以感觉到身体内正在发生变化……\x1f\x1f\x1f\x1f\x1f");
                     MatchSettings.matchExtra = "装备:变异\x1f\x1f\x1f\x1f\x1f\x1f";
                     MatchSettings.player.equip0 = 6;
                     §\x16§("J. Rockit",1,"rambo",9,§\n\r§("johnny"),"sword",§\f\x07§("johnny"),{"lives":2});
                     §\x16§("Md. Sage",1,"soldier",6,§\n\r§("medic"),"heal",§\f\x07§("medic"),{"lives":2});
                     if(false)
                     {
                        return;
                     }
                     §§push(§§findproperty(§\x16§));
                     §§push("Ex. Treem");
                     §§push(1);
                     §§push("soldier2");
                     §§push(6);
                     §§push(§§findproperty(§\n\r§));
                     if(false)
                     {
                        return false;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop().§\n\r§("explosives"),"grenade",§\f\x07§("explosives"),{"lives":2});
                     §§push(§§findproperty(§\x16§));
                     §§push("Alien");
                     §§push(2);
                     §§push("asnow");
                     §§push(5);
                     §§push(§\n\r§("alien"));
                     §§push("mine");
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§\f\x07§("alien"),{});
                     §\x16§("Alien",2,"asnow",5,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{});
                     §\x16§("Alien",2,"asnow",5,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{});
                     §\x16§("Commander",2,"acommander",7,§\n\r§("commander"),"teleport",§\f\x07§("commander"),{"lives":6});
                     break;
                  case 14:
                     §§push(§§findproperty(§\f\x0e§));
                     §§push(null);
                     §§push([28]);
                     §§push(M_Warhead);
                     §§push([25,21,19,22]);
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\f\x0e§(§§pop(),§§pop(),§§pop(),§§pop());
                     §\n\x18§(10,"淘汰赛\x1f\x1f",2,"jungle3",7,"mutate",M_Rose,"最后的部署\x1f","最后的文物已经做好放置准备了。在流星群撞击我们之前把敌人打败。你已经完全变异成一个僵尸，但是整个人类的命运都掌握在你手上。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     MatchSettings.matchExtra = "角色：变异人";
                     MatchSettings.player.equip0 = 7;
                     §\x16§("J. Rockit",1,"rambo",9,§\n\r§("johnny"),"sword",§\f\x07§("johnny"),{"lives":2});
                     §§push(§§findproperty(§\x16§));
                     §§push("Md. Sage");
                     §§push(1);
                     §§push("soldier");
                     §§push(6);
                     §§push(§\n\r§("medic"));
                     §§push("heal");
                     §§push(§\f\x07§("medic"));
                     §§push({"lives":2});
                     if(false)
                     {
                        return false;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     §\x16§("Ex. Treem",1,"soldier2",6,§\n\r§("explosives"),"grenade",§\f\x07§("explosives"),{"lives":2});
                     §\x16§("Commander",2,"acommander",6,§\n\r§("commander"),"teleport",§\f\x07§("commander"),{"lives":6});
                     §\x16§("Commander",2,"acommander",6,§\n\r§("commander"),"teleport",§\f\x07§("commander"),{"lives":6});
                     §\x16§("Commander",2,"acommander",6,§\n\r§("commander"),"teleport",§\f\x07§("commander"),{"lives":6});
               }
               break;
            case 1:
               var _loc3_:uint = MatchSettings.matchLevel;
               switch(_loc3_)
               {
                  case 0:
                     §§push(0);
                     break;
                  case 1:
                     §§push(1);
                     break;
                  default:
                     §§push(2);
                     if(false)
                     {
                        return;
                     }
                     switch(_loc3_)
                     {
                        case §§pop():
                           §§push(2);
                           break;
                        case 3:
                           §§push(3);
                           break;
                        case 4:
                           §§push(4);
                           break;
                        default:
                           §§push(5);
                           §§push(_loc3_);
                           if(false)
                           {
                              return;
                           }
                           if(§§pop() === §§pop())
                           {
                              §§push(5);
                              break;
                           }
                           switch(_loc3_)
                           {
                              case 6:
                                 §§push(6);
                                 break;
                              case 7:
                                 §§push(7);
                                 break;
                              case 8:
                                 §§push(8);
                                 break;
                              case 9:
                                 §§push(9);
                                 break;
                              case 10:
                                 §§push(10);
                                 break;
                              case 11:
                                 §§push(11);
                                 break;
                              case 12:
                                 §§push(12);
                                 break;
                              case 13:
                                 §§push(13);
                                 break;
                              case 14:
                                 if(false)
                                 {
                                    throw true;
                                 }
                                 §§push(14);
                                 break;
                              default:
                                 §§push(15);
                           }
                     }
               }
               switch(§§pop())
               {
                  case 0:
                     §\f\x0e§(M_Theloop,[7,31],null,[40]);
                     §\n\x18§(15,"死亡赛\x1f",2,"space2",5,"acommander",M_Rocket,"失去联系\x1f\x1f\x1f\x1f\x1f","我们的文物运输船旁边发现了人类飞船。清除所有人类威胁，文物必须安全啊抵达我们的星球。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     MatchSettings.player.extra.spawn = {
                        "x":1300,
                        "y":700,
                        "node":"o"
                     };
                     §§push(§§findproperty(§\x16§));
                     §§push("Alien");
                     §§push(1);
                     §§push("aspace");
                     §§push(6);
                     §§push(§\n\r§("alien"));
                     §§push("cloak");
                     §§push(§\f\x07§("alien"));
                     §§push("spawn");
                     §§push({
                        "x":800,
                        "y":700,
                        "node":"o"
                     });
                     if(false)
                     {
                        throw true;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null);
                     §\x16§("Alien",1,"aspace",6,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{"spawn":{
                        "x":2000,
                        "y":700,
                        "node":"n"
                     }});
                     §\x16§("Captain",2,"raze2",7,§\n\r§("johnny"),"grenade",§\f\x07§("johnny"),{});
                     §\x16§("Transport Bot",2,"bspace",6,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     §\x16§("Transport Bot",2,"bspace",6,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     break;
                  case 1:
                     §\f\x0e§(null,null,null,null);
                     §\n\x18§(150,"控制赛\x1f",2,"space",5,"acommander",M_Theloop,"搜寻小组","文物已经不在我们的船上了，在附近的残骸处找找。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     §\x16§("Alien",1,"aspace",6,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{});
                     §\x16§("Alien",1,"aspace",6,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{});
                     §\x16§("Transport Bot",2,"bspace",6,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     §\x16§("Transport Bot",2,"bspace",6,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     §\x16§("Transport Bot",2,"bspace",6,§\n\r§("robot"),"static",§\f\x07§("robot"));
                     break;
                  case 2:
                     §\f\x0e§(M_Rose,[29,30],null,null);
                     §\n\x18§(20,"死亡赛\x1f",2,"tutq2",6,"acommander",null,"入侵\x1f\x1f","文物找不到了…一定是人类拿走了。我们第一个计划是摧毁他们的战斗基地。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     §§push(MatchSettings.player.extra);
                     §§push({
                        "x":1420,
                        "y":1090,
                        "node":"h"
                     });
                     if(false)
                     {
                        return false;
                     }
                     §§pop().spawn = §§pop();
                     §\x16§("Alien",1,"aspace",6,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{"spawn":{
                        "x":2475,
                        "y":1090,
                        "node":"o"
                     }});
                     §\x16§("Human",2,"rambo",6,§\n\r§("johnny"),"sword",§\f\x07§("johnny"));
                     §\x16§("Raze Soldier",2,"raze",6,§\n\r§("raze"),"ammo",§\f\x07§("raze"));
                     break;
                  case 3:
                     §\f\x0e§(null,null,null,null);
                     §\n\x18§(10,"淘汰赛\x1f\x1f",3,"city",5,"acommander",M_Ricochet,"疫情\x1f\x1f","我们发现了那艘飞船出来的救生舱，就在僵尸都市。我们必须赶在人类之前找到他！\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     §\x16§("Alien",1,"aspace",8,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{});
                     §§push(§§findproperty(§\x16§));
                     §§push("Alien");
                     §§push(1);
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),"aspace",8,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{});
                     §\x16§("Human",3,"mine",10,§\n\r§("johnny"),"sword",§\f\x07§("johnny"),{"startWeap":5});
                     §\x16§("Survivor",3,"raze3",7,§\n\r§("raze"),"none",§\f\x07§("raze"),{});
                     §\x16§("Zombie",2,"zurban",6,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{
                        "lives":3,
                        "dblFire":true
                     });
                     §\x16§("Zombie",2,"zbeach",6,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{
                        "lives":3,
                        "dblFire":true
                     });
                     §\x16§("Zombie",2,"zelderly",6,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{
                        "lives":3,
                        "dblFire":true
                     });
                     §§push(§§findproperty(§\x16§));
                     §§push("Zombie");
                     §§push(2);
                     §§push("zbiker");
                     §§push(6);
                     §§push(§\n\r§("zombie"));
                     §§push("none");
                     §§push(§\f\x07§("zombie"));
                     if(false)
                     {
                        throw true;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),{
                        "lives":3,
                        "dblFire":true
                     });
                     §§push(§§findproperty(§\x16§));
                     §§push("Zombie");
                     §§push(2);
                     §§push("zbiker2");
                     §§push(6);
                     §§push(§\n\r§("zombie"));
                     §§push("none");
                     §§push(§§findproperty(§\f\x07§));
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop().§\f\x07§("zombie"),{
                        "lives":3,
                        "dblFire":true
                     });
                     break;
                  case 4:
                     §\f\x0e§(null,null,null,null);
                     §\n\x18§(15,"重装机甲",0,"mines",5,"acommander",M_Necro,"惩戒\x1f\x1f\x1f\x1f","人类带着那个幸存者和文物逃走了。僵尸也不再与我们同盟了，去僵尸感染最严重的地区走一趟、获取它们的效忠。你必须独自完成任务。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     §§push(§§findproperty(§\x16§));
                     §§push("Zombie");
                     §§push(0);
                     §§push("zurban");
                     §§push(6);
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§\n\r§("zombie"),"none",§\f\x07§("zombie"),{});
                     §\x16§("Zombie",0,"zbeach",6,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{});
                     §\x16§("Zombie",0,"zelderly",6,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{});
                     §\x16§("Zombie",0,"zbiker",6,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{});
                     §\x16§("Zombie",0,"zbiker2",6,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{});
                     break;
                  case 5:
                     §\f\x0e§(null,null,null,null);
                     §\n\x18§(9,"淘汰赛\x1f\x1f",3,"ocean",6,"acommander",M_Theloop,"突破点\x1f\x1f\x1f\x1f\x1f","我们终于成功训练了那些不死族来为我们效力。跟踪文物的系统已经生效了，已经确定了它们现在在一个水下的基地里。\x1f\x1f\x1f");
                     §\x16§("Alien",1,"aspace",8,§\n\r§("alien"),"static",§\f\x07§("alien"),{});
                     §\x16§("Zombie",1,"zbeach",5,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{});
                     §\x16§("Zombie",1,"zbeach",5,§\n\r§("zombie"),"none",§\f\x07§("zombie"),{});
                     §\x16§("Human",2,"mine",7,§\n\r§("johnny"),"grenade",§\f\x07§("johnny"),{});
                     §\x16§("Human",2,"mine",7,§\n\r§("johnny"),"grenade",§\f\x07§("raze"),{});
                     §\x16§("Security Bot",2,"bsnow",8,§\n\r§("robot"),"mine",§\f\x07§("robot"));
                     §\x16§("Security Bot",2,"bsnow",8,§\n\r§("robot"),"mine",§\f\x07§("robot"));
                     break;
                  case 6:
                     §\f\x0e§(null,null,null,null);
                     §\n\x18§(25,"死亡赛\x1f",2,"desert2",6,"acommander",M_Rocket,"强大的防守\x1f","为了建立对地球的攻势，我们开始在多个地点生产飞船。但好像人类已经察觉了。我们给所有的成员配备了酸猎犬，小心不要误伤队友。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     MatchSettings.matchExtra = "武器:酸猎犬\x1f\x1f";
                     MatchSettings.player.extra.startWeap = 6;
                     MatchSettings.player.weapons[6] = 4;
                     §\x16§("Alien",1,"aspace",7,§\n\r§("alien"),"grenade",§\f\x07§("alien"),{"startWeap":6});
                     §\x16§("Alien",1,"aspace",7,§\n\r§("alien"),"grenade",§\f\x07§("alien"),{"startWeap":6});
                     §\x16§("Human",2,"rambo",7,§\n\r§("johnny"),"sword",§\f\x07§("johnny"));
                     §\x16§("Human",2,"soldier",7,§\n\r§("medic"),"heal",§\f\x07§("medic"));
                     §\x16§("Human",2,"soldier2",7,§\n\r§("explosives"),"grenade",§\f\x07§("explosives"));
                     §\x16§("Raze Soldier",2,"raze",9,§\n\r§("raze"),"static",§\f\x07§("raze"));
                     break;
                  case 7:
                     §\f\x0e§(null,null,null,[37]);
                     §\n\x18§(10,"夺旗赛\x1f\x1f\x1f\x1f\x1f\x1f\x1f",2,"mines",6,"acommander",M_Necro,"估计失误\x1f\x1f","人类正在安置第一个文物。不惜一切阻止他们！\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     §\x16§("Alien",1,"aspace",8,§\n\r§("alien"),"grenade",§\f\x07§("alien"));
                     §\x16§("Zombie",1,"zurban",6,§\n\r§("zombie"),"none",§\f\x07§("zombie"));
                     §\x16§("Zombie",1,"zbiker",6,§\n\r§("zombie"),"none",§\f\x07§("zombie"));
                     §\x16§("Human",2,"rambo",9,§\n\r§("johnny"),"sword",§\f\x07§("johnny"));
                     §\x16§("Human",2,"soldier",8,§\n\r§("medic"),"heal",§\f\x07§("medic"));
                     §\x16§("Human",2,"soldier2",8,§\n\r§("explosives"),"grenade",§\f\x07§("explosives"));
                     §\x16§("Raze Soldier",2,"raze",10,§\n\r§("raze"),"static",§\f\x07§("raze"));
                     break;
                  case 8:
                     §\f\x0e§(null,null,null,null);
                     §\n\x18§(25,"死亡赛\x1f",2,"snow",6,"acommander",M_Theloop,"伏击\x1f\x1f\x1f\x1f","在矿山夺取文物的行动失败了。用你的隐形装备潜入他们北部的基地。如果我们能摧毁那里，或许可以破坏它们的通讯系统。\x1f\x1f\x1f ");
                     MatchSettings.player.extra.permInvis = true;
                     §\x16§("Alien",1,"asnow",8,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{"permInvis":true});
                     if(false)
                     {
                        throw true;
                     }
                     §\x16§("Alien",1,"asnow",8,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{"permInvis":true});
                     §\x16§("Alien",1,"asnow",8,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{"permInvis":true});
                     if(false)
                     {
                        return;
                     }
                     §\x16§("Human",2,"rambo",9,§\n\r§("johnny"),"sword",§\f\x07§("johnny"));
                     §§push(§§findproperty(§\x16§));
                     §§push("Human");
                     §§push(2);
                     §§push("soldier");
                     §§push(8);
                     if(false)
                     {
                        return;
                     }
                     §§push(§\n\r§("medic"));
                     §§push("heal");
                     §§push(§\f\x07§("medic"));
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     §\x16§("Human",2,"soldier2",8,§\n\r§("explosives"),"grenade",§\f\x07§("explosives"));
                     §\x16§("Raze Soldier",2,"raze",9,§\n\r§("raze"),"static",§\f\x07§("raze"));
                     break;
                  case 9:
                     §\f\x0e§(null,null,null,null);
                     §§push(§§findproperty(§\n\x18§));
                     §§push(10);
                     §§push("淘汰赛\x1f\x1f");
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\n\x18§(§§pop(),§§pop(),2,"desert",9,"acommander",M_Rose,"折磨\x1f\x1f\x1f","我们研发了一种新技术，可以让我们在战场上四处传送。我们准备发送一个遇险呼叫来引诱人类前往船坞。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     §\x16§("Human",2,"raze",10,§\n\r§("raze"),"static",§\f\x07§("raze2"),{});
                     §§push(MatchSettings.player);
                     if(false)
                     {
                        return false;
                     }
                     §§pop().ability = "teleport";
                     break;
                  case 10:
                     §\f\x0e§(null,null,null,[38]);
                     §\n\x18§(10,"夺旗赛\x1f\x1f\x1f\x1f\x1f\x1f\x1f",2,"ocean",7,"acommander",M_Theloop,"文物夺取第一战\x1f","人类正在他们的水下基地放置第二个文物！偷取文物给我们带回来。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     §\x16§("Alien",1,"asnow",6,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{});
                     §\x16§("Alien",1,"asnow",6,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{});
                     §\x16§("Human",2,"rambo",9,§\n\r§("johnny"),"sword",§\f\x07§("johnny"));
                     §\x16§("Human",2,"soldier",8,§\n\r§("medic"),"heal",§\f\x07§("medic"));
                     §§push(§§findproperty(§\x16§));
                     §§push("Human");
                     §§push(2);
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),"soldier2",8,§\n\r§("explosives"),"grenade",§\f\x07§("explosives"));
                     §\x16§("Raze Soldier",2,"raze",10,§\n\r§("raze"),"static",§\f\x07§("raze"));
                     break;
                  case 11:
                     §§push(§§findproperty(§\f\x0e§));
                     §§push(null);
                     §§push(null);
                     §§push(null);
                     if(false)
                     {
                        return false;
                     }
                     §§pop().§\f\x0e§(§§pop(),§§pop(),§§pop(),null);
                     §\n\x18§(25,"死亡赛\x1f",2,"jungle2",7,"acommander",M_Necro,"清理垃圾\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f","人类开始使用他们的圆顶进行新兵训练。消灭他们，确保他们的军队不再继续壮大。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     §\x16§("Alien",1,"aspace",6,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{});
                     §\x16§("Alien",1,"aspace",6,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{});
                     §\x16§("Human",2,"camo",8,§\n\r§("johnny"),"sword",§\f\x07§("johnny"));
                     §§push(§§findproperty(§\x16§));
                     §§push("Human");
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),2,"camo",8,§\n\r§("medic"),"heal",§\f\x07§("medic"));
                     §\x16§("Human",2,"camo",8,§\n\r§("explosives"),"grenade",§\f\x07§("explosives"));
                     §\x16§("Human",2,"camo",8,§\n\r§("raze"),"mine",§\f\x07§("raze"));
                     break;
                  case 12:
                     §\f\x0e§(null,null,M_Throwdown,[42]);
                     if(false)
                     {
                        return;
                     }
                     §\n\x18§(200,"控制赛\x1f",2,"space",8,"acommander",M_Ricochet,"拾取\x1f\x1f\x1f\x1f","我们收到消息称那艘我们击落的运输船上有一把威力巨大的武器叫做\"冰冻死神\"。去保护好武器。干掉所有阻拦你的人。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     §\x16§("Alien",1,"aspace",5,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{});
                     §\x16§("Alien",1,"aspace",5,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{});
                     if(false)
                     {
                        return;
                     }
                     §\x16§("Security Bot",2,"bsnow",9,§\n\r§("robot2"),"static",§\f\x07§("robot2"));
                     §§push(§§findproperty(§\x16§));
                     §§push("Security Bot");
                     §§push(2);
                     §§push("bsnow");
                     §§push(9);
                     §§push(§\n\r§("robot2"));
                     §§push("static");
                     §§push(§§findproperty(§\f\x07§));
                     §§push("robot2");
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop().§\f\x07§(§§pop()));
                     §\x16§("Security Bot",2,"bsnow",9,§\n\r§("robot2"),"static",§\f\x07§("robot2"));
                     break;
                  case 13:
                     if(false)
                     {
                        return;
                     }
                     §\f\x0e§(null,null,null,[39]);
                     §§push(§§findproperty(§\n\x18§));
                     if(false)
                     {
                        return false;
                     }
                     §§pop().§\n\x18§(30,"死亡赛\x1f",2,"snow2",8,"acommander",M_Rocket,"火箭赛\x1f\x1f","人类安置好了4个文物中的一半，现在正在放置第3个。用这把冰冻死神杀掉他们，阻止他们完成任务。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     MatchSettings.matchExtra = "武器:冰冻死神\x1f";
                     MatchSettings.player.extra.startWeap = 6;
                     MatchSettings.player.weapons[6] = 6;
                     §\x16§("Alien",1,"asnow",7,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{"startWeap":6});
                     §\x16§("Alien",1,"asnow",7,§\n\r§("alien"),"cloak",§\f\x07§("alien"),{"startWeap":6});
                     §\x16§("Human",2,"rambo",9,§\n\r§("johnny"),"sword",§\f\x07§("johnny"),{"startWeap":6});
                     §\x16§("Raze Soldier",2,"raze",10,§\n\r§("raze2"),"static",§\f\x07§("raze2"),{"startWeap":6});
                     break;
                  case 14:
                     §\f\x0e§(null,null,M_Infernal,[32,33,34,36,35,41]);
                     §\n\x18§(10,"淘汰赛\x1f\x1f",2,"jungle3",9,"acommander",M_Rose,"士兵的终结\x1f\x1f","人类正在放置最后的文物、流行也正在逼近。恐怕我们的星球没希望了…叫上另外两个指挥官，我们必须做最后一搏。\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     §§push(§§findproperty(§\x16§));
                     §§push("Commander");
                     §§push(1);
                     §§push("acommander");
                     §§push(6);
                     §§push(§\n\r§("commander"));
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),"teleport",§\f\x07§("commander"),{});
                     §\x16§("Commander",1,"acommander",6,§\n\r§("commander"),"teleport",§\f\x07§("commander"),{});
                     §§push(§§findproperty(§\x16§));
                     §§push("Raze Soldier");
                     §§push(2);
                     §§push("mutate");
                     §§push(10);
                     §§push(§\n\r§("raze3"));
                     §§push("static");
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§\f\x07§("raze3"),{
                        "lives":10,
                        "startWeap":6
                     });
                     §§push(§§findproperty(§\x16§));
                     §§push("Human");
                     §§push(2);
                     §§push("rambo");
                     if(false)
                     {
                        throw true;
                     }
                     §§push(9);
                     §§push(§\n\r§("johnny"));
                     §§push("sword");
                     §§push(§\f\x07§("johnny"));
                     §§push("lives");
                     §§push(5);
                     §§push("startWeap");
                     §§push(3);
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x16§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null);
                     §\x16§("Human",2,"soldier",9,§\n\r§("medic"),"heal",§\f\x07§("medic"),{
                        "lives":5,
                        "startWeap":4
                     });
                     §\x16§("Human",2,"soldier2",9,§\n\r§("explosives"),"grenade",§\f\x07§("explosives"),{
                        "lives":5,
                        "startWeap":5
                     });
               }
               break;
            case 2:
               _loc3_ = MatchSettings.matchLevel;
               switch(0)
               {
               }
               §\n\x18§(10,"死亡赛\x1f",0,"jungle",1,"raze",null,"Challenge mode GO","This is the description");
               if(false)
               {
                  return false;
               }
         }
      }
      
      private static function §\f\x07§(param1:String) : Array
      {
         var _loc2_:Array = null;
         switch(param1)
         {
            case "raze":
               _loc2_ = [5,2,3];
               break;
            case "raze2":
               _loc2_ = [6,2,3];
               break;
            case "raze3":
               _loc2_ = [7,2,3];
               break;
            case "johnny":
               _loc2_ = [5,2,2];
               break;
            case "medic":
               §§push(2);
               if(false)
               {
                  return;
               }
               _loc2_ = null;
               break;
            case "explosives":
               _loc2_ = [3,3,4];
               break;
            case "zombie":
               _loc2_ = [6,0,0];
               break;
            case "alien":
               _loc2_ = [0,5,0];
               break;
            case "commander":
               if(false)
               {
                  return;
               }
               _loc2_ = [1,6,4];
               break;
            case "robot":
               _loc2_ = [4,4,1];
               break;
            case "robot2":
               _loc2_ = [6,4,1];
         }
         return _loc2_;
      }
      
      private static function §\n\r§(param1:String) : Array
      {
         var _loc2_:Array = null;
         var _loc3_:String = param1;
         switch(_loc3_)
         {
            case "raze":
               §§push(0);
               break;
            case "raze2":
               §§push(1);
               break;
            default:
               §§push("raze3");
               if(false)
               {
                  return;
               }
               switch(_loc3_)
               {
                  case §§pop():
                     §§push(2);
                     break;
                  case "johnny":
                     §§push(3);
                     break;
                  case "medic":
                     §§push(4);
                     break;
                  case "explosives":
                     §§push(5);
                     break;
                  case "zombie":
                     §§push(6);
                     break;
                  case "alien":
                     §§push(7);
                     break;
                  case "commander":
                     §§push(8);
                     break;
                  case "robot":
                     §§push(9);
                     break;
                  case "robot2":
                     §§push(10);
                     break;
                  default:
                     §§push(11);
               }
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = [0,0,0,0,0,0,0];
               break;
            case 1:
               if(false)
               {
                  return false;
               }
               _loc2_ = [0,0,0,0,0,0,0];
               break;
            case 2:
               _loc2_ = [0,0,0,0,0,0,0];
               break;
            case 3:
               _loc2_ = [2,1,3,0,0,0,1];
               break;
            case 4:
               _loc2_ = [0,1,0,3,0,0,3];
               break;
            case 5:
               if(false)
               {
                  return;
               }
               _loc2_ = [0,2,4,4,3,4,1];
               break;
            case 6:
               _loc2_ = [0,4,0,0,0,0,0];
               break;
            case 7:
               _loc2_ = [1,3,1,1,2,2,2];
               break;
            case 8:
               _loc2_ = [1,3,2,2,3,3,4];
               break;
            case 9:
               _loc2_ = [2,0,0,0,1,1,1];
               break;
            case 10:
               _loc2_ = [2,0,0,0,1,1,1];
         }
         return _loc2_;
      }
      
      public static function runScripts(param1:Game) : void
      {
         switch(MatchSettings.matchType)
         {
            case 0:
               var _loc2_:* = MatchSettings.matchLevel;
               §§push(0);
               if(false)
               {
                  return;
               }
               switch(_loc2_)
               {
                  case §§pop():
                     if(param1.player.sEvent == 11)
                     {
                        if(param1.fc == 30 * 2)
                        {
                           §§push(param1.hud);
                           §§push(param1.units);
                           if(false)
                           {
                              return false;
                           }
                           §§pop().setCampMsg(§§pop()[1],"太好了，通讯可用了！\x1f\x1f\x1f\x1f\x1f",5);
                        }
                        if(param1.fc == 30 * 6)
                        {
                           §§push(param1.hud);
                           §§push(param1.units);
                           if(false)
                           {
                              return;
                           }
                           §§pop().setCampMsg(§§pop()[1],"Okay " + param1.player.name + "，从这起我在这和你交谈。",5);
                        }
                        §§push(param1.fc);
                        if(false)
                        {
                           return;
                        }
                        if(§§pop() == 30 * 10)
                        {
                           param1.hud.setCampMsg(param1.units[1],"小心，它们来了！\x1f\x1f",5);
                        }
                        §§push(param1);
                        if(false)
                        {
                           throw true;
                        }
                        if(§§pop().fc == 30 * 15)
                        {
                           §§push(param1.units[1].matchInfo.extra);
                           §§push(false);
                           if(false)
                           {
                              return;
                           }
                           §§pop().aimPlayer = §§pop();
                           param1.units[1].matchInfo.extra.speak = null;
                           if(false)
                           {
                              return false;
                           }
                           param1.units[1].wait(0);
                           param1.units[2].spawn(1420,1090,"h");
                           param1.units[3].spawn(2475,1090,"o");
                        }
                     }
                     if(param1.matchSettings.team1score == 5 && sn == 0)
                     {
                        _loc2_ = §§findproperty(sn);
                        var _loc3_:* = _loc2_.sn + 1;
                        _loc2_.sn = _loc3_;
                        param1.hud.setCampMsg(param1.units[1],"啊！小心！\x1f\x1f\x1f\x1f");
                     }
                     if(param1.matchSettings.team1score == 8 && sn == 1)
                     {
                        ++sn;
                        param1.hud.setCampMsg(param1.units[1],"嗨，如果子弹不多的时候记得用你的技能!\x1f",6);
                     }
                     if(param1.matchSettings.team1score == 12 && sn == 2)
                     {
                        ++sn;
                        param1.hud.setCampMsg(param1.units[1],"还有几个，让它们见识下我们的厉害！",6);
                     }
                     break;
                  case 1:
                     if(param1.fc == 30 * 5)
                     {
                        param1.hud.setCampMsg(param1.units[1],"什么…一个人没有？\x1f");
                     }
                     if(param1.fc == 30 * 10)
                     {
                        param1.hud.setCampMsg(param1.units[1],"我有种不详的预感……\x1f\x1f\x1f\x1f");
                     }
                     if(param1.fc == 30 * 20)
                     {
                        param1.hud.setCampMsg(param1.units[1],"发现一个!干掉它!\x1f\x1f");
                        param1.units[2].spawn();
                     }
                     if(param1.fc == 30 * 30)
                     {
                        param1.units[3].spawn();
                     }
                     §§push(param1);
                     if(false)
                     {
                        throw true;
                     }
                     if(§§pop().fc == 30 * 38)
                     {
                        §§push(param1.units);
                        if(false)
                        {
                           return;
                        }
                        §§pop()[4].spawn();
                     }
                     if(param1.fc == 30 * 46)
                     {
                        §§push(param1.hud);
                        §§push(param1.units[1]);
                        §§push("注意，敌人越来越多。保持警惕!");
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(§§pop(),§§pop());
                        param1.units[5].spawn();
                        if(false)
                        {
                           return false;
                        }
                     }
                     if(param1.fc == 30 * 54)
                     {
                        §§push(param1.units);
                        if(false)
                        {
                           throw true;
                        }
                        §§pop()[6].spawn();
                     }
                     if(param1.fc == 30 * 64)
                     {
                        param1.units[7].spawn();
                     }
                     if(param1.fc == 30 * 76)
                     {
                        §§push(param1.hud);
                        §§push(param1.units[1]);
                        §§push("它们数量太多了!继续射击!\x1f\x1f\x1f\x1f\x1f");
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(§§pop(),§§pop());
                        param1.units[8].spawn();
                        if(false)
                        {
                           return;
                        }
                     }
                     if(param1.fc == 30 * 86)
                     {
                        param1.units[9].spawn();
                     }
                     if(param1.fc == 30 * 98)
                     {
                        param1.units[10].spawn();
                     }
                     if(param1.fc == 30 * 110)
                     {
                        §§push(param1.hud);
                        §§push(param1.units[1]);
                        §§push("我们被包围了!请求支援!重复，我们请求马上支援!\x1f\x1f\x1f");
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(§§pop(),§§pop(),8);
                        param1.units[11].spawn();
                     }
                     §§push(param1.fc);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() == 30 * 120)
                     {
                        param1.hud.setCampMsg("girl","救援船出发。坚持住，伙计们。\x1f\x1f",6,"Dani");
                     }
                     if(param1.fc == 30 * 126)
                     {
                        param1.hud.setCampMsg("girl","着陆区域太乱了，杀光它们我们才能下去接你!\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",7,"Dani");
                     }
                     if(param1.fc == 30 * 135)
                     {
                        param1.hud.setCampMsg(param1.units[1],"明白，我们开始吧\x1f\x1f" + param1.player.name + "!",8);
                     }
                     break;
                  case 2:
                     if(sn != 0)
                     {
                        §§push(param1.fc);
                        §§push(30 * 8);
                        if(false)
                        {
                           throw true;
                        }
                        if(§§pop() == §§pop())
                        {
                           param1.hud.setCampMsg(param1.units[1],"幸存者？你是来自Echo-1的么？\x1f\x1f\x1f\x1f\x1f",6);
                        }
                        if(param1.fc == 30 * 14)
                        {
                           param1.hud.setCampMsg(param1.units[2],"是的我是船长，带我离开这！\x1f\x1f\x1f\x1f\x1f",6);
                        }
                        if(param1.fc == 30 * 20)
                        {
                           param1.hud.setCampMsg(param1.units[1],"明白，我们清理一下这些僵尸然后呼叫救援船。",8);
                        }
                     }
                     else
                     {
                        if(param1.fc == 30 * 3)
                        {
                           param1.hud.setCampMsg(param1.units[1],"来吧，我们清理一下这!\x1f\x1f",5);
                        }
                        if(param1.fc == 30 * 7)
                        {
                           §§push(param1.hud);
                           §§push(param1.units[1]);
                           if(false)
                           {
                              return;
                           }
                           §§pop().setCampMsg(§§pop(),"注意留心是否有幸存者。\x1f\x1f\x1f\x1f\x1f\x1f");
                        }
                        if(param1.matchSettings.team2score == 15)
                        {
                           ++sn;
                           param1.fc = 0;
                           param1.units[2].spawn();
                           param1.hud.setCampMsg(param1.units[2],"别开枪!\x1f\x1f\x1f\x1f\x1f\x1f\x1f",8);
                        }
                     }
                     break;
                  case 3:
                     if(param1.fc == 30 * 3)
                     {
                        param1.hud.setCampMsg(param1.units[0],"妈的…它们为什么攻击？\x1f\x1f");
                     }
                     if(param1.fc == 30 * 7)
                     {
                        param1.hud.setCampMsg(param1.units[0],"AI，飞船状态如何？\x1f");
                     }
                     if(param1.fc == 30 * 11)
                     {
                        param1.hud.setCampMsg(param1.units[1],"主体:故障。\x1f\x1f\x1f");
                     }
                     if(param1.fc == 30 * 12)
                     {
                        param1.hud.setCampMsg(param1.units[1],"推进器:故障。");
                     }
                     if(param1.fc == 30 * 13)
                     {
                        param1.hud.setCampMsg(param1.units[1],"自动炮:故障。\x1f\x1f");
                     }
                     if(param1.fc == 30 * 14)
                     {
                        param1.hud.setCampMsg(param1.units[1],"通信：故障。\x1f\x1f\x1f\x1f\x1f\x1f");
                     }
                     if(param1.fc == 30 * 15)
                     {
                        §§push(param1.hud);
                        §§push(param1.units[1]);
                        §§push("逃生舱:…\x1f\x1f\x1f");
                        §§push(5);
                        if(false)
                        {
                           return false;
                        }
                        §§pop().setCampMsg(§§pop(),§§pop(),§§pop());
                     }
                     if(param1.fc == 30 * 18)
                     {
                        param1.hud.setCampMsg(param1.units[1],"逃生舱:正常。\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 21)
                     {
                        §§push(param1.units);
                        §§push(4);
                        if(false)
                        {
                           return;
                        }
                        §§pop()[§§pop()].spawn(800,700,"o");
                        param1.units[5].spawn(1300,700,"i");
                        param1.units[6].spawn(2000,700,"n");
                     }
                     if(param1.fc == 30 * 22)
                     {
                        param1.hud.setCampMsg(param1.units[0],"起码还……敌人！开火！\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     }
                     if(param1.fc == 30 * 35)
                     {
                        param1.hud.setCampMsg(param1.units[0],"怎会回事，它们为什么攻击我们？\x1f\x1f",6);
                     }
                     §§push(param1);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop().fc == 30 * 45)
                     {
                        param1.hud.setCampMsg(param1.units[0],"快帮我杀死这些异形…\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 49)
                     {
                        param1.hud.setCampMsg(param1.units[0],"我必须警告地球上的人。\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 54)
                     {
                        param1.hud.setCampMsg(param1.units[1],"明白。\x1f\x1f\x1f");
                     }
                     break;
                  case 4:
                     if(param1.fc == 30 * 3)
                     {
                        param1.hud.setCampMsg(param1.units[2],"侵入者警告");
                     }
                     if(param1.fc == 30 * 5)
                     {
                        param1.hud.setCampMsg(param1.units[2],"侵入者警告\n消灭侵入者。");
                     }
                     if(param1.fc == 30 * 9)
                     {
                        param1.hud.setCampMsg(param1.units[1],"我们？我们来帮你的!\x1f");
                     }
                     if(param1.fc == 30 * 13)
                     {
                        param1.hud.setCampMsg(param1.units[2],"验证失败\n消灭侵入者。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     }
                     §§push(param1.fc);
                     §§push(30 * 17);
                     if(false)
                     {
                        return false;
                     }
                     if(§§pop() == §§pop())
                     {
                        param1.hud.setCampMsg(param1.units[1],"这个没用，我们必须找到那些文物!\x1f",6);
                     }
                     if(param1.matchSettings.team1score == 3 && sn == 0)
                     {
                        var _temp_9:* = §§findproperty(sn);
                        ++sn;
                        param1.hud.setCampMsg(param1.units[1],"喔哦!跟上，快完成了!\x1f\x1f\x1f");
                     }
                     break;
                  case 5:
                     if(param1.fc == 30 * 3)
                     {
                        param1.hud.setCampMsg("girl","好吧新兵，听好。\x1f\x1f\x1f\x1f",5,"Instructor");
                     }
                     if(param1.fc == 30 * 7)
                     {
                        param1.hud.setCampMsg("girl",param1.player.name + "他是最好的士兵，用心听。\x1f\x1f\x1f\x1f",4,"Instructor");
                     }
                     if(param1.fc == 30 * 12)
                     {
                        param1.hud.setCampMsg("justin","什么情况，为什么大家都频繁切换阵营？\x1f\x1f",6,"Recruit");
                     }
                     if(param1.fc == 30 * 18)
                     {
                        param1.hud.setCampMsg("girl","是重装机甲。大家都要联合起来队伍重装机甲。\x1f\x1f\x1f\x1f\x1f\x1f",6,"Instructor");
                     }
                     if(param1.fc == 30 * 23)
                     {
                        param1.hud.setCampMsg("girl","如果你杀了重装机甲，你就成为重装机甲。\x1f",6,"Instructor");
                     }
                     if(param1.fc == 30 * 28)
                     {
                        param1.hud.setCampMsg("justin","好吧明白了。\x1f",4,"Recruit");
                     }
                     if(param1.player.pscore == 4 && sn == 0)
                     {
                        _loc2_ = §§findproperty(sn);
                        _loc3_ = _loc2_.sn + 1;
                        _loc2_.sn = _loc3_;
                        §§push(param1.hud);
                        §§push("girl");
                        §§push("干得漂亮，有人看到了么?\x1f\x1f\x1f\x1f\x1f");
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(§§pop(),§§pop(),4,"Instructor");
                     }
                     if(param1.player.pscore == 6 && sn == 1)
                     {
                        var _temp_13:* = §§findproperty(sn);
                        ++sn;
                        param1.hud.setCampMsg("justin","这家伙厉害…\x1f\x1f\x1f\x1f\x1f\x1f",4,"Recruit");
                     }
                     if(param1.player.pscore == 8 && sn == 2)
                     {
                        _loc2_ = §§findproperty(sn);
                        §§push(_loc2_.sn + 1);
                        if(false)
                        {
                           throw true;
                        }
                        _loc3_ = §§pop();
                        _loc2_.sn = _loc3_;
                        param1.hud.setCampMsg("girl","完美，非常完美。\x1f\x1f",4,"Instructor");
                     }
                     break;
                  case 6:
                     if(param1.fc == 30 * 3)
                     {
                        param1.hud.setCampMsg("addison","感谢上帝你在这里！它们来抢文物了！\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5,"Scientist");
                     }
                     if(param1.fc == 30 * 8)
                     {
                        §§push(param1.hud);
                        §§push(param1.units[1]);
                        §§push("别怕，我们会把这些小朋友干掉的。");
                        if(false)
                        {
                           throw true;
                        }
                        §§pop().setCampMsg(§§pop(),§§pop(),5);
                     }
                     if(param1.fc == 30 * 15)
                     {
                        param1.hud.setCampMsg(param1.units[2],"检测到地雷，小心。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 45)
                     {
                        param1.hud.setCampMsg(param1.units[1],"Eugh ah, achoo!",5);
                     }
                     §§push(param1.fc);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() == 30 * 50)
                     {
                        param1.hud.setCampMsg(param1.units[1],"我恨这衣服。\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 54)
                     {
                        param1.hud.setCampMsg(param1.units[1],"不过除非我学会水下呼吸，我想我没的选择。",5);
                     }
                     if(param1.matchSettings.team1score == 60 && sn == 0)
                     {
                        ++sn;
                        param1.hud.setCampMsg("addison","是的，看起来不错…继续保护那些文物!\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",6,"Scientist");
                     }
                     if(param1.matchSettings.team1score == 75 && sn == 1)
                     {
                        ++sn;
                        param1.hud.setCampMsg("addison","我需要时间…多一点点就好…\x1f\x1f\x1f\x1f",6,"Scientist");
                     }
                     if(param1.matchSettings.team1score == 90 && sn == 2)
                     {
                        _loc2_ = §§findproperty(sn);
                        _loc3_ = _loc2_.sn + 1;
                        _loc2_.sn = _loc3_;
                        param1.hud.setCampMsg("addison","快完了…\x1f\x1f",5,"Scientist");
                     }
                     break;
                  case 7:
                     if(param1.fc == 30 * 3)
                     {
                        param1.hud.setCampMsg(param1.units[1],"好吧，你们想看看真正的高手怎么做么？",5);
                     }
                     if(param1.fc == 30 * 7)
                     {
                        param1.hud.setCampMsg(param1.units[1],"给他们演示下\x1f\x1f\x1f\x1f\x1f" + param1.player.name,5);
                     }
                     if(param1.fc == 30 * 20)
                     {
                        param1.hud.setCampMsg(param1.units[1],"嗨，大家好啊。介绍一下自己吧!\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 25)
                     {
                        param1.hud.setCampMsg(param1.units[2],"好吧啊…战地医生，报告完毕！\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 30)
                     {
                        param1.hud.setCampMsg(param1.units[3],"我叫Treem是爆破专家。\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 34)
                     {
                        param1.hud.setCampMsg(param1.units[3],"如果你不想被烧就离我远点。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 40)
                     {
                        param1.hud.setCampMsg(param1.units[1],"就这样？大家都认识我了，我擅长近身作战。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 60)
                     {
                        param1.hud.setCampMsg(param1.units[1],"小心那些地雷伙计们，到处都是！\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 80)
                     {
                        param1.hud.setCampMsg(param1.units[2],"噢噢噢!我会习惯的!\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     §§push(param1.fc);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() == 30 * 90)
                     {
                        §§push(param1.hud);
                        §§push(param1.units[3]);
                        if(false)
                        {
                           throw true;
                        }
                        §§pop().setCampMsg(§§pop(),"烧它们真容易。\x1f\x1f\x1f\x1f",5);
                     }
                     break;
                  case 8:
                     if(param1.fc == 30 * 3)
                     {
                        §§push(param1);
                        if(false)
                        {
                           return;
                        }
                        §§push(§§pop().hud);
                        §§push(param1.units[2]);
                        §§push("我们到了，开始动手吧!");
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(§§pop(),§§pop(),5);
                     }
                     if(param1.fc == 30 * 7)
                     {
                        param1.hud.setCampMsg(param1.units[1],"等等，这里一个人都没有…\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 11)
                     {
                        param1.hud.setCampMsg(param1.units[3],"是的，它们被吓跑回家找妈妈了…\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 15)
                     {
                        param1.hud.setCampMsg(param1.units[1],"不，感觉有点不对……\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 20)
                     {
                        param1.hud.setCampMsg(param1.units[1],"有埋伏!开火!\x1f",4);
                        SH.playMusic(M_Ricochet);
                        param1.units[4].spawn();
                        param1.units[5].spawn();
                        param1.units[6].spawn();
                        param1.units[7].spawn();
                     }
                     if(param1.fc == 30 * 30)
                     {
                        param1.hud.setCampMsg(param1.units[2],"它们怎么做到的?\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 34)
                     {
                        §§push(param1);
                        if(false)
                        {
                           return;
                        }
                        §§pop().hud.setCampMsg(param1.units[1],"好像它们有某种隐形的装备，提高警惕！\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     break;
                  case 9:
                     if(param1.fc == 30 * 3)
                     {
                        param1.hud.setCampMsg(param1.units[1],"你好人类！\x1f");
                     }
                     if(param1.fc == 30 * 7)
                     {
                        param1.hud.setCampMsg(param1.units[1],"奇怪我会说你们的语言么？\x1f\x1f");
                     }
                     if(param1.fc == 30 * 11)
                     {
                        param1.hud.setCampMsg(param1.units[1],"我知道你们使用文物的计划。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     }
                     §§push(param1.fc);
                     §§push(30);
                     §§push(15);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() == §§pop() * §§pop())
                     {
                        param1.hud.setCampMsg(param1.units[1],"在夺回之前我们是不会停手的。\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     }
                     if(param1.fc == 30 * 30)
                     {
                        param1.hud.setCampMsg(param1.units[1],"地球终将毁灭,胜利属于我们。\x1f");
                     }
                     §§push(param1);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop().fc == 30 * 50)
                     {
                        param1.hud.setCampMsg(param1.units[1],"哈哈哈。你们只是在浪费时间。\x1f\x1f");
                     }
                     if(param1.fc == 30 * 70)
                     {
                        param1.hud.setCampMsg(param1.units[1],"认输吧，人类没有任何机会。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     }
                     if(param1.fc == 30 * 90)
                     {
                        param1.hud.setCampMsg(param1.units[1],"沉默？人类不是最喜欢说话的么？\x1f\x1f\x1f\x1f");
                     }
                     if(param1.fc == 30 * 110)
                     {
                        param1.hud.setCampMsg(param1.units[1],"这毫无意义的");
                     }
                     if(param1.fc == 30 * 114)
                     {
                        param1.hud.setCampMsg(param1.units[1],"你们必败.\x1f");
                     }
                     break;
                  case 10:
                     if(param1.fc == 30 * 10)
                     {
                        param1.hud.setCampMsg(param1.units[4],"脑~~子~~~\x1f\x1f",4);
                     }
                     if(param1.fc == 30 * 20)
                     {
                        param1.hud.setCampMsg(param1.units[5],"脑子??\x1f\x1f",4);
                     }
                     §§push(param1.fc);
                     if(false)
                     {
                        return false;
                     }
                     if(§§pop() == 30 * 30)
                     {
                        param1.hud.setCampMsg(param1.units[6],"脑子!!\x1f\x1f\x1f",4);
                     }
                     if(param1.fc == 30 * 40)
                     {
                        param1.hud.setCampMsg(param1.units[4],"……文物……\x1f\x1f",4);
                     }
                     if(param1.fc == 30 * 50)
                     {
                        param1.hud.setCampMsg(param1.units[5],"文物……\x1f",4);
                        if(false)
                        {
                           return;
                        }
                     }
                     if(param1.fc == 30 * 60)
                     {
                        param1.hud.setCampMsg(param1.units[1],"对不起迟到了,想我了没?\x1f",5);
                        SH.playMusic(M_Warhead);
                        param1.units[1].spawn();
                        param1.units[2].spawn();
                        §§push(param1.units[3]);
                        if(false)
                        {
                           return;
                        }
                        §§pop().spawn();
                     }
                     if(param1.fc == 30 * 65)
                     {
                        param1.hud.setCampMsg(param1.units[3],"我们点亮它吧！\x1f\x1f\x1f",5);
                     }
                     break;
                  case 11:
                     if(param1.fc == 30 * 5)
                     {
                        param1.hud.setCampMsg("soldier2","对不起，我不能加入你们…\x1f",5,"Ex. ");
                     }
                     if(param1.fc == 30 * 9)
                     {
                        §§push(param1.hud);
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg("soldier2","水真的是让我盲谷悚然…\x1f\x1f",4,"Ex. ");
                     }
                     if(param1.fc == 30 * 14)
                     {
                        param1.hud.setCampMsg(param1.units[3],"别担心。我来给你协助你。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     break;
                  case 12:
                     §§push(param1.fc);
                     §§push(30 * 5);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() == §§pop())
                     {
                        §§push(param1.hud);
                        §§push(param1.units[1]);
                        if(false)
                        {
                           return false;
                        }
                        §§pop().setCampMsg(§§pop(),"好吧，事情很简单。你知道该怎么做。\x1f",5);
                     }
                     if(param1.fc == 30 * 9)
                     {
                        param1.hud.setCampMsg(param1.units[3],"干掉他!\x1f\x1f",5);
                     }
                     break;
                  case 13:
                     if(param1.fc == 30 * 15)
                     {
                        param1.hud.setCampMsg(param1.units[1],"怎么回事，这家伙在这里到处传送!\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 20)
                     {
                        param1.hud.setCampMsg(param1.units[2],"我根本打不中，他像水里的泥鳅。",5);
                     }
                     if(param1.fc == 30 * 25)
                     {
                        §§push(param1.hud);
                        §§push(param1.units[3]);
                        §§push("呵呵，炸弹对付这个最合适了。\x1f\x1f");
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(§§pop(),§§pop(),5);
                     }
                     §§push(param1.fc);
                     §§push(30 * 30);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() == §§pop())
                     {
                        param1.hud.setCampMsg(param1.units[1],"没错，用爆破或者威力大的武器能够轻易干掉他!",6);
                     }
                     break;
                  case 14:
                     if(param1.fc == 30 * 3)
                     {
                        param1.hud.setCampMsg(param1.units[1],"这是最后的机会，在流星撞击之前必须干掉他们。\x1f",5);
                     }
                     if(param1.fc == 30 * 8)
                     {
                        param1.hud.setCampMsg(param1.units[1],"如果不能及时激活最后的文物，地球就毁了…\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 13)
                     {
                        param1.hud.setCampMsg(param1.units[1],"准确的说我们还剩下四分钟…我们可以做到！\x1f\x1f\x1f\x1f\x1f",7);
                     }
                     if(param1.units[1].score.lives == 0 && !(sn & 1))
                     {
                        sn |= 1;
                        param1.hud.setCampMsg(param1.units[1],"在我死前…杀掉他们…全部杀掉……\x1f\x1f\x1f\x1f\x1f",5);
                        if(false)
                        {
                           return;
                        }
                     }
                     if(param1.units[2].score.lives == 0 && !(sn & 2))
                     {
                        sn |= 2;
                        param1.hud.setCampMsg(param1.units[2],"我…学到了很多…谢谢你…\x1f",5);
                     }
                     if(param1.units[3].score.lives == 0 && !(sn & 4))
                     {
                        sn |= 4;
                        §§push(param1.hud);
                        §§push(param1.units[3]);
                        §§push("能…和你一起并肩作战是我的荣幸……\x1f");
                        §§push(5);
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(§§pop(),§§pop(),§§pop());
                     }
               }
               break;
            case 1:
               switch(MatchSettings.matchLevel)
               {
                  case 0:
                     §§push(0);
                     break;
                  case 1:
                     §§push(1);
                     break;
                  case 2:
                     §§push(2);
                     break;
                  case 3:
                     §§push(3);
                     break;
                  case 4:
                     §§push(4);
                     break;
                  case 5:
                     §§push(5);
                     if(false)
                     {
                        throw true;
                     }
                     break;
                  case 6:
                     §§push(6);
                     break;
                  case 7:
                     §§push(7);
                     break;
                  case 8:
                     §§push(8);
                     break;
                  case 9:
                     §§push(9);
                     break;
                  case 10:
                     §§push(10);
                     break;
                  case 11:
                     §§push(11);
                     break;
                  case 12:
                     §§push(12);
                     break;
                  case 13:
                     §§push(13);
                     break;
                  case 14:
                     §§push(14);
                     break;
                  default:
                     §§push(15);
               }
               switch(§§pop())
               {
                  case 0:
                     if(param1.fc == 30 * 3)
                     {
                        param1.hud.setCampMsg(param1.units[0],"这人必须死。\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 7)
                     {
                        param1.hud.setCampMsg(param1.units[0],"不能让他提醒人类我们的攻势。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",6);
                     }
                     if(param1.fc == 30 * 12)
                     {
                        param1.hud.setCampMsg(param1.units[0],"我可以不希望见到人类的援军。\x1f\x1f\x1f\x1f\x1f",6);
                     }
                     if(param1.fc == 30 * 35)
                     {
                        §§push(param1.hud);
                        §§push(param1.units);
                        §§push(4);
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(§§pop()[§§pop()],"目标确认。\x1f");
                     }
                     if(param1.fc == 30 * 45)
                     {
                        §§push(param1.hud);
                        §§push(param1.units);
                        §§push(0);
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(§§pop()[§§pop()],"干掉那些机器，用你的生命保护文物！\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",6);
                     }
                     if(param1.fc == 30 * 60)
                     {
                        param1.hud.setCampMsg(param1.units[1],"他们的防守太强大了。我们人手不够！\x1f",5);
                     }
                     if(param1.fc == 30 * 65)
                     {
                        param1.hud.setCampMsg(param1.units[0],"大家配合好，一定会赢的！\x1f\x1f\x1f\x1f\x1f");
                     }
                     break;
                  case 1:
                     if(param1.fc == 30 * 3)
                     {
                        param1.hud.setCampMsg(param1.units[0],"最重要的是那些文物。搜索每个角落。\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 10)
                     {
                        §§push(param1.hud);
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(param1.units[3],"Intruder Alert.");
                     }
                     §§push(param1.fc);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() == 30 * 15)
                     {
                        §§push(param1.hud);
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(param1.units[0],"这些机器人不过是些废铁。干掉它们继续搜索！\x1f\x1f\x1f\x1f\x1f\x1f",6);
                     }
                     §§push(param1.fc);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() == 30 * 30)
                     {
                        §§push(param1.hud);
                        §§push(param1.units);
                        §§push(3);
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(§§pop()[§§pop()],"Identify systems malfunction.",5);
                     }
                     if(param1.fc == 30 * 34)
                     {
                        param1.hud.setCampMsg(param1.units[3],"定位系统故障。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 40)
                     {
                        param1.units[3].diff = 0;
                        param1.units[4].diff = 0;
                        §§push(param1.units);
                        §§push(5);
                        if(false)
                        {
                           return;
                        }
                        §§pop()[§§pop()].diff = 0;
                        param1.hud.setCampMsg(param1.units[3],"重启所有运输机器人。\x1f",5);
                     }
                     if(param1.fc == 30 * 45)
                     {
                        param1.hud.setCampMsg(param1.units[0],"这是我们不间断搜索的机会！\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 55)
                     {
                        param1.hud.setCampMsg(param1.units[3],"重启进度：50%",5);
                     }
                     if(param1.fc == 30 * 65)
                     {
                        param1.hud.setCampMsg(param1.units[3],"重启进度：75%",5);
                     }
                     §§push(param1.fc);
                     §§push(30);
                     §§push(75);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() == §§pop() * §§pop())
                     {
                        param1.units[3].diff = 9;
                        §§push(param1);
                        if(false)
                        {
                           return;
                        }
                        §§pop().units[3].setDiffStats();
                        param1.units[3].status.setDiffStats();
                        param1.units[4].diff = 9;
                        param1.units[4].setDiffStats();
                        §§push(param1);
                        if(false)
                        {
                           return;
                        }
                        §§pop().units[4].status.setDiffStats();
                        param1.units[5].diff = 9;
                        param1.units[5].setDiffStats();
                        param1.units[5].status.setDiffStats();
                        param1.hud.setCampMsg(param1.units[3],"重启完成。系统加载100%。",5);
                     }
                     if(param1.fc == 30 * 80)
                     {
                        param1.hud.setCampMsg(param1.units[3],"鉴权数据库未找到。\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 84)
                     {
                        param1.hud.setCampMsg(param1.units[3],"默认所有人为\'侵入者\'状态。\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 90)
                     {
                        param1.hud.setCampMsg(param1.units[0],"好，现在可以阻挡一下跟着我们的人了。\x1f\x1f",6);
                     }
                     break;
                  case 2:
                     if(param1.fc == 30 * 5)
                     {
                        param1.hud.setCampMsg(param1.units[0],"不！");
                     }
                     if(param1.fc == 30 * 10)
                     {
                        param1.hud.setCampMsg(param1.units[1],"怎么了长官？\x1f\x1f\x1f",5);
                     }
                     §§push(param1.fc);
                     §§push(30 * 15);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() == §§pop())
                     {
                        param1.hud.setCampMsg(param1.units[0],"那些人是……\"Raze\"\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 19)
                     {
                        param1.hud.setCampMsg(param1.units[0],"在第一次侵略时，我们碰到的强大部队。\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 23)
                     {
                        param1.hud.setCampMsg(param1.units[0],"他是我们唯一没杀死的。\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 27)
                     {
                        param1.hud.setCampMsg(param1.units[0],"他一个人就把我们打败了…\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 35)
                     {
                        param1.hud.setCampMsg(param1.units[1],"不过这次不会。文物会抢回来的。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     break;
                  case 3:
                     if(param1.fc == 30 * 5)
                     {
                        param1.hud.setCampMsg(param1.units[0],"仔细找,我们必须找到幸存者。\x1f");
                     }
                     if(param1.fc == 30 * 15)
                     {
                        §§push(param1.hud);
                        §§push(param1.units);
                        §§push(1);
                        if(false)
                        {
                           throw true;
                        }
                        §§pop().setCampMsg(§§pop()[§§pop()],"我不懂…这些物种不是我们的病毒创造的么？\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     §§push(param1.fc);
                     §§push(30);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() == §§pop() * 20)
                     {
                        param1.hud.setCampMsg(param1.units[1],"为什么会攻击我们?\x1f");
                     }
                     if(param1.fc == 30 * 25)
                     {
                        param1.hud.setCampMsg(param1.units[5],"异~~~形~~~脑~~~子~~~~\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     }
                     if(param1.fc == 30 * 30)
                     {
                        param1.hud.setCampMsg(param1.units[0],"我们很多年没来地球了。它们谁都不认。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",7);
                     }
                     if(param1.fc == 30 * 60)
                     {
                        param1.hud.setCampMsg(param1.units[6],"脑子~~\x1f");
                     }
                     if(param1.fc == 30 * 65)
                     {
                        param1.hud.setCampMsg(param1.units[1],"这些生物的智力水平…比中国的某些官员……还要低很多…\x1f",8);
                     }
                     if(param1.fc == 30 * 73)
                     {
                        param1.hud.setCampMsg(param1.units[0],"够了！找到幸存者保护文物！\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     break;
                  case 4:
                     if(param1.fc == 30 * 5)
                     {
                        param1.hud.setCampMsg("aspace","长官，我们给你配备一个最美味的脑子。\x1f\x1f\x1f\x1f\x1f\x1f",5,"Alien");
                     }
                     if(param1.fc == 30 * 10)
                     {
                        param1.hud.setCampMsg("aspace","僵尸们会疯抢的。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5,"Alien");
                     }
                     §§push(param1.fc);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() == 30 * 15)
                     {
                        §§push(param1.hud);
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg("aspace","你带上脑子，然后把它们都干掉！\x1f",5,"Alien");
                     }
                     if(param1.fc == 30 * 20)
                     {
                        param1.hud.setCampMsg(param1.units[0],"What?");
                     }
                     §§push(param1.fc);
                     if(false)
                     {
                        return false;
                     }
                     if(§§pop() == 30 * 24)
                     {
                        param1.hud.setCampMsg("aspace","让它们知道一下谁说了算。\x1f\x1f\x1f\x1f",5,"Alien");
                     }
                     if(param1.fc == 30 * 29)
                     {
                        param1.hud.setCampMsg(param1.units[0],"好，来吧。");
                     }
                     break;
                  case 5:
                     §§push(param1.fc);
                     §§push(30 * 15);
                     if(false)
                     {
                        throw true;
                     }
                     if(§§pop() == §§pop())
                     {
                        param1.hud.setCampMsg(param1.units[0],"小心脚下。保安机器人在地上补满了地雷。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",6);
                     }
                     if(param1.fc == 30 * 30)
                     {
                        param1.hud.setCampMsg(param1.units[1],"好 好 好…看我找到了什么。\x1f\x1f\x1f",5);
                     }
                     §§push(param1.fc);
                     §§push(30);
                     if(false)
                     {
                        throw true;
                     }
                     if(§§pop() == §§pop() * 35)
                     {
                        §§push(param1.hud);
                        §§push("addison");
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(§§pop(),"放开我…我…我什么都不知道！\x1f\x1f\x1f",6,"Scientist");
                     }
                     if(param1.fc == 30 * 42)
                     {
                        param1.hud.setCampMsg(param1.units[0],"放开他!");
                     }
                     if(param1.fc == 30 * 45)
                     {
                        param1.hud.setCampMsg(param1.units[0],"我们不想要战争。我们只关注文物。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 50)
                     {
                        param1.hud.setCampMsg(param1.units[0],"人类对我们没用，让他走。\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 60)
                     {
                        param1.hud.setCampMsg("addison","啊…什么…它们放了我？\x1f\x1f\x1f\x1f",6,"Scientist");
                     }
                     break;
                  case 6:
                     if(param1.fc == 30 * 5)
                     {
                        §§push(param1.hud);
                        §§push(param1.units[0]);
                        §§push("我们要不惜一切保护飞船！\x1f");
                        §§push(5);
                        if(false)
                        {
                           return false;
                        }
                        §§pop().setCampMsg(§§pop(),§§pop(),§§pop());
                     }
                     if(param1.fc == 30 * 15)
                     {
                        param1.hud.setCampMsg(param1.units[0],"那个被称作\"Raze\"的…他又回来了。他没死？",5);
                     }
                     if(param1.fc == 30 * 20)
                     {
                        param1.hud.setCampMsg(param1.units[1],"长官，我们杀不死他。不管我们怎么，他都能跑掉……",6);
                     }
                     if(param1.fc == 30 * 26)
                     {
                        §§push(param1.hud);
                        §§push(param1.units[0]);
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(§§pop(),"恩，厉害……\x1f");
                     }
                     break;
                  case 7:
                     if(param1.fc == 30 * 5)
                     {
                        param1.hud.setCampMsg(param1.units[0],"人类正在放置第一个文物,我们必须组织他们！",6);
                     }
                     if(param1.fc == 30 * 10)
                     {
                        §§push(param1.hud);
                        §§push(param1.units[2]);
                        §§push("文~~~物~~~~\x1f\x1f\x1f\x1f\x1f\x1f");
                        §§push(6);
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(§§pop(),§§pop(),§§pop());
                     }
                     break;
                  case 8:
                     if(param1.fc == 30 * 3)
                     {
                        param1.hud.setCampMsg(param1.units[0],"同志们，做好准备。\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 8)
                     {
                        param1.hud.setCampMsg(param1.units[0],"人类要来了，拿好武器准备战斗…\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",7);
                     }
                     if(param1.fc == 30 * 15)
                     {
                        param1.hud.setCampMsg(param1.units[0],"准备..",4);
                     }
                     if(param1.fc == 30 * 20)
                     {
                        param1.hud.setCampMsg(param1.units[0],"进攻!",5);
                        SH.playMusic(M_Ricochet);
                        param1.units[0].permInvis = false;
                        param1.units[1].permInvis = false;
                        param1.units[2].permInvis = false;
                        param1.units[3].permInvis = false;
                     }
                     break;
                  case 9:
                     if(param1.fc == 30 * 3)
                     {
                        param1.hud.setCampMsg(param1.units[0],"你好人类！\x1f");
                     }
                     if(param1.fc == 30 * 7)
                     {
                        param1.hud.setCampMsg(param1.units[0],"奇怪我会说你们的语言么？\x1f\x1f");
                     }
                     if(param1.fc == 30 * 11)
                     {
                        param1.hud.setCampMsg(param1.units[0],"我知道你们使用文物的计划。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     }
                     if(param1.fc == 30 * 15)
                     {
                        §§push(param1.hud);
                        §§push(param1.units[0]);
                        §§push("在夺回之前我们是不会停手的。\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(§§pop(),§§pop());
                     }
                     if(param1.fc == 30 * 30)
                     {
                        param1.hud.setCampMsg(param1.units[0],"地球终将毁灭,胜利属于我们。\x1f");
                     }
                     if(param1.fc == 30 * 50)
                     {
                        param1.hud.setCampMsg(param1.units[0],"哈哈哈。你们只是在浪费时间。\x1f\x1f");
                     }
                     if(param1.fc == 30 * 70)
                     {
                        param1.hud.setCampMsg(param1.units[0],"认输吧，人类没有任何机会。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
                     }
                     if(param1.fc == 30 * 90)
                     {
                        param1.hud.setCampMsg(param1.units[0],"沉默？人类不是最喜欢说话的么？\x1f\x1f\x1f\x1f");
                     }
                     if(param1.fc == 30 * 110)
                     {
                        param1.hud.setCampMsg(param1.units[0],"这毫无意义的");
                     }
                     if(param1.fc == 30 * 114)
                     {
                        param1.hud.setCampMsg(param1.units[0],"你们必败.\x1f");
                     }
                     break;
                  case 10:
                     §§push(param1.fc);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() == 30 * 10)
                     {
                        param1.hud.setCampMsg(param1.units[1],"长官，我们人太少！\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 15)
                     {
                        param1.hud.setCampMsg(param1.units[0],"是的，所以你们需要策略。\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 20)
                     {
                        param1.hud.setCampMsg(param1.units[0],"找一个最快最安全的路线，坚持下去！",5);
                     }
                     if(param1.fc == 30 * 25)
                     {
                        §§push(param1.hud);
                        §§push(param1.units[1]);
                        if(false)
                        {
                           throw true;
                        }
                        §§pop().setCampMsg(§§pop(),"是,长官！\x1f");
                     }
                     break;
                  case 11:
                     §§push(param1.fc);
                     §§push(30);
                     §§push(15);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop() == §§pop() * §§pop())
                     {
                        param1.hud.setCampMsg(param1.units[1],"我想这些应该是些新兵！\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",6);
                     }
                     if(param1.fc == 30 * 22)
                     {
                        param1.hud.setCampMsg(param1.units[0],"看起来他们训练的很努力…\x1f\x1f\x1f\x1f",6);
                     }
                     §§push(param1);
                     if(false)
                     {
                        return false;
                     }
                     if(§§pop().fc == 30 * 26)
                     {
                        param1.hud.setCampMsg(param1.units[0],"干掉他们!",5);
                     }
                     break;
                  case 12:
                     if(param1.fc == 30 * 5)
                     {
                        param1.hud.setCampMsg(param1.units[0],"最后一次，搜索飞船的每个角落！\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",6);
                     }
                     if(param1.fc == 30 * 12)
                     {
                        param1.hud.setCampMsg(param1.units[0],"必须找到那武器。\x1f\x1f\x1f\x1f",6);
                     }
                     break;
                  case 13:
                     if(param1.fc == 30 * 3)
                     {
                        §§push(param1);
                        if(false)
                        {
                           throw true;
                        }
                        §§pop().hud.setCampMsg(param1.units[0],"现在试试这东西…\x1f\x1f\x1f\x1f",5);
                     }
                     if(param1.fc == 30 * 15)
                     {
                        §§push(param1.hud);
                        §§push(param1.units[1]);
                        §§push("长官，这武器…太不可思议了!\x1f\x1f");
                        §§push(5);
                        if(false)
                        {
                           return;
                        }
                        §§pop().setCampMsg(§§pop(),§§pop(),§§pop());
                     }
                     if(param1.fc == 30 * 20)
                     {
                        param1.hud.setCampMsg(param1.units[1],"以后的战斗中一定很有用！",5);
                     }
                     if(param1.fc == 30 * 30)
                     {
                        param1.hud.setCampMsg(param1.units[0],"看来它只能在这种寒冷的环境中用.",6);
                     }
                     if(param1.fc == 30 * 35)
                     {
                        param1.hud.setCampMsg(param1.units[0],"我不认为我们下个任务还能用到它。",6);
                     }
                     break;
                  case 14:
                     if(param1.fc == 30 * 5)
                     {
                        param1.hud.setCampMsg(param1.units[0],"好了，跟上长官。\x1f\x1f\x1f\x1f\x1f\x1f",6);
                     }
                     if(param1.fc == 30 * 10)
                     {
                        param1.hud.setCampMsg(param1.units[0],"流星马上到了…我们还有4分钟。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",8);
                     }
                     if(param1.fc == 30 * 23)
                     {
                        param1.hud.setCampMsg(param1.units[0],"那个什么Raze…好像已经变异成僵尸了。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f",7);
                     }
                     if(param1.fc == 30 * 28)
                     {
                        §§push(param1);
                        if(false)
                        {
                           throw true;
                        }
                        §§pop().hud.setCampMsg(param1.units[0],"先杀掉其他人，我要亲自对付他。\x1f\x1f\x1f",7);
                     }
               }
               break;
            case 2:
               _loc2_ = MatchSettings.matchLevel;
               switch(0)
               {
               }
         }
      }
      
      private static function §\f\x0e§(param1:*, param2:Array, param3:*, param4:Array) : void
      {
         MatchSettings.preCutSong = param1;
         MatchSettings.preCutFrames = param2;
         MatchSettings.postCutSong = param3;
         MatchSettings.postCutFrames = param4;
      }
      
      private static function §\x16§(param1:String, param2:uint, param3:String, param4:uint, param5:Array, param6:String, param7:Array, param8:Object = null) : *
      {
         §§push(MatchSettings.bots);
         §§push("name");
         §§push(param1);
         §§push("diff");
         if(false)
         {
            return;
         }
         §§pop().push(null);
      }
      
      private static function §\n\x18§(param1:uint, param2:String, param3:uint, param4:String, param5:uint, param6:String, param7:*, param8:String, param9:String) : void
      {
         sn = 0;
         MatchSettings.matchExtra = "无\x1f";
         MatchSettings.updatePlayer();
         if(false)
         {
            return false;
         }
         MatchSettings.creditMod = 1;
         MatchSettings.type = param2;
         MatchSettings.winScore = param1;
         MatchSettings.map = Stats_Maps.getMap(param4);
         MatchSettings.bots = [];
         MatchSettings.weaponsUsed = "All";
         MatchSettings.specialMode = "无\x1f";
         MatchSettings.abilitiesOn = true;
         MatchSettings.equipsOn = false;
         MatchSettings.player.skin = Stats_Skins.skinOb[param6].num;
         MatchSettings.player.extra = {};
         MatchSettings.matchName = param8;
         MatchSettings.matchDesc = param9;
         MatchSettings.song = param7;
         §§push(MatchSettings);
         if(!param3)
         {
            §§push(1);
            if(false)
            {
               return;
            }
         }
         else
         {
            §§push(int(param3));
         }
         §§pop().teams = §§pop();
         MatchSettings.overallDiff = param5;
         if(MatchSettings.teams <= 1)
         {
            MatchSettings.player.team = 0;
         }
         else
         {
            MatchSettings.player.team = 1;
         }
      }
   }
}


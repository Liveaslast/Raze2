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
   
   public class Stats_Abilities
   {
      
      public static var abilityOrder:Array;
      
      public function Stats_Abilities()
      {
         super();
      }
      
      public static function Init() : void
      {
         §§push(§§findproperty(abilityOrder));
         §§push("ammo");
         §§push("cloak");
         §§push("static");
         §§push("heal");
         §§push("sword");
         §§push("grenade");
         §§push("mine");
         if(false)
         {
            return;
         }
         §§pop().abilityOrder = null;
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         while(_loc2_ < abilityOrder.length)
         {
            _loc1_ += getAbility(abilityOrder[_loc2_]).cost;
            _loc2_++;
         }
         trace("Total Ability costs:",_loc1_);
      }
      
      public static function getAbilityByNum(param1:uint) : Object
      {
         return getAbility(abilityOrder[param1]);
      }
      
      public static function getAbility(param1:String) : Object
      {
         var _loc2_:Object = {};
         _loc2_.id = param1;
         switch(param1)
         {
            case "none":
               §§push(0);
               break;
            case "static":
               §§push(1);
               break;
            case "heal":
               §§push(2);
               break;
            case "cloak":
               if(false)
               {
                  return;
               }
               §§push(3);
               break;
            case "ammo":
               §§push(4);
               break;
            case "sword":
               §§push(5);
               break;
            case "grenade":
               §§push(6);
               break;
            case "mine":
               §§push(7);
               break;
            case "teleport":
               §§push(8);
               break;
            default:
               §§push(9);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_.sprite = "none";
               _loc2_.name = "无\x1f\x1f\x1f\x1f";
               _loc2_.type = "N/A";
               _loc2_.rechargeSec = 0;
               _loc2_.usedEnergy = 100;
               §§push(_loc2_);
               if(false)
               {
                  return;
               }
               §§pop().effect = "无\x1f";
               _loc2_.extraName = "";
               _loc2_.extraDesc = "";
               _loc2_.usage = "None.";
               _loc2_.shortDesc = "未装备技能。\x1f\x1f";
               _loc2_.desc = "未装备技能。\x1f\x1f";
               _loc2_.cost = 0;
               break;
            case 1:
               _loc2_.sprite = "static";
               _loc2_.name = "静力护罩";
               _loc2_.type = "防御型";
               _loc2_.rechargeSec = 10;
               _loc2_.usedEnergy = 100;
               _loc2_.duration = 1.5;
               _loc2_.effect = "无敌+反弹\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.extraName = "持续:\x1f\x1f";
               §§push(_loc2_);
               §§push(_loc2_.duration);
               §§push("秒\x1f\x1f\x1f\x1f\x1f");
               if(false)
               {
                  return;
               }
               §§pop().extraDesc = §§pop() + §§pop();
               _loc2_.usage = "在地面上按F或Ctrl。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.shortDesc = "护罩阻挡所有伤害并反弹子弹。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.desc = "释放一个短暂但是异常强大的磁力场，可以反弹所有的伤害。\n\n不过，由于磁力场过于强大，在其消失之前，使用者也无法动弹分毫。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.cost = 1300;
               break;
            case 2:
               _loc2_.sprite = "heal";
               _loc2_.name = "紧急治疗\x1f\x1f";
               _loc2_.type = "防御型";
               _loc2_.rechargeSec = 15;
               _loc2_.usedEnergy = 100;
               _loc2_.heal = 60;
               _loc2_.healTeam = 30;
               _loc2_.effect = "恢复" + _loc2_.heal + "体力\x1f";
               _loc2_.extraName = "范围:";
               _loc2_.extraDesc = "治疗周围盟友\x1f\x1f" + _loc2_.healTeam + "";
               _loc2_.usage = "按F或Ctrl。\x1f\x1f";
               _loc2_.shortDesc = "恢复自己和附近盟友体力.\x1f";
               _loc2_.desc = "能够发出强力治疗脉冲的高级医疗包，迅速恢复你的体力。\n\n由于脉冲过于强大，周围的队友也会受到一些治疗。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               if(false)
               {
                  return;
               }
               _loc2_.cost = 1500;
               break;
            case 3:
               _loc2_.sprite = "cloak";
               §§push(_loc2_);
               §§push("斗篷");
               if(false)
               {
                  return;
               }
               §§pop().name = §§pop();
               _loc2_.type = "工具型";
               _loc2_.rechargeSec = 10;
               _loc2_.usedEnergy = 100;
               _loc2_.duration = 4;
               §§push(_loc2_);
               if(false)
               {
                  return;
               }
               §§pop().effect = "隐形\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.extraName = "持续:\x1f\x1f";
               _loc2_.extraDesc = _loc2_.duration + "秒\x1f\x1f\x1f\x1f\x1f";
               _loc2_.usage = "按F或Ctrl。\x1f\x1f";
               _loc2_.shortDesc = "让使用者短时间内隐形。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.desc = "激活后，斗篷将覆盖使用者并使用全息影像记录和播放周围环境，借以达到隐身的效果。\n\n使用过程中如果设备受到攻击，将导致影像系统失效，隐身效果消失。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.cost = 500;
               break;
            case 4:
               if(false)
               {
                  throw true;
               }
               _loc2_.sprite = "ammo";
               _loc2_.name = "补给\x1f\x1f";
               _loc2_.type = "工具型";
               _loc2_.rechargeSec = 20;
               _loc2_.usedEnergy = 100;
               _loc2_.effect = "加一个弹夹\x1f";
               _loc2_.extraName = ":";
               _loc2_.extraDesc = "";
               _loc2_.usage = "按F或Ctrl。\x1f\x1f";
               _loc2_.shortDesc = "给使用者当前武器增加额外弹药。\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.desc = "补给包内拥有多种类型的子弹。这意味着使用者可以根据需要取出任意类型的子弹。\n\n如果当前武器弹药为空，使用此技能后可立即补满补满。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               §§push(_loc2_);
               §§push(0);
               if(false)
               {
                  return false;
               }
               §§pop().cost = §§pop();
               break;
            case 5:
               _loc2_.sprite = "sword";
               _loc2_.name = "刀魂";
               _loc2_.type = "攻击\x1f";
               _loc2_.rechargeSec = 2;
               _loc2_.usedEnergy = 100;
               _loc2_.effect = "近身攻击";
               _loc2_.extraName = "";
               _loc2_.extraDesc = "";
               _loc2_.usage = "按F或Ctrl。\x1f\x1f";
               _loc2_.shortDesc = "用你的刀快速挥砍攻击。\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.desc = "世界上最锋利的刀。可以砍断任意强度的盔甲。\n\n如果出刀时机总够精确，还可以反弹敌人的子弹。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.cost = 2200;
               break;
            case 6:
               _loc2_.sprite = "grenade";
               _loc2_.name = "手雷\x1f";
               §§push(_loc2_);
               §§push("攻击\x1f");
               if(false)
               {
                  return;
               }
               §§pop().type = §§pop();
               _loc2_.rechargeSec = 5;
               _loc2_.usedEnergy = 100;
               _loc2_.effect = "扔一颗手雷";
               _loc2_.extraName = "爆炸:\x1f\x1f\x1f\x1f";
               _loc2_.extraDesc = "1秒\x1f\x1f\x1f\x1f";
               _loc2_.usage = "按F或Ctrl。\x1f\x1f";
               _loc2_.shortDesc = "扔出一颗可在地面弹动的手雷一秒后爆炸。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.desc = "可以地面反弹并在一秒钟后爆炸的标准手雷。\n\n稍有改进的是，手雷在碰撞到敌人后会立即爆炸。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.cost = 2800;
               break;
            case 7:
               _loc2_.sprite = "mine";
               _loc2_.name = "地雷\x1f\x1f\x1f";
               _loc2_.type = "攻击\x1f";
               if(false)
               {
                  return false;
               }
               _loc2_.rechargeSec = 7;
               _loc2_.usedEnergy = 100;
               _loc2_.effect = "埋地雷\x1f\x1f";
               _loc2_.extraName = "爆炸:\x1f\x1f\x1f\x1f";
               §§push(_loc2_);
               if(false)
               {
                  return;
               }
               §§pop().extraDesc = "近距离";
               _loc2_.usage = "按F或Ctrl。\x1f\x1f";
               _loc2_.shortDesc = "放置一颗地雷敌人接触后自动爆炸。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               if(false)
               {
                  throw true;
               }
               _loc2_.desc = "反步兵地雷是防守特定区域或在战场设置陷阱的最佳武器。\n\n依靠最新的科技，地雷可以自动识别敌我身份，不会被同伴所触发。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.cost = 3500;
               break;
            case 8:
               _loc2_.sprite = "teleport";
               _loc2_.name = "传送\x1f\x1f";
               _loc2_.type = "奢侈\x1f\x1f";
               _loc2_.rechargeSec = 7;
               _loc2_.usedEnergy = 30;
               _loc2_.effect = "传送玩家\x1f\x1f\x1f\x1f";
               _loc2_.extraName = "用:\x1f";
               _loc2_.extraDesc = "蓄满后3次\x1f";
               _loc2_.usage = "按F或Ctrl。\x1f\x1f";
               _loc2_.shortDesc = "将玩家传送到地图的随机位置。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               _loc2_.desc = "从异形坠毁的飞船中找到的，我们对这个科技还很陌生。\n\n看起来它只能够传送使用者到一个很短距离内的随机位置。我们现在还没有十成的把握去解锁它全部的功能。\x1f";
               §§push(_loc2_);
               §§push(1);
               if(false)
               {
                  return;
               }
               §§pop().cost = §§pop();
         }
         _loc2_.num = abilityOrder.indexOf(param1);
         _loc2_.recharge = 3.3 / _loc2_.rechargeSec;
         return _loc2_;
      }
   }
}


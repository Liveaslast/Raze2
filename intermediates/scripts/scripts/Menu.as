package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x14§;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1177")]
   public class Menu extends Sprite
   {
      
      public static var LASTFRAME:String;
      
      public var menfr:MovieClip;
      
      public var globstats:§\x0f\x17§;
      
      private var main:Main;
      
      private var transition1:Transition;
      
      private var transition2:Transition;
      
      private var buttons:Array;
      
      private var selWeapType:uint;
      
      private var selWeap:uint;
      
      private var cameFrom:String;
      
      private var teamsMin:uint;
      
      private var teamsMax:uint;
      
      private var campType:uint;
      
      private var buttons2:Array;
      
      public var disabled:Boolean;
      
      private var selSkin:int;
      
      private var specialModes:Array;
      
      public function Menu(param1:Main, param2:Object)
      {
         var _loc3_:Sprite = null;
         super();
         §§push(§§findproperty(main));
         if(false)
         {
            return false;
         }
         §§pop().main = param1;
         transition1 = new Transition();
         §§push(§§findproperty(transition2));
         §§push(§§findproperty(Transition));
         if(false)
         {
            return;
         }
         §§pop().transition2 = new §§pop().Transition();
         _loc3_ = new Sprite();
         _loc3_.addChild(transition1);
         addChild(_loc3_);
         transition1.spr = _loc3_;
         _loc3_ = new Sprite();
         _loc3_.addChild(transition2);
         addChild(_loc3_);
         transition2.spr = _loc3_;
         Transition.init(transition1,transition2);
         selWeapType = 0;
         if(!LASTFRAME)
         {
            §§push(AGI);
            if(false)
            {
               return;
            }
            if(!§§pop().agi)
            {
               SD.loadGame();
               menfr.gotoAndStop("Menu");
            }
            else
            {
               menfr.gotoAndStop("Login");
            }
         }
         else
         {
            menfr.gotoAndStop(LASTFRAME);
         }
         Main.STAGE.quality = "high";
         if(!param2.noMusic)
         {
            SH.playMusic(M_Menu);
         }
      }
      
      public function init() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = undefined;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         buttons = [];
         §§push(menfr);
         if(false)
         {
            return;
         }
         §§pop().txt_title.text = menfr.currentLabel;
         _loc1_ = 0;
         while(true)
         {
            §§push(_loc1_);
            §§push(menfr.numChildren);
            if(false)
            {
               break;
            }
            if(§§pop() >= §§pop())
            {
               if(menfr.helpinfo)
               {
                  menfr.helpinfo.gotoAndStop(menfr.currentLabel + "_");
               }
               switch(menfr.currentLabel)
               {
                  case "Menu":
                     menfr.mc_sponsor.buttonMode = true;
                     menfr.mc_twitter.buttonMode = true;
                     menfr.mc_facebook.buttonMode = true;
                     if(!(Boolean(Main.GAMEVARS.NewsTitle) && Boolean(Main.GAMEVARS.NewsTitle.length > 3) && Boolean(Main.GAMEVARS.NewsDesc) && Main.GAMEVARS.NewsDesc.length > 3))
                     {
                        menfr.newsbox.visible = false;
                     }
                     else
                     {
                        menfr.newsbox.visible = true;
                        menfr.newsbox.txt_title.text = Main.GAMEVARS.NewsTitle;
                        menfr.newsbox.txt_desc.text = Main.GAMEVARS.NewsDesc;
                     }
                     AGI.setLoginForMenu();
                     AGI.displayLoginInfo(true);
                     break;
                  case "Login":
                     AGI.showLogin();
                     break;
                  case "战役选择\x1f\x1f\x1f":
                     if(SD.campStage < 15)
                     {
                        menfr.nextFrame();
                     }
                     break;
                  case "Human Campaign":
                     MatchSettings.isCampaign = true;
                     campType = 0;
                     _loc1_ = 0;
                     while(_loc1_ < 15)
                     {
                        if(_loc1_ > SD.campStage)
                        {
                           menfr["but_list" + _loc1_].txt_title.textColor = 13421772;
                           §§push(menfr);
                           §§push("but_list");
                           §§push(_loc1_);
                           if(false)
                           {
                              return;
                           }
                           §§pop()[§§pop() + §§pop()].gotoAndStop(4);
                           menfr["but_list" + _loc1_].txt_num.text = "";
                           menfr["but_list" + _loc1_].txt_title.text = "完成第\x1f\x1f" + _loc1_ + "关解锁\x1f";
                        }
                        else
                        {
                           menfr["but_list" + _loc1_].txt_num.text = _loc1_ + 1 + ".";
                           Stats_Campaign.setMatch(campType,_loc1_);
                           menfr["but_list" + _loc1_].txt_title.text = MatchSettings.matchName;
                        }
                        _loc1_++;
                     }
                     §\f\x12§(Math.min(SD.campStage,14),false,true);
                     break;
                  case "Alien Campaign":
                     MatchSettings.isCampaign = true;
                     campType = 1;
                     _loc1_ = 0;
                     while(_loc1_ < 15)
                     {
                        if(_loc1_ > SD.campStage - 15)
                        {
                           §§push(menfr);
                           §§push("but_list" + _loc1_);
                           if(false)
                           {
                              return;
                           }
                           §§pop()[§§pop()].txt_title.textColor = 13421772;
                           menfr["but_list" + _loc1_].gotoAndStop(4);
                           §§push(menfr);
                           §§push("but_list" + _loc1_);
                           if(false)
                           {
                              throw true;
                           }
                           §§pop()[§§pop()].txt_num.text = "";
                           menfr["but_list" + _loc1_].txt_title.text = "完成第\x1f\x1f" + _loc1_ + "关解锁\x1f";
                        }
                        else
                        {
                           menfr["but_list" + _loc1_].txt_num.text = _loc1_ + 1 + ".";
                           Stats_Campaign.setMatch(campType,_loc1_);
                           menfr["but_list" + _loc1_].txt_title.text = MatchSettings.matchName;
                        }
                        §§push(uint(_loc1_ + 1));
                        if(false)
                        {
                           return false;
                        }
                        _loc1_ = §§pop();
                     }
                     §\f\x12§(Math.min(SD.campStage - 15,14),false,true);
                     break;
                  case "练习赛\x1f\x1f":
                     specialModes = ["无\x1f","无限弹夹\x1f\x1f"];
                     §§push(SD.achievements);
                     §§push(2);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop().indexOf(§§pop()) != -1)
                     {
                        specialModes.push("无限弹药\x1f");
                     }
                     if(SD.achievements.indexOf(0) != -1)
                     {
                        specialModes.push("lol猫\x1f\x1f");
                        if(false)
                        {
                           return false;
                        }
                     }
                     if(SD.achievements.indexOf(1) != -1)
                     {
                        specialModes.push("4x体力\x1f");
                     }
                     if(SD.achievements.indexOf(3) != -1)
                     {
                        specialModes.push("月亮尸体");
                     }
                     MatchSettings.isCampaign = false;
                     §\x0b\x0f§(MatchSettings.map.id);
                     §\x0b\x02§();
                     menfr.mc_bots.gotoAndStop(MatchSettings.teams);
                     break;
                  case "仓库":
                     menfr.txt_name.text = SD.name;
                     menfr.txt_credits.text = UT.addNumCommas(SD.credits) + " credits";
                     menfr.txt_ability.text = Stats_Abilities.getAbilityByNum(SD.ability).name;
                     menfr.mc_ability.gotoAndStop(Stats_Abilities.getAbilityByNum(SD.ability).sprite);
                     _loc1_ = 0;
                     while(_loc1_ < 7)
                     {
                        menfr["txt_weap" + _loc1_].text = _loc1_ + 1 + " " + Stats_Armory.getGun(_loc1_,SD.gunList[_loc1_]).name;
                        _loc1_++;
                     }
                     _loc1_ = 0;
                     while(_loc1_ < 3)
                     {
                        menfr["txt_equip" + _loc1_].text = Stats_Equipment.getEquipment(_loc1_,SD.equips[_loc1_]).name;
                        _loc1_++;
                     }
                     §\n\x13§(SD.skin);
                     §§push(menfr);
                     if(false)
                     {
                        return;
                     }
                     §§pop().mc_preview.gotoAndStop(2);
                     menfr.mc_preview.mc_player.gotoAndPlay("stand");
                     §§push(AGI);
                     if(false)
                     {
                        throw true;
                     }
                     if(!§§pop().isLoggedIn())
                     {
                     }
                     menfr.bt_purchase1.visible = true;
                     menfr.bt_purchase2.visible = true;
                     menfr.bt_purchase3.visible = true;
                     menfr.mc_purchase.gotoAndStop(1);
                     break;
                  case "档案\x1f":
                     if(menfr.bt_preview)
                     {
                        menfr.bt_preview.enabled = false;
                     }
                     menfr.txt_stats_human.text = "" + SD.stats.Human;
                     menfr.txt_stats_robot.text = "" + SD.stats.Robot;
                     §§push(menfr.txt_stats_alien);
                     if(false)
                     {
                        return false;
                     }
                     §§pop().text = "" + SD.stats.Alien;
                     §§push(menfr.txt_stats_zombie);
                     §§push("");
                     §§push(SD.stats.Zombie);
                     if(false)
                     {
                        return;
                     }
                     §§pop().text = §§pop() + §§pop();
                     menfr.txt_stats_death.text = "" + SD.stats.阵亡;
                     menfr.txt_stats_head.text = "" + SD.stats.HeadShots;
                     menfr.txt_stats_butt.text = "" + SD.stats.ButtShots;
                     menfr.txt_stats_crotch.text = "" + SD.stats.CrotchShots;
                     menfr.txt_stats_suicide.text = "" + SD.stats.Suicides;
                     §§push(menfr.txt_stats_kd);
                     §§push("");
                     §§push(UT);
                     §§push(SD.stats.Human + SD.stats.Robot + SD.stats.Alien);
                     §§push(SD.stats);
                     if(false)
                     {
                        throw true;
                     }
                     §§pop().text = §§pop() + §§pop().getRatio(§§pop() + §§pop().Zombie,SD.stats.阵亡);
                     §§push(menfr.txt_stats_game);
                     §§push("");
                     §§push(SD.stats.Wins);
                     §§push(SD.stats.Losses);
                     if(false)
                     {
                        return;
                     }
                     §§pop().text = §§pop() + (§§pop() + §§pop());
                     menfr.txt_stats_win.text = "" + SD.stats.Wins;
                     menfr.txt_stats_loss.text = "" + SD.stats.Losses;
                     §§push(menfr.txt_stats_ratio);
                     if(false)
                     {
                        return;
                     }
                     §§pop().text = "" + UT.getRatio(SD.stats.Wins,SD.stats.Losses);
                  case "New Player":
                     selSkin = SD.skin;
                     §§push(menfr.txt_name);
                     §§push(menfr.txt_editname.text = SD.name);
                     if(false)
                     {
                        throw true;
                     }
                     §§pop().text = §§pop();
                     menfr.txt_editname.restrict = "a-zA-Z0-9\\-\\_\\ \\.\\[\\]\\(\\)\\<\\>\\:\\{\\}";
                     menfr.txt_editname.maxChars = 15;
                     menfr.txt_credits.text = UT.addNumCommas(SD.credits) + " credits";
                     §\n\x13§(selSkin);
                     menfr.mc_preview.mc_player.gotoAndPlay("stand");
                     break;
                  case "武器\x1f":
                     menfr.txt_credits.text = UT.addNumCommas(SD.credits) + " credits";
                     §\x0b\x17§();
                     break;
                  case "装备\x1f\x1f\x1f":
                     if(SD.purchase3)
                     {
                        Stats_Achievements.setAchievement("equipment");
                     }
                     menfr.txt_credits.text = UT.addNumCommas(SD.credits) + " credits";
                     §\f\x06§(0,SD.equips[0]);
                     break;
                  case "技能\x1f\x1f\x1f":
                     if(SD.purchase3)
                     {
                        Stats_Achievements.setAchievement("abilities");
                     }
                     §§push(menfr.txt_credits);
                     if(false)
                     {
                        return;
                     }
                     §§pop().text = UT.addNumCommas(SD.credits) + " credits";
                     _loc1_ = 0;
                     while(_loc1_ < Stats_Abilities.abilityOrder.length)
                     {
                        _loc7_ = Stats_Abilities.getAbility(Stats_Abilities.abilityOrder[_loc1_]);
                        menfr["but_list" + _loc1_].mc_ability.gotoAndStop(_loc7_.sprite);
                        menfr["but_list" + _loc1_].txt_name.text = _loc7_.name;
                        §§push(menfr["but_list" + _loc1_]);
                        if(false)
                        {
                           return;
                        }
                        §§pop().txt_shortdesc.text = _loc7_.shortDesc;
                        _loc1_++;
                     }
                     _loc6_ = int(SD.ability);
                     §\r\x05§(_loc6_,_loc6_);
                     break;
                  case "杀敌奖励":
                     menfr.txt_credits.text = UT.addNumCommas(SD.credits) + " credits";
                     §\n\x06§(0);
                     break;
                  case "成就\x1f\x1f\x1f\x1f\x1f\x1f":
                     §\n\x07§();
                     break;
                  case "选项\x1f":
                     buttons2 = [];
                     _loc1_ = 0;
                     while(_loc1_ < menfr.numChildren)
                     {
                        if(menfr.getChildAt(_loc1_).name.substring(0,3) == "txt")
                        {
                           if(menfr.getChildAt(_loc1_).name != "txt_title")
                           {
                              §§push(buttons2);
                              if(false)
                              {
                                 throw true;
                              }
                              §§pop().push(menfr.getChildAt(_loc1_));
                           }
                        }
                        _loc1_++;
                     }
                     §\x0b\x1b§();
                     break;
                  case "Purchase Confirmation":
                     menfr.bt_check.visible = false;
                     menfr.txt_status.text = "Checking purchase...";
                     menfr.txt_info.text = "Please wait.";
                     AGI.checkPurchases();
               }
               return;
            }
            if(menfr.getChildAt(_loc1_).name)
            {
               _loc2_ = menfr.getChildAt(_loc1_);
               if(false)
               {
                  return;
               }
               _loc3_ = _loc2_.name.split("_");
               §§push(_loc3_);
               if(false)
               {
                  return;
               }
               _loc4_ = §§pop().shift();
               if(_loc4_ != "btn")
               {
                  if(_loc4_ == "btnl")
                  {
                     var _temp_2:* = _loc3_.join(" ");
                     _loc5_ = _loc3_.join(" ");
                     if(_loc5_ == "Back to")
                     {
                        _loc5_ += " " + cameFrom;
                     }
                     _loc2_.txt_word.text = _loc5_;
                     _loc2_.alpha = 0.5;
                     _loc2_.gotoAndStop(1);
                  }
               }
               else
               {
                  _loc5_ = _loc3_.join(" ");
                  if(_loc5_ == "Back to")
                  {
                     _loc5_ += " " + cameFrom;
                  }
                  _loc2_.txt_word.text = _loc5_;
                  buttons.push(_loc2_);
                  _loc2_.gotoAndStop(1);
               }
            }
            _loc1_++;
         }
      }
      
      public function purchaseDone(param1:Object) : *
      {
         menfr.bt_check.visible = true;
         §§push(param1);
         §§push(param1);
         menfr.txt_status.text = "传奇套装购买成功！\x1f\x1f\x1f\x1f\x1f\x1f";
         menfr.txt_info.text = "套装已生效，请转账付费 ：）\n所有武器、技能和装备都已解锁！\n\n点击这里返回。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
         §§push(SD);
         §§push(SD);
         if(false)
         {
            return;
         }
         §§pop().credits = §§pop().credits + 80000;
         AGI.logPurchase("Legendary_Enabled",false);
         var _temp_1:* = SD;
         §§push(_temp_1);
         §§push(_temp_1);
         if(false)
         {
            return;
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = §§pop().purchase3 + 1;
         _loc2_.purchase3 = _loc3_;
         if(false)
         {
            throw true;
         }
         SD.abilitiesOwned = [0,1,2,3,4,5,6,7];
         §§push(SD);
         §§push([0,1,2,3]);
         §§push([0,1,2,3,4]);
         §§push([0,1,2,3,4]);
         §§push([0,1,2,3,4]);
         §§push(0);
         §§push(1);
         §§push(2);
         if(false)
         {
            return;
         }
         §§pop().gunsOwned = null;
         §§push(SD);
         §§push(0);
         §§push(1);
         §§push(2);
         §§push(3);
         §§push(4);
         §§push(5);
         §§push(6);
         §§push(7);
         §§push(8);
         §§push(9);
         §§push(10);
         §§push(11);
         §§push(12);
         §§push(13);
         §§push(14);
         §§push(15);
         §§push(16);
         §§push(17);
         §§push(18);
         §§push(19);
         §§push(20);
         §§push(21);
         §§push(22);
         §§push(23);
         §§push(24);
         if(false)
         {
            throw true;
         }
         §§pop().skinsOwned = null;
         §§push(SD);
         §§push([0,1,2,3,4,5]);
         §§push([0,1,2,3,4,5]);
         §§push(0);
         if(false)
         {
            return;
         }
         §§pop().equipsOwned = null;
         SD.saveGame();
         SH.playSound(S_Equip);
         SH.playSound(S_Powerup);
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:int = 0;
         var _loc3_:uint = 0;
         globstats.EnterFrame();
         transition1.EnterFrame();
         transition2.EnterFrame();
         if(!disabled)
         {
            _loc1_ = 0;
            while(_loc1_ < buttons.length)
            {
               if(!(buttons[_loc1_].currentLabel == "up" && §\x11\t§(buttons[_loc1_].hitbox)))
               {
                  if(buttons[_loc1_].currentLabel == "on" && !§\x11\t§(buttons[_loc1_].hitbox))
                  {
                     buttons[_loc1_].gotoAndPlay("out");
                  }
               }
               else
               {
                  if(buttons[_loc1_].currentFrame == 1)
                  {
                     SH.playSound(S_Click);
                  }
                  buttons[_loc1_].gotoAndPlay("over");
               }
               _loc1_++;
            }
            if(menfr.helpinfo)
            {
               if(!§\x11\t§(menfr.helpinfo.hitbox))
               {
                  §§push(menfr.helpinfo);
                  §§push(menfr.currentLabel + "_");
                  if(false)
                  {
                     return;
                  }
                  §§pop().gotoAndStop(§§pop());
               }
               else
               {
                  menfr.helpinfo.gotoAndStop(menfr.currentLabel);
               }
            }
            switch(menfr.currentLabel)
            {
               case "Menu":
                  §§push(0);
                  break;
               case "仓库":
                  if(false)
                  {
                     return;
                  }
                  §§push(1);
                  break;
               case "Human Campaign":
                  §§push(2);
                  break;
               case "Alien Campaign":
                  §§push(3);
                  break;
               case "档案\x1f":
                  §§push(4);
                  break;
               case "New Player":
                  §§push(5);
                  break;
               case "技能\x1f\x1f\x1f":
                  §§push(6);
                  break;
               case "武器\x1f":
                  §§push(7);
                  break;
               case "装备\x1f\x1f\x1f":
                  §§push(8);
                  break;
               case "选项\x1f":
                  §§push(9);
                  break;
               default:
                  §§push(10);
            }
            switch(§§pop())
            {
               case 0:
               case 1:
                  break;
               case 2:
               case 3:
                  §\f\x12§();
                  _loc1_ = 0;
                  while(_loc1_ < 15)
                  {
                     §§push(§§findproperty(§\x11\t§));
                     §§push(menfr);
                     §§push("but_list" + _loc1_);
                     if(false)
                     {
                        return;
                     }
                     var _temp_3:* = Boolean(§§pop().§\x11\t§(§§pop()[§§pop()]));
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        §§pop();
                        §§push(menfr);
                        if(false)
                        {
                           return;
                        }
                        §§push(§§pop()["but_list" + _loc1_].currentFrame != 4);
                     }
                     if(§§pop())
                     {
                        §\f\x12§(_loc1_,true);
                     }
                     _loc1_++;
                  }
                  break;
               case 4:
               case 5:
                  menfr.txt_name.text = SD.name = menfr.txt_editname.text;
                  break;
               case 6:
                  _loc1_ = 0;
                  while(_loc1_ < Stats_Abilities.abilityOrder.length)
                  {
                     menfr["but_list" + _loc1_].gotoAndStop(1);
                     if(§\x11\t§(menfr["but_list" + _loc1_]))
                     {
                        §\r\x05§(_loc1_);
                     }
                     _loc1_++;
                  }
                  _loc2_ = int(SD.ability);
                  menfr["but_list" + _loc2_].txt_status.text = "已装备";
                  menfr["but_list" + _loc2_].txt_status.textColor = 13434828;
                  menfr["but_list" + _loc2_].gotoAndStop(3);
                  break;
               case 7:
                  _loc1_ = 0;
                  while(_loc1_ < 7)
                  {
                     if(!§\x11\t§(menfr["but_weap" + _loc1_]))
                     {
                        menfr["but_weap" + _loc1_].gotoAndStop(1);
                     }
                     else
                     {
                        menfr["but_weap" + _loc1_].gotoAndStop(2);
                     }
                     _loc1_++;
                  }
                  menfr["but_weap" + selWeapType].gotoAndStop(3);
                  _loc1_ = 0;
                  while(_loc1_ < Stats_Armory.gunsArmoryAr[selWeapType].length)
                  {
                     §§push(§§findproperty(§\x11\t§));
                     §§push(menfr["but_list" + _loc1_]);
                     if(false)
                     {
                        return;
                     }
                     if(!§§pop().§\x11\t§(§§pop()))
                     {
                        menfr["but_list" + _loc1_].gotoAndStop(1);
                     }
                     else
                     {
                        menfr["but_list" + _loc1_].gotoAndStop(2);
                        selWeap = _loc1_;
                        §\x0b\x19§();
                     }
                     _loc1_++;
                  }
                  menfr["but_list" + SD.gunList[selWeapType]].gotoAndStop(3);
                  break;
               case 8:
                  _loc3_ = 0;
                  while(_loc3_ < 3)
                  {
                     _loc1_ = 0;
                     while(_loc1_ < 6)
                     {
                        if(§\x11\t§(menfr["but_list_" + _loc3_ + "_" + _loc1_]))
                        {
                           §\f\x06§(_loc3_,_loc1_);
                        }
                        _loc1_++;
                     }
                     _loc3_++;
                  }
                  break;
               case 9:
                  _loc1_ = 0;
                  while(_loc1_ < buttons2.length)
                  {
                     if(false)
                     {
                        return false;
                     }
                     if(buttons2[_loc1_].textColor != 5758640)
                     {
                        if(!buttons2[_loc1_].hitTestPoint(mouseX,mouseY,false))
                        {
                           buttons2[_loc1_].textColor = 10066329;
                        }
                        else
                        {
                           buttons2[_loc1_].textColor = 16777215;
                        }
                     }
                     _loc1_++;
                  }
            }
            return;
         }
      }
      
      public function MouseDown() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         if(Transition.working || disabled)
         {
            return;
         }
         _loc1_ = 0;
         while(_loc1_ < buttons.length)
         {
            if(§\x11\t§(buttons[_loc1_].hitbox))
            {
               var _loc3_:* = buttons[_loc1_].txt_word.text;
               switch(_loc3_)
               {
                  case "开 始\x1f\x1f\x1f":
                     §§push(0);
                     break;
                  case "升 级\x1f":
                     §§push(1);
                     break;
                  case "仓库":
                     §§push(2);
                     break;
                  case "军械库总览":
                     §§push(3);
                     break;
                  case "Give 5000 Credits":
                     §§push(4);
                     break;
                  case "Reset":
                     §§push(5);
                     break;
                  case "Purchase":
                     §§push(6);
                     break;
                  case "Unlock All Campaign":
                     §§push(7);
                     break;
                  case "技能\x1f\x1f\x1f":
                     §§push(8);
                     break;
                  case "武器\x1f":
                     §§push(9);
                     break;
                  case "档案\x1f":
                     §§push(10);
                     break;
                  case "装备\x1f\x1f\x1f":
                     §§push(11);
                     break;
                  case "杀敌奖励":
                     §§push(12);
                     break;
                  case "Save and Continue":
                     §§push(13);
                     break;
                  case "Back to Menu":
                     §§push(14);
                     break;
                  default:
                     §§push("Back to 练习赛\x1f\x1f");
                     if(false)
                     {
                        return false;
                     }
                     switch(_loc3_)
                     {
                        case §§pop():
                           §§push(15);
                           break;
                        case "Back to 战役选择\x1f\x1f\x1f":
                           §§push(16);
                           break;
                        default:
                           §§push("Back to Human Campaign");
                           if(false)
                           {
                              return;
                           }
                           switch(_loc3_)
                           {
                              case §§pop():
                                 §§push(17);
                                 break;
                              case "Back to Alien Campaign":
                                 §§push(18);
                                 break;
                              case "战役\x1f\x1f":
                                 §§push(19);
                                 break;
                              case "View Changelog":
                                 §§push(20);
                                 break;
                              case "教学\x1f\x1f":
                                 §§push(21);
                                 break;
                              case "练习赛\x1f\x1f":
                                 §§push(22);
                                 break;
                              case "更多游戏\x1f\x1f\x1f":
                                 if(false)
                                 {
                                    return;
                                 }
                                 §§push(23);
                                 break;
                              case "Play Raze 1":
                                 §§push(24);
                                 break;
                              default:
                                 §§push(25);
                           }
                     }
               }
               switch(§§pop())
               {
                  case 0:
                     destroy();
                     LASTFRAME = menfr.currentLabel;
                     if(!(Boolean(MatchSettings.backupQm) && Boolean(MatchSettings.preCutFrames)))
                     {
                        main.§\t\x19§(Game);
                     }
                     else
                     {
                        main.§\t\x19§(Cutscene,{"type":"pre"});
                     }
                     break;
                  case 1:
                     SH.playSound(S_ClickGo);
                     cameFrom = menfr.currentLabel;
                     Transition.slideLeft(menfr,"仓库");
                     break;
                  case 2:
                     SH.playSound(S_ClickGo);
                     cameFrom = "Menu";
                     if(false)
                     {
                        return false;
                     }
                     Transition.slideLeft(menfr,"仓库");
                     break;
                  case 3:
                     SH.playSound(S_ClickGo);
                     menfr.gotoAndStop("仓库");
                     break;
                  case 4:
                     SH.playSound(S_Equip);
                     SD.credits += 5000;
                     menfr.txt_credits.text = UT.addNumCommas(SD.credits) + " credits";
                     break;
                  case 5:
                     SH.playSound(S_rocketExplode);
                     SD.deleteGame();
                     break;
                  case 6:
                     §§push(SH);
                     §§push(S_Powerup);
                     if(false)
                     {
                        throw true;
                     }
                     §§pop().playSound(§§pop());
                     ++SD.purchase3;
                     break;
                  case 7:
                     SH.playSound(S_Equip);
                     SD.campStage = 30;
                     break;
                  case 8:
                  case 9:
                  case 10:
                  case 11:
                  case 12:
                     MatchSettings.updatePlayer();
                     SH.playSound(S_ClickGo);
                     menfr.gotoAndStop(buttons[_loc1_].txt_word.text);
                     break;
                  case 13:
                     SD.saveGame();
                     MatchSettings.updatePlayer();
                     SH.playSound(S_ClickGo);
                     Transition.slideLeft(menfr,"Menu");
                     break;
                  case 14:
                  case 15:
                  case 16:
                  case 17:
                  case 18:
                     if(menfr.currentLabel != "选项\x1f")
                     {
                        SD.saveGame();
                     }
                     else
                     {
                        SD.saveSettings();
                     }
                     MatchSettings.updatePlayer();
                     SH.playSound(S_ClickBack);
                     Transition.slideRight(menfr,buttons[_loc1_].txt_word.text.substring(8));
                     if(false)
                     {
                        return;
                     }
                     break;
                  case 19:
                     MatchSettings.backupQm();
                     SH.playSound(S_ClickGo);
                     Transition.slideLeft(menfr,"战役选择\x1f\x1f\x1f");
                     break;
                  case 20:
                     SD.saveSettings();
                     §§push(SH);
                     if(false)
                     {
                        return;
                     }
                     §§pop().playSound(S_ClickGo);
                     Transition.slideLeft(menfr,"Changelog");
                     break;
                  case 21:
                     MatchSettings.backupQm();
                     SH.playSound(S_ClickGo);
                     Transition.slideLeft(menfr,"Human Campaign");
                     break;
                  case 22:
                     if(!(SD.campStage == 0 && !SD.tutWarning))
                     {
                        MatchSettings.restoreQm();
                        SH.playSound(S_ClickGo);
                        Transition.slideLeft(menfr,buttons[_loc1_].txt_word.text);
                        break;
                     }
                     SH.playSound(S_ClickGo);
                     SD.tutWarning = true;
                     Transition.slideLeft(menfr,"Tutorial Warning");
                     if(false)
                     {
                        return false;
                     }
                     break;
                  case 23:
                     SH.playSound(S_ClickGo);
                     AGI.urlSponsor();
                     break;
                  case 24:
                     SH.playSound(S_ClickGo);
                     AGI.urlRaze1();
                     break;
                  default:
                     SH.playSound(S_ClickGo);
                     Transition.slideLeft(menfr,buttons[_loc1_].txt_word.text);
               }
               AGI.displayLoginInfo(false);
            }
            _loc1_++;
         }
         _loc3_ = menfr.currentLabel;
         switch(_loc3_)
         {
            case "Menu":
         }
         if(§\x11\t§(menfr.mc_sponsor))
         {
            AGI.urlSponsor();
         }
         if(§\x11\t§(menfr.mc_twitter))
         {
            AGI.urlTwitter();
         }
         if(§\x11\t§(menfr.mc_facebook))
         {
            AGI.urlFacebook();
         }
      }
      
      private function §\f\x12§(param1:int = -1, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:uint = 0;
         _loc4_ = 0;
         while(_loc4_ < 15)
         {
            §§push(menfr["but_list" + _loc4_].currentFrame == 3);
            if(false)
            {
               return;
            }
            if(!(§§pop() || menfr["but_list" + _loc4_].currentFrame == 4))
            {
               menfr["but_list" + _loc4_].gotoAndStop(1);
               menfr["but_list" + _loc4_].txt_title.textColor = 16777215;
            }
            _loc4_++;
         }
         var _temp_3:* = param1 != -1;
         §§push(_temp_3);
         if(_temp_3)
         {
            §§pop();
            §§push(menfr);
            §§push("but_list");
            if(false)
            {
               return;
            }
            §§push(§§pop()[§§pop() + param1].currentFrame == 3);
         }
         if(!§§pop())
         {
            if(!param2)
            {
               if(param1 != -1)
               {
                  _loc4_ = 0;
                  while(_loc4_ < 15)
                  {
                     if(menfr["but_list" + _loc4_].currentFrame != 4)
                     {
                        menfr["but_list" + _loc4_].gotoAndStop(1);
                        menfr["but_list" + _loc4_].txt_title.textColor = 16777215;
                     }
                     _loc4_++;
                  }
                  menfr["but_list" + param1].gotoAndStop(3);
                  menfr["but_list" + param1].txt_title.textColor = 16777164;
                  Stats_Campaign.setMatch(campType,param1);
                  menfr.img_map.gotoAndStop(MatchSettings.map.id);
                  if(!param3)
                  {
                     SH.playSound(S_Click);
                     menfr.img_map.mc_flash.gotoAndPlay(2);
                  }
                  menfr.txt_maptitle.text = MatchSettings.map.name;
                  §§push(menfr.txt_matchtitle);
                  if(false)
                  {
                     return;
                  }
                  §§pop().text = MatchSettings.matchName;
                  menfr.txt_desc.text = MatchSettings.matchDesc;
                  menfr.txt_type.text = MatchSettings.type;
                  menfr.mc_type.gotoAndStop(MatchSettings.type);
                  menfr.txt_score.text = MatchSettings.winScore;
                  switch(MatchSettings.type)
                  {
                     case "死亡赛\x1f":
                        menfr.txt_scoretype.text = "获胜杀敌";
                        break;
                     case "淘汰赛\x1f\x1f":
                        menfr.txt_scoretype.text = "生命";
                        break;
                     case "控制赛\x1f":
                        menfr.txt_scoretype.text = "获胜积分\x1f";
                        break;
                     case "夺旗赛\x1f\x1f\x1f\x1f\x1f\x1f\x1f":
                        menfr.txt_scoretype.text = "获胜积分\x1f";
                        break;
                     case "Protection":
                        menfr.txt_scoretype.text = "获胜杀敌";
                        break;
                     case "重装机甲":
                        menfr.txt_scoretype.text = "获胜杀敌";
                  }
                  §§push(menfr);
                  if(false)
                  {
                     return;
                  }
                  §§pop().txt_extra.text = MatchSettings.matchExtra;
                  menfr.mc_diff.gotoAndStop(MatchSettings.overallDiff);
               }
            }
            else
            {
               menfr["but_list" + param1].gotoAndStop(2);
            }
            return;
         }
      }
      
      private function §\n\x13§(param1:uint) : void
      {
         var _frame:*;
         var _skin:uint = param1;
         if(menfr.txt_curskin)
         {
            menfr.txt_curskin.text = SD.skin + 1 + ": " + Stats_Skins.skinAr[SD.skin].name;
         }
         if(menfr.txt_skin)
         {
            §§push(menfr.txt_skin);
            §§push(_skin + 1 + ": ");
            §§push(Stats_Skins.skinAr[_skin]);
            if(false)
            {
               return;
            }
            §§pop().text = §§pop() + §§pop().name;
         }
         _frame = Stats_Skins.skinAr[_skin].frame;
         with(menfr.mc_preview.mc_player)
         {
            headhold.gotoAndStop(_frame);
            body.gotoAndStop(_frame);
            body.ability.gotoAndStop(Stats_Abilities.getAbilityByNum(SD.ability).sprite);
            legup1.gotoAndStop(_frame);
            legup2.gotoAndStop(_frame);
            leglow1.gotoAndStop(_frame);
            leglow2.gotoAndStop(_frame);
            §§push(foot1);
            if(false)
            {
               return;
            }
            §§pop().gotoAndStop(_frame);
            foot2.gotoAndStop(_frame);
            arm1hold.gotoAndStop(_frame);
            if(false)
            {
               return;
            }
            arm1hold.armup.gotoAndStop(_frame);
            arm1hold.armlow.gotoAndStop(_frame);
            if(false)
            {
               return;
            }
            arm1hold.hand1.gotoAndStop(_frame);
            arm1hold.hand2.gotoAndStop(_frame);
         }
         if(menfr.txt_status)
         {
            if(SD.skin == _skin)
            {
               if(false)
               {
                  throw true;
               }
               menfr.txt_status.text = "已装备";
               menfr.txt_status.textColor = 13434828;
               menfr.mc_preview.gotoAndStop(2);
            }
            else if(SD.skinsOwned.indexOf(_skin) == -1)
            {
               §§push(SD);
               if(false)
               {
                  return;
               }
               if(§§pop().credits < Stats_Skins.skinAr[_skin].cost)
               {
                  menfr.txt_status.text = Stats_Skins.skinAr[_skin].cost + " cr\n买不起\x1f\x1f\x1f";
                  menfr.txt_status.textColor = 16764108;
                  menfr.mc_preview.gotoAndStop(3);
               }
               else
               {
                  menfr.txt_status.text = Stats_Skins.skinAr[_skin].cost + " cr\n点击购买";
                  menfr.txt_status.textColor = 16777164;
                  menfr.mc_preview.gotoAndStop(3);
               }
            }
            else
            {
               menfr.txt_status.text = "已有\n点击装备\x1f";
               menfr.txt_status.textColor = 13434879;
               menfr.mc_preview.gotoAndStop(1);
            }
         }
         if(menfr.txt_statusnew)
         {
            if(SD.skin != _skin)
            {
               if(SD.skinsOwned.indexOf(_skin) == -1)
               {
                  menfr.txt_statusnew.text = "Visit Armory to Unlock";
                  menfr.txt_statusnew.textColor = 16764108;
                  menfr.mc_preview.gotoAndStop(3);
               }
               else
               {
                  menfr.txt_statusnew.text = "点击装备\x1f\x1f";
                  menfr.txt_statusnew.textColor = 13434879;
                  menfr.mc_preview.gotoAndStop(1);
               }
            }
            else
            {
               menfr.txt_statusnew.text = "已装备";
               menfr.txt_statusnew.textColor = 13434828;
               menfr.mc_preview.gotoAndStop(2);
            }
         }
      }
      
      private function §\x1c\x01§() : void
      {
         if(menfr.txt_status)
         {
            if(SD.skin != selSkin)
            {
               if(SD.skinsOwned.indexOf(selSkin) == -1)
               {
                  §§push(SD);
                  if(false)
                  {
                     return false;
                  }
                  if(§§pop().credits < Stats_Skins.skinAr[selSkin].cost)
                  {
                     SH.playSound(S_Error);
                  }
                  else
                  {
                     SD.credits -= Stats_Skins.skinAr[selSkin].cost;
                     menfr.txt_credits.text = UT.addNumCommas(SD.credits) + " credits";
                     SD.skin = selSkin;
                     SD.skinsOwned.push(selSkin);
                     SH.playSound(S_Equip);
                     §\n\x13§(selSkin);
                     if(false)
                     {
                        return;
                     }
                  }
               }
               else
               {
                  SD.skin = selSkin;
                  §§push(§§findproperty(§\n\x13§));
                  if(false)
                  {
                     return;
                  }
                  §§pop().§\n\x13§(SD.skin);
                  SH.playSound(S_Equip);
               }
            }
         }
         if(menfr.txt_statusnew)
         {
            if(SD.skin != selSkin)
            {
               if(SD.skinsOwned.indexOf(selSkin) == -1)
               {
                  SH.playSound(S_Error);
               }
               else
               {
                  SD.skin = selSkin;
                  §\n\x13§(SD.skin);
                  SH.playSound(S_Equip);
               }
            }
         }
      }
      
      private function §\n\x16§(param1:Boolean = false, param2:Boolean = false) : void
      {
         MatchSettings.teams = Math.min(teamsMax,MatchSettings.teams);
         MatchSettings.teams = Math.max(teamsMin,MatchSettings.teams);
         if(param2)
         {
            if(MatchSettings.teams == 1)
            {
               MatchSettings.team0amt = 3;
               MatchSettings.team0diff = MatchSettings.team1diff;
            }
         }
         if(param1)
         {
            MatchSettings["team" + MatchSettings.teams + "amt"] = 1;
            §§push(MatchSettings);
            §§push("team");
            §§push(MatchSettings);
            if(false)
            {
               return;
            }
            §§pop()[§§pop() + §§pop().teams + "diff"] = 6;
            if(MatchSettings.teams == 2)
            {
               MatchSettings.team1amt = 0;
               MatchSettings.team1diff = MatchSettings.team0diff;
            }
         }
         var _loc3_:uint = 1;
         while(_loc3_ < 5)
         {
            MatchSettings["team" + _loc3_ + "amt"] = Math.min(12 / MatchSettings.teams - (_loc3_ > 1 ? 0 : 1),MatchSettings["team" + _loc3_ + "amt"]);
            _loc3_++;
         }
         menfr.mc_bots.gotoAndStop(MatchSettings.teams);
         menfr.bt_addteam.enabled = menfr.mc_addteam.visible = MatchSettings.teams < teamsMax;
         menfr.bt_removeteam.enabled = menfr.mc_removeteam.visible = MatchSettings.teams > teamsMin;
      }
      
      private function §\x0b\x02§() : void
      {
         menfr.txt_type.text = MatchSettings.type;
         menfr.mc_type.gotoAndStop(MatchSettings.type);
         if(false)
         {
            return;
         }
         teamsMin = 1;
         teamsMax = 4;
         switch(MatchSettings.type)
         {
            case "死亡赛\x1f":
               §§push(0);
               break;
            case "淘汰赛\x1f\x1f":
               §§push(1);
               break;
            case "控制赛\x1f":
               §§push(2);
               break;
            case "夺旗赛\x1f\x1f\x1f\x1f\x1f\x1f\x1f":
               §§push(3);
               break;
            case "Protection":
               §§push(4);
               if(false)
               {
                  throw true;
               }
               break;
            case "重装机甲":
               §§push(5);
               break;
            default:
               §§push(6);
         }
         switch(§§pop())
         {
            case 0:
               menfr.txt_scoretype.text = "获胜杀敌";
               menfr.txt_typedesc.text = "杀死敌人获得分数。\x1f\x1f\x1f\x1f\x1f";
               break;
            case 1:
               menfr.txt_scoretype.text = "生命";
               menfr.txt_typedesc.text = "杀死敌人所有的生命成为最后的胜者。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
               break;
            case 2:
               menfr.txt_scoretype.text = "获胜积分\x1f";
               menfr.txt_typedesc.text = "积分的速度取决于你所控制的旗子区域的数量。\x1f\x1f";
               teamsMin = 2;
               break;
            case 3:
               menfr.txt_scoretype.text = "获胜积分\x1f";
               menfr.txt_typedesc.text = "夺取敌人的旗子并带回自己的基地。\x1f\x1f\x1f\x1f";
               teamsMin = 2;
               teamsMax = 2;
               break;
            case 4:
               menfr.txt_scoretype.text = "获胜杀敌";
               §§push(menfr.txt_typedesc);
               §§push("-- Not used --");
               if(false)
               {
                  return;
               }
               §§pop().text = §§pop();
               teamsMin = 2;
               break;
            case 5:
               menfr.txt_scoretype.text = "获胜杀敌";
               menfr.txt_typedesc.text = "杀死重装机甲后成为他，然后杀死其他所有人。\x1f\x1f";
               teamsMax = 1;
         }
         §\n\x16§(teamsMin > MatchSettings.teams);
         §§push(menfr);
         if(false)
         {
            throw true;
         }
         §§pop().txt_special.text = MatchSettings.specialMode;
         menfr.txt_weaps.text = MatchSettings.weaponsUsed;
         menfr.txt_abilities.text = !MatchSettings.abilitiesOn ? "Off" : "On";
         menfr.txt_equips.text = !MatchSettings.equipsOn ? "Off" : "On";
         menfr.txt_score.text = MatchSettings.winScore;
         §§push(menfr.bt_addteam);
         §§push(menfr.mc_addteam);
         var _temp_1:* = MatchSettings.teams < teamsMax;
         §§pop().enabled = §§pop().visible = MatchSettings.teams < teamsMax;
         if(false)
         {
            return;
         }
         menfr.bt_removeteam.enabled = menfr.mc_removeteam.visible = MatchSettings.teams > teamsMin;
         MatchSettings.creditMod = 1;
         if(false)
         {
            return false;
         }
         if(MatchSettings.weaponsUsed == "手枪\x1f\x1f")
         {
            MatchSettings.creditMod -= 0.1;
         }
         if(MatchSettings.weaponsUsed == "近身\x1f\x1f")
         {
            MatchSettings.creditMod -= 0.1;
         }
         if(MatchSettings.weaponsUsed == "近身\x1f\x1f\x1f\x1f\x1f")
         {
            MatchSettings.creditMod -= 0.2;
         }
         if(MatchSettings.weaponsUsed == "自动\x1f\x1f\x1f\x1f")
         {
            MatchSettings.creditMod -= 0.2;
         }
         if(MatchSettings.weaponsUsed == "远程\x1f\x1f\x1f\x1f")
         {
            MatchSettings.creditMod -= 0.35;
         }
         if(MatchSettings.weaponsUsed == "重型\x1f")
         {
            MatchSettings.creditMod -= 0.3;
         }
         if(MatchSettings.weaponsUsed == "爆破\x1f\x1f\x1f\x1f")
         {
            MatchSettings.creditMod -= 0.35;
         }
         if(MatchSettings.specialMode == "无限弹夹\x1f\x1f")
         {
            MatchSettings.creditMod -= 0.6;
         }
         §§push(MatchSettings);
         if(false)
         {
            return;
         }
         if(§§pop().specialMode == "无限弹药\x1f")
         {
            §§push(MatchSettings);
            §§push(MatchSettings.creditMod);
            if(false)
            {
               return false;
            }
            §§pop().creditMod = §§pop() - 0.9;
         }
         if(MatchSettings.map.id == "tutq")
         {
            --MatchSettings.creditMod;
         }
         if(MatchSettings.map.id == "tutq2")
         {
            --MatchSettings.creditMod;
            if(false)
            {
               return;
            }
         }
         if(MatchSettings.specialMode == "4x体力\x1f")
         {
            MatchSettings.creditMod -= 0.5;
         }
         if(MatchSettings.creditMod < 0)
         {
            MatchSettings.creditMod = 0;
         }
         if(MatchSettings.creditMod >= 1)
         {
            menfr.txt_warning.text = "";
         }
         else
         {
            menfr.txt_warning.text = "警告：此设置会让你本场比赛-\x1f\x1f\x1f\x1f\x1f" + (100 - MatchSettings.creditMod * 100) + "%收入。";
         }
      }
      
      private function §\n\f§(param1:Boolean = true, param2:Boolean = false) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = MatchSettings.type;
         §§push("死亡赛\x1f");
         §§push(_loc4_);
         if(false)
         {
            return;
         }
         switch(§§pop())
         {
            case §§pop():
         }
         _loc3_ = [15,20,25,50,100,5];
         if(!param1)
         {
            MatchSettings.winScore = UT.getNextEl(MatchSettings.winScore,param2,_loc3_);
         }
         else
         {
            MatchSettings.winScore = _loc3_[0];
         }
         menfr.txt_score.text = MatchSettings.winScore;
      }
      
      private function §\x0b\x0f§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Object = Stats_Maps.getMap(param1);
         MatchSettings.map = _loc3_;
         menfr.img_map.gotoAndStop(_loc3_.id);
         if(param2)
         {
            menfr.img_map.mc_flash.gotoAndPlay(2);
         }
         menfr.txt_maptitle.text = _loc3_.name;
         if(false)
         {
            return;
         }
         menfr.txt_mapdesc.text = _loc3_.desc;
         §\x0b\x02§();
      }
      
      public function setBotList() : void
      {
         var _loc2_:uint = 0;
         var _loc1_:MovieClip = menfr.mc_bots;
         MatchSettings.setQuickmatchBots();
         var _loc3_:int = MatchSettings.teams;
         §§push(1);
         if(false)
         {
            return;
         }
         switch(_loc3_)
         {
            case §§pop():
               _loc1_.txt0_players.text = MatchSettings.team0amt + 1 + " / 12 Players";
               _loc1_.txt0_bots.text = MatchSettings.team0amt + 1;
               if(false)
               {
                  return;
               }
               _loc1_.txt0_diff.text = §\x14\x12§(MatchSettings.team0diff);
               _loc1_.txt_playername.text = SD.name + " (with " + MatchSettings.team0amt + " bot" + (MatchSettings.team0amt != 1 ? "s" : "") + ")";
               break;
            case 2:
            case 3:
            case 4:
               _loc2_ = 1;
               while(_loc2_ <= MatchSettings.teams)
               {
                  _loc1_["txt" + _loc2_ + "_players"].text = MatchSettings["team" + _loc2_ + "amt"] + (_loc2_ != 1 ? 0 : 1) + " / " + 12 / MatchSettings.teams + " Players";
                  _loc1_["txt" + _loc2_ + "_bots"].text = MatchSettings["team" + _loc2_ + "amt"] + (_loc2_ != 1 ? 0 : 1);
                  _loc1_["txt" + _loc2_ + "_diff"].text = §\x14\x12§(MatchSettings["team" + _loc2_ + "diff"]);
                  _loc2_++;
               }
               _loc1_.txt_playername.text = SD.name + " (with " + MatchSettings.team1amt + " bot" + (MatchSettings.team1amt != 1 ? "s" : "") + ")";
         }
      }
      
      private function §\x1c\r§(param1:uint) : void
      {
         SD.graphType = param1;
         switch(param1)
         {
            case 0:
               break;
            case 1:
               SD.graphQual = 0;
               SD.graphPart = 0;
               SD.graphGlow = 0;
               SD.graphRagev = 0;
               SD.graphLights = 0;
               break;
            case 2:
               SD.graphQual = 1;
               SD.graphPart = 1;
               §§push(SD);
               §§push(0);
               if(false)
               {
                  return false;
               }
               §§pop().graphGlow = §§pop();
               SD.graphRagev = 0;
               SD.graphLights = 0;
               SD.graphLights = 0;
               break;
            case 3:
               SD.graphQual = 1;
               SD.graphPart = 2;
               SD.graphGlow = 1;
               SD.graphRagev = 1;
               SD.graphLights = 1;
               break;
            case 4:
               SD.graphQual = 2;
               SD.graphPart = 3;
               SD.graphGlow = 1;
               SD.graphRagev = 1;
               SD.graphLights = 1;
         }
      }
      
      private function §\x0b\x1b§() : void
      {
         var _loc1_:uint = 5758640;
         var _loc2_:uint = 0;
         while(_loc2_ < buttons2.length)
         {
            buttons2[_loc2_].textColor = 10066329;
            _loc2_++;
         }
         menfr.mc_graphbox.gotoAndStop(SD.graphType + 1);
         UT.getEl(SD.graphQual,[menfr.txt_qual_low,menfr.txt_qual_med,menfr.txt_qual_high]).textColor = _loc1_;
         §§push(UT.getEl(SD.graphPart,[menfr.txt_part_low,menfr.txt_part_med,menfr.txt_part_high,menfr.txt_part_ult]));
         §§push(_loc1_);
         if(false)
         {
            return;
         }
         §§pop().textColor = §§pop();
         UT.getEl(SD.graphGlow,[menfr.txt_glow_low,menfr.txt_glow_high]).textColor = _loc1_;
         UT.getEl(SD.graphRagev,[menfr.txt_ragev_off,menfr.txt_ragev_on]).textColor = _loc1_;
         UT.getEl(SD.graphLights,[menfr.txt_lights_off,menfr.txt_lights_on]).textColor = _loc1_;
         UT.getEl(!SD.sound ? 0 : 1,[menfr.txt_sound_off,menfr.txt_sound_on]).textColor = _loc1_;
         UT.getEl(!SD.music ? 0 : 1,[menfr.txt_music_off,menfr.txt_music_on]).textColor = _loc1_;
         UT.getEl(!SD.sblood ? 0 : 1,[menfr.txt_sblood_off,menfr.txt_sblood_on]).textColor = _loc1_;
         UT.getEl(!SD.pblur ? 0 : 1,[menfr.txt_pblur_off,menfr.txt_pblur_on]).textColor = _loc1_;
      }
      
      private function §\x14\x12§(param1:uint) : String
      {
         return UT.getEl(param1,["Test","白痴\x1f\x1f\x1f","白痴\x1f\x1f\x1f","弱\x1f","弱\x1f","中\x1f\x1f\x1f","中\x1f\x1f\x1f","强\x1f","强\x1f","疯狂","疯狂"]);
      }
      
      private function §\x0b\x17§() : void
      {
         var _loc1_:uint = 0;
         while(_loc1_ < 7)
         {
            §§push(menfr);
            §§push("txt_name" + _loc1_);
            if(false)
            {
               throw true;
            }
            §§pop()[§§pop()].text = _loc1_ + 1 + " " + Stats_Armory.getGun(_loc1_,SD.gunList[_loc1_]).name;
            §§push(menfr["mc_weap" + _loc1_]);
            §§push(Stats_Armory);
            §§push(_loc1_);
            §§push(SD);
            if(false)
            {
               throw true;
            }
            §§pop().gotoAndStop(§§pop().getGun(§§pop(),§§pop().gunList[_loc1_]).sprite);
            _loc1_++;
         }
         menfr["but_weap" + selWeapType].gotoAndStop(3);
         §\x0b\x19§();
      }
      
      private function §\r\x05§(param1:int = -1, param2:int = -1) : void
      {
         var _loc4_:Object = null;
         var _loc3_:uint = 0;
         while(_loc3_ < Stats_Abilities.abilityOrder.length)
         {
            if(SD.ability != _loc3_)
            {
               §§push(SD.abilitiesOwned.indexOf(_loc3_));
               §§push(-1);
               if(false)
               {
                  return;
               }
               if(§§pop() == §§pop())
               {
                  if(Stats_Abilities.getAbilityByNum(_loc3_).cost != 1)
                  {
                     if(SD.credits < Stats_Abilities.getAbilityByNum(_loc3_).cost)
                     {
                        §§push(menfr["but_list" + _loc3_].txt_status);
                        §§push(Stats_Abilities.getAbilityByNum(_loc3_).cost + " cr\n买不起\x1f\x1f\x1f");
                        if(false)
                        {
                           throw true;
                        }
                        §§pop().text = §§pop();
                        menfr["but_list" + _loc3_].txt_status.textColor = 16764108;
                     }
                     else
                     {
                        menfr["but_list" + _loc3_].txt_status.text = Stats_Abilities.getAbilityByNum(_loc3_).cost + " cr\n点击购买";
                        menfr["but_list" + _loc3_].txt_status.textColor = 16777164;
                     }
                  }
                  else
                  {
                     menfr["but_list" + _loc3_].txt_status.text = "付费后\n解锁\x1f\x1f\x1f\x1f";
                     menfr["but_list" + _loc3_].txt_status.textColor = 13543143;
                  }
               }
               else
               {
                  menfr["but_list" + _loc3_].txt_status.text = "已有\n点击装备\x1f";
                  menfr["but_list" + _loc3_].txt_status.textColor = 13434879;
               }
            }
            else
            {
               menfr["but_list" + _loc3_].txt_status.text = "已装备";
               if(false)
               {
                  return;
               }
               menfr["but_list" + _loc3_].txt_status.textColor = 13434828;
            }
            menfr["but_list" + _loc3_].gotoAndStop(1);
            _loc3_++;
         }
         §§push(param1);
         §§push(-1);
         if(false)
         {
            throw true;
         }
         if(§§pop() != §§pop())
         {
            _loc4_ = Stats_Abilities.getAbility(Stats_Abilities.abilityOrder[param1]);
            if(false)
            {
               return;
            }
            menfr.mc_ability.gotoAndStop(_loc4_.sprite);
            menfr.txt_name.text = _loc4_.name;
            menfr.txt_type.text = _loc4_.type;
            menfr.txt_stats.text = "冷却:\n效果:\n\x1f\x1f" + _loc4_.extraName;
            menfr.txt_statsdesc.text = _loc4_.rechargeSec + " 秒\n\x1f\x1f\x1f\x1f" + _loc4_.effect + "\n" + _loc4_.extraDesc;
            menfr.txt_usage.text = _loc4_.usage;
            menfr.txt_desc.text = _loc4_.desc;
            menfr["but_list" + param1].gotoAndStop(2);
         }
         if(param2 != -1)
         {
            if(SD.abilitiesOwned.indexOf(param2) == -1)
            {
               if(Stats_Abilities.getAbility(Stats_Abilities.abilityOrder[param2]).cost != 1)
               {
                  if(SD.credits < Stats_Abilities.getAbility(Stats_Abilities.abilityOrder[param2]).cost)
                  {
                     SH.playSound(S_Error);
                  }
                  else
                  {
                     SD.abilitiesOwned.push(param2);
                     if(SD.abilitiesOwned.length >= 5)
                     {
                        Stats_Achievements.setAchievement("abilities");
                     }
                     SD.credits -= Stats_Abilities.getAbility(Stats_Abilities.abilityOrder[param2]).cost;
                     menfr.txt_credits.text = UT.addNumCommas(SD.credits) + " credits";
                     SH.playSound(S_Equip);
                     SD.ability = param2;
                     §\r\x05§();
                  }
               }
               else
               {
                  SH.playSound(S_Error);
               }
            }
            else
            {
               if(SD.ability != param2)
               {
                  SH.playSound(S_Equip);
               }
               SD.ability = param2;
            }
         }
      }
      
      private function §\f\x06§(param1:int = -1, param2:int = -1) : void
      {
         var _loc4_:uint = 0;
         var _loc3_:uint = 0;
         while(_loc3_ < 3)
         {
            _loc4_ = 0;
            while(_loc4_ < 6)
            {
               if(SD.equips[_loc3_] != _loc4_)
               {
                  if(SD.equipsOwned[_loc3_].indexOf(_loc4_) == -1)
                  {
                     if(SD.credits < Stats_Equipment.getEquipment(_loc3_,_loc4_).cost)
                     {
                        menfr["but_list_" + _loc3_ + "_" + _loc4_].txt_status.text = Stats_Equipment.getEquipment(_loc3_,_loc4_).cost + " cr\n买不起\x1f\x1f\x1f";
                        §§push(menfr);
                        §§push("but_list_");
                        §§push(_loc3_);
                        if(false)
                        {
                           return false;
                        }
                        §§pop()[§§pop() + §§pop() + "_" + _loc4_].txt_status.textColor = 16764108;
                     }
                     else
                     {
                        menfr["but_list_" + _loc3_ + "_" + _loc4_].txt_status.text = Stats_Equipment.getEquipment(_loc3_,_loc4_).cost + " cr\n点击购买";
                        menfr["but_list_" + _loc3_ + "_" + _loc4_].txt_status.textColor = 16777164;
                     }
                  }
                  else
                  {
                     menfr["but_list_" + _loc3_ + "_" + _loc4_].txt_status.text = "已有\n点击装备\x1f";
                     menfr["but_list_" + _loc3_ + "_" + _loc4_].txt_status.textColor = 13434879;
                  }
               }
               else
               {
                  menfr["but_list_" + _loc3_ + "_" + _loc4_].txt_status.text = "已装备";
                  menfr["but_list_" + _loc3_ + "_" + _loc4_].txt_status.textColor = 13434828;
               }
               menfr["but_list_" + _loc3_ + "_" + _loc4_].txt_name.text = Stats_Equipment.getEquipment(_loc3_,_loc4_).name;
               §§push(menfr);
               §§push("but_list_" + _loc3_);
               if(false)
               {
                  return;
               }
               §§pop()[§§pop() + "_" + _loc4_].gotoAndStop(1);
               _loc4_++;
            }
            _loc3_++;
         }
         if(param1 != -1)
         {
            menfr["but_list_" + param1 + "_" + param2].gotoAndStop(2);
            menfr.txt_name.text = Stats_Equipment.getEquipment(param1,param2).name;
            menfr.txt_desc.text = Stats_Equipment.getEquipment(param1,param2).desc + ".";
            menfr.txt_type.text = UT.getEl(param1,["防御型","工具型","攻击型"]);
            menfr.mc_icon.gotoAndStop(param1 + 1);
         }
         menfr["but_list_0_" + SD.equips[0]].gotoAndStop(3);
         §§push(menfr);
         §§push("but_list_1_");
         §§push(SD.equips[1]);
         if(false)
         {
            return;
         }
         §§pop()[§§pop() + §§pop()].gotoAndStop(3);
         §§push(menfr);
         §§push("but_list_2_");
         §§push(SD.equips);
         if(false)
         {
            return;
         }
         §§pop()[§§pop() + §§pop()[2]].gotoAndStop(3);
         _loc4_ = 0;
         while(_loc4_ < 3)
         {
            menfr["txt_" + _loc4_ + "_name"].text = Stats_Equipment.getEquipment(_loc4_,SD.equips[_loc4_]).name;
            §§push(menfr);
            §§push("txt_" + _loc4_);
            if(false)
            {
               return;
            }
            §§pop()[§§pop() + "_desc"].text = Stats_Equipment.getEquipment(_loc4_,SD.equips[_loc4_]).desc;
            _loc4_++;
         }
      }
      
      private function §\x0b\x19§() : void
      {
         §§push(Stats_Armory.getGun(selWeapType,selWeap));
         if(false)
         {
            return false;
         }
         var _loc1_:* = §§pop();
         menfr.mc_curweap.gotoAndStop(_loc1_.sprite);
         menfr.txt_curdesc.text = _loc1_.desc;
         menfr.txt_curname.text = _loc1_.name;
         menfr.txt_curtype.text = UT.getEl(selWeapType,["初始\x1f","随身\x1f\x1f","近身\x1f\x1f\x1f\x1f\x1f","自动\x1f\x1f\x1f","远程\x1f\x1f\x1f\x1f","重型","爆炸\x1f\x1f\x1f"]);
         menfr.mc_curpow.gotoAndStop(Math.ceil(_loc1_.dmg / 100 * 8));
         if(_loc1_.extra.extraShots)
         {
            §§push(menfr.mc_curpow);
            §§push(Math.ceil(_loc1_.dmg * (_loc1_.extra.extraShots / 2) / 100 * 8));
            if(false)
            {
               throw true;
            }
            §§pop().gotoAndStop(§§pop());
         }
         menfr.mc_curacc.gotoAndStop(Math.ceil((10 - _loc1_.recoil) / 10 * 8));
         menfr.mc_curclip.gotoAndStop(Math.ceil(_loc1_.clipSize / 50 * 8));
         menfr.mc_currng.gotoAndStop(Math.ceil(_loc1_.range / 100 * 8));
         menfr.mc_currof.gotoAndStop(Math.ceil((1 - _loc1_.shootDelay) / 1 * 8));
         menfr.txt_curspec.text = _loc1_.special;
         §§push(0);
         if(false)
         {
            return;
         }
         var _loc2_:* = §§pop();
         while(_loc2_ < 8)
         {
            §§push(_loc2_);
            §§push(Stats_Armory.gunsArmoryAr[selWeapType].length);
            if(false)
            {
               return;
            }
            if(§§pop() >= §§pop())
            {
               menfr["but_list" + _loc2_].gotoAndStop(1);
               menfr["but_list" + _loc2_].visible = false;
            }
            else
            {
               menfr["but_list" + _loc2_].txt_name.text = Stats_Armory.getGun(selWeapType,_loc2_).name;
               menfr["but_list" + _loc2_].txt_race.text = Stats_Armory.getGun(selWeapType,_loc2_).race;
               if(false)
               {
                  return false;
               }
               §§push(menfr["but_list" + _loc2_].mc_weap);
               §§push(Stats_Armory);
               if(false)
               {
                  return;
               }
               §§pop().gotoAndStop(§§pop().getGun(selWeapType,_loc2_).sprite);
               menfr["but_list" + _loc2_].visible = true;
               if(_loc2_ != SD.gunList[selWeapType])
               {
                  if(SD.gunsOwned[selWeapType].indexOf(_loc2_) == -1)
                  {
                     if(Stats_Armory.getGun(selWeapType,_loc2_).cost != 1)
                     {
                        if(SD.credits < Stats_Armory.getGun(selWeapType,_loc2_).cost)
                        {
                           menfr["but_list" + _loc2_].txt_status.text = Stats_Armory.getGun(selWeapType,_loc2_).cost + " cr\n买不起\x1f\x1f\x1f";
                           menfr["but_list" + _loc2_].txt_status.textColor = 16764108;
                        }
                        else
                        {
                           menfr["but_list" + _loc2_].txt_status.text = Stats_Armory.getGun(selWeapType,_loc2_).cost + " cr\n点击购买";
                           menfr["but_list" + _loc2_].txt_status.textColor = 16777164;
                        }
                     }
                     else
                     {
                        §§push(menfr);
                        §§push("but_list" + _loc2_);
                        if(false)
                        {
                           return;
                        }
                        §§pop()[§§pop()].txt_status.text = "付费后\n解锁\x1f\x1f\x1f\x1f";
                        menfr["but_list" + _loc2_].txt_status.textColor = 13543143;
                     }
                  }
                  else
                  {
                     menfr["but_list" + _loc2_].txt_status.text = "已有\n点击装备\x1f";
                     menfr["but_list" + _loc2_].txt_status.textColor = 13434879;
                  }
               }
               else
               {
                  menfr["but_list" + _loc2_].txt_status.text = "已装备";
                  menfr["but_list" + _loc2_].txt_status.textColor = 13434828;
               }
            }
            _loc2_++;
         }
      }
      
      private function §\n\x06§(param1:uint = 0) : void
      {
         var _loc3_:uint = 0;
         var _loc2_:uint = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = _loc2_ + param1 * 10;
            if(_loc3_ < Stats_KillBonuses.bonusAr.length)
            {
               menfr["but_list" + _loc2_].visible = true;
               §§push(menfr["but_list" + _loc2_]);
               if(false)
               {
                  return;
               }
               §§pop().gotoAndStop(2);
               menfr["but_list" + _loc2_].txt_name.text = Stats_KillBonuses.bonusAr[_loc3_].name;
               §§push(menfr["but_list" + _loc2_].txt_desc);
               §§push(Stats_KillBonuses.bonusAr);
               §§push(_loc3_);
               if(false)
               {
                  return;
               }
               §§pop().text = §§pop()[§§pop()].desc;
               menfr["but_list" + _loc2_].txt_worth.text = "+" + Stats_KillBonuses.bonusAr[_loc3_].worth + " cr";
               if(SD.bonusesOwned.indexOf(Stats_KillBonuses.bonusAr[_loc3_].num) == -1)
               {
                  menfr["but_list" + _loc2_].txt_desc.text = "???";
                  §§push(menfr);
                  if(false)
                  {
                     throw true;
                  }
                  §§pop()["but_list" + _loc2_].txt_worth.text = "";
                  menfr["but_list" + _loc2_].gotoAndStop(1);
               }
            }
            else
            {
               menfr["but_list" + _loc2_].visible = false;
            }
            _loc2_++;
         }
      }
      
      private function §\n\x07§() : void
      {
         var _loc1_:uint = 0;
         while(_loc1_ < 10)
         {
            menfr["but_list" + _loc1_].gotoAndStop(1);
            menfr["but_list" + _loc1_].txt_name.text = Stats_Achievements.getAchievementNum(_loc1_).name;
            menfr["but_list" + _loc1_].txt_desc.text = Stats_Achievements.getAchievementNum(_loc1_).desc;
            menfr["but_list" + _loc1_].txt_rew.text = Stats_Achievements.getAchievementNum(_loc1_).rewtxt;
            if(false)
            {
               return;
            }
            menfr["but_list" + _loc1_].mc_icon.gotoAndStop(Stats_Achievements.getAchievementNum(_loc1_).sprite);
            if(SD.achievements.indexOf(_loc1_) != -1)
            {
               menfr["but_list" + _loc1_].gotoAndStop(2);
            }
            _loc1_++;
         }
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
      
      public function flashActivate() : void
      {
      }
      
      public function flashDeactivate() : void
      {
      }
      
      private function destroy() : void
      {
         transition1.destroy();
         transition2.destroy();
      }
      
      private function §\x11\t§(param1:*) : Boolean
      {
         if(!(!param1 || !param1.visible))
         {
            return param1.hitTestPoint(mouseX,mouseY,false);
         }
         return false;
      }
   }
}


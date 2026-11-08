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
   import flash.text.TextLineMetrics;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1174")]
   public class §\x0f\x17§ extends MovieClip
   {
      
      public var txt5:TextField;
      
      public var txt0:TextField;
      
      public var txt_version:TextField;
      
      public var txt1:TextField;
      
      public var txt2:TextField;
      
      public var txt3:TextField;
      
      public var txt4:TextField;
      
      private var stats:Array;
      
      private var statsSel:uint = 0;
      
      private var txts:Array;
      
      private var metrics:TextLineMetrics;
      
      private var txtSpace:uint;
      
      public function §\x0f\x17§()
      {
         var _loc1_:uint = 0;
         super();
         §§push(§§findproperty(txtSpace));
         if(false)
         {
            return false;
         }
         §§pop().txtSpace = 50;
         txt_version.text = "v " + Main.VERSION;
         if(Boolean(Main.GAMEVARS.Version) && Main.GAMEVARS.Version != Main.VERSION)
         {
            txt_version.text = "Updated version (v " + Main.GAMEVARS.Version + ") at ArmorGames.com. v " + Main.VERSION;
         }
         stats = [];
         if(Main.PLAYTOMIC.Suicides)
         {
            stats.push({"txt":"自杀:\x1f\x1f " + UT.addNumCommas(Main.PLAYTOMIC.Suicides)});
         }
         if(Main.PLAYTOMIC.Human)
         {
            stats.push({"txt":"杀死人类:\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.Human)});
         }
         if(Main.PLAYTOMIC.Zombie)
         {
            stats.push({"txt":"消灭僵尸:\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.Zombie)});
            if(false)
            {
               return;
            }
         }
         if(Main.PLAYTOMIC.Robot)
         {
            stats.push({"txt":"摧毁机器人:\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.Robot)});
         }
         if(Main.PLAYTOMIC.Alien)
         {
            §§push(stats);
            §§push("txt");
            §§push("瓦解异形:\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
            §§push(UT.addNumCommas(Main.PLAYTOMIC.Alien));
            if(false)
            {
               return;
            }
            §§pop().push({(§§pop()):§§pop() + §§pop()});
         }
         if(Main.PLAYTOMIC.HeadShots)
         {
            §§push(stats);
            §§push("txt");
            §§push("爆头数:\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.HeadShots));
            if(false)
            {
               return false;
            }
            §§pop().push(null);
         }
         if(Main.PLAYTOMIC.ButtShots)
         {
            stats.push({"txt":"爆菊数:\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.ButtShots)});
         }
         if(Main.PLAYTOMIC.CrotchShots)
         {
            §§push(stats);
            §§push("txt");
            if(false)
            {
               return false;
            }
            §§pop().push({(§§pop()):"射裆数:\x1f\x1f\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.CrotchShots)});
            if(false)
            {
               return;
            }
         }
         if(Main.PLAYTOMIC.Reflections)
         {
            stats.push({"txt":"经理护罩杀敌:\x1f" + UT.addNumCommas(Main.PLAYTOMIC.Reflections)});
            if(false)
            {
               return;
            }
         }
         if(Main.PLAYTOMIC.Betrayals)
         {
            stats.push({"txt":"叛队次数:\x1f\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.Betrayals)});
         }
         if(Main.PLAYTOMIC.Bullets)
         {
            stats.push({"txt":"发射子弹:\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.Bullets)});
         }
         if(Main.PLAYTOMIC.FlagCaps)
         {
            stats.push({"txt":"夺旗次数:\x1f\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.FlagCaps)});
         }
         if(Main.PLAYTOMIC.DomCaps)
         {
            stats.push({"txt":"控制赛积分:\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.DomCaps)});
            if(false)
            {
               return;
            }
         }
         if(Main.PLAYTOMIC.JugKills)
         {
            stats.push({"txt":"杀死重装机甲:\x1f\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.JugKills)});
         }
         if(Main.PLAYTOMIC.MauserKills)
         {
            stats.push({"txt":"黄金毛瑟杀敌:\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.MauserKills)});
         }
         if(Main.PLAYTOMIC.SwordKills)
         {
            stats.push({"txt":"刀魂杀敌:\x1f" + UT.addNumCommas(Main.PLAYTOMIC.SwordKills)});
         }
         if(Main.PLAYTOMIC.FireKills)
         {
            stats.push({"txt":"烧死敌人:\x1f\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.FireKills)});
         }
         if(Main.PLAYTOMIC.MineKills)
         {
            §§push(stats);
            §§push("txt");
            if(false)
            {
               return;
            }
            §§pop().push({(§§pop()):"地雷杀敌" + UT.addNumCommas(Main.PLAYTOMIC.MineKills)});
         }
         if(Main.PLAYTOMIC.KillSteals)
         {
            stats.push({"txt":"捡漏杀敌:\x1f" + UT.addNumCommas(Main.PLAYTOMIC.KillSteals)});
         }
         if(Main.PLAYTOMIC.JuiceKills)
         {
            stats.push({"txt":"Juice-Tin杀敌:\x1f" + UT.addNumCommas(Main.PLAYTOMIC.JuiceKills)});
         }
         §§push(Main.PLAYTOMIC);
         if(false)
         {
            return;
         }
         if(§§pop().RadKills)
         {
            stats.push({"txt":"AddisonR杀敌:\x1f" + UT.addNumCommas(Main.PLAYTOMIC.RadKills)});
         }
         if(Main.PLAYTOMIC.SpeedKills)
         {
            §§push(stats);
            §§push({"txt":"高速杀敌:\x1f\x1f\x1f\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.SpeedKills)});
            if(false)
            {
               return false;
            }
            §§pop().push(§§pop());
         }
         if(Main.PLAYTOMIC.CorpseSticks)
         {
            §§push(stats);
            §§push("txt");
            §§push("尸爆杀敌:\x1f\x1f\x1f\x1f\x1f\x1f");
            §§push(UT);
            §§push(Main);
            if(false)
            {
               return;
            }
            §§pop().push({(§§pop()):§§pop() + §§pop().addNumCommas(§§pop().PLAYTOMIC.CorpseSticks)});
         }
         if(Main.PLAYTOMIC.§制作\x1f§)
         {
            stats.push({"txt":"赢得奖金总数:\x1f\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.§制作\x1f§)});
         }
         if(Main.PLAYTOMIC.Secrets)
         {
            stats.push({"txt":"发现秘密:\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.Secrets)});
         }
         if(Main.PLAYTOMIC.§成就\x1f\x1f\x1f\x1f\x1f\x1f§)
         {
            stats.push({"txt":"获得成就:\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.§成就\x1f\x1f\x1f\x1f\x1f\x1f§)});
         }
         §§push(Main);
         if(false)
         {
            return;
         }
         if(§§pop().PLAYTOMIC.Campaign_Played)
         {
            stats.push({"txt":"战役比赛次数:\x1f\x1f\x1f\x1f\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.Campaign_Played)});
         }
         if(Main.PLAYTOMIC.Campaign_Won)
         {
            stats.push({"txt":"完成战役比赛次数:\x1f\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.Campaign_Won)});
         }
         if(Main.PLAYTOMIC.Campaign_Lost)
         {
            stats.push({"txt":"战役比赛失败:\x1f\x1f\x1f\x1f\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.Campaign_Lost)});
         }
         if(Main.PLAYTOMIC.Campaign_Human)
         {
            §§push(stats);
            §§push("txt");
            §§push("人类战役完成数:\x1f\x1f\x1f\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.Campaign_Human));
            if(false)
            {
               return;
            }
            §§pop().push(null);
         }
         if(Main.PLAYTOMIC.Campaign_Alien)
         {
            stats.push({"txt":"异形战役完成数:\x1f\x1f\x1f\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.Campaign_Alien)});
         }
         if(Main.PLAYTOMIC.QuickMatch_Played)
         {
            stats.push({"txt":"练习赛次数:\x1f\x1f\x1f\x1f\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.QuickMatch_Played)});
            if(false)
            {
               throw true;
            }
         }
         if(Main.PLAYTOMIC.QuickMatch_Won)
         {
            stats.push({"txt":"练习赛获胜:\x1f\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.QuickMatch_Won)});
         }
         if(Main.PLAYTOMIC.QuickMatch_Lost)
         {
            §§push(stats);
            §§push("txt");
            §§push("练习赛失败:\x1f\x1f\x1f\x1f");
            if(false)
            {
               return;
            }
            §§pop().push({(§§pop()):§§pop() + UT.addNumCommas(Main.PLAYTOMIC.QuickMatch_Lost)});
         }
         if(Main.PLAYTOMIC.Views)
         {
            stats.push({"txt":"Raze2查看:\x1f\x1f" + UT.addNumCommas(Main.PLAYTOMIC.Views)});
         }
         if(Main.PLAYTOMIC.RageQuits)
         {
            stats.push({"txt":"愤怒退出" + UT.addNumCommas(Main.PLAYTOMIC.RageQuits)});
         }
         if(stats.length < 6)
         {
            _loc1_ = 0;
            while(_loc1_ < 6 - stats.length)
            {
               if(false)
               {
                  return false;
               }
               stats.push({"txt":"获取数据失败…稍后再试！\x1f\x1f\x1f"});
               _loc1_++;
            }
         }
         _loc1_ = 0;
         while(_loc1_ < stats.length)
         {
            stats[_loc1_].rand = UT.irand(0,100);
            _loc1_++;
         }
         §§push(stats);
         §§push("rand");
         §§push(Array);
         if(false)
         {
            return;
         }
         §§pop().sortOn(§§pop(),§§pop().NUMERIC | Array.DESCENDING);
         txts = [];
         txts.push({"txtfld":txt0});
         §§push(txts);
         §§push({"txtfld":txt1});
         if(false)
         {
            return false;
         }
         §§pop().push(§§pop());
         txts.push({"txtfld":txt2});
         txts.push({"txtfld":txt3});
         txts.push({"txtfld":txt4});
         txts.push({"txtfld":txt5});
         _loc1_ = 0;
         while(_loc1_ < txts.length)
         {
            §\x0b\x06§(txts[_loc1_]);
            _loc1_++;
         }
         §§push(txts[0].txtfld);
         §§push(0);
         if(false)
         {
            return;
         }
         §§pop().x = §§pop();
         _loc1_ = 1;
         while(_loc1_ < txts.length)
         {
            §§push(txts[_loc1_].txtfld);
            §§push(txts[_loc1_ - 1].txtfld.x);
            §§push(txts);
            §§push(_loc1_ - 1);
            if(false)
            {
               return false;
            }
            §§pop().x = §§pop() + §§pop()[§§pop()].width + txtSpace;
            _loc1_++;
         }
      }
      
      public function §\x0b\x06§(param1:Object) : void
      {
         param1.txtfld.text = stats[statsSel].txt;
         param1.width = param1.txtfld.getLineMetrics(0).width;
         ++statsSel;
         if(statsSel == stats.length)
         {
            statsSel = 0;
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc2_:* = undefined;
         var _loc1_:* = 0;
         while(true)
         {
            §§push(_loc1_);
            if(false)
            {
               break;
            }
            if(§§pop() >= txts.length)
            {
               return;
            }
            txts[_loc1_].txtfld.x -= 0.5;
            if(false)
            {
               return;
            }
            if(txts[_loc1_].txtfld.x + txts[_loc1_].width < 0)
            {
               _loc2_ = _loc1_ - 1;
               if(_loc2_ < 0)
               {
                  _loc2_ = txts.length - 1;
               }
               §\x0b\x06§(txts[_loc1_]);
               §§push(txts[_loc1_].txtfld);
               §§push(txts);
               §§push(_loc2_);
               if(false)
               {
                  throw true;
               }
               §§pop().x = §§pop()[§§pop()].txtfld.x + txts[_loc2_].width + txtSpace;
            }
            _loc1_++;
         }
      }
   }
}


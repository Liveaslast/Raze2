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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol27")]
   public class LoaderScreen extends MovieClip
   {
      
      public var txt_load2:TextField;
      
      public var txt_load1:TextField;
      
      public var bar1:MovieClip;
      
      public var mc_sponsor:MovieClip;
      
      public var bar2:MovieClip;
      
      public var txt_play:TextField;
      
      private var main:Main;
      
      private var obarWidth:Number;
      
      private var otxtHeight:Number;
      
      private var helpNum:uint;
      
      private var helpAr:Array;
      
      public function LoaderScreen(param1:Main = null, param2:Object = null)
      {
         super();
         if(param1)
         {
            main = param1;
            obarWidth = bar1.width;
            bar1.width = 0;
            bar2.width = 0;
            otxtHeight = txt_play.y;
            txt_play.y = 2000;
            helpAr = [];
            helpAr.push("菜单有些不明白？\n把鼠标移到右上角的帮助按钮处查看更多信息。\x1f\x1f");
            helpAr.push("想要更多的游戏模式？\x1f\x1f\x1f\n完成4个秘密成就可以获得更多游戏模式！");
            helpAr.push("想要更多奖金？\n完成成就可以获得奖金奖励。\x1f\x1f");
            helpAr.push("想要更多奖金？\n在军械库给游戏开发者捐助一些钱，可以获得相当可观的奖金。\x1f");
            helpAr.push("想要更多奖金？\n厉害的敌人值更多的奖金，简单的敌人不值钱。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
            helpAr.push("想要更多奖金？\n快速游戏模式是快速赚钱的好方法。\n更多敌人=更多奖金\x1f\x1f");
            helpAr.push("任务太难？\n尝试使用更多的武器、技能和装备，找到一套最适合你的组合。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
            helpAr.push("任务太难？\n试着换换武器、技能、或装备，找到更适合当前任务的组合。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
            helpAr.push("秘密，还是秘密！\n游戏共有4个隐藏的秘密，你能找到么？\n(查看成就获得更多信息)\x1f\x1f\x1f");
            helpAr.push("能力越强…\n记住经常使用你的技能！技能能量恢复很快，别让它们浪费了！\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
            helpAr.push("随时随地\n登录到网站后，你可以使用在线存档在任何一台电脑继续游戏！\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
            helpAr.push("全球状态\n在主菜单页面底部可以查看全球玩家的状态。\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
            helpAr.push("上火了？\n跳到水里降降温吧！\x1f\x1f\x1f\x1f\x1f\x1f");
            helpAr.push("保护！\n保护罩会阻止爆头、射裆和爆菊。\n如果想使用技巧杀敌，首先先打掉敌人的保护罩。");
            helpAr.push("黄金加农炮！\n一个以金钱当做子弹的强力武器。\n用它时留心你的钱，流水一样的减啊！\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
            helpAr.push("传送！\n这个技能每次蓄满后可以使用3次！\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
            helpNum = UT.irand(0,helpAr.length - 1);
            mc_sponsor.buttonMode = true;
            return;
         }
      }
      
      public function MouseDown() : void
      {
         if(txt_play.hitTestPoint(mouseX,mouseY,false))
         {
            main.§\x10\b§();
         }
         if(mc_sponsor.hitTestPoint(mouseX,mouseY,false))
         {
            AGI.urlSponsor();
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
      
      public function EnterFrame() : void
      {
         if(main.loaderInfo.bytesLoaded >= main.loaderInfo.bytesTotal)
         {
            txt_play.y = otxtHeight;
            txt_load1.text = "Done.";
            txt_load2.text = "Done.";
         }
         if(!txt_play.hitTestPoint(mouseX,mouseY,false))
         {
            txt_play.textColor = 13421772;
         }
         else
         {
            txt_play.textColor = 16777215;
         }
         bar1.width = bar2.width = main.loaderInfo.bytesLoaded / main.loaderInfo.bytesTotal * obarWidth;
      }
      
      public function setText(param1:TextField) : void
      {
         if(main)
         {
            var _loc2_:uint = helpNum;
            do
            {
               helpNum = UT.irand(0,helpAr.length - 1);
            }
            while(helpNum == _loc2_);
            §§push(param1);
            §§push(helpAr);
            §§push(helpNum);
            if(false)
            {
               return;
            }
            §§pop().text = §§pop()[§§pop()];
            return;
         }
      }
   }
}


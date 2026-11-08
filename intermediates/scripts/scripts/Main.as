package
{
   import §\x0e\r§.*;
   import §\x1c\x17§.§\x1e\x04§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.ContextMenu;
   
   [SWF(width="800", height="600", backgroundColor="#999999", frameRate="30")]
   public class Main extends MovieClip
   {
      
      public static var STAGE:*;
      
      public static var WIDTH:uint;
      
      public static var HEIGHT:uint;
      
      public static var VERSION:String;
      
      public static var curClass:*;
      
      public static var GAMEVARS:Object;
      
      public static var PLAYTOMIC:Object;
      
      private var added:Boolean;
      
      private var bitHandler:BH;
      
      private var achievement:Stats_Achievements;
      
      public function Main()
      {
         super();
         addFrameScript(0,§\x19\b§,99,§\x19\x06§,100,§\x19\x05§);
         addEventListener(Event.ADDED_TO_STAGE,Init,false,0,true);
      }
      
      private function Init(param1:Event) : void
      {
         GAMEVARS = {};
         PLAYTOMIC = {};
         var _loc2_:ContextMenu = new ContextMenu();
         _loc2_.builtInItems.forwardAndBack = false;
         _loc2_.builtInItems.loop = false;
         _loc2_.builtInItems.play = false;
         _loc2_.builtInItems.print = false;
         _loc2_.builtInItems.quality = false;
         if(false)
         {
            return;
         }
         _loc2_.builtInItems.rewind = false;
         _loc2_.builtInItems.save = false;
         _loc2_.builtInItems.zoom = false;
         contextMenu = _loc2_;
         if(!added)
         {
            added = true;
            Main.STAGE = stage;
            Main.WIDTH = 800;
            Main.HEIGHT = 600;
            Main.VERSION = "1.8";
            stage.addEventListener(Event.ENTER_FRAME,EnterFrame,false,0,true);
            stage.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown,false,0,true);
            §§push(stage);
            §§push(MouseEvent.MOUSE_UP);
            §§push(MouseUp);
            §§push(false);
            §§push(0);
            §§push(true);
            if(false)
            {
               return false;
            }
            §§pop().addEventListener(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
            stage.addEventListener(KeyboardEvent.KEY_DOWN,KeyDown,false,0,true);
            stage.addEventListener(KeyboardEvent.KEY_UP,KeyUp,false,0,true);
            stage.addEventListener(Event.ACTIVATE,flashActivate,false,0,true);
            stage.addEventListener(Event.DEACTIVATE,flashDeactivate,false,0,true);
            AGI.Init(this);
            SD.Init();
            SH.Init();
            Stats_Skins.Init();
            Stats_Guns.Init();
            Stats_Armory.Init();
            Stats_Maps.Init();
            Stats_Abilities.Init();
            Stats_Equipment.Init();
            Stats_KillBonuses.Init();
            MatchSettings.Init();
            Log.Enabled = true;
            if(false)
            {
               return;
            }
            if(Log.Enabled)
            {
               §§push(Log);
               §§push(2349);
               §§push("1b2847e9ebef4d40");
               if(false)
               {
                  return;
               }
               §§pop().View(§§pop(),§§pop(),loaderInfo.loaderURL);
               Log.Freeze();
               GameVars.Load(this.§\x14\x1d§);
               Data.Views(§\x0e\x1c§);
               if(false)
               {
                  return;
               }
               Data.LevelAverageMetric("Suicides","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("Human","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("Robot","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("Zombie","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("Alien","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("HeadShots","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("ButtShots","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("CrotchShots","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("Reflections","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("Bullets","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("FlagCaps","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("DomCaps","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("JugKills","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("MauserKills","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("SwordKills","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("FireKills","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("MineKills","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("KillSteals","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("JuiceKills","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("RadKills","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("SpeedKills","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("CorpseSticks","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("制作\x1f","杀敌",§\x0e\x1d§);
               Data.LevelAverageMetric("Betrayals","杀敌",§\x0e\x1d§);
               Data.CustomMetric("Campaign_Played",§\x0f\x01§);
               Data.CustomMetric("Campaign_Won",§\x0f\x01§);
               Data.CustomMetric("Campaign_Lost",§\x0f\x01§);
               Data.CustomMetric("Campaign_Human",§\x0f\x01§);
               Data.CustomMetric("Campaign_Alien",§\x0f\x01§);
               Data.CustomMetric("成就\x1f\x1f\x1f\x1f\x1f\x1f",§\x0f\x01§);
               Data.CustomMetric("Secrets",§\x0f\x01§);
               Data.CustomMetric("QuickMatch_Played",§\x0f\x01§);
               Data.CustomMetric("QuickMatch_Won",§\x0f\x01§);
               Data.CustomMetric("QuickMatch_Lost",§\x0f\x01§);
               Data.CustomMetric("RageQuits",§\x0f\x01§);
               trace("Data prepped for loading");
            }
            §\t\x19§(LoaderScreen);
            return;
         }
      }
      
      private function §\x14\x1d§(param1:Object, param2:Object) : void
      {
         if(param2.Success)
         {
            GAMEVARS = param1;
         }
      }
      
      internal function §\x0e\x1d§(param1:Object, param2:Object) : void
      {
         if(param2.Success)
         {
            PLAYTOMIC[param1.Metric] = param1.Total;
            trace(param1.Metric,param1.Total);
         }
      }
      
      internal function §\x0e\x1c§(param1:Object, param2:Object) : void
      {
         if(param2.Success)
         {
            PLAYTOMIC.Views = param1.Value;
         }
      }
      
      internal function §\x0f\x01§(param1:Object, param2:Object) : void
      {
         if(param2.Success)
         {
            PLAYTOMIC[param1.Metric] = param1.Value;
         }
      }
      
      public function §\x10\b§() : void
      {
         gotoAndStop("start");
      }
      
      public function §\t\x18§() : void
      {
         bitHandler = new BH(this);
         §\t\x19§(Render);
         Log.Play();
         Stats_Achievements.Init();
         achievement = new Stats_Achievements();
         addChild(achievement);
      }
      
      public function §\r\x13§() : void
      {
         if(!§\x1c\b§(["files.juice-tin.com","games.armorgames.com","preview.armorgames.com","cdn.armorgames.com","cache.armorgames.com","memedia.armorgames.com","www.armorgames.com","armorgames.com"]))
         {
            §\t\x19§(Intro);
            return;
         }
         §\t\x19§(§\x0f\x03§);
      }
      
      private function EnterFrame(param1:Event) : void
      {
         if(Boolean(bitHandler) && !bitHandler.complete)
         {
            curClass.setBar(bitHandler.currentFrame,bitHandler.totalFrames);
            bitHandler.§\n\x12§();
            if(false)
            {
               return;
            }
         }
         else
         {
            curClass.EnterFrame();
            SH.EnterFrame();
         }
      }
      
      private function MouseDown(param1:MouseEvent) : void
      {
         curClass.MouseDown();
      }
      
      private function MouseUp(param1:MouseEvent) : void
      {
         curClass.MouseUp();
      }
      
      private function KeyDown(param1:KeyboardEvent) : void
      {
         curClass.KeyDown(param1);
      }
      
      private function KeyUp(param1:KeyboardEvent) : void
      {
         curClass.KeyUp(param1);
      }
      
      private function flashActivate(param1:Event) : void
      {
         curClass.flashActivate();
      }
      
      private function flashDeactivate(param1:Event) : void
      {
         curClass.flashDeactivate();
      }
      
      public function §\t\x19§(param1:*, param2:Object = null) : void
      {
         if(curClass)
         {
            removeChild(curClass);
            curClass = null;
         }
         curClass = new param1(this,!param2 ? {} : param2);
         addChild(curClass);
         if(AGI.agi)
         {
            §§push(§§findproperty(setChildIndex));
            §§push(AGI.agi);
            if(false)
            {
               return;
            }
            §§pop().setChildIndex(§§pop(),numChildren - 1);
         }
         if(achievement)
         {
            setChildIndex(achievement,numChildren - 1);
         }
         stage.focus = stage;
         trace("new class:",param1);
      }
      
      public function §\x1c\b§(param1:Array) : Boolean
      {
         var _loc2_:String = loaderInfo.url;
         var _loc3_:Boolean = false;
         var _loc4_:uint = 0;
         while(_loc4_ < param1.length)
         {
            if(param1[_loc4_] == _loc2_.substring(_loc2_.indexOf("/",6) + 1,_loc2_.indexOf("/",7)))
            {
               _loc3_ = true;
               if(false)
               {
                  return;
               }
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      internal function §\x19\b§() : *
      {
         stop();
      }
      
      internal function §\x19\x06§() : *
      {
         stop();
         §\t\x18§();
      }
      
      internal function §\x19\x05§() : *
      {
         prevFrame();
      }
   }
}


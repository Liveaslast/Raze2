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
   
   public class SD
   {
      
      public static var debug:Boolean;
      
      public static var loginname:String;
      
      public static var name:String;
      
      public static var skin:int;
      
      public static var preview:uint;
      
      public static var ability:uint;
      
      public static var abilitiesOwned:Array;
      
      public static var achievements:Array;
      
      public static var skinsOwned:Array;
      
      public static var gunList:Array;
      
      public static var gunsOwned:Array;
      
      public static var credits:int;
      
      public static var equips:Array;
      
      public static var equipsOwned:Array;
      
      public static var bonusesOwned:Array;
      
      public static var campStage:uint;
      
      public static var stats:Object;
      
      public static var purchase1:uint;
      
      public static var purchase2:uint;
      
      public static var purchase3:uint;
      
      public static var graphType:uint;
      
      public static var graphQual:uint;
      
      public static var graphPart:uint;
      
      public static var graphGlow:uint;
      
      public static var graphRagev:uint;
      
      public static var graphLights:uint;
      
      public static var sound:Boolean;
      
      public static var music:Boolean;
      
      public static var sblood:Boolean;
      
      public static var pblur:Boolean;
      
      public static var saveList:Array;
      
      public static var saveList2:Array;
      
      public static var tutWarning:Boolean;
      
      public static var SAVENUM:uint = 10;
      
      public function SD()
      {
         super();
      }
      
      public static function Init() : void
      {
         saveList = ["credits","bonusesOwned","name","skin","preview","ability","gunList","gunsOwned","abilitiesOwned","achievements","skinsOwned","equips","equipsOwned","campStage","stats","purchase1","purchase2","purchase3"];
         saveList2 = ["graphType","graphQual","graphPart","graphGlow","graphRagev","graphLights","sound","music","sblood","pblur"];
         §\x0f\x07§();
      }
      
      public static function getNew() : uint
      {
         var _loc1_:SharedObject = SharedObject.getLocal("Raze2_DFert34FTFfft4435");
         var _loc2_:uint = 0;
         if(_loc1_.data.savedBefore == SAVENUM)
         {
            _loc2_ = uint(_loc1_.data.savedBefore);
         }
         _loc1_.close();
         §§push(_loc2_);
         if(false)
         {
            return;
         }
         return §§pop();
      }
      
      public static function deleteGame() : void
      {
         if(!AGI.isLoggedIn())
         {
            trace("Delete Game");
            var _loc1_:SharedObject = SharedObject.getLocal("Raze2_DFert34FTFfft4435");
            _loc1_.clear();
            _loc1_.flush();
            _loc1_.close();
            §\x0f\x07§();
            saveGame();
            return;
         }
      }
      
      public static function §\x0f\x07§() : void
      {
         trace("New Game");
         name = "Player";
         if(false)
         {
            return;
         }
         credits = 500;
         skin = 0;
         ability = 0;
         preview = 0;
         campStage = 0;
         gunList = [0,0,0,0,0,0,0];
         §§push(§§findproperty(equips));
         §§push(0);
         if(false)
         {
            return;
         }
         var _temp_1:* = §§pop();
         §§pop().equips = [_temp_1,_temp_1,_temp_1];
         bonusesOwned = [];
         abilitiesOwned = [0];
         §§push(§§findproperty(skinsOwned));
         §§push(0);
         §§push(1);
         if(false)
         {
            return;
         }
         §§pop().skinsOwned = null;
         achievements = [];
         gunsOwned = [[0],[0],[0],[0],[0],[0],[0]];
         §§push(§§findproperty(equipsOwned));
         §§push([0]);
         §§push([0]);
         §§push(0);
         if(false)
         {
            return;
         }
         §§pop().equipsOwned = null;
         graphType = 3;
         graphQual = 1;
         graphPart = 2;
         graphGlow = 1;
         graphRagev = 1;
         graphLights = 1;
         sound = true;
         music = true;
         sblood = true;
         pblur = true;
         stats = {
            "Suicides":0,
            "Human":0,
            "Robot":0,
            "Zombie":0,
            "Alien":0,
            "HeadShots":0,
            "ButtShots":0,
            "CrotchShots":0,
            "Wins":0,
            "Losses":0,
            "Rage":0,
            "阵亡":0
         };
         §§push(§§findproperty(purchase1));
         §§push(0);
         if(false)
         {
            throw true;
         }
         §§pop().purchase1 = §§pop();
         purchase2 = 0;
         purchase3 = 0;
      }
      
      public static function createSaveOb() : Object
      {
         var _loc1_:* = {};
         _loc1_.notNew = true;
         _loc1_.name = name;
         _loc1_.cred = credits;
         _loc1_.skin = skin;
         _loc1_.abil = ability;
         _loc1_.prev = preview;
         _loc1_.camp = campStage;
         _loc1_.guns = gunList;
         _loc1_.equi = equips;
         _loc1_.aOwn = abilitiesOwned;
         _loc1_.bOwn = bonusesOwned;
         _loc1_.sOwn = skinsOwned;
         _loc1_.ach = achievements;
         _loc1_.gOwn0 = gunsOwned[0];
         _loc1_.gOwn1 = gunsOwned[1];
         _loc1_.gOwn2 = gunsOwned[2];
         _loc1_.gOwn3 = gunsOwned[3];
         _loc1_.gOwn4 = gunsOwned[4];
         _loc1_.gOwn5 = gunsOwned[5];
         _loc1_.gOwn6 = gunsOwned[6];
         _loc1_.eOwn0 = equipsOwned[0];
         _loc1_.eOwn1 = equipsOwned[1];
         _loc1_.eOwn2 = equipsOwned[2];
         _loc1_.opti = [graphType,graphQual,graphPart,graphGlow,graphRagev,graphLights,sound,music,sblood,pblur];
         _loc1_.stat = [stats.Suicides,stats.Human,stats.Robot,stats.Zombie,stats.Alien,stats.HeadShots,stats.ButtShots,stats.CrotchShots,stats.Wins,stats.Losses,stats.Rage,stats.阵亡];
         _loc1_.purch1 = purchase1;
         _loc1_.purch2 = purchase2;
         _loc1_.purch3 = purchase3;
         return _loc1_;
      }
      
      public static function loadSaveObject(param1:Object) : void
      {
         name = param1.name;
         credits = param1.cred;
         skin = param1.skin;
         ability = param1.abil;
         preview = param1.prev;
         campStage = param1.camp;
         gunList = param1.guns;
         equips = param1.equi;
         abilitiesOwned = param1.aOwn;
         bonusesOwned = !param1.bOwn ? [] : param1.bOwn;
         skinsOwned = param1.sOwn;
         achievements = !param1.ach ? [] : param1.ach;
         gunsOwned[0] = param1.gOwn0;
         gunsOwned[1] = param1.gOwn1;
         gunsOwned[2] = param1.gOwn2;
         §§push(gunsOwned);
         §§push(3);
         §§push(param1.gOwn3);
         if(false)
         {
            return;
         }
         §§pop()[§§pop()] = §§pop();
         gunsOwned[4] = param1.gOwn4;
         gunsOwned[5] = param1.gOwn5;
         gunsOwned[6] = param1.gOwn6;
         equipsOwned[0] = param1.eOwn0;
         §§push(equipsOwned);
         if(false)
         {
            return;
         }
         §§pop()[1] = param1.eOwn1;
         equipsOwned[2] = param1.eOwn2;
         graphType = param1.opti[0];
         if(false)
         {
            throw true;
         }
         graphQual = param1.opti[1];
         §§push(§§findproperty(graphPart));
         if(false)
         {
            return;
         }
         §§pop().graphPart = param1.opti[2];
         graphGlow = param1.opti[3];
         graphRagev = param1.opti[4];
         graphLights = param1.opti[5];
         sound = param1.opti[6];
         music = param1.opti[7];
         sblood = param1.opti[8];
         pblur = param1.opti[9];
         stats = {};
         stats.Suicides = param1.stat[0];
         §§push(stats);
         §§push(param1);
         if(false)
         {
            throw true;
         }
         §§pop().Human = §§pop().stat[1];
         stats.Robot = param1.stat[2];
         stats.Zombie = param1.stat[3];
         stats.Alien = param1.stat[4];
         stats.HeadShots = param1.stat[5];
         stats.ButtShots = param1.stat[6];
         stats.CrotchShots = param1.stat[7];
         stats.Wins = param1.stat[8];
         stats.Losses = param1.stat[9];
         stats.Rage = param1.stat[10];
         stats.阵亡 = param1.stat[11];
         purchase1 = param1.purch1;
         purchase2 = param1.purch2;
         purchase3 = param1.purch3;
         fixNewVars();
         MatchSettings.updatePlayer();
      }
      
      private static function fixNewVars() : void
      {
         if(!stats.阵亡)
         {
            stats.阵亡 = 0;
            if(false)
            {
               return;
            }
         }
         if(!purchase1)
         {
            purchase1 = 0;
         }
         if(!purchase2)
         {
            purchase2 = 0;
         }
         if(!purchase3)
         {
            purchase3 = 0;
         }
      }
      
      public static function loadGame() : void
      {
         var _loc2_:uint = 0;
         trace("Load Local");
         var _loc1_:SharedObject = SharedObject.getLocal("Raze2_DFert34FTFfft4435");
         _loc2_ = 0;
         while(_loc2_ < saveList.length)
         {
            SD[saveList[_loc2_]] = _loc1_.data[saveList[_loc2_]];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < saveList2.length)
         {
            SD[saveList2[_loc2_]] = _loc1_.data[saveList2[_loc2_]];
            §§push(_loc2_ + 1);
            if(false)
            {
               return;
            }
            _loc2_ = §§pop();
         }
         fixNewVars();
         §§push(_loc1_);
         if(false)
         {
            return;
         }
         §§pop().close();
         MatchSettings.updatePlayer();
      }
      
      public static function saveGame() : void
      {
         var _loc1_:SharedObject = null;
         var _loc2_:uint = 0;
         §§push(AGI);
         if(false)
         {
            return;
         }
         if(!§§pop().isLoggedIn())
         {
            trace("Save Local");
            _loc1_ = SharedObject.getLocal("Raze2_DFert34FTFfft4435");
            if(_loc1_.data.savedBefore != SAVENUM)
            {
               saveSettings();
            }
            _loc1_.data.savedBefore = SAVENUM;
            _loc2_ = 0;
            while(_loc2_ < saveList.length)
            {
               §§push(_loc1_.data);
               §§push(saveList[_loc2_]);
               §§push(SD);
               §§push(saveList[_loc2_]);
               if(false)
               {
                  return;
               }
               §§pop()[§§pop()] = §§pop()[§§pop()];
               _loc2_++;
            }
            _loc1_.flush();
            _loc1_.close();
         }
         else
         {
            trace("Save AGI");
            AGI.saveData();
         }
      }
      
      public static function saveSettings() : void
      {
         trace("Save Settings");
         §§push(SharedObject.getLocal("Raze2_DFert34FTFfft4435"));
         if(false)
         {
            return;
         }
         var _loc1_:* = §§pop();
         var _loc2_:uint = 0;
         while(_loc2_ < saveList2.length)
         {
            _loc1_.data[saveList2[_loc2_]] = SD[saveList2[_loc2_]];
            _loc2_++;
         }
         _loc1_.flush();
         _loc1_.close();
      }
   }
}

§§push(§§findproperty(SD));
§§push(§§newclass(SD,Object));
if(false)
{
   return;
}


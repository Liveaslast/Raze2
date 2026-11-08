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
   
   public class AGI
   {
      
      public static var agi:*;
      
      public static var showedLogin:Boolean;
      
      public function AGI()
      {
         super();
      }
      
      public static function urlSponsor() : void
      {
         navigateToURL(new URLRequest("http://t.cn/hdNa6g\x1f\x1f\x1f\x1f\x1f\x1f\x1f"),"_blank");
         Link.Open("http://t.cn/hdNa6g\x1f\x1f\x1f\x1f\x1f\x1f\x1f","Link - Sponsor","Links");
      }
      
      public static function urlRaze1() : void
      {
         navigateToURL(new URLRequest("http://armorgames.com/play/5395/raze"),"_blank");
         Link.Open("http://armorgames.com/play/5395/raze","Link - Raze 1","Links");
      }
      
      public static function urlDeveloper() : void
      {
         navigateToURL(new URLRequest("http://www.raze-online.com"),"_blank");
         Link.Open("http://www.raze-online.com","Link - Developer","Links");
      }
      
      public static function urlTwitter() : void
      {
         navigateToURL(new URLRequest("http://twitter.com/#!/armorgames"),"_blank");
         Link.Open("http://twitter.com/#!/armorgames","Link - Twitter","Links");
      }
      
      public static function urlFacebook() : void
      {
         navigateToURL(new URLRequest("http://www.facebook.com/ArmorGames"),"_blank");
         Link.Open("http://www.facebook.com/ArmorGames","Link - Facebook","Links");
      }
      
      public static function urlPurchase(param1:String) : void
      {
         if(agi)
         {
            var _loc2_:URLRequest = new URLRequest("http://weibo.com/andy263\x1f\x1f\x1f\x1f\x1f\x1f\x1f");
            var _loc3_:URLVariables = new URLVariables();
            _loc3_.username = SD.loginname;
            _loc3_.sku = "Raze2-" + param1;
            _loc2_.method = URLRequestMethod.POST;
            trace(_loc2_.contentType,_loc2_.url,_loc3_.username,_loc3_.sku);
            navigateToURL(_loc2_,"_blank");
            return;
         }
      }
      
      public static function Init(param1:Main) : void
      {
         var urlRequest:URLRequest;
         var loader:Loader;
         var loadComplete:Function = null;
         var _main:Main = param1;
         loadComplete = function(param1:Event):void
         {
            agi = param1.currentTarget.content;
            §§push(_main);
            if(false)
            {
               return;
            }
            §§pop().addChild(agi);
            agi.init("8305de24f40bccbf25b991ca6d443334","raze-2");
         };
         if(false)
         {
            return false;
         }
         Security.allowDomain("                                   ./AGI.swf");
         urlRequest = new URLRequest("                                   ./AGI.swf");
         loader = new Loader();
         loader.contentLoaderInfo.addEventListener(Event.COMPLETE,loadComplete);
         loader.load(urlRequest);
      }
      
      public static function displayLoginInfo(param1:Boolean) : void
      {
         if(Boolean(Main.curClass.menfr) && Boolean(Main.curClass.menfr.mc_loginhelper))
         {
            if(agi)
            {
               Main.curClass.menfr.mc_loginhelper.gotoAndStop(!agi.isLoggedIn() ? 1 : 2);
            }
            else
            {
               Main.curClass.menfr.mc_loginhelper.gotoAndStop(1);
            }
         }
         if(agi)
         {
            if(param1)
            {
               agi.showLoginStatus(615,525,§\x10\x06§);
            }
            else
            {
               agi.hideLoginStatus();
               agi.closeAGUI();
            }
         }
      }
      
      public static function saveData() : void
      {
         agi.submitUserDataObject(SD.createSaveOb());
         if(false)
         {
            return false;
         }
      }
      
      public static function §\x10\x04§() : void
      {
         if(Boolean(Main.curClass.menfr) && Boolean(Main.curClass.menfr.mc_loginhelper))
         {
            if(agi.isLoggedIn())
            {
               §\x10\t§();
               Main.curClass.menfr.mc_loginhelper.gotoAndStop(3);
            }
            else
            {
               Main.curClass.menfr.mc_loginhelper.gotoAndStop(1);
               SD.loadGame();
               §\x1a\x1d§(false);
            }
         }
      }
      
      public static function §\x10\t§() : void
      {
         agi.retrieveUserData(§\x06§);
      }
      
      private static function §\x06§(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(!param1.success)
         {
            trace(param1.error);
         }
         else
         {
            _loc2_ = param1.data;
            if(_loc2_.notNew)
            {
               SD.loadSaveObject(_loc2_);
            }
         }
         Main.curClass.menfr.mc_loginhelper.gotoAndStop(2);
         §\x1a\x1d§(false);
      }
      
      public static function checkPurchases() : void
      {
         agi.retrieveUserData(§\x1c\x0b§);
      }
      
      private static function §\x1c\x0b§(param1:Object) : void
      {
         var _loc2_:Object = {};
         if(!param1.success)
         {
            trace(param1.error);
         }
         else
         {
            _loc2_ = param1.data;
         }
         Main.curClass.purchaseDone(_loc2_);
      }
      
      public static function logPurchase(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Object = null;
         if(isLoggedIn())
         {
            if(param2)
            {
               _loc3_ = {};
               _loc3_[param1] = 0;
               agi.submitUserDataObject(_loc3_);
            }
            Log.CustomMetric(param1,"Purchases");
            return;
         }
      }
      
      public static function isLoggedIn() : Boolean
      {
         if(agi)
         {
            return agi.isLoggedIn();
         }
         return false;
      }
      
      public static function showLogin() : void
      {
         if(!showedLogin)
         {
            §§push(§§findproperty(showedLogin));
            if(false)
            {
               return;
            }
            §§pop().showedLogin = true;
            agi.initAGUI({
               "x":152,
               "y":130,
               "onClose":§\x0f\x16§
            });
            §§push(agi);
            §§push(§\x10\x06§);
            if(false)
            {
               return;
            }
            §§pop().showLogin(§§pop());
            return;
         }
      }
      
      private static function §\x10\x06§(param1:Object) : void
      {
         if(!param1.success)
         {
            trace(param1.error);
         }
         else if(!param1.loggedIn)
         {
            trace("Logged out");
         }
         else
         {
            trace("Logged in as " + param1.username);
            SD.loginname = param1.username;
         }
      }
      
      private static function §\x0f\x18§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:* = undefined;
         trace("agi data loaded!");
         if(!param1.success)
         {
            trace(param1.error);
         }
         else
         {
            _loc2_ = param1.data;
            SH.playSound(S_ClickGo);
            trace("====== Load Data ======");
            var _loc4_:int = 0;
            var _loc5_:* = _loc2_;
            while(§§hasnext(_loc5_,_loc4_))
            {
               if(false)
               {
                  return;
               }
               _loc3_ = §§nextname(_loc4_,_loc5_);
               §§push(§§findproperty(trace));
               §§push(_loc3_);
               if(false)
               {
                  return;
               }
               §§pop().trace(§§pop() + ":",_loc2_[_loc3_]);
            }
            trace("====== Load Data ======");
            trace("Not new",_loc2_.notNew);
            if(!_loc2_.notNew)
            {
               SD.name = SD.loginname;
               Transition.slideLeft(Main.curClass.menfr,"New Player");
            }
            else
            {
               SD.loadSaveObject(_loc2_);
               Transition.slideLeft(Main.curClass.menfr,"Menu");
            }
         }
      }
      
      private static function §\x0f\x16§() : void
      {
         if(!agi.isLoggedIn())
         {
            trace("Loading local data");
            agi.initAGUI({"onClose":null});
            §§push(SH);
            if(false)
            {
               throw true;
            }
            §§pop().playSound(S_ClickGo);
            if(SD.getNew() != SD.SAVENUM)
            {
               §§push(Transition);
               §§push(Main.curClass);
               if(false)
               {
                  return;
               }
               §§pop().slideLeft(§§pop().menfr,"New Player");
            }
            else
            {
               SD.loadGame();
               Transition.slideLeft(Main.curClass.menfr,"Menu");
            }
         }
         else
         {
            trace("Loading agi data");
            agi.retrieveUserData(§\x0f\x18§);
         }
      }
      
      public static function setLoginForMenu() : void
      {
         if(agi)
         {
            trace("Set login for menu");
            agi.initAGUI({
               "x":405,
               "y":295,
               "scale":0.75,
               "onClose":function():void
               {
                  SH.playSound(S_Click);
                  if(Main.curClass.disabled)
                  {
                     §§push(§§findproperty(§\x10\x04§));
                     if(false)
                     {
                        return;
                     }
                     §§pop().§\x10\x04§();
                  }
               },
               "onLoad":function():void
               {
                  SH.playSound(S_Click);
                  §\x1a\x1d§(true);
               }
            });
            return;
         }
      }
      
      private static function §\x1a\x1d§(param1:*) : void
      {
         if(Main.curClass is Menu)
         {
            Main.curClass.disabled = param1;
            return;
         }
      }
   }
}


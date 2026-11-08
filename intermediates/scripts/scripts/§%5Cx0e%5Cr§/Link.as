package §\x0e\r§
{
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
   
   public final class Link
   {
      
      private static var Clicks:Array = new Array();
      
      public function Link()
      {
         super();
      }
      
      public static function Open(param1:String, param2:String, param3:String) : Boolean
      {
         var btotal:int;
         var fail:int;
         var bfail:int;
         var key:String;
         var baseurl:String;
         var baseurlname:String;
         var result:Boolean = false;
         var url:String = param1;
         var name:String = param2;
         var group:String = param3;
         var unique:int = 0;
         var bunique:int = 0;
         var total:int = 0;
         if(false)
         {
            return;
         }
         btotal = 0;
         fail = 0;
         bfail = 0;
         key = url + "." + name;
         baseurl = url;
         baseurl = baseurl.replace("http://","");
         if(baseurl.indexOf("/") > -1)
         {
            baseurl = baseurl.substring(0,baseurl.indexOf("/"));
            if(false)
            {
               return;
            }
         }
         if(baseurl.indexOf("?") > -1)
         {
            §§push(§§newactivation());
            §§push(baseurl);
            §§push(0);
            if(false)
            {
               return;
            }
            §§pop().§§slot[12] = §§pop().substring(§§pop(),baseurl.indexOf("?"));
         }
         baseurl = "http://" + baseurl + "/";
         baseurlname = baseurl;
         if(baseurlname.indexOf("//") > -1)
         {
            baseurlname = baseurlname.substring(baseurlname.indexOf("//") + 2);
         }
         baseurlname = baseurlname.replace("www.","");
         if(baseurlname.indexOf("/") > -1)
         {
            §§push(§§newactivation());
            §§push(§§newactivation());
            if(false)
            {
               return;
            }
            §§pop().§§slot[13] = §§pop().§§slot[13].substring(0,baseurlname.indexOf("/"));
         }
         try
         {
            navigateToURL(new URLRequest(url));
            if(Clicks.indexOf(key) <= -1)
            {
               total = 1;
               unique = 1;
               Clicks.push(key);
            }
            else
            {
               total = 1;
            }
            if(Clicks.indexOf(baseurlname) <= -1)
            {
               btotal = 1;
               bunique = 1;
               Clicks.push(baseurlname);
            }
            else
            {
               btotal = 1;
            }
            result = true;
         }
         catch(err:*)
         {
            §§push(err);
            var _temp_1:* = err;
            §§push(_temp_1);
            §§push(_temp_1);
            if(false)
            {
               return;
            }
            var _temp_2:* = §§pop();
            §§pop().§§slot[1] = _temp_2;
            fail = 1;
            bfail = 1;
            result = false;
         }
         Log.Link(baseurl,baseurlname.toLowerCase(),"DomainTotals",bunique,btotal,bfail);
         §§push(Log);
         §§push(url);
         §§push(§§newactivation());
         if(false)
         {
            return false;
         }
         §§pop().Link(§§pop(),§§pop().§§slot[2],group,unique,total,fail);
         Log.ForceSend();
         return result;
      }
   }
}


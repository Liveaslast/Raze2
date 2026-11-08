package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2GearJointDef;
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
   
   public class §\t\x15§
   {
      
      private var game:Game;
      
      private var map:String;
      
      private var fc:uint;
      
      private var graphPart1:uint;
      
      private var graphPart2:uint;
      
      public function §\t\x15§(param1:Game, param2:String)
      {
         super();
         game = param1;
         map = param2;
         fc = 0;
      }
      
      public function §\x0f\x1d§() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:String = map;
         switch(_loc2_)
         {
            case "test":
         }
         game.createParticle(746,505,"fairy",null,"fairy","idle",UT.irand(1,5),true);
         game.createParticle(746,505,"fairy",null,"fairy","idle",UT.irand(1,5),true);
         game.createParticle(746,505,"fairy",null,"fairy","idle",UT.irand(1,5),true);
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:* = 0;
         var _loc2_:Point = null;
         ++fc;
         switch(map)
         {
            case "tut":
               §§push(0);
               break;
            case "test":
               §§push(1);
               break;
            case "jungle":
               §§push(2);
               break;
            case "jungle2":
               §§push(3);
               break;
            case "ocean":
               §§push(4);
               break;
            case "city":
               §§push(5);
               if(false)
               {
                  return false;
               }
               break;
            case "mines":
               §§push(6);
               break;
            case "mines2":
               §§push(7);
               break;
            case "space":
               §§push(8);
               break;
            case "desert":
               §§push(9);
               break;
            case "snow":
               §§push(10);
               break;
            case "snow2":
               §§push(11);
               break;
            default:
               §§push(12);
         }
         switch(§§pop())
         {
            case 0:
               graphPart1 = 2 * SD.graphPart;
               graphPart2 = 1.5 * SD.graphPart;
               _loc1_ = 0;
               while(_loc1_ < graphPart1)
               {
                  game.createParticle(1398,50,"water",{
                     "min":-1,
                     "max":3,
                     "hitframe":20
                  },"water");
                  _loc1_++;
               }
               var _temp_2:* = game.player.sEvent <= 4;
               §§push(_temp_2);
               if(_temp_2)
               {
                  §§pop();
                  if(false)
                  {
                     return;
                  }
                  var _temp_5:* = SD.graphPart == 1 && fc % 2 == 0 || SD.graphPart == 2;
                  §§push(_temp_5);
                  if(!_temp_5)
                  {
                     §§pop();
                     §§push(SD.graphPart == 3);
                     if(false)
                     {
                        return;
                     }
                  }
               }
               if(§§pop())
               {
                  _loc2_ = UT.randLinePoint(2353,932,2465,889);
                  game.createParticle(_loc2_.x,_loc2_.y,"raise",{
                     "spd":1,
                     "xspd":-2.3
                  },"fairy","idle",6);
               }
               break;
            case 1:
               game.createParticle(365,459,"water",null,"water");
               game.createParticle(365,459,"water",null,"water");
               game.createParticle(365,459,"water",null,"water");
               if(Math.random() < 0.3)
               {
                  game.createParticle(UT.rand(55,500),55,"fall",null,"snow_fall","idle" + UT.irand(1,3));
               }
               if(Math.random() < 0.1)
               {
                  _loc1_ = 0;
                  while(_loc1_ < UT.irand(5,35))
                  {
                     game.createParticle(844,52,"spark",null,"ember");
                     _loc1_++;
                  }
               }
               break;
            case 2:
               graphPart1 = 2 * SD.graphPart;
               graphPart2 = 1.5 * SD.graphPart;
               _loc1_ = 0;
               while(_loc1_ < graphPart1)
               {
                  §§push(game);
                  §§push(2213);
                  if(false)
                  {
                     return;
                  }
                  §§pop().createParticle(§§pop(),503,"water",{
                     "min":-1.5,
                     "max":1,
                     "hitframe":30
                  },"water");
                  game.createParticle(1701,781,"water",{
                     "min":-3,
                     "max":1,
                     "hitframe":20
                  },"water");
                  _loc1_++;
               }
               _loc1_ = 0;
               while(_loc1_ < graphPart2)
               {
                  game.createParticle(1369,1233,"water",{
                     "min":-3,
                     "max":0,
                     "hitframe":15
                  },"water");
                  §§push(game);
                  §§push(1915);
                  §§push(1493);
                  §§push("water");
                  §§push({
                     "min":0,
                     "max":3,
                     "hitframe":15
                  });
                  §§push("water");
                  if(false)
                  {
                     return false;
                  }
                  §§pop().createParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                  game.createParticle(1811,1703,"water",{
                     "min":-3,
                     "max":0,
                     "hitframe":15
                  },"water");
                  _loc1_++;
               }
               if(game.water)
               {
                  game.water.startWaveAtPos(1750 + UT.rand(0,100),1);
               }
            case 3:
               if(SD.graphPart == 1 && fc % 2 == 0 || SD.graphPart == 2 || SD.graphPart == 3)
               {
                  §§push(game);
                  §§push(UT);
                  §§push(354);
                  if(false)
                  {
                     return;
                  }
                  §§push(§§pop().rand(§§pop(),354 + 116));
                  §§push(1844);
                  §§push("raise");
                  §§push("spd");
                  §§push(2.5);
                  if(false)
                  {
                     return;
                  }
                  §§pop().createParticle(§§pop(),§§pop(),§§pop(),null,"fairy","idle",6);
                  game.createParticle(UT.rand(534,534 + 117),1943,"raise",{"spd":0.6},"fairy","idle",6);
                  §§push(game);
                  §§push(UT);
                  §§push(2008);
                  §§push(2012);
                  §§push(91);
                  if(false)
                  {
                     return;
                  }
                  §§pop().createParticle(§§pop().rand(§§pop(),§§pop() + §§pop()),1620,"raise",{"spd":0.7},"fairy","idle",6);
                  §§push(game);
                  §§push(UT);
                  §§push(2443);
                  if(false)
                  {
                     return;
                  }
                  §§push(§§pop().rand(§§pop(),2443 + 122));
                  §§push(1835);
                  §§push("raise");
                  if(false)
                  {
                     return;
                  }
                  §§pop().createParticle(§§pop(),§§pop(),§§pop(),{"spd":2.5},"fairy","idle",6);
               }
               break;
            case 4:
               graphPart1 = SD.graphPart;
               graphPart2 = 6 - SD.graphPart;
               var _temp_9:* = Boolean(graphPart1);
               §§push(_temp_9);
               if(_temp_9)
               {
                  §§pop();
                  §§push(fc);
                  §§push(graphPart2);
                  if(false)
                  {
                     return;
                  }
                  §§push(§§pop() % §§pop() == 0);
               }
               if(§§pop())
               {
                  §§push(UT);
                  §§push(345);
                  §§push(1668);
                  if(false)
                  {
                     return;
                  }
                  _loc2_ = §§pop().randLinePoint(§§pop(),§§pop(),1037,1568);
                  §§push(game);
                  §§push(_loc2_.x + UT.irand(-5,5));
                  §§push(_loc2_.y + UT.irand(-5,5));
                  §§push("leaf");
                  §§push(null);
                  if(false)
                  {
                     throw true;
                  }
                  §§pop().createParticle(§§pop(),§§pop(),§§pop(),§§pop(),"leaves","leaf" + UT.irand(1,4));
               }
               _loc1_ = 0;
               while(_loc1_ < graphPart1)
               {
                  §§push(game);
                  §§push(285);
                  §§push(1684);
                  §§push("water");
                  §§push("min");
                  §§push(-1);
                  if(false)
                  {
                     throw true;
                  }
                  §§pop().createParticle(§§pop(),§§pop(),§§pop(),null,"water");
                  game.createParticle(227,1856,"water",{
                     "min":-1,
                     "max":3,
                     "hitframe":1
                  },"water");
                  _loc1_++;
               }
               var _temp_11:* = SD.graphPart == 1 && fc % 2 == 0;
               §§push(_temp_11);
               if(!_temp_11)
               {
                  §§pop();
                  §§push(SD.graphPart == 2);
                  if(false)
                  {
                     return false;
                  }
               }
               if(§§pop() || SD.graphPart == 3)
               {
                  game.createParticle(UT.rand(43,158),1329,"raise",{"spd":1.6},"fairy","idle",6);
                  game.createParticle(UT.rand(1983,2100),1857,"raise",{"spd":2.3},"fairy","idle",6);
               }
               break;
            case 5:
               graphPart1 = SD.graphPart;
               if(SD.graphPart == 1 && fc % 2 == 0 || SD.graphPart == 2 || SD.graphPart == 3)
               {
                  game.createParticle(UT.rand(271,385),1455,"raise",{"spd":1},"fairy","idle",6);
                  game.createParticle(UT.rand(633,747),1051,"raise",{"spd":1},"fairy","idle",6);
                  _loc2_ = UT.randLinePoint(1171,659,1288,680);
                  game.createParticle(_loc2_.x,_loc2_.y,"raise",{
                     "spd":0.8,
                     "xspd":0.5
                  },"fairy","idle",6);
                  game.createParticle(UT.rand(2547,2665),1513,"raise",{"spd":2.5},"fairy","idle",6);
               }
               if(Math.random() < 0.1)
               {
                  §§push(0);
                  if(false)
                  {
                     throw true;
                  }
                  _loc1_ = §§pop();
                  while(_loc1_ < UT.irand(graphPart1,graphPart1 * 5))
                  {
                     game.createParticle(1230,801,"spark",null,"ember");
                     _loc1_++;
                  }
               }
               _loc1_ = 0;
               while(_loc1_ < graphPart1)
               {
                  game.createParticle(1367,1685,"water",{
                     "min":-1,
                     "max":3,
                     "hitframe":10
                  },"water");
                  §§push(uint(_loc1_ + 1));
                  if(false)
                  {
                     return;
                  }
                  _loc1_ = §§pop();
               }
               if(Math.random() < 0.1)
               {
                  if(false)
                  {
                     return;
                  }
                  _loc1_ = 0;
                  while(true)
                  {
                     §§push(_loc1_);
                     §§push(UT.irand(graphPart1,graphPart1 * 5));
                     if(false)
                     {
                        break;
                     }
                     if(§§pop() < §§pop())
                     {
                        continue;
                     }
                     game.createParticle(2640,1669,"spark",null,"ember");
                     _loc1_++;
                  }
                  return;
               }
               if(Math.random() < 0.1)
               {
                  _loc1_ = 0;
                  while(_loc1_ < UT.irand(graphPart1,graphPart1 * 5))
                  {
                     game.createParticle(553,1442,"spark",null,"ember");
                     _loc1_++;
                  }
               }
               break;
            case 6:
               graphPart1 = SD.graphPart;
               §§push(SD.graphPart);
               §§push(1);
               if(false)
               {
                  return;
               }
               if(§§pop() == §§pop() && fc % 2 == 0 || SD.graphPart == 2 || SD.graphPart == 3)
               {
                  if(false)
                  {
                     throw true;
                  }
                  _loc2_ = UT.randLinePoint(2125,1460,2245,1449);
                  §§push(game);
                  §§push(_loc2_.x);
                  §§push(_loc2_.y);
                  §§push("raise");
                  §§push({"spd":0.6});
                  if(false)
                  {
                     return;
                  }
                  §§pop().createParticle(§§pop(),§§pop(),§§pop(),§§pop(),"fairy","idle",6);
                  _loc2_ = UT.randLinePoint(2051,1044,2201,980);
                  game.createParticle(_loc2_.x,_loc2_.y,"raise",{
                     "spd":1,
                     "xspd":-1.3
                  },"fairy","idle",6);
                  game.createParticle(UT.rand(747,866),1775,"raise",{"spd":2.3},"fairy","idle",6);
               }
               if(Math.random() < 0.1)
               {
                  _loc1_ = 0;
                  while(_loc1_ < UT.irand(graphPart1,graphPart1 * 5))
                  {
                     game.createParticle(1661,1259,"spark",null,"ember");
                     _loc1_++;
                  }
               }
               if(Math.random() < 0.1)
               {
                  _loc1_ = 0;
                  while(_loc1_ < UT.irand(graphPart1,graphPart1 * 5))
                  {
                     game.createParticle(568,1755,"spark",null,"ember");
                     _loc1_++;
                  }
               }
               break;
            case 7:
               graphPart1 = SD.graphPart;
               if(SD.graphPart == 1 && fc % 2 == 0 || SD.graphPart == 2 || SD.graphPart == 3)
               {
                  _loc2_ = UT.randLinePoint(2125,1460,2245,1449);
                  game.createParticle(_loc2_.x,_loc2_.y,"raise",{"spd":0.6},"fairy","idle",6);
                  _loc2_ = UT.randLinePoint(2051,1044,2201,980);
                  game.createParticle(_loc2_.x,_loc2_.y,"raise",{
                     "spd":1,
                     "xspd":-1.3
                  },"fairy","idle",6);
                  game.createParticle(UT.rand(747,866),1775,"raise",{"spd":2.3},"fairy","idle",6);
               }
               break;
            case 8:
               graphPart1 = SD.graphPart;
               if(SD.graphPart == 1 && fc % 2 == 0 || SD.graphPart == 2 || SD.graphPart == 3)
               {
                  _loc2_ = UT.randLinePoint(2492,1968,2579,1946);
                  game.createParticle(_loc2_.x,_loc2_.y,"raise",{
                     "spd":2.5,
                     "xspd":-2.4
                  },"fairy","idle",6);
                  §§push(UT);
                  §§push(220);
                  §§push(1608);
                  §§push(299);
                  if(false)
                  {
                     return;
                  }
                  _loc2_ = §§pop().randLinePoint(§§pop(),§§pop(),§§pop(),1649);
                  game.createParticle(_loc2_.x,_loc2_.y,"raise",{
                     "spd":2.5,
                     "xspd":3.4
                  },"fairy","idle",6);
               }
               if(Math.random() < 0.1)
               {
                  _loc1_ = 0;
                  while(_loc1_ < UT.irand(graphPart1,graphPart1 * 5))
                  {
                     game.createParticle(1393,2598,"spark",null,"ember");
                     _loc1_++;
                  }
               }
               if(Math.random() < 0.1)
               {
                  _loc1_ = 0;
                  while(_loc1_ < UT.irand(graphPart1,graphPart1 * 5))
                  {
                     game.createParticle(1594,2661,"spark",null,"ember");
                     _loc1_++;
                  }
               }
               if(Math.random() < 0.1)
               {
                  _loc1_ = 0;
                  while(_loc1_ < UT.irand(graphPart1,graphPart1 * 5))
                  {
                     §§push(game);
                     §§push(677);
                     §§push(1935);
                     if(false)
                     {
                        return;
                     }
                     §§pop().createParticle(§§pop(),§§pop(),"spark",null,"ember");
                     _loc1_++;
                  }
               }
               if(Math.random() < 0.1)
               {
                  _loc1_ = 0;
                  while(_loc1_ < UT.irand(graphPart1,graphPart1 * 5))
                  {
                     game.createParticle(2614,2491,"spark",null,"ember");
                     _loc1_++;
                  }
               }
               break;
            case 9:
               graphPart1 = 1 * SD.graphPart;
               §§push(Math.random());
               §§push(0.1);
               if(false)
               {
                  return;
               }
               if(§§pop() < §§pop())
               {
                  _loc1_ = 0;
                  while(true)
                  {
                     §§push(_loc1_);
                     if(false)
                     {
                        break;
                     }
                     if(§§pop() < UT.irand(graphPart1,graphPart1 * 5))
                     {
                        continue;
                     }
                     game.createParticle(1699,845,"spark",null,"ember");
                     _loc1_++;
                  }
                  throw true;
               }
               if(Math.random() < 0.1)
               {
                  _loc1_ = 0;
                  while(_loc1_ < UT.irand(graphPart1,graphPart1 * 5))
                  {
                     game.createParticle(1242,1099,"spark",null,"ember");
                     _loc1_++;
                  }
               }
               if(Math.random() < 0.1)
               {
                  _loc1_ = 0;
                  while(_loc1_ < UT.irand(graphPart1,graphPart1 * 5))
                  {
                     game.createParticle(772,868,"spark",null,"ember");
                     _loc1_++;
                  }
               }
               if(SD.graphPart == 1 && fc % 2 == 0 || SD.graphPart == 2 || SD.graphPart == 3)
               {
                  game.createParticle(UT.rand(41,158),956,"raise",{"spd":0.6},"fairy","idle",6);
               }
               break;
            case 10:
               graphPart1 = 4 - SD.graphPart;
               if(SD.graphPart == 1 && fc % 2 == 0 || SD.graphPart == 2 || SD.graphPart == 3)
               {
                  _loc2_ = UT.randLinePoint(2423,1304,2495,1272);
                  game.createParticle(_loc2_.x,_loc2_.y,"raise",{
                     "spd":2.5,
                     "xspd":-4
                  },"fairy","idle",6);
                  _loc2_ = UT.randLinePoint(324,1277,396,1304);
                  game.createParticle(_loc2_.x,_loc2_.y,"raise",{
                     "spd":2.5,
                     "xspd":4
                  },"fairy","idle",6);
               }
               break;
            case 11:
               graphPart1 = 4 - SD.graphPart;
               if(graphPart1 < 4 && fc % graphPart1 == 0)
               {
                  game.createParticle(UT.rand(60,2600),60,"snow",null,"snow_fall","idle",UT.irand(1,3),true);
               }
               if(SD.graphPart == 1 && fc % 2 == 0 || SD.graphPart == 2 || SD.graphPart == 3)
               {
                  _loc2_ = UT.randLinePoint(2423,1304,2495,1272);
                  game.createParticle(_loc2_.x,_loc2_.y,"raise",{
                     "spd":2.5,
                     "xspd":-4
                  },"fairy","idle",6);
                  _loc2_ = UT.randLinePoint(324,1277,396,1304);
                  game.createParticle(_loc2_.x,_loc2_.y,"raise",{
                     "spd":2.5,
                     "xspd":4
                  },"fairy","idle",6);
               }
         }
      }
   }
}


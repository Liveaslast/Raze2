package
{
   import §\x0e\r§.*;
   import §\x1c\x13§.§\x1e\x07§;
   import §\x1c\x13§.b2ContactListener;
   import §\x1c\x13§.b2DebugDraw;
   import §\x1c\x13§.b2World;
   import §\x1c\x17§.§\x1d\x1c§;
   import flash.events.SecurityErrorEvent;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class SH
   {
      
      public static var chan:SoundChannel;
      
      public static var sound:*;
      
      public static var replayAt:Number;
      
      private static var soundChan:SoundChannel;
      
      private static var soundVol:SoundTransform;
      
      private static var soundVolLoud:SoundTransform;
      
      private static var noVol:SoundTransform;
      
      private static var musicClass:*;
      
      private static var musicChan:SoundChannel;
      
      private static var musicVol:SoundTransform;
      
      private static var fadeClass:*;
      
      private static var fadeChan:SoundChannel;
      
      private static var fadeVol:SoundTransform;
      
      public static var songList:Array;
      
      public static var songNames:Array;
      
      public function SH()
      {
         super();
      }
      
      public static function Init() : void
      {
         soundVol = new SoundTransform();
         soundVol.volume = 0.4;
         soundVolLoud = new SoundTransform();
         soundVolLoud.volume = 0.7;
         §§push(§§findproperty(noVol));
         §§push(new SoundTransform());
         if(false)
         {
            return;
         }
         §§pop().noVol = §§pop();
         noVol.volume = 0;
         musicVol = new SoundTransform();
         §§push(musicVol);
         §§push(1);
         if(false)
         {
            return;
         }
         §§pop().volume = §§pop();
         fadeVol = new SoundTransform();
         fadeVol.volume = 0;
         songList = [M_Rose,M_Rocket,M_Warhead,M_Throwdown,M_Necro,M_Ricochet,M_Theloop,M_Infernal];
         songNames = ["Rose at Nightfall","火箭赛\x1f\x1f","Warhead","Throwdown","Necromancy","Ricochet Love","The Loop that Wasn\'t","Infernal Signs"];
      }
      
      public static function playSound(param1:*, param2:Boolean = false) : void
      {
         if(SD.sound)
         {
            §§push(§§findproperty(soundChan));
            §§push(new param1());
            if(false)
            {
               return;
            }
            §§pop().soundChan = §§pop().play();
            soundChan.soundTransform = !(param2 && SD.music) ? soundVol : soundVolLoud;
            return;
         }
      }
      
      public static function playMusic(param1:*, param2:Boolean = false) : void
      {
         if(musicClass != param1)
         {
            if(!musicClass)
            {
               param2 = true;
            }
            else
            {
               if(fadeClass)
               {
                  fadeChan.stop();
               }
               fadeVol.volume = !SD.music || param2 ? 0 : 1;
               §§push(§§findproperty(fadeClass));
               if(false)
               {
                  return;
               }
               §§pop().fadeClass = musicClass;
               fadeChan = musicChan;
               fadeChan.soundTransform = fadeVol;
            }
            musicVol.volume = param2 && SD.music ? 1 : 0;
            musicClass = param1;
            musicChan = new musicClass().play(0,1000);
            musicChan.soundTransform = musicVol;
            return;
         }
      }
      
      public static function EnterFrame() : void
      {
         if(fadeClass)
         {
            if(fadeVol.volume > 0)
            {
               fadeVol.volume -= 0.025;
               fadeChan.soundTransform = fadeVol;
            }
            else
            {
               fadeClass = null;
               fadeChan.stop();
            }
         }
         if(musicClass)
         {
            if(!SD.music)
            {
               §§push(musicVol);
               if(false)
               {
                  return;
               }
               if(§§pop().volume > 0)
               {
                  musicVol.volume -= 0.025;
                  musicChan.soundTransform = musicVol;
               }
            }
            else if(musicVol.volume < 1)
            {
               §§push(musicVol);
               §§push(musicVol);
               if(false)
               {
                  return;
               }
               §§pop().volume = §§pop().volume + 0.025;
               musicChan.soundTransform = musicVol;
            }
         }
      }
      
      public static function updateMusicVolume() : void
      {
         if(!SD.music)
         {
            fadeVol.volume = 0;
            musicVol.volume = 1;
         }
         else
         {
            fadeVol.volume = 0;
            musicVol.volume = 0;
         }
      }
   }
}

if(false)
{
   return;
}


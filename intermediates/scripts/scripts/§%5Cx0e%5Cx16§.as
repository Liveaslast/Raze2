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
   
   public class §\x0e\x16§ extends Sprite
   {
      
      public var game:Game;
      
      public var m_world:b2World;
      
      public var m_velocityIterations:int = 10;
      
      public var m_positionIterations:int = 10;
      
      public var m_timeStep:Number = 0.03333333333333333;
      
      private var body:b2Body;
      
      private var bodyDef:§\x1e\x17§;
      
      private var boxShape:b2PolygonShape;
      
      private var fixtureDef:§\x1d\x1a§;
      
      public var actors:Array;
      
      public var physVap:§\x0e\x17§;
      
      public function §\x0e\x16§(param1:Game, param2:Boolean)
      {
         super();
         game = param1;
         physVap = new §\x0e\x17§(this);
         addChild(physVap);
         actors = [];
         m_world = new b2World(new b2Vec2(0,!(MatchSettings.specialMode == "月亮尸体" || param2) ? 10 : 2),true);
         var _loc3_:b2DebugDraw = new b2DebugDraw();
         _loc3_.§\n\x19§(this);
         _loc3_.§\f\t§(30);
         _loc3_.§\f\x04§(0.3);
         §§push(_loc3_);
         §§push(1);
         if(false)
         {
            return;
         }
         §§pop().§\x0b\x12§(§§pop());
         _loc3_.§\f\x01§(b2DebugDraw.e_shapeBit | b2DebugDraw.e_jointBit);
         m_world.§\f\f§(_loc3_);
      }
      
      public function generateWorld(param1:Array) : void
      {
         var _loc3_:Number = NaN;
         var _loc2_:uint = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = Number(param1[_loc2_].rotation);
            §§push(param1);
            if(false)
            {
               return;
            }
            §§pop()[_loc2_].rotation = 0;
            bodyDef = new §\x1e\x17§();
            bodyDef.position.Set(param1[_loc2_].x / 30,param1[_loc2_].y / 30);
            boxShape = new b2PolygonShape();
            boxShape.§\f\x1a§(param1[_loc2_].width / 60,param1[_loc2_].height / 60);
            bodyDef.angle = _loc3_ / (180 / Math.PI);
            fixtureDef = new §\x1d\x1a§();
            fixtureDef.shape = boxShape;
            fixtureDef.friction = 0.3;
            fixtureDef.density = 0;
            body = m_world.CreateBody(bodyDef);
            body.§\x1b\x0e§(fixtureDef);
            param1[_loc2_].rotation = _loc3_;
            _loc2_++;
         }
      }
      
      public function createCorpse(param1:§\t\x06§, param2:§\t\x06§, param3:Stats_Guns, param4:*) : §\x0e\x18§
      {
         var _loc6_:Number = NaN;
         var _loc5_:§\x0e\x18§ = new §\x0e\x18§(this,param1,param2,param3,param4);
         actors.push(_loc5_);
         _loc5_.§\x11\x04§();
         _loc5_.§\x11\x03§(new b2Vec2(param1.mov.xVel,param1.mov.yVel));
         if(param3.force)
         {
            if(param3.splash)
            {
               if(param4.hitX == param1.x && param4.hitY == param1.y)
               {
                  var _loc7_:* = param4;
                  var _loc8_:Number = _loc7_.hitY + 1;
                  _loc7_.hitY = _loc8_;
               }
               _loc6_ = UT.getRotation(param4.hitX,param4.hitY,param1.x,param1.y - 40);
            }
            else
            {
               §§push(param2.x == param1.x);
               if(false)
               {
                  return false;
               }
               if(§§pop() && param2.y == param1.y)
               {
                  --param1.y;
               }
               §§push(UT);
               §§push(param2.x);
               §§push(param2.y);
               §§push(param1.x);
               §§push(param1.y);
               if(false)
               {
                  throw true;
               }
               _loc6_ = Number(§§pop().getRotation(§§pop(),§§pop(),§§pop(),§§pop()));
            }
            _loc5_.§\x11\x03§(new b2Vec2(UT.xMoveToRot(_loc6_,param3.force),UT.yMoveToRot(_loc6_,param3.force)));
         }
         if(param4.headMult)
         {
            §§push(param2);
            if(false)
            {
               return false;
            }
            if(§§pop().x == param1.x && param2.y == param1.y - 10)
            {
               --param1.y;
            }
            _loc6_ = UT.getRotation(param2.x,param2.y,param1.x,param1.y - 10);
            _loc5_.§\x11\x02§(new b2Vec2(UT.xMoveToRot(_loc6_,8),UT.yMoveToRot(_loc6_,8)));
         }
         return _loc5_;
      }
      
      public function hitCorpse(param1:§\x0e\x18§, param2:§\t\x06§, param3:Stats_Guns, param4:*) : void
      {
         var _loc5_:Number = NaN;
         param1.§\x11\x04§(null,-0.5,0.5);
         §§push(param3);
         if(false)
         {
            return;
         }
         if(§§pop().force)
         {
            if(param3.splash)
            {
               if(param4.hitX == param1.rdBody.GetDefinition().userData.x && param4.hitY == param1.rdBody.GetDefinition().userData.y)
               {
                  ++param4.hitY;
                  if(false)
                  {
                     throw true;
                  }
               }
               _loc5_ = UT.getRotation(param4.hitX,param4.hitY,param1.rdBody.GetDefinition().userData.x,param1.rdBody.GetDefinition().userData.y - 40);
            }
            else
            {
               if(param2.x == param1.rdBody.GetDefinition().userData.x && param2.y == param1.rdBody.GetDefinition().userData.y)
               {
                  --param1.rdBody.GetDefinition().userData.y;
               }
               §§push(UT);
               §§push(param2.x);
               §§push(param2.y);
               if(false)
               {
                  return;
               }
               _loc5_ = Number(§§pop().getRotation(§§pop(),§§pop(),param1.rdBody.GetDefinition().userData.x,param1.rdBody.GetDefinition().userData.y));
            }
            param1.§\x11\x03§(new b2Vec2(UT.xMoveToRot(_loc5_,param3.force),UT.yMoveToRot(_loc5_,param3.force)));
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc3_:Sprite = null;
         m_world.§\t\x12§(m_timeStep,m_velocityIterations,m_positionIterations);
         var _loc1_:b2Body = m_world.§\x14\x13§();
         while(_loc1_)
         {
            if(_loc1_.GetUserData() is Sprite)
            {
               _loc3_ = _loc1_.GetUserData() as Sprite;
               _loc3_.x = _loc1_.§\x12\x0f§().x * 30;
               _loc3_.y = _loc1_.§\x12\x0f§().y * 30;
               _loc3_.rotation = _loc1_.§\x14\x18§() * (180 / Math.PI);
            }
            _loc1_ = _loc1_.§\x12\x15§();
         }
         var _loc2_:uint = 0;
         while(_loc2_ < actors.length)
         {
            §§push(actors);
            if(false)
            {
               return false;
            }
            §§pop()[_loc2_].EnterFrame();
            _loc2_++;
         }
         physVap.EnterFrame();
      }
      
      public function destroy() : void
      {
         physVap.destroy();
      }
   }
}


package §\x1c\x10§
{
   import §\x0e\r§.*;
   import §\x1c\x11§.§\x1e\b§;
   import §\x1c\x11§.§\x1e\t§;
   import §\x1c\x12§.§\x1e\x11§;
   import §\x1c\x12§.§\x1e\x13§;
   import §\x1c\x12§.b2Contact;
   import §\x1c\x13§.*;
   import §\x1c\x14§.*;
   import §\x1c\x15§.§\x1e\x14§;
   import §\x1c\x15§.b2Settings;
   import §\x1c\x15§.b2internal;
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
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const e_unknownJoint:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const e_prismaticJoint:int = 2;
      
      b2internal static const e_distanceJoint:int = 3;
      
      b2internal static const e_pulleyJoint:int = 4;
      
      b2internal static const e_mouseJoint:int = 5;
      
      b2internal static const e_gearJoint:int = 6;
      
      b2internal static const e_lineJoint:int = 7;
      
      b2internal static const e_weldJoint:int = 8;
      
      b2internal static const e_frictionJoint:int = 9;
      
      b2internal static const e_inactiveLimit:int = 0;
      
      b2internal static const e_atLowerLimit:int = 1;
      
      b2internal static const e_atUpperLimit:int = 2;
      
      b2internal static const e_equalLimits:int = 3;
      
      b2internal var m_type:int;
      
      b2internal var m_prev:b2Joint;
      
      b2internal var m_next:b2Joint;
      
      b2internal var m_edgeA:§\x1d\x14§ = new §\x1d\x14§();
      
      b2internal var m_edgeB:§\x1d\x14§ = new §\x1d\x14§();
      
      b2internal var m_bodyA:b2Body;
      
      b2internal var m_bodyB:b2Body;
      
      b2internal var m_islandFlag:Boolean;
      
      b2internal var m_collideConnected:Boolean;
      
      private var m_userData:*;
      
      b2internal var m_localCenterA:b2Vec2 = new b2Vec2();
      
      b2internal var m_localCenterB:b2Vec2;
      
      b2internal var m_invMassA:Number;
      
      b2internal var m_invMassB:Number;
      
      b2internal var m_invIA:Number;
      
      b2internal var m_invIB:Number;
      
      public function b2Joint(param1:§\x1d\x15§)
      {
         §§push(§§findproperty(b2internal::m_localCenterB));
         §§push(§§findproperty(b2Vec2));
         if(false)
         {
            throw true;
         }
         §§pop().b2internal::m_localCenterB = new §§pop().b2Vec2();
         super();
         b2Settings.b2Assert(param1.bodyA != param1.bodyB);
         b2internal::m_type = param1.type;
         b2internal::m_prev = null;
         b2internal::m_next = null;
         b2internal::m_bodyA = param1.bodyA;
         if(false)
         {
            return;
         }
         b2internal::m_bodyB = param1.bodyB;
         b2internal::m_collideConnected = param1.collideConnected;
         b2internal::m_islandFlag = false;
         m_userData = param1.userData;
      }
      
      b2internal static function Create(param1:§\x1d\x15§, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         var _loc4_:int = param1.type;
         switch(_loc4_)
         {
            case e_distanceJoint:
         }
         §§push(§§findproperty(§\x1e\x05§));
         if(false)
         {
            return;
         }
         return new §§pop().§\x1e\x05§(param1 as b2DistanceJointDef);
      }
      
      b2internal static function Destroy(param1:b2Joint, param2:*) : void
      {
      }
      
      public function GetType() : int
      {
         return m_type;
      }
      
      public function GetAnchorA() : b2Vec2
      {
         return null;
      }
      
      public function GetAnchorB() : b2Vec2
      {
         return null;
      }
      
      public function GetReactionForce(param1:Number) : b2Vec2
      {
         return null;
      }
      
      public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function GetBodyA() : b2Body
      {
         return m_bodyA;
      }
      
      public function GetBodyB() : b2Body
      {
         return m_bodyB;
      }
      
      public function §\x12\x15§() : b2Joint
      {
         return m_next;
      }
      
      public function GetUserData() : *
      {
         return m_userData;
      }
      
      public function §\n\x11§(param1:*) : void
      {
         m_userData = param1;
      }
      
      public function IsActive() : Boolean
      {
         return m_bodyA.IsActive() && m_bodyB.IsActive();
      }
      
      b2internal function InitVelocityConstraints(param1:§\x1d\x06§) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:§\x1d\x06§) : void
      {
      }
      
      b2internal function §\x19\x10§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}


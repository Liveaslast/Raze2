package §\x1c\x12§
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x14§;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2MouseJointDef;
   import §\x1c\x10§.b2PrismaticJointDef;
   import §\x1c\x10§.b2PulleyJointDef;
   import §\x1c\x10§.b2RevoluteJointDef;
   import §\x1c\x10§.b2WeldJointDef;
   import §\x1c\x11§.§\x1e\b§;
   import §\x1c\x11§.§\x1e\t§;
   import §\x1c\x13§.*;
   import §\x1c\x14§.*;
   import §\x1c\x15§.*;
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
   
   internal class §\x1d\x0e§
   {
      
      private static var circlePointA:b2Vec2 = new b2Vec2();
      
      private static var circlePointB:b2Vec2 = new b2Vec2();
      
      public var m_normal:b2Vec2;
      
      public var m_points:Array;
      
      public var m_separations:Array;
      
      public function §\x1d\x0e§()
      {
         super();
         m_normal = new b2Vec2();
         m_separations = new Array(b2Settings.b2_maxManifoldPoints);
         m_points = new Array(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            m_points[_loc1_] = new b2Vec2();
            _loc1_++;
         }
      }
      
      public function §\x10\x1d§(param1:§\x1e\x13§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:b2Mat22 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         §§push(b2Settings);
         §§push(param1.pointCount > 0);
         if(false)
         {
            throw true;
         }
         §§pop().b2Assert(§§pop());
         §§push(param1.type);
         if(false)
         {
            return;
         }
         switch(§§pop())
         {
            case b2Manifold.e_circles:
               _loc5_ = param1.bodyA.m_xf.R;
               _loc6_ = param1.localPoint;
               §§push(param1.bodyA);
               if(false)
               {
                  return false;
               }
               §§push(§§pop().b2internal::m_xf.position.x);
               §§push(_loc5_.col1.x);
               §§push(_loc6_);
               if(false)
               {
                  throw true;
               }
               _loc9_ = §§pop() + (§§pop() * §§pop().x + _loc5_.col2.x * _loc6_.y);
               _loc10_ = param1.bodyA.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.bodyB.m_xf.R;
               _loc6_ = param1.points[0].localPoint;
               _loc11_ = param1.bodyB.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc12_ = param1.bodyB.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc13_ = _loc11_ - _loc9_;
               _loc14_ = _loc12_ - _loc10_;
               var _temp_1:* = _loc13_ * _loc13_ + _loc14_ * _loc14_;
               _loc15_ = _loc13_ * _loc13_ + _loc14_ * _loc14_;
               if(_loc15_ <= Number.MIN_VALUE * Number.MIN_VALUE)
               {
                  m_normal.x = 1;
                  m_normal.y = 0;
               }
               else
               {
                  _loc16_ = Math.sqrt(_loc15_);
                  m_normal.x = _loc13_ / _loc16_;
                  §§push(m_normal);
                  §§push(_loc14_);
                  §§push(_loc16_);
                  if(false)
                  {
                     return;
                  }
                  §§pop().y = §§pop() / §§pop();
               }
               m_points[0].x = 0.5 * (_loc9_ + _loc11_);
               §§push(m_points[0]);
               §§push(0.5);
               §§push(_loc10_);
               if(false)
               {
                  return;
               }
               §§pop().y = §§pop() * (§§pop() + _loc12_);
               §§push(m_separations);
               §§push(0);
               §§push(_loc13_);
               §§push(m_normal.x);
               if(false)
               {
                  return;
               }
               §§push(§§pop() * §§pop() + _loc14_ * m_normal.y);
               if(false)
               {
                  return;
               }
               §§pop()[§§pop()] = §§pop() - param1.radius;
               break;
            case b2Manifold.e_faceA:
               _loc5_ = param1.bodyA.m_xf.R;
               _loc6_ = param1.localPlaneNormal;
               m_normal.x = _loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y;
               m_normal.y = _loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y;
               _loc5_ = param1.bodyA.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc7_ = param1.bodyA.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc8_ = param1.bodyA.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.bodyB.m_xf.R;
               _loc2_ = 0;
               while(_loc2_ < param1.pointCount)
               {
                  _loc6_ = param1.points[_loc2_].localPoint;
                  _loc3_ = param1.bodyB.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
                  §§push(param1.bodyB.m_xf.position.y);
                  §§push(_loc5_.col1);
                  if(false)
                  {
                     return;
                  }
                  _loc4_ = §§pop() + (§§pop().y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
                  m_separations[_loc2_] = (_loc3_ - _loc7_) * m_normal.x + (_loc4_ - _loc8_) * m_normal.y - param1.radius;
                  m_points[_loc2_].x = _loc3_;
                  §§push(m_points);
                  if(false)
                  {
                     throw true;
                  }
                  §§pop()[_loc2_].y = _loc4_;
                  _loc2_++;
               }
               break;
            case b2Manifold.e_faceB:
               _loc5_ = param1.bodyB.m_xf.R;
               _loc6_ = param1.localPlaneNormal;
               §§push(m_normal);
               §§push(_loc5_.col1.x * _loc6_.x);
               §§push(_loc5_.col2.x);
               §§push(_loc6_.y);
               if(false)
               {
                  return;
               }
               §§pop().x = §§pop() + §§pop() * §§pop();
               m_normal.y = _loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y;
               _loc5_ = param1.bodyB.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc7_ = param1.bodyB.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               §§push(param1.bodyB.m_xf.position.y);
               if(false)
               {
                  throw true;
               }
               _loc8_ = §§pop() + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.bodyA.m_xf.R;
               _loc2_ = 0;
               while(_loc2_ < param1.pointCount)
               {
                  _loc6_ = param1.points[_loc2_].localPoint;
                  _loc3_ = param1.bodyA.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
                  _loc4_ = param1.bodyA.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
                  m_separations[_loc2_] = (_loc3_ - _loc7_) * m_normal.x + (_loc4_ - _loc8_) * m_normal.y - param1.radius;
                  m_points[_loc2_].Set(_loc3_,_loc4_);
                  _loc2_++;
               }
               m_normal.x *= -1;
               m_normal.y *= -1;
         }
      }
   }
}


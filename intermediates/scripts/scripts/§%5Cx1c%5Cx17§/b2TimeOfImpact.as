package §\x1c\x17§
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2FrictionJointDef;
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
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      if(false)
      {
         return;
      }
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var s_cache:§\x1d\t§ = new §\x1d\t§();
      
      if(false)
      {
         return;
      }
      
      private static var s_distanceInput:§\x1e\x06§ = new §\x1e\x06§();
      
      private static var s_xfA:§\x1d\x04§ = new §\x1d\x04§();
      
      private static var s_xfB:§\x1d\x04§ = new §\x1d\x04§();
      
      private static var s_fcn:§\x1d\x0b§ = new §\x1d\x0b§();
      
      private static var s_distanceOutput:§\x1e\x04§ = new §\x1e\x04§();
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function TimeOfImpact(param1:§\x1d\x05§) : Number
      {
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         if(false)
         {
            return;
         }
         var _loc18_:int = 0;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:* = §§findproperty(b2_toiCalls);
         var _loc22_:Number = _loc21_.b2_toiCalls + 1;
         _loc21_.b2_toiCalls = _loc22_;
         var _loc2_:§\x1e\x03§ = param1.proxyA;
         var _loc3_:§\x1e\x03§ = param1.proxyB;
         var _loc4_:§\x1d\x07§ = param1.sweepA;
         var _loc5_:§\x1d\x07§ = param1.sweepB;
         b2Settings.b2Assert(_loc4_.t0 == _loc5_.t0);
         b2Settings.b2Assert(1 - _loc4_.t0 > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.m_radius + _loc3_.m_radius;
         var _loc7_:Number = param1.tolerance;
         var _loc8_:Number = 0;
         var _loc9_:int = 1000;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         s_cache.count = 0;
         s_distanceInput.useRadii = false;
         loop0:
         while(true)
         {
            _loc4_.GetTransform(s_xfA,_loc8_);
            _loc5_.GetTransform(s_xfB,_loc8_);
            s_distanceInput.proxyA = _loc2_;
            s_distanceInput.proxyB = _loc3_;
            §§push(s_distanceInput);
            if(false)
            {
               return;
            }
            §§pop().transformA = s_xfA;
            s_distanceInput.transformB = s_xfB;
            b2Distance.Distance(s_distanceOutput,s_cache,s_distanceInput);
            if(s_distanceOutput.distance <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §§push(s_fcn);
            §§push(s_cache);
            if(false)
            {
               return false;
            }
            §§pop().§\x10\x1d§(§§pop(),_loc2_,s_xfA,_loc3_,s_xfB);
            _loc12_ = s_fcn.Evaluate(s_xfA,s_xfB);
            if(_loc12_ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  §§push(b2Math.Max(_loc6_ - _loc7_,0.75 * _loc6_));
                  if(false)
                  {
                     return;
                  }
                  _loc11_ = §§pop();
               }
               else
               {
                  _loc11_ = b2Math.Max(_loc12_ - _loc7_,0.02 * _loc6_);
               }
            }
            §§push(_loc12_);
            if(false)
            {
               return;
            }
            if(§§pop() - _loc11_ < 0.5 * _loc7_)
            {
               if(_loc10_ == 0)
               {
                  _loc8_ = 1;
               }
               break;
            }
            _loc13_ = _loc8_;
            _loc14_ = _loc8_;
            _loc15_ = 1;
            _loc16_ = _loc12_;
            _loc4_.GetTransform(s_xfA,_loc15_);
            _loc5_.GetTransform(s_xfB,_loc15_);
            _loc17_ = s_fcn.Evaluate(s_xfA,s_xfB);
            if(_loc17_ >= _loc11_)
            {
               _loc8_ = 1;
               break;
            }
            _loc18_ = 0;
            while(true)
            {
               if(!(_loc18_ & 1))
               {
                  _loc19_ = 0.5 * (_loc14_ + _loc15_);
               }
               else
               {
                  §§push(_loc14_);
                  §§push((_loc11_ - _loc16_) * (_loc15_ - _loc14_));
                  §§push(_loc17_);
                  §§push(_loc16_);
                  if(false)
                  {
                     return;
                  }
                  _loc19_ = §§pop() + §§pop() / (§§pop() - §§pop());
               }
               _loc4_.GetTransform(s_xfA,_loc19_);
               _loc5_.GetTransform(s_xfB,_loc19_);
               §§push(s_fcn.Evaluate(s_xfA,s_xfB));
               if(false)
               {
                  throw true;
               }
               _loc20_ = §§pop();
               if(b2Math.Abs(_loc20_ - _loc11_) >= 0.025 * _loc7_)
               {
                  if(_loc20_ > _loc11_)
                  {
                     _loc14_ = _loc19_;
                     _loc16_ = _loc20_;
                  }
                  else
                  {
                     _loc15_ = _loc19_;
                     _loc17_ = _loc20_;
                  }
                  _loc18_++;
                  _loc21_ = §§findproperty(b2_toiRootIters);
                  _loc22_ = _loc21_.b2_toiRootIters + 1;
                  _loc21_.b2_toiRootIters = _loc22_;
                  if(_loc18_ != 50)
                  {
                     continue;
                  }
               }
               else
               {
                  _loc13_ = _loc19_;
               }
               b2_toiMaxRootIters = b2Math.Max(b2_toiMaxRootIters,_loc18_);
               §§push(_loc13_);
               if(false)
               {
                  return;
               }
               if(§§pop() < (1 + 100 * Number.MIN_VALUE) * _loc8_)
               {
                  break loop0;
               }
               _loc8_ = _loc13_;
               _loc10_++;
               ++b2_toiIters;
               if(_loc10_ == _loc9_)
               {
                  break loop0;
               }
               break;
            }
         }
         b2_toiMaxIters = b2Math.Max(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}


package §\x1c\x17§
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
   import §\x1c\x15§.*;
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
   
   public class §\x1e\x02§
   {
      
      private var m_root:§\x1d\x1d§;
      
      private var m_freeList:§\x1d\x1d§;
      
      private var m_path:uint;
      
      private var m_insertionCount:int;
      
      public function §\x1e\x02§()
      {
         super();
         m_root = null;
         §§push(§§findproperty(m_freeList));
         if(false)
         {
            return;
         }
         §§pop().m_freeList = null;
         m_path = 0;
         m_insertionCount = 0;
      }
      
      public function §\x1b\n§(param1:b2AABB, param2:*) : §\x1d\x1d§
      {
         var _loc3_:§\x1d\x1d§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         _loc3_ = §\x05§();
         _loc4_ = b2Settings.b2_aabbExtension;
         _loc5_ = b2Settings.b2_aabbExtension;
         _loc3_.aabb.lowerBound.x = param1.lowerBound.x - _loc4_;
         _loc3_.aabb.lowerBound.y = param1.lowerBound.y - _loc5_;
         _loc3_.aabb.upperBound.x = param1.upperBound.x + _loc4_;
         _loc3_.aabb.upperBound.y = param1.upperBound.y + _loc5_;
         _loc3_.userData = param2;
         §\x10\x1b§(_loc3_);
         if(false)
         {
            return false;
         }
         return _loc3_;
      }
      
      public function §\x1b\x02§(param1:§\x1d\x1d§) : void
      {
         §\r\x14§(param1);
         §\x15\x02§(param1);
      }
      
      public function §\x0f\x0f§(param1:§\x1d\x1d§, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         b2Settings.b2Assert(param1.§\x10\x15§());
         if(!param1.aabb.Contains(param2))
         {
            §\r\x14§(param1);
            _loc4_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.x <= 0 ? -param3.x : param3.x);
            _loc5_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.y <= 0 ? -param3.y : param3.y);
            param1.aabb.lowerBound.x = param2.lowerBound.x - _loc4_;
            param1.aabb.lowerBound.y = param2.lowerBound.y - _loc5_;
            param1.aabb.upperBound.x = param2.upperBound.x + _loc4_;
            param1.aabb.upperBound.y = param2.upperBound.y + _loc5_;
            §\x10\x1b§(param1);
            return true;
         }
         §§push(false);
         if(false)
         {
            return;
         }
         return §§pop();
      }
      
      public function §\r\x18§(param1:int) : void
      {
         var _loc3_:§\x1d\x1d§ = null;
         var _loc4_:uint = 0;
         if(false)
         {
            return;
         }
         if(m_root != null)
         {
            var _loc2_:int = 0;
            while(_loc2_ < param1)
            {
               _loc3_ = m_root;
               _loc4_ = 0;
               while(_loc3_.§\x10\x15§() == false)
               {
                  _loc3_ = !(m_path >> _loc4_ & 1) ? _loc3_.child1 : _loc3_.child2;
                  _loc4_ = uint(_loc4_ + 1 & 0x1F);
               }
               var _loc5_:* = §§findproperty(m_path);
               var _loc6_:Number = _loc5_.m_path + 1;
               _loc5_.m_path = _loc6_;
               §\r\x14§(_loc3_);
               §\x10\x1b§(_loc3_);
               if(false)
               {
                  return;
               }
               _loc2_++;
            }
            return;
         }
      }
      
      public function §\x14\x03§(param1:§\x1d\x1d§) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:§\x1d\x1d§) : *
      {
         return param1.userData;
      }
      
      public function Query(param1:Function, param2:b2AABB) : void
      {
         var _loc5_:§\x1d\x1d§ = null;
         var _loc6_:Boolean = false;
         if(m_root != null)
         {
            var _loc3_:Array = new Array();
            var _loc4_:* = 0;
            §§push(_loc3_);
            var _temp_1:* = _loc4_;
            var _loc7_:Number = _loc4_++;
            §§pop()[_loc7_] = m_root;
            while(_loc4_ > 0)
            {
               if(false)
               {
                  return;
               }
               §§push(_loc3_);
               var _temp_3:* = _loc4_ - 1;
               var _temp_4:* = §§pop()[--_loc4_];
               _loc5_ = §§pop()[--_loc4_];
               if(_loc5_.aabb.TestOverlap(param2))
               {
                  if(!_loc5_.§\x10\x15§())
                  {
                     §§push(_loc3_);
                     var _temp_6:* = _loc4_++;
                     §§push(_temp_6);
                     §§push(_temp_6);
                     if(false)
                     {
                        return;
                     }
                     var _loc8_:* = §§pop();
                     §§pop()[§§pop()] = _loc5_.child1;
                     §§push(_loc3_);
                     var _temp_8:* = _loc4_++;
                     var _loc9_:Number = _loc4_++;
                     §§pop()[_loc9_] = _loc5_.child2;
                  }
                  else
                  {
                     _loc6_ = param1(_loc5_);
                     if(!_loc6_)
                     {
                        return;
                     }
                  }
               }
            }
            return;
         }
      }
      
      public function RayCast(param1:Function, param2:§\x1d\r§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc9_:b2AABB = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:§\x1d\x1d§ = null;
         if(false)
         {
            return false;
         }
         var _loc15_:b2Vec2 = null;
         var _loc16_:b2Vec2 = null;
         var _loc17_:Number = NaN;
         var _loc18_:§\x1d\r§ = null;
         if(m_root != null)
         {
            _loc3_ = param2.p1;
            var _loc4_:b2Vec2 = param2.p2;
            var _loc5_:b2Vec2 = b2Math.SubtractVV(_loc3_,_loc4_);
            _loc5_.Normalize();
            var _loc6_:b2Vec2 = b2Math.CrossFV(1,_loc5_);
            var _loc7_:b2Vec2 = b2Math.AbsV(_loc6_);
            var _loc8_:Number = param2.maxFraction;
            _loc9_ = new b2AABB();
            _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
            _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
            §§push(_loc9_.lowerBound);
            §§push(Math.min(_loc3_.x,_loc10_));
            if(false)
            {
               return;
            }
            §§pop().x = §§pop();
            _loc9_.lowerBound.y = Math.min(_loc3_.y,_loc11_);
            _loc9_.upperBound.x = Math.max(_loc3_.x,_loc10_);
            _loc9_.upperBound.y = Math.max(_loc3_.y,_loc11_);
            var _loc12_:Array = new Array();
            var _loc13_:* = 0;
            var _loc19_:Number;
            _loc12_[_loc19_ = _loc13_++] = m_root;
            while(_loc13_ > 0)
            {
               var _temp_5:* = _loc12_[--_loc13_];
               _loc14_ = _loc12_[--_loc13_];
               if(_loc14_.aabb.TestOverlap(_loc9_) != false)
               {
                  _loc15_ = _loc14_.aabb.GetCenter();
                  _loc16_ = _loc14_.aabb.GetExtents();
                  §§push(Math);
                  §§push(_loc6_.x);
                  §§push(_loc3_.x);
                  if(false)
                  {
                     return;
                  }
                  §§push(§§pop() * (§§pop() - _loc15_.x));
                  §§push(_loc6_.y);
                  §§push(_loc3_.y);
                  §§push(_loc15_.y);
                  if(false)
                  {
                     return;
                  }
                  _loc17_ = §§pop().abs(§§pop() + §§pop() * (§§pop() - §§pop())) - _loc7_.x * _loc16_.x - _loc7_.y * _loc16_.y;
                  if(_loc17_ <= 0)
                  {
                     if(!_loc14_.§\x10\x15§())
                     {
                        var _loc20_:Number;
                        _loc12_[_loc20_ = _loc13_++] = _loc14_.child1;
                        var _loc21_:Number;
                        _loc12_[_loc21_ = _loc13_++] = _loc14_.child2;
                     }
                     else
                     {
                        _loc18_ = new §\x1d\r§();
                        _loc18_.p1 = param2.p1;
                        _loc18_.p2 = param2.p2;
                        _loc18_.maxFraction = param2.maxFraction;
                        _loc8_ = param1(_loc18_,_loc14_);
                        if(_loc8_ == 0)
                        {
                           return;
                        }
                        _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
                        _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
                        _loc9_.lowerBound.x = Math.min(_loc3_.x,_loc10_);
                        _loc9_.lowerBound.y = Math.min(_loc3_.y,_loc11_);
                        _loc9_.upperBound.x = Math.max(_loc3_.x,_loc10_);
                        _loc9_.upperBound.y = Math.max(_loc3_.y,_loc11_);
                     }
                  }
               }
            }
            return;
         }
      }
      
      private function §\x05§() : §\x1d\x1d§
      {
         var _loc1_:§\x1d\x1d§ = null;
         if(!m_freeList)
         {
            §§push(new §\x1d\x1d§());
            if(false)
            {
               return;
            }
            return §§pop();
         }
         _loc1_ = m_freeList;
         m_freeList = _loc1_.parent;
         _loc1_.parent = null;
         §§push(_loc1_);
         §§push(null);
         if(false)
         {
            return;
         }
         §§pop().child1 = §§pop();
         _loc1_.child2 = null;
         return _loc1_;
      }
      
      private function §\x15\x02§(param1:§\x1d\x1d§) : void
      {
         param1.parent = m_freeList;
         m_freeList = param1;
      }
      
      private function §\x10\x1b§(param1:§\x1d\x1d§) : void
      {
         var _loc6_:§\x1d\x1d§ = null;
         var _loc7_:§\x1d\x1d§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         ++m_insertionCount;
         if(m_root != null)
         {
            var _loc2_:b2Vec2 = param1.aabb.GetCenter();
            var _loc3_:§\x1d\x1d§ = m_root;
            if(_loc3_.§\x10\x15§() == false)
            {
               while(true)
               {
                  _loc6_ = _loc3_.child1;
                  _loc7_ = _loc3_.child2;
                  _loc8_ = Math.abs((_loc6_.aabb.lowerBound.x + _loc6_.aabb.upperBound.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.lowerBound.y + _loc6_.aabb.upperBound.y) / 2 - _loc2_.y);
                  §§push(Math);
                  §§push(_loc7_.aabb.lowerBound.x);
                  if(false)
                  {
                     break;
                  }
                  _loc9_ = §§pop().abs((§§pop() + _loc7_.aabb.upperBound.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.lowerBound.y + _loc7_.aabb.upperBound.y) / 2 - _loc2_.y);
                  if(_loc8_ >= _loc9_)
                  {
                     _loc3_ = _loc7_;
                  }
                  else
                  {
                     _loc3_ = _loc6_;
                  }
                  if(_loc3_.§\x10\x15§() == false)
                  {
                     continue;
                  }
               }
               return;
            }
            var _loc4_:§\x1d\x1d§ = _loc3_.parent;
            var _temp_2:* = §\x05§();
            var _loc5_:§\x1d\x1d§ = §\x05§();
            _loc5_.parent = _loc4_;
            _loc5_.userData = null;
            _loc5_.aabb.Combine(param1.aabb,_loc3_.aabb);
            if(!_loc4_)
            {
               _loc5_.child1 = _loc3_;
               _loc5_.child2 = param1;
               _loc3_.parent = _loc5_;
               param1.parent = _loc5_;
               m_root = _loc5_;
            }
            else
            {
               if(_loc3_.parent.child1 != _loc3_)
               {
                  _loc4_.child2 = _loc5_;
               }
               else
               {
                  _loc4_.child1 = _loc5_;
               }
               _loc5_.child1 = _loc3_;
               _loc5_.child2 = param1;
               §§push(_loc3_);
               §§push(_loc5_);
               if(false)
               {
                  return;
               }
               §§pop().parent = §§pop();
               param1.parent = _loc5_;
               while(!_loc4_.aabb.Contains(_loc5_.aabb))
               {
                  §§push(_loc4_.aabb);
                  §§push(_loc4_);
                  if(false)
                  {
                     return;
                  }
                  §§pop().Combine(§§pop().child1.aabb,_loc4_.child2.aabb);
                  _loc5_ = _loc4_;
                  _loc4_ = _loc4_.parent;
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            return;
         }
         m_root = param1;
         §§push(m_root);
         §§push(null);
         if(false)
         {
            return;
         }
         §§pop().parent = §§pop();
      }
      
      private function §\r\x14§(param1:§\x1d\x1d§) : void
      {
         var _loc4_:§\x1d\x1d§ = null;
         var _loc5_:b2AABB = null;
         if(param1 != m_root)
         {
            var _loc2_:§\x1d\x1d§ = param1.parent;
            var _loc3_:§\x1d\x1d§ = _loc2_.parent;
            if(_loc2_.child1 != param1)
            {
               _loc4_ = _loc2_.child1;
            }
            else
            {
               _loc4_ = _loc2_.child2;
            }
            if(!_loc3_)
            {
               m_root = _loc4_;
               _loc4_.parent = null;
               §\x15\x02§(_loc2_);
            }
            else
            {
               if(_loc3_.child1 == _loc2_)
               {
                  _loc3_.child1 = _loc4_;
               }
               else
               {
                  _loc3_.child2 = _loc4_;
               }
               _loc4_.parent = _loc3_;
               §\x15\x02§(_loc2_);
               while(_loc3_)
               {
                  _loc5_ = _loc3_.aabb;
                  §§push(_loc3_);
                  §§push(b2AABB.Combine(_loc3_.child1.aabb,_loc3_.child2.aabb));
                  if(false)
                  {
                     return;
                  }
                  §§pop().aabb = §§pop();
                  if(_loc5_.Contains(_loc3_.aabb))
                  {
                     break;
                  }
                  _loc3_ = _loc3_.parent;
               }
            }
            return;
         }
         m_root = null;
      }
   }
}


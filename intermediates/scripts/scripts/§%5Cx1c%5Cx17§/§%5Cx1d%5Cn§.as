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
   
   internal class §\x1d\n§
   {
      
      public var m_v1:§\x1d\b§ = new §\x1d\b§();
      
      public var m_v2:§\x1d\b§ = new §\x1d\b§();
      
      public var m_v3:§\x1d\b§ = new §\x1d\b§();
      
      public var m_vertices:Array = new Array(3);
      
      public var m_count:int;
      
      public function §\x1d\n§()
      {
         super();
         m_vertices[0] = m_v1;
         m_vertices[1] = m_v2;
         §§push(m_vertices);
         if(false)
         {
            return;
         }
         §§pop()[2] = m_v3;
      }
      
      public function §\r\x19§(param1:§\x1d\t§, param2:§\x1e\x03§, param3:§\x1d\x04§, param4:§\x1e\x03§, param5:§\x1d\x04§) : void
      {
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc10_:§\x1d\b§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         §§push(b2Settings);
         var _temp_1:* = 0 <= param1.count;
         §§push(_temp_1);
         if(_temp_1)
         {
            §§pop();
            §§push(param1.count);
            §§push(3);
            if(false)
            {
               return;
            }
            §§push(§§pop() <= §§pop());
         }
         §§pop().b2Assert(§§pop());
         m_count = param1.count;
         var _loc8_:Array = m_vertices;
         var _loc9_:int = 0;
         while(_loc9_ < m_count)
         {
            _loc10_ = _loc8_[_loc9_];
            _loc10_.indexA = param1.indexA[_loc9_];
            _loc10_.indexB = param1.indexB[_loc9_];
            _loc6_ = param2.§\x11\x1c§(_loc10_.indexA);
            §§push(param4);
            §§push(_loc10_);
            if(false)
            {
               throw true;
            }
            _loc7_ = §§pop().§\x11\x1c§(§§pop().indexB);
            §§push(_loc10_);
            §§push(b2Math);
            §§push(param3);
            §§push(_loc6_);
            if(false)
            {
               return;
            }
            §§pop().wA = §§pop().MulX(§§pop(),§§pop());
            _loc10_.wB = b2Math.MulX(param5,_loc7_);
            _loc10_.w = b2Math.SubtractVV(_loc10_.wB,_loc10_.wA);
            §§push(_loc10_);
            if(false)
            {
               return;
            }
            §§pop().a = 0;
            _loc9_++;
         }
         if(m_count > 1)
         {
            _loc11_ = param1.metric;
            _loc12_ = §\x12\x19§();
            var _temp_4:* = _loc12_ < 0.5 * _loc11_;
            §§push(_temp_4);
            if(!_temp_4)
            {
               §§pop();
               §§push(2);
               §§push(_loc11_);
               if(false)
               {
                  throw true;
               }
               §§push(§§pop() * §§pop() < _loc12_);
            }
            if(§§pop() || _loc12_ < Number.MIN_VALUE)
            {
               m_count = 0;
            }
         }
         if(m_count == 0)
         {
            _loc10_ = _loc8_[0];
            _loc10_.indexA = 0;
            _loc10_.indexB = 0;
            §§push(param2);
            if(false)
            {
               return;
            }
            _loc6_ = §§pop().§\x11\x1c§(0);
            _loc7_ = param4.§\x11\x1c§(0);
            _loc10_.wA = b2Math.MulX(param3,_loc6_);
            _loc10_.wB = b2Math.MulX(param5,_loc7_);
            _loc10_.w = b2Math.SubtractVV(_loc10_.wB,_loc10_.wA);
            m_count = 1;
         }
      }
      
      public function §\b\x15§(param1:§\x1d\t§) : void
      {
         param1.metric = §\x12\x19§();
         param1.count = uint(m_count);
         var _loc2_:Array = m_vertices;
         §§push(0);
         if(false)
         {
            return;
         }
         var _loc3_:* = §§pop();
         while(_loc3_ < m_count)
         {
            param1.indexA[_loc3_] = uint(_loc2_[_loc3_].indexA);
            param1.indexB[_loc3_] = uint(_loc2_[_loc3_].indexB);
            _loc3_++;
         }
      }
      
      public function §\x12\t§() : b2Vec2
      {
         var _loc1_:b2Vec2 = null;
         var _loc2_:Number = NaN;
         switch(m_count)
         {
            case 1:
               §§push(0);
               break;
            case 2:
               §§push(1);
               break;
            default:
               §§push(2);
         }
         if(false)
         {
            return;
         }
         switch(§§pop())
         {
            case 0:
               return m_v1.w.GetNegative();
            case 1:
               _loc1_ = b2Math.SubtractVV(m_v2.w,m_v1.w);
               _loc2_ = b2Math.CrossVV(_loc1_,m_v1.w.GetNegative());
               if(_loc2_ <= 0)
               {
                  return b2Math.CrossVF(_loc1_,1);
               }
               §§push(b2Math);
               if(false)
               {
                  return;
               }
               return §§pop().CrossFV(1,_loc1_);
               break;
            default:
               b2Settings.b2Assert(false);
               return new b2Vec2();
         }
      }
      
      public function §\x14\x11§() : b2Vec2
      {
         switch(m_count)
         {
            case 0:
               b2Settings.b2Assert(false);
               return new b2Vec2();
            case 1:
               return m_v1.w;
            case 2:
               return new b2Vec2(m_v1.a * m_v1.w.x + m_v2.a * m_v2.w.x,m_v1.a * m_v1.w.y + m_v2.a * m_v2.w.y);
            default:
               b2Settings.b2Assert(false);
               return new b2Vec2();
         }
      }
      
      public function §\x11\x18§(param1:b2Vec2, param2:b2Vec2) : void
      {
         switch(m_count)
         {
            case 0:
               b2Settings.b2Assert(false);
               break;
            case 1:
               param1.SetV(m_v1.wA);
               param2.SetV(m_v1.wB);
               break;
            case 2:
               param1.x = m_v1.a * m_v1.wA.x + m_v2.a * m_v2.wA.x;
               §§push(param1);
               §§push(m_v1.a * m_v1.wA.y);
               §§push(m_v2.a);
               if(false)
               {
                  return;
               }
               §§pop().y = §§pop() + §§pop() * m_v2.wA.y;
               if(false)
               {
                  throw true;
               }
               param2.x = m_v1.a * m_v1.wB.x + m_v2.a * m_v2.wB.x;
               param2.y = m_v1.a * m_v1.wB.y + m_v2.a * m_v2.wB.y;
               break;
            case 3:
               §§push(param2);
               if(false)
               {
                  return;
               }
               §§pop().x = param1.x = m_v1.a * m_v1.wA.x + m_v2.a * m_v2.wA.x + m_v3.a * m_v3.wA.x;
               param2.y = param1.y = m_v1.a * m_v1.wA.y + m_v2.a * m_v2.wA.y + m_v3.a * m_v3.wA.y;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §\x12\x19§() : Number
      {
         switch(m_count)
         {
            case 0:
               b2Settings.b2Assert(false);
               if(false)
               {
                  return false;
               }
               return 0;
               break;
            case 1:
               return 0;
            case 2:
               §§push(b2Math);
               §§push(m_v1.w);
               §§push(m_v2);
               if(false)
               {
                  return;
               }
               return §§pop().SubtractVV(§§pop(),§§pop().w).Length();
               break;
            case 3:
               return b2Math.CrossVV(b2Math.SubtractVV(m_v2.w,m_v1.w),b2Math.SubtractVV(m_v3.w,m_v1.w));
            default:
               b2Settings.b2Assert(false);
               return 0;
         }
      }
      
      public function §\n\x02§() : void
      {
         var _loc1_:b2Vec2 = m_v1.w;
         var _loc2_:b2Vec2 = m_v2.w;
         var _loc3_:b2Vec2 = b2Math.SubtractVV(_loc2_,_loc1_);
         §§push(_loc1_.x * _loc3_.x);
         if(false)
         {
            return;
         }
         var _loc4_:Number = -(§§pop() + _loc1_.y * _loc3_.y);
         if(_loc4_ > 0)
         {
            §§push(_loc2_.x * _loc3_.x);
            §§push(_loc2_.y * _loc3_.y);
            if(false)
            {
               return false;
            }
            var _loc5_:Number = §§pop() + §§pop();
            if(_loc5_ > 0)
            {
               var _loc6_:Number = 1 / (_loc5_ + _loc4_);
               m_v1.a = _loc5_ * _loc6_;
               m_v2.a = _loc4_ * _loc6_;
               m_count = 2;
               return;
            }
            m_v2.a = 1;
            m_count = 1;
            m_v1.Set(m_v2);
            return;
         }
         m_v1.a = 1;
         m_count = 1;
      }
      
      public function §\t\x1d§() : void
      {
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc1_:b2Vec2 = m_v1.w;
         if(false)
         {
            return;
         }
         var _loc2_:b2Vec2 = m_v2.w;
         var _loc3_:b2Vec2 = m_v3.w;
         var _loc4_:b2Vec2 = b2Math.SubtractVV(_loc2_,_loc1_);
         var _loc5_:Number = b2Math.Dot(_loc1_,_loc4_);
         var _loc6_:Number;
         var _loc7_:Number = _loc6_ = b2Math.Dot(_loc2_,_loc4_);
         var _loc8_:Number = -_loc5_;
         var _loc9_:b2Vec2 = b2Math.SubtractVV(_loc3_,_loc1_);
         §§push(b2Math.Dot(_loc1_,_loc9_));
         if(false)
         {
            return;
         }
         var _loc10_:Number = §§pop();
         var _loc11_:Number;
         var _loc12_:Number = _loc11_ = b2Math.Dot(_loc3_,_loc9_);
         var _loc13_:Number = -_loc10_;
         var _loc14_:b2Vec2 = b2Math.SubtractVV(_loc3_,_loc2_);
         var _loc15_:Number = b2Math.Dot(_loc2_,_loc14_);
         var _loc16_:Number;
         var _loc17_:Number = _loc16_ = b2Math.Dot(_loc3_,_loc14_);
         var _loc18_:Number = -_loc15_;
         var _loc19_:Number = b2Math.CrossVV(_loc4_,_loc9_);
         var _loc20_:Number = _loc19_ * b2Math.CrossVV(_loc2_,_loc3_);
         var _loc21_:Number = _loc19_ * b2Math.CrossVV(_loc3_,_loc1_);
         var _loc22_:Number = _loc19_ * b2Math.CrossVV(_loc1_,_loc2_);
         if(!(_loc8_ <= 0 && _loc13_ <= 0))
         {
            var _temp_6:* = _loc7_ > 0;
            §§push(_temp_6);
            §§push(_temp_6);
            if(false)
            {
               throw true;
            }
            if(§§pop())
            {
               §§pop();
               §§push(_loc8_ > 0);
            }
            if(!(§§pop() && _loc22_ <= 0))
            {
               if(!(_loc12_ > 0 && _loc13_ > 0 && _loc21_ <= 0))
               {
                  if(_loc7_ <= 0 && _loc18_ <= 0)
                  {
                     m_v2.a = 1;
                     m_count = 1;
                     m_v1.Set(m_v2);
                     return;
                  }
                  if(!(_loc12_ <= 0 && _loc17_ <= 0))
                  {
                     if(_loc17_ > 0 && _loc18_ > 0 && _loc20_ <= 0)
                     {
                        _loc26_ = 1 / (_loc17_ + _loc18_);
                        m_v2.a = _loc17_ * _loc26_;
                        m_v3.a = _loc18_ * _loc26_;
                        m_count = 2;
                        m_v1.Set(m_v3);
                        return;
                     }
                     var _loc23_:Number = 1 / (_loc20_ + _loc21_ + _loc22_);
                     m_v1.a = _loc20_ * _loc23_;
                     m_v2.a = _loc21_ * _loc23_;
                     m_v3.a = _loc22_ * _loc23_;
                     m_count = 3;
                     return;
                  }
                  m_v3.a = 1;
                  §§push(§§findproperty(m_count));
                  if(false)
                  {
                     return false;
                  }
                  §§pop().m_count = 1;
                  m_v1.Set(m_v3);
                  return;
               }
               §§push(1);
               §§push(_loc12_ + _loc13_);
               if(false)
               {
                  return;
               }
               _loc25_ = §§pop() / §§pop();
               m_v1.a = _loc12_ * _loc25_;
               §§push(m_v3);
               if(false)
               {
                  throw true;
               }
               §§pop().a = _loc13_ * _loc25_;
               m_count = 2;
               m_v2.Set(m_v3);
               return;
            }
            _loc24_ = 1 / (_loc7_ + _loc8_);
            m_v1.a = _loc7_ * _loc24_;
            m_v2.a = _loc8_ * _loc24_;
            if(false)
            {
               return false;
            }
            m_count = 2;
            return;
         }
         m_v1.a = 1;
         m_count = 1;
      }
   }
}


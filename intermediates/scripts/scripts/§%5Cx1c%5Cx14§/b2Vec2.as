package §\x1c\x14§
{
   import §\x0e\r§.*;
   import §\x1c\x13§.§\x1e\x17§;
   import §\x1c\x13§.b2DebugDraw;
   import §\x1c\x13§.b2Fixture;
   import §\x1c\x16§.b2Shape;
   import §\x1c\x17§.§\x1d\x1c§;
   import §\x1c\x17§.§\x1e\x04§;
   import flash.text.TextField;
   
   public class b2Vec2
   {
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         super();
         x = param1;
         y = param2;
      }
      
      public static function Make(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function SetZero() : void
      {
         x = 0;
         y = 0;
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         x = param1;
         §§push(§§findproperty(y));
         §§push(param2);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop();
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         x = param1.x;
         y = param1.y;
      }
      
      public function GetNegative() : b2Vec2
      {
         return new b2Vec2(-x,-y);
      }
      
      public function §\x0f\b§() : void
      {
         x = -x;
         y = -y;
         if(false)
         {
            return;
         }
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(x,y);
      }
      
      public function §\x1a§(param1:b2Vec2) : void
      {
         x += param1.x;
         y += param1.y;
      }
      
      public function §\t\x11§(param1:b2Vec2) : void
      {
         x -= param1.x;
         y -= param1.y;
      }
      
      public function Multiply(param1:Number) : void
      {
         x *= param1;
         y *= param1;
      }
      
      public function §\x0f\f§(param1:b2Mat22) : void
      {
         var _loc2_:Number = x;
         §§push(§§findproperty(x));
         §§push(param1.col1.x * _loc2_);
         §§push(param1.col2.x * y);
         if(false)
         {
            return false;
         }
         §§pop().x = §§pop() + §§pop();
         y = param1.col1.y * _loc2_ + param1.col2.y * y;
      }
      
      public function §\x0f\n§(param1:b2Mat22) : void
      {
         var _loc2_:Number = b2Math.Dot(this,param1.col1);
         §§push(§§findproperty(y));
         if(false)
         {
            return false;
         }
         §§pop().y = b2Math.Dot(this,param1.col2);
         x = _loc2_;
      }
      
      public function CrossVF(param1:Number) : void
      {
         var _loc2_:Number = x;
         §§push(§§findproperty(x));
         §§push(param1 * y);
         if(false)
         {
            return;
         }
         §§pop().x = §§pop();
         y = -param1 * _loc2_;
         if(false)
         {
            return;
         }
      }
      
      public function CrossFV(param1:Number) : void
      {
         var _loc2_:Number = x;
         x = -param1 * y;
         y = param1 * _loc2_;
      }
      
      public function §\x0f\x11§(param1:b2Vec2) : void
      {
         §§push(§§findproperty(x));
         if(x >= param1.x)
         {
            §§push(param1.x);
         }
         else
         {
            §§push(x);
            if(false)
            {
               return;
            }
            §§push(Number(§§pop()));
         }
         §§pop().x = §§pop();
         y = y >= param1.y ? param1.y : y;
      }
      
      public function §\x0f\x1b§(param1:b2Vec2) : void
      {
         §§push(§§findproperty(x));
         if(x <= param1.x)
         {
            §§push(param1.x);
         }
         else
         {
            §§push(x);
            if(false)
            {
               return;
            }
         }
         §§pop().x = §§pop();
         y = y <= param1.y ? param1.y : y;
      }
      
      public function Abs() : void
      {
         if(x < 0)
         {
            x = -x;
         }
         if(y < 0)
         {
            y = -y;
         }
      }
      
      public function Length() : Number
      {
         return Math.sqrt(x * x + y * y);
      }
      
      public function LengthSquared() : Number
      {
         return x * x + y * y;
      }
      
      public function Normalize() : Number
      {
         §§push(Math);
         §§push(x * x);
         §§push(y);
         if(false)
         {
            return false;
         }
         var _loc1_:Number = Number(§§pop().sqrt(§§pop() + §§pop() * y));
         if(_loc1_ >= Number.MIN_VALUE)
         {
            var _loc2_:Number = 1 / _loc1_;
            x *= _loc2_;
            y *= _loc2_;
            return _loc1_;
         }
         return 0;
      }
      
      public function IsValid() : Boolean
      {
         return b2Math.IsValid(x) && b2Math.IsValid(y);
      }
   }
}


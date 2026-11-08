package
{
   import §\x0e\r§.*;
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2FrictionJointDef;
   import §\x1c\x10§.b2Joint;
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
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.filters.BlurFilter;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol564")]
   public class §\x0e\x19§ extends MovieClip
   {
      
      public var txt_music_on:TextField;
      
      public var txt_pblur_on:TextField;
      
      public var txt_mode:TextField;
      
      public var barsCont:MovieClip;
      
      public var txt_sound_off:TextField;
      
      public var txt_part_high:TextField;
      
      public var txt_qual_low:TextField;
      
      public var txt_desc:TextField;
      
      public var txt_part_low:TextField;
      
      public var txt_qual_med:TextField;
      
      public var txt_glow_high:TextField;
      
      public var bt_graph_1:SimpleButton;
      
      public var bt_graph_0:SimpleButton;
      
      public var txt_part_med:TextField;
      
      public var bt_graph_3:SimpleButton;
      
      public var mc_graphbox:MovieClip;
      
      public var txt_word:TextField;
      
      public var txt_part_ult:TextField;
      
      public var bt_graph_2:SimpleButton;
      
      public var btnl_Options:MovieClip;
      
      public var btn_View_Scores:MovieClip;
      
      public var mc_sponsor:MovieClip;
      
      public var btn_Options:MovieClip;
      
      public var btnl_View_Scores:MovieClip;
      
      public var txt_sound_on:TextField;
      
      public var txt_ragev_off:TextField;
      
      public var btn_No:MovieClip;
      
      public var txt_sblood_off:TextField;
      
      public var bt_graph_4:SimpleButton;
      
      public var txt_credits:TextField;
      
      public var txt_pblur_off:TextField;
      
      public var btnl_Quit_Game:MovieClip;
      
      public var txt_title:TextField;
      
      public var btn_Quit_Game:MovieClip;
      
      public var txt_music_off:TextField;
      
      public var txt_lights_off:TextField;
      
      public var btn_Yes:MovieClip;
      
      public var txt_lights_on:TextField;
      
      public var txt_sblood_on:TextField;
      
      public var btn_Resume_Game:MovieClip;
      
      public var txt_ragev_on:TextField;
      
      public var txt_qual_high:TextField;
      
      public var txt_glow_low:TextField;
      
      private var game:Game;
      
      private var buttons:Array;
      
      private var buttons2:Array;
      
      public var won:Boolean;
      
      private var selCol:uint;
      
      private var team1scores:Array;
      
      private var team2scores:Array;
      
      private var team3scores:Array;
      
      private var team4scores:Array;
      
      private var iconFrame:String;
      
      public function §\x0e\x19§(param1:Game)
      {
         super();
         §§push(§§findproperty(addFrameScript));
         §§push(0);
         §§push(§\x19\b§);
         §§push(10);
         §§push(§\x19\x03§);
         if(false)
         {
            return;
         }
         §§pop().addFrameScript(§§pop(),§§pop(),§§pop(),§§pop(),11,§\x18\x1c§,12,§\x18\x18§,13,§\x18\x16§,73,§\x15\x12§,86,§\x15\n§,87,§\x15\t§,287,§\x17\f§);
         §§push(§§findproperty(game));
         §§push(param1);
         if(false)
         {
            return;
         }
         §§pop().game = §§pop();
         buttons = [];
         buttons2 = [];
         selCol = 5758640;
      }
      
      public function init() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:* = undefined;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         §§push(0);
         if(false)
         {
            return;
         }
         var _loc6_:* = §§pop();
         buttons = [];
         if(txt_title)
         {
            txt_title.text = currentLabel;
         }
         _loc1_ = 0;
         while(_loc1_ < numChildren)
         {
            §§push(getChildAt(_loc1_).name);
            §§push(0);
            if(false)
            {
               return;
            }
            if(§§pop().substring(§§pop(),3) == "btn")
            {
               _loc2_ = getChildAt(_loc1_);
               _loc3_ = _loc2_.name.split("_");
               var _temp_2:* = _loc3_.shift();
               _loc4_ = _loc3_.shift();
               if(_loc4_ != "btn")
               {
                  if(_loc4_ == "btnl")
                  {
                     _loc5_ = _loc3_.join(" ");
                     _loc2_.txt_word.text = _loc5_;
                     _loc2_.alpha = 0.5;
                     _loc2_.gotoAndStop(1);
                  }
               }
               else
               {
                  _loc5_ = _loc3_.join(" ");
                  _loc2_.txt_word.text = _loc5_;
                  buttons.push(_loc2_);
                  _loc2_.gotoAndStop(1);
               }
            }
            _loc1_++;
         }
         switch(currentLabel)
         {
            case "countdown":
               break;
            case "gamedone":
               _loc6_ = uint(UT.rand(8,13));
               if(won)
               {
                  _loc6_ *= 5;
               }
               _loc6_ += UT.rand(1,10);
               §§push(Math.round(_loc6_ * MatchSettings.creditMod));
               if(false)
               {
                  return;
               }
               _loc6_ = uint(§§pop());
               if(!won)
               {
                  txt_title.text = "失败!";
                  txt_credits.text = "比赛奖\n+\x1f\x1f" + _loc6_;
               }
               else
               {
                  txt_title.text = "胜利!\x1f";
                  txt_credits.text = "胜利奖\n+" + _loc6_;
               }
               SD.credits += _loc6_;
               §\x1a\x1c§();
               break;
            case "积分牌\x1f\x1f":
               mc_sponsor.buttonMode = true;
               §§push(txt_mode);
               if(!MatchSettings.isCampaign)
               {
                  §§push("练习赛\x1f\x1f");
                  if(false)
                  {
                     throw true;
                  }
               }
               else
               {
                  §§push(MatchSettings.matchName);
               }
               §§pop().text = §§pop();
               §§push(txt_desc);
               if(!MatchSettings.isCampaign)
               {
                  §§push("");
               }
               else
               {
                  §§push(MatchSettings.matchDesc);
                  if(false)
                  {
                     return;
                  }
                  §§push(§§pop());
               }
               §§pop().text = §§pop();
               §\x1a\x1c§();
               break;
            case "退出\x1f\x1f\x1f":
               break;
            case "选项\x1f":
               buttons2 = [];
               _loc1_ = 0;
               while(_loc1_ < numChildren)
               {
                  if(getChildAt(_loc1_).name.substring(0,3) == "txt")
                  {
                     if(getChildAt(_loc1_).name != "txt_title")
                     {
                        buttons2.push(getChildAt(_loc1_));
                     }
                  }
                  _loc1_++;
               }
               §\x0b\x1b§();
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         _loc1_ = 0;
         while(_loc1_ < buttons.length)
         {
            if(!(buttons[_loc1_].currentLabel == "up" && Boolean(buttons[_loc1_].hitbox.hitTestPoint(mouseX,mouseY,false))))
            {
               §§push(buttons[_loc1_]);
               if(false)
               {
                  return;
               }
               if(§§pop().currentLabel == "on" && !buttons[_loc1_].hitbox.hitTestPoint(mouseX,mouseY,false))
               {
                  buttons[_loc1_].gotoAndPlay("out");
               }
            }
            else
            {
               buttons[_loc1_].gotoAndPlay("over");
            }
            _loc1_++;
         }
         var _loc2_:String = currentLabel;
         switch(if("gamedone" !== _loc2_)
         {
            §§push("积分牌\x1f\x1f");
            §§push(_loc2_);
            if(false)
            {
               return;
            }
            else if(§§pop() !== §§pop())
            {
               switch(_loc2_)
               {
                  case "退出\x1f\x1f\x1f":
                     §§push(2);
                     break;
                  case "选项\x1f":
                     §§push(3);
                     break;
                  default:
                     §§push(4);
               }
            }
            else
            {
               §§push(1);
            }
         }
         else
         {
            §§push(0);
         })
         {
            case 0:
            case 1:
            case 2:
               break;
            case 3:
               _loc1_ = 0;
               while(_loc1_ < buttons2.length)
               {
                  if(buttons2[_loc1_].textColor != selCol)
                  {
                     if(!buttons2[_loc1_].hitTestPoint(mouseX,mouseY,false))
                     {
                        buttons2[_loc1_].textColor = 10066329;
                     }
                     else
                     {
                        buttons2[_loc1_].textColor = 16777215;
                     }
                  }
                  _loc1_++;
               }
         }
      }
      
      public function MouseDown() : void
      {
         var _loc1_:uint = 0;
         _loc1_ = 0;
         while(_loc1_ < buttons.length)
         {
            if(buttons[_loc1_].hitbox.hitTestPoint(mouseX,mouseY,false))
            {
               trace(buttons[_loc1_].txt_word.text);
               switch(buttons[_loc1_].txt_word.text)
               {
                  case "Resume Game":
                     game.§\t\n§();
                     break;
                  case "Yes":
                     destroy(true);
                     break;
                  case "No":
                     gotoAndStop("积分牌\x1f\x1f");
                     break;
                  default:
                     gotoAndStop(buttons[_loc1_].txt_word.text);
               }
            }
            §§push(_loc1_);
            if(false)
            {
               return false;
            }
            _loc1_ = §§pop() + 1;
         }
         switch(currentLabel)
         {
            case "gamedone":
               break;
            case "积分牌\x1f\x1f":
               if(mc_sponsor.hitTestPoint(mouseX,mouseY,false))
               {
                  AGI.urlSponsor();
               }
               break;
            case "退出\x1f\x1f\x1f":
               if(mc_sponsor.hitTestPoint(mouseX,mouseY,false))
               {
                  AGI.urlSponsor();
               }
               break;
            case "选项\x1f":
               if(mc_sponsor.hitTestPoint(mouseX,mouseY,false))
               {
                  AGI.urlSponsor();
               }
               _loc1_ = 0;
               while(_loc1_ < 5)
               {
                  if(this["bt_graph_" + _loc1_].hitTestPoint(mouseX,mouseY,false))
                  {
                     §\x1c\r§(_loc1_);
                     §\x0b\x1b§();
                  }
                  _loc1_++;
               }
               _loc1_ = 0;
               while(_loc1_ < buttons2.length)
               {
                  if(buttons2[_loc1_].hitTestPoint(mouseX,mouseY,false))
                  {
                     var _loc2_:* = buttons2[_loc1_].name;
                     switch(_loc2_)
                     {
                        case "txt_qual_low":
                           §§push(0);
                           break;
                        case "txt_qual_med":
                           §§push(1);
                           break;
                        default:
                           §§push("txt_qual_high");
                           if(false)
                           {
                              return false;
                           }
                           switch(_loc2_)
                           {
                              case §§pop():
                                 §§push(2);
                                 break;
                              case "txt_part_low":
                                 §§push(3);
                                 break;
                              case "txt_part_med":
                                 §§push(4);
                                 break;
                              case "txt_part_high":
                                 §§push(5);
                                 break;
                              case "txt_part_ult":
                                 §§push(6);
                                 break;
                              case "txt_glow_low":
                                 §§push(7);
                                 break;
                              case "txt_glow_high":
                                 §§push(8);
                                 break;
                              case "txt_ragev_off":
                                 §§push(9);
                                 break;
                              default:
                                 §§push("txt_ragev_on");
                                 if(false)
                                 {
                                    return;
                                 }
                                 switch(_loc2_)
                                 {
                                    case §§pop():
                                       §§push(10);
                                       break;
                                    case "txt_lights_off":
                                       if(false)
                                       {
                                          return;
                                       }
                                       §§push(11);
                                       break;
                                    case "txt_lights_on":
                                       §§push(12);
                                       break;
                                    case "txt_sound_off":
                                       §§push(13);
                                       break;
                                    case "txt_sound_on":
                                       §§push(14);
                                       break;
                                    case "txt_music_off":
                                       §§push(15);
                                       break;
                                    case "txt_music_on":
                                       §§push(16);
                                       break;
                                    case "txt_sblood_off":
                                       §§push(17);
                                       break;
                                    case "txt_sblood_on":
                                       §§push(18);
                                       break;
                                    case "txt_pblur_off":
                                       §§push(19);
                                       break;
                                    case "txt_pblur_on":
                                       §§push(20);
                                       if(false)
                                       {
                                          return;
                                       }
                                       break;
                                    default:
                                       §§push(21);
                                 }
                           }
                     }
                     switch(§§pop())
                     {
                        case 0:
                           SD.graphQual = 0;
                           SD.graphType = 0;
                           break;
                        case 1:
                           SD.graphQual = 1;
                           SD.graphType = 0;
                           break;
                        case 2:
                           SD.graphQual = 2;
                           SD.graphType = 0;
                           break;
                        case 3:
                           SD.graphPart = 0;
                           SD.graphType = 0;
                           break;
                        case 4:
                           if(false)
                           {
                              throw true;
                           }
                           SD.graphPart = 1;
                           SD.graphType = 0;
                           break;
                        case 5:
                           SD.graphPart = 2;
                           SD.graphType = 0;
                           break;
                        case 6:
                           SD.graphPart = 3;
                           if(false)
                           {
                              return;
                           }
                           SD.graphType = 0;
                           break;
                        case 7:
                           SD.graphGlow = 0;
                           SD.graphType = 0;
                           break;
                        case 8:
                           SD.graphGlow = 1;
                           SD.graphType = 0;
                           break;
                        case 9:
                           SD.graphRagev = 0;
                           SD.graphType = 0;
                           if(false)
                           {
                              return;
                           }
                           break;
                        case 10:
                           SD.graphRagev = 1;
                           SD.graphType = 0;
                           if(false)
                           {
                              return false;
                           }
                           break;
                        case 11:
                           SD.graphLights = 0;
                           SD.graphType = 0;
                           break;
                        case 12:
                           SD.graphLights = 1;
                           SD.graphType = 0;
                           break;
                        case 13:
                           SD.sound = false;
                           break;
                        case 14:
                           SD.sound = true;
                           break;
                        case 15:
                           if(SD.music)
                           {
                              SD.music = false;
                              SH.updateMusicVolume();
                           }
                           break;
                        case 16:
                           if(!SD.music)
                           {
                              SD.music = true;
                              SH.updateMusicVolume();
                           }
                           break;
                        case 17:
                           SD.sblood = false;
                           game.hud.bloodscreen.gotoAndStop(2);
                           break;
                        case 18:
                           SD.sblood = true;
                           game.hud.bloodscreen.gotoAndStop(1);
                           break;
                        case 19:
                           SD.pblur = false;
                           game.bitscreen.filters = [];
                           break;
                        case 20:
                           SD.pblur = true;
                           game.bitscreen.filters = [new BlurFilter(game.pauseBlur,game.pauseBlur,3)];
                     }
                     §\x0b\x1b§();
                     game.arena.toggleLights();
                  }
                  _loc1_++;
               }
         }
      }
      
      private function §\x1a\x1c§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:Array = null;
         loop7:
         switch(MatchSettings.teams)
         {
            case 0:
            case 1:
               _loc1_ = -30;
               switch(MatchSettings.type)
               {
                  case "淘汰赛\x1f\x1f":
                     barsCont.addChild(new §\r\t§(true,_loc1_ = _loc1_ + 30,"h0","#","玩家","生命","杀敌","阵亡"));
                     break;
                  default:
                     §§push(barsCont);
                     §§push(§§findproperty(§\r\t§));
                     §§push(true);
                     var _temp_2:* = _loc1_ + 30;
                     _loc1_ = _loc1_ + 30;
                     §§pop().addChild(new §§pop().§\r\t§(§§pop(),_loc1_,"h0","#","玩家","积分","杀敌","阵亡"));
               }
               _loc2_ = [];
               _loc4_ = 0;
               while(_loc4_ < game.units.length)
               {
                  §§push(game);
                  if(false)
                  {
                     return;
                  }
                  if(!§§pop().units[_loc4_].matchInfo.extra || !game.units[_loc4_].matchInfo.extra.noSpawn)
                  {
                     _loc2_.push(game.units[_loc4_]);
                  }
                  _loc4_++;
               }
               _loc2_.sortOn("pscore",Array.NUMERIC | Array.DESCENDING);
               _loc4_ = 0;
               while(_loc4_ < _loc2_.length)
               {
                  iconFrame = "无\x1f";
                  if(_loc2_[_loc4_].isJug)
                  {
                     iconFrame = "重装机甲";
                  }
                  if(Boolean(_loc2_[_loc4_].onPoint) || Boolean(_loc2_[_loc4_].defendingFlag))
                  {
                     iconFrame = "控制赛\x1f";
                  }
                  if(_loc2_[_loc4_].dead)
                  {
                     iconFrame = "死亡赛\x1f";
                  }
                  if(_loc2_[_loc4_].hasFlag)
                  {
                     iconFrame = "夺旗赛\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
                  }
                  barsCont.addChild(new §\r\t§(false,_loc1_ = _loc1_ + 30,(!_loc2_[_loc4_].human ? "a" : "p") + _loc2_[_loc4_].team,_loc4_ + 1,_loc2_[_loc4_].name,_loc2_[_loc4_].pscore,_loc2_[_loc4_].score.kills,_loc2_[_loc4_].score.deaths,iconFrame));
                  _loc4_++;
               }
               break;
            case 2:
            case 3:
            case 4:
               _loc1_ = -30;
               switch(MatchSettings.type)
               {
                  case "淘汰赛\x1f\x1f":
                     §§push(barsCont);
                     §§push(§§findproperty(§\r\t§));
                     §§push(true);
                     var _loc7_:Number;
                     _loc1_ = _loc7_ = _loc1_ + 30;
                     §§pop().addChild(new §§pop().§\r\t§(§§pop(),_loc7_,"h0","#","玩家","生命","杀敌","阵亡"));
                     break;
                  default:
                     §§push(barsCont);
                     §§push(§§findproperty(§\r\t§));
                     §§push(true);
                     §§push(_loc1_ = _loc1_ + 30);
                     §§push("h0");
                     §§push("#");
                     §§push("玩家");
                     if(false)
                     {
                        return;
                     }
                     §§pop().addChild(new §§pop().§\r\t§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),"积分","杀敌","阵亡"));
               }
               team1scores = [];
               team2scores = [];
               team3scores = [];
               §§push(§§findproperty(team4scores));
               if(false)
               {
                  return;
               }
               §§pop().team4scores = [];
               _loc3_ = [];
               _loc4_ = 1;
               while(_loc4_ <= MatchSettings.teams)
               {
                  _loc3_.push({
                     "team":_loc4_,
                     "score":game.matchSettings["team" + _loc4_ + "score"]
                  });
                  _loc4_++;
               }
               _loc3_.sortOn("score",Array.NUMERIC | Array.DESCENDING);
               _loc4_ = 0;
               while(_loc4_ < game.units.length)
               {
                  if(!game.units[_loc4_].matchInfo.extra || !game.units[_loc4_].matchInfo.extra.noSpawn)
                  {
                     this["team" + game.units[_loc4_].team + "scores"].push(game.units[_loc4_]);
                  }
                  _loc4_++;
               }
               team1scores.sortOn("pscore",Array.NUMERIC | Array.DESCENDING);
               team2scores.sortOn("pscore",Array.NUMERIC | Array.DESCENDING);
               team3scores.sortOn("pscore",Array.NUMERIC | Array.DESCENDING);
               team4scores.sortOn("pscore",Array.NUMERIC | Array.DESCENDING);
               _loc5_ = 0;
               while(true)
               {
                  var _temp_10:* = _loc5_ < 4;
                  §§push(_temp_10);
                  if(_temp_10)
                  {
                     §§pop();
                     §§push(_loc5_);
                     §§push(MatchSettings.teams);
                     if(false)
                     {
                        break;
                     }
                     §§push(§§pop() < §§pop());
                  }
                  if(!§§pop())
                  {
                     break loop7;
                  }
                  _loc6_ = this["team" + _loc3_[_loc5_].team + "scores"];
                  §§push(barsCont);
                  §§push(§§findproperty(§\r\t§));
                  §§push(true);
                  _loc1_ = _loc7_ = _loc1_ + 30;
                  §§pop().addChild(new §§pop().§\r\t§(§§pop(),_loc7_,"h" + _loc3_[_loc5_].team,_loc5_ + 1,UT.getEl(_loc3_[_loc5_].team - 1,["Blue","Orange","Yellow","Green"]) + " Team",_loc3_[_loc5_].score,"",""));
                  _loc4_ = 0;
                  if(false)
                  {
                     return;
                  }
                  while(_loc4_ < _loc6_.length)
                  {
                     iconFrame = "无\x1f";
                     if(_loc6_[_loc4_].isJug)
                     {
                        iconFrame = "重装机甲";
                     }
                     if(Boolean(_loc6_[_loc4_].onPoint) || Boolean(_loc6_[_loc4_].defendingFlag))
                     {
                        iconFrame = "控制赛\x1f";
                     }
                     §§push(_loc6_);
                     §§push(_loc4_);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop()[§§pop()].hasFlag)
                     {
                        iconFrame = "夺旗赛\x1f\x1f\x1f\x1f\x1f\x1f\x1f";
                     }
                     §§push(_loc6_);
                     if(false)
                     {
                        return;
                     }
                     if(§§pop()[_loc4_].dead)
                     {
                        iconFrame = "死亡赛\x1f";
                     }
                     barsCont.addChild(new §\r\t§(false,_loc1_ = _loc1_ + 30,(!_loc6_[_loc4_].human ? "a" : "p") + _loc6_[_loc4_].team,_loc4_ + 1,_loc6_[_loc4_].name,_loc6_[_loc4_].pscore,_loc6_[_loc4_].score.kills,_loc6_[_loc4_].score.deaths,iconFrame));
                     _loc4_++;
                  }
                  _loc1_ += 5;
                  _loc5_++;
               }
               return;
         }
      }
      
      private function §\x1c\r§(param1:uint) : void
      {
         SD.graphType = param1;
         switch(param1)
         {
            case 0:
               break;
            case 1:
               SD.graphQual = 0;
               SD.graphPart = 0;
               SD.graphGlow = 0;
               §§push(SD);
               §§push(0);
               if(false)
               {
                  return false;
               }
               §§pop().graphRagev = §§pop();
               SD.graphLights = 0;
               break;
            case 2:
               SD.graphQual = 1;
               SD.graphPart = 1;
               SD.graphGlow = 0;
               SD.graphRagev = 0;
               SD.graphLights = 0;
               SD.graphLights = 0;
               break;
            case 3:
               SD.graphQual = 1;
               SD.graphPart = 2;
               SD.graphGlow = 1;
               SD.graphRagev = 1;
               SD.graphLights = 1;
               break;
            case 4:
               SD.graphQual = 2;
               SD.graphPart = 3;
               SD.graphGlow = 1;
               SD.graphRagev = 1;
               SD.graphLights = 1;
         }
         game.arena.toggleLights();
      }
      
      private function §\x0b\x1b§() : void
      {
         var _loc1_:uint = 0;
         while(_loc1_ < buttons2.length)
         {
            §§push(buttons2);
            if(false)
            {
               throw true;
            }
            §§pop()[_loc1_].textColor = 10066329;
            _loc1_++;
         }
         mc_graphbox.gotoAndStop(SD.graphType + 1);
         UT.getEl(SD.graphQual,[txt_qual_low,txt_qual_med,txt_qual_high]).textColor = selCol;
         UT.getEl(SD.graphPart,[txt_part_low,txt_part_med,txt_part_high,txt_part_ult]).textColor = selCol;
         §§push(UT);
         if(false)
         {
            return;
         }
         §§pop().getEl(SD.graphGlow,[txt_glow_low,txt_glow_high]).textColor = selCol;
         §§push(UT.getEl(SD.graphRagev,[txt_ragev_off,txt_ragev_on]));
         if(false)
         {
            return;
         }
         §§pop().textColor = selCol;
         UT.getEl(SD.graphLights,[txt_lights_off,txt_lights_on]).textColor = selCol;
         §§push(UT.getEl(!SD.sound ? 0 : 1,[txt_sound_off,txt_sound_on]));
         if(false)
         {
            return;
         }
         §§pop().textColor = selCol;
         UT.getEl(!SD.music ? 0 : 1,[txt_music_off,txt_music_on]).textColor = selCol;
         UT.getEl(!SD.sblood ? 0 : 1,[txt_sblood_off,txt_sblood_on]).textColor = selCol;
         UT.getEl(!SD.pblur ? 0 : 1,[txt_pblur_off,txt_pblur_on]).textColor = selCol;
      }
      
      public function destroy(param1:Boolean = false) : void
      {
         SD.saveGame();
         SD.stats.Suicides += game.player.score.suicides;
         §§push(SD.stats);
         §§push(SD.stats.Human);
         if(false)
         {
            return;
         }
         §§pop().Human = §§pop() + game.player.score.killedHuman;
         SD.stats.Robot += game.player.score.killedRobot;
         §§push(SD.stats);
         §§push(SD);
         if(false)
         {
            return false;
         }
         §§pop().Zombie = §§pop().stats.Zombie + game.player.score.killedZombie;
         §§push(SD);
         if(false)
         {
            return;
         }
         §§pop().stats.Alien = SD.stats.Alien + game.player.score.killedAlien;
         §§push(SD.stats);
         §§push(SD.stats.HeadShots);
         §§push(game.player.score);
         if(false)
         {
            throw true;
         }
         §§pop().HeadShots = §§pop() + §§pop().headshots;
         SD.stats.ButtShots += game.player.score.buttshots;
         §§push(SD.stats);
         §§push(SD.stats);
         if(false)
         {
            return false;
         }
         §§pop().CrotchShots = §§pop().CrotchShots + game.player.score.crotchshots;
         §§push(SD.stats);
         if(false)
         {
            return;
         }
         §§push(SD.stats.阵亡);
         §§push(game.player.score.deaths);
         if(false)
         {
            return;
         }
         §§pop().阵亡 = §§pop() + §§pop();
         Log.LevelAverageMetric("Suicides","杀敌",game.player.score.suicides);
         Log.LevelAverageMetric("Human","杀敌",game.player.score.killedHuman);
         Log.LevelAverageMetric("Robot","杀敌",game.player.score.killedRobot);
         §§push(Log);
         §§push("Zombie");
         §§push("杀敌");
         §§push(game.player.score.killedZombie);
         if(false)
         {
            return;
         }
         §§pop().LevelAverageMetric(§§pop(),§§pop(),§§pop());
         Log.LevelAverageMetric("Alien","杀敌",game.player.score.killedAlien);
         Log.LevelAverageMetric("HeadShots","杀敌",game.player.score.headshots);
         §§push(Log);
         §§push("ButtShots");
         if(false)
         {
            throw true;
         }
         §§pop().LevelAverageMetric(§§pop(),"杀敌",game.player.score.buttshots);
         Log.LevelAverageMetric("CrotchShots","杀敌",game.player.score.crotchshots);
         Log.LevelAverageMetric("Reflections","杀敌",game.player.score.reflections);
         Log.LevelAverageMetric("Betrayals","杀敌",game.player.score.betrayals);
         §§push(Log);
         §§push("Bullets");
         §§push("杀敌");
         §§push(game);
         if(false)
         {
            throw true;
         }
         §§pop().LevelAverageMetric(§§pop(),§§pop(),§§pop().player.score.bullets);
         Log.LevelAverageMetric("FlagCaps","杀敌",game.player.score.flagCap);
         §§push(Log);
         §§push("DomCaps");
         §§push("杀敌");
         §§push(game);
         if(false)
         {
            throw true;
         }
         §§pop().LevelAverageMetric(§§pop(),§§pop(),§§pop().player.score.domCap);
         §§push(Log);
         §§push("JugKills");
         §§push("杀敌");
         §§push(game);
         if(false)
         {
            throw true;
         }
         §§pop().LevelAverageMetric(§§pop(),§§pop(),§§pop().player.score.jugKill);
         Log.LevelAverageMetric("MauserKills","杀敌",game.player.score.mauser);
         Log.LevelAverageMetric("SwordKills","杀敌",game.player.score.sword);
         Log.LevelAverageMetric("FireKills","杀敌",game.player.score.fire);
         §§push(Log);
         §§push("MineKills");
         §§push("杀敌");
         §§push(game);
         if(false)
         {
            return;
         }
         §§pop().LevelAverageMetric(§§pop(),§§pop(),§§pop().player.score.mine);
         Log.LevelAverageMetric("KillSteals","杀敌",game.player.score.steal);
         Log.LevelAverageMetric("JuiceKills","杀敌",game.player.score.juice);
         Log.LevelAverageMetric("RadKills","杀敌",game.player.score.rad);
         Log.LevelAverageMetric("SpeedKills","杀敌",game.player.score.speed);
         Log.LevelAverageMetric("CorpseSticks","杀敌",game.player.score.corpsestick);
         Log.LevelAverageMetric("制作\x1f","杀敌",game.hud.curCredits);
         if(param1)
         {
            if(game.matchSettings.canRageQuit)
            {
               Log.CustomMetric("RageQuits","Matches");
               var _loc2_:Object = SD.stats;
               var _loc3_:Number = _loc2_.Rage + 1;
               if(false)
               {
                  throw true;
               }
               _loc2_.Rage = _loc3_;
            }
         }
         else if(MatchSettings.isCampaign)
         {
            Log.CustomMetric("Campaign_Played","Matches");
            if(!won)
            {
               _loc2_ = SD.stats;
               _loc3_ = _loc2_.Losses + 1;
               _loc2_.Losses = _loc3_;
               §§push(Log);
               §§push("Campaign_Lost");
               if(false)
               {
                  throw true;
               }
               §§pop().CustomMetric(§§pop(),"Matches");
            }
            else
            {
               _loc2_ = SD.stats;
               _loc3_ = _loc2_.Wins + 1;
               _loc2_.Wins = _loc3_;
               Log.CustomMetric("Campaign_Won","Matches");
            }
         }
         else
         {
            Log.CustomMetric("QuickMatch_Played","Matches");
            if(!won)
            {
               ++SD.stats.Losses;
               Log.CustomMetric("QuickMatch_Lost","Matches");
            }
            else
            {
               ++SD.stats.Wins;
               Log.CustomMetric("QuickMatch_Won","Matches");
            }
         }
         Log.ForceSend();
         §§push(game);
         var _temp_6:* = !param1;
         §§push(_temp_6);
         if(_temp_6)
         {
            §§pop();
            if(false)
            {
               return;
            }
            §§push(won);
         }
         §§pop().destroy(§§pop());
      }
      
      internal function §\x19\b§() : *
      {
         stop();
      }
      
      internal function §\x19\x03§() : *
      {
         stop();
         init();
         if(false)
         {
            throw true;
         }
      }
      
      internal function §\x18\x1c§() : *
      {
         init();
      }
      
      internal function §\x18\x18§() : *
      {
         init();
      }
      
      internal function §\x18\x16§() : *
      {
         init();
      }
      
      internal function §\x15\x12§() : *
      {
         game.§\t\x18§();
      }
      
      internal function §\x15\n§() : *
      {
         gotoAndStop(1);
      }
      
      internal function §\x15\t§() : *
      {
         init();
      }
      
      internal function §\x17\f§() : *
      {
         stop();
         destroy();
      }
   }
}

§§push(§§findproperty(§\x0e\x19§));
§§push(DisplayObject);
if(false)
{
   return;
}


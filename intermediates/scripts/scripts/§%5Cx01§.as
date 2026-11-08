package
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
   import §\x1c\x17§.*;
   import flash.display.Bitmap;
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
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.media.SoundTransform;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;
   import flash.system.Security;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1341")]
   public class §\x01§ extends MovieClip
   {
      
      public var gear3:MovieClip;
      
      public var ik_d:NodeAiAction;
      
      public var b_qce:NodeWaypoint;
      
      public var p_qn:NodeWaypoint;
      
      public var g_zbd:NodeWaypoint;
      
      public var k_cjh:NodeWaypoint;
      
      public var b_adc:NodeWaypoint;
      
      public var n_d:NodeAiAction;
      
      public var e_dfm:NodeWaypoint;
      
      public var f:NodeSpawn;
      
      public var s_j:NodeAiAction;
      
      public var gn_j:NodeAiAction;
      
      public var v_wu:NodeWaypoint;
      
      public var reflectTake2:MovieClip;
      
      public var gear4:MovieClip;
      
      public var h_inmll:NodeWaypoint;
      
      public var k_oi:NodeWaypoint;
      
      public var c_j:NodeAiAction;
      
      public var ij_d:NodeAiAction;
      
      public var j_kbi:NodeWaypoint;
      
      public var d_1:NodeSpawn;
      
      public var i_nhj:NodeWaypoint;
      
      public var c_erl:NodeWaypoint;
      
      public var e_2:NodeSpawn;
      
      public var a__1:NodeCtfFlag;
      
      public var i_d:NodeAiAction;
      
      public var l_gm:NodeWaypoint;
      
      public var h_ng:NodeWaypoint;
      
      public var p_qge:NodeWaypoint;
      
      public var p_rapid_15:NodePickup;
      
      public var g:NodeSpawn;
      
      public var r_equh:NodeWaypoint;
      
      public var i_acbu:NodeWaypoint;
      
      public var rq_d:NodeAiAction;
      
      public var r_j:NodeAiAction;
      
      public var c_bfw:NodeWaypoint;
      
      public var t_2:NodeSpawn;
      
      public var s__2:NodeCtfFlag;
      
      public var gear5:MovieClip;
      
      public var c_abhj:NodeWaypoint;
      
      public var g_1:NodeSpawn;
      
      public var d_2:NodeSpawn;
      
      public var i_jhfn:NodeWaypoint;
      
      public var z_bjhg:NodeWaypoint;
      
      public var e_fd:NodeWaypoint;
      
      public var r_k:NodeWaypoint;
      
      public var erl_j:NodeAiAction;
      
      public var h_d:NodeAiAction;
      
      public var g_fhl:NodeWaypoint;
      
      public var q__1:NodeCtfFlag;
      
      public var v_o:NodeWaypoint;
      
      public var h:NodeSpawn;
      
      public var e_df:NodeWaypoint;
      
      public var q_uro:NodeWaypoint;
      
      public var p_ronl:NodeWaypoint;
      
      public var w_3_9999:NodePickup;
      
      public var ho_j:NodeAiAction;
      
      public var n_hm:NodeWaypoint;
      
      public var jk_d:NodeAiAction;
      
      public var reflectTake1:MovieClip;
      
      public var f_1:NodeSpawn;
      
      public var kj_d:NodeAiAction;
      
      public var e_bcdf:NodeWaypoint;
      
      public var qm_d:NodeAiAction;
      
      public var m_j:NodeAiAction;
      
      public var q_1:NodeSpawn;
      
      public var i_ljh:NodeWaypoint;
      
      public var m_onz:NodeWaypoint;
      
      public var tq_d:NodeAiAction;
      
      public var q_dbtepu:NodeWaypoint;
      
      public var p_shealth_15:NodePickup;
      
      public var l_cmo:NodeWaypoint;
      
      public var k_d:NodeAiAction;
      
      public var i:NodeSpawn;
      
      public var g_2:NodeSpawn;
      
      public var l_nf:NodeWaypoint;
      
      public var i_bjhg:NodeWaypoint;
      
      public var h_ifbd:NodeWaypoint;
      
      public var m_dp:NodeWaypoint;
      
      public var f_2:NodeSpawn;
      
      public var j:NodeSpawn;
      
      public var i_kn:NodeWaypoint;
      
      public var p_1:NodeSpawn;
      
      public var f_dkj:NodeWaypoint;
      
      public var j_d:NodeAiAction;
      
      public var l_j:NodeAiAction;
      
      public var he_d:NodeAiAction;
      
      public var h_u:NodeWaypoint;
      
      public var abi_d:NodeAiAction;
      
      public var ko_j:NodeAiAction;
      
      public var b_ca:NodeWaypoint;
      
      public var a_1:NodeSpawn;
      
      public var oh_d:NodeAiAction;
      
      public var bridge2:MovieClip;
      
      public var de_j:NodeAiAction;
      
      public var d__2:NodeCtfFlag;
      
      public var ed_j:NodeAiAction;
      
      public var p_bhealth_15:NodePickup;
      
      public var g_hf:NodeWaypoint;
      
      public var d_b:NodeWaypoint;
      
      public var k_az:NodeWaypoint;
      
      public var u_atq:NodeWaypoint;
      
      public var d_cfeqb:NodeWaypoint;
      
      public var w_rand_10:NodePickup;
      
      public var o_j:NodeAiAction;
      
      public var k:NodeSpawn;
      
      public var u_d:NodeAiAction;
      
      public var r_upq:NodeWaypoint;
      
      public var m_l:NodeWaypoint;
      
      public var g_keh:NodeWaypoint;
      
      public var e_dfig:NodeWaypoint;
      
      public var wallMC:MovieClip;
      
      public var waterMC:MovieClip;
      
      public var p_2:NodeSpawn;
      
      public var tread1:MovieClip;
      
      public var m_honl:NodeWaypoint;
      
      public var bridge3:MovieClip;
      
      public var z_g:NodeWaypoint;
      
      public var a_pb:NodeWaypoint;
      
      public var e__2:NodeCtfFlag;
      
      public var d_cep:NodeWaypoint;
      
      public var l:NodeSpawn;
      
      public var e_d:NodeAiAction;
      
      public var mz_d:NodeAiAction;
      
      public var l_ozik:NodeWaypoint;
      
      public var b_caqd:NodeWaypoint;
      
      public var p_invin_20:NodePickup;
      
      public var mo_j:NodeAiAction;
      
      public var n_j:NodeAiAction;
      
      public var b_adfc:NodeWaypoint;
      
      public var a_dbs:NodeWaypoint;
      
      public var midCont:MovieClip;
      
      public var d_c:NodeWaypoint;
      
      public var botCont:MovieClip;
      
      public var c_1:NodeSpawn;
      
      public var s_2:NodeSpawn;
      
      public var tread2:MovieClip;
      
      public var k_fhgj:NodeWaypoint;
      
      public var e_fdg:NodeWaypoint;
      
      public var c_2:NodeSpawn;
      
      public var q_ab:NodeWaypoint;
      
      public var h_gif:NodeWaypoint;
      
      public var k_bj:NodeWaypoint;
      
      public var m_nepl:NodeWaypoint;
      
      public var m:NodeSpawn;
      
      public var s_ngfd:NodeWaypoint;
      
      public var i_j:NodeAiAction;
      
      public var n_somz:NodeWaypoint;
      
      public var d_d:NodeAiAction;
      
      public var m_n:NodeWaypoint;
      
      public var o_pqnk:NodeWaypoint;
      
      public var h_klgi:NodeWaypoint;
      
      public var topCont:MovieClip;
      
      public var b_1:NodeSpawn;
      
      public var tread3:MovieClip;
      
      public var e_f:NodeWaypoint;
      
      public var d_e:NodeWaypoint;
      
      public var z__1:NodeCtfFlag;
      
      public var l_n:NodeWaypoint;
      
      public var f_eag:NodeWaypoint;
      
      public var k__1:NodeCtfFlag;
      
      public var g_d:NodeAiAction;
      
      public var h_j:NodeAiAction;
      
      public var fd_j:NodeAiAction;
      
      public var g_ps:NodeWaypoint;
      
      public var n:NodeSpawn;
      
      public var t_psgn:NodeWaypoint;
      
      public var j_h:NodeWaypoint;
      
      public var k_jgho:NodeWaypoint;
      
      public var a_b:NodeWaypoint;
      
      public var tread4:MovieClip;
      
      public var k__2:NodeCtfFlag;
      
      public var o_gipn:NodeWaypoint;
      
      public var a_qf:NodeWaypoint;
      
      public var jk_j:NodeAiAction;
      
      public var l_ch:NodeWaypoint;
      
      public var z_j:NodeAiAction;
      
      public var p_sshield_15:NodePickup;
      
      public var kj_j:NodeAiAction;
      
      public var k_j:NodeAiAction;
      
      public var c_db:NodeWaypoint;
      
      public var f_d:NodeAiAction;
      
      public var p_damage_10:NodePickup;
      
      public var p_bshield_15:NodePickup;
      
      public var o:NodeSpawn;
      
      public var u_tvqr:NodeWaypoint;
      
      public var q_d:NodeAiAction;
      
      public var f_bce:NodeWaypoint;
      
      public var c_bd:NodeWaypoint;
      
      public var tread5:MovieClip;
      
      public var l_mo:NodeWaypoint;
      
      public var heart:MovieClip;
      
      public var j_fbck:NodeWaypoint;
      
      public var d_bef:NodeWaypoint;
      
      public var b_acdf:NodeWaypoint;
      
      public var i_gh:NodeWaypoint;
      
      public var o_1:NodeSpawn;
      
      public var k_jd:NodeWaypoint;
      
      public var o_qm:NodeWaypoint;
      
      public var q_bkpm:NodeWaypoint;
      
      public var j_j:NodeAiAction;
      
      public var l_2:NodeSpawn;
      
      public var h__2:NodeCtfFlag;
      
      public var p:NodeSpawn;
      
      public var he_j:NodeAiAction;
      
      public var k_ubqo:NodeWaypoint;
      
      public var d_aec:NodeWaypoint;
      
      public var abi_j:NodeAiAction;
      
      public var w_v:NodeWaypoint;
      
      public var p_d:NodeAiAction;
      
      public var i__1:NodeCtfFlag;
      
      public var tread6:MovieClip;
      
      public var o_2:NodeSpawn;
      
      public var n_1:NodeSpawn;
      
      public var n__1:NodeCtfFlag;
      
      public var o_kimlhn:NodeWaypoint;
      
      public var i__2:NodeCtfFlag;
      
      public var h_igck:NodeWaypoint;
      
      public var g_fehi:NodeWaypoint;
      
      public var d_cejk:NodeWaypoint;
      
      public var e_cfd:NodeWaypoint;
      
      public var o_knap:NodeWaypoint;
      
      public var z_mni:NodeWaypoint;
      
      public var a_bu:NodeWaypoint;
      
      public var p_oqs:NodeWaypoint;
      
      public var s_d:NodeAiAction;
      
      public var ae_d:NodeAiAction;
      
      public var j_k:NodeWaypoint;
      
      public var d_abe:NodeWaypoint;
      
      public var q:NodeSpawn;
      
      public var reflectShow2:MovieClip;
      
      public var tread7:MovieClip;
      
      public var b_c:NodeWaypoint;
      
      public var g_fhoz:NodeWaypoint;
      
      public var d_cge:NodeWaypoint;
      
      public var j_kli:NodeWaypoint;
      
      public var b_acp:NodeWaypoint;
      
      public var a_kob:NodeWaypoint;
      
      public var u_ik:NodeWaypoint;
      
      public var r:NodeSpawn;
      
      public var e_j:NodeAiAction;
      
      public var s_hp:NodeWaypoint;
      
      public var t_j:NodeAiAction;
      
      public var q_kpr:NodeWaypoint;
      
      public var ng_d:NodeAiAction;
      
      public var f_g:NodeWaypoint;
      
      public var r_d:NodeAiAction;
      
      public var s_t:NodeWaypoint;
      
      public var l_mihp:NodeWaypoint;
      
      public var i_leh:NodeWaypoint;
      
      public var c_d:NodeAiAction;
      
      public var a:NodeSpawn;
      
      public var n_2:NodeSpawn;
      
      public var i_1:NodeSpawn;
      
      public var reflectCam2:MovieClip;
      
      public var tread8:MovieClip;
      
      public var i_hok:NodeWaypoint;
      
      public var g_i:NodeWaypoint;
      
      public var bridge:MovieClip;
      
      public var h_1:NodeSpawn;
      
      public var gh_d:NodeAiAction;
      
      public var c_bed:NodeWaypoint;
      
      public var o_a:NodeWaypoint;
      
      public var n_poq:NodeWaypoint;
      
      public var p_ombd:NodeWaypoint;
      
      public var j_ki:NodeWaypoint;
      
      public var light:MovieClip;
      
      public var i_2:NodeSpawn;
      
      public var d_j:NodeAiAction;
      
      public var j_fki:NodeWaypoint;
      
      public var t_uqo:NodeWaypoint;
      
      public var qd_d:NodeAiAction;
      
      public var s:NodeSpawn;
      
      public var c_dibl:NodeWaypoint;
      
      public var b_ick:NodeWaypoint;
      
      public var n_op:NodeWaypoint;
      
      public var b:NodeSpawn;
      
      public var b_d:NodeAiAction;
      
      public var f_bdeg:NodeWaypoint;
      
      public var reflectShow1:MovieClip;
      
      public var z_1:NodeSpawn;
      
      public var n_ilm:NodeWaypoint;
      
      public var h_2:NodeSpawn;
      
      public var m_bfq:NodeWaypoint;
      
      public var b_akogc:NodeWaypoint;
      
      public var l__2:NodeCtfFlag;
      
      public var q_i:NodeWaypoint;
      
      public var k_1:NodeSpawn;
      
      public var m_d:NodeAiAction;
      
      public var g_j:NodeAiAction;
      
      public var kf_j:NodeAiAction;
      
      public var o_ntl:NodeWaypoint;
      
      public var n_lgtv:NodeWaypoint;
      
      public var t:NodeSpawn;
      
      public var c:NodeSpawn;
      
      public var gear1:MovieClip;
      
      public var arrow:MovieClip;
      
      public var m_np:NodeWaypoint;
      
      public var j_dki:NodeWaypoint;
      
      public var n_pfl:NodeWaypoint;
      
      public var k_2:NodeSpawn;
      
      public var b__1:NodeCtfFlag;
      
      public var h_gli:NodeWaypoint;
      
      public var j_1:NodeSpawn;
      
      public var z_2:NodeSpawn;
      
      public var h_zi:NodeWaypoint;
      
      public var ko_d:NodeAiAction;
      
      public var l_d:NodeAiAction;
      
      public var o_bkl:NodeWaypoint;
      
      public var f_j:NodeAiAction;
      
      public var q_j:NodeAiAction;
      
      public var op_d:NodeAiAction;
      
      public var t_su:NodeWaypoint;
      
      public var u:NodeSpawn;
      
      public var d:NodeSpawn;
      
      public var gear2:MovieClip;
      
      public var p_shealth_9999:NodePickup;
      
      public var de_d:NodeAiAction;
      
      public var hi_d:NodeAiAction;
      
      public var p_on:NodeWaypoint;
      
      public var ih_d:NodeAiAction;
      
      public var f_elmh:NodeWaypoint;
      
      public var j_2:NodeSpawn;
      
      public var p_amn:NodeWaypoint;
      
      public var n_omih:NodeWaypoint;
      
      public var f_eg:NodeWaypoint;
      
      public var u_1:NodeSpawn;
      
      public var e:NodeSpawn;
      
      public var k_fjl:NodeWaypoint;
      
      public var e_dqp:NodeWaypoint;
      
      public var p_j:NodeAiAction;
      
      public var g_ejmt:NodeWaypoint;
      
      public var a_edi:NodeWaypoint;
      
      public var o_d:NodeAiAction;
      
      private var game:Game;
      
      public var wall:BitmapData;
      
      private var camFocus:*;
      
      private var camIntenseX:Number;
      
      private var camIntenseY:Number;
      
      private var useAim:Boolean;
      
      public var refData1:BitmapData;
      
      public var refData2:BitmapData;
      
      private var shakeX:Number;
      
      private var shakeY:Number;
      
      private var shkOffX:Number;
      
      private var shkOffY:Number;
      
      public var spawns:Array;
      
      public var spawnsT1:Array;
      
      public var spawnsT2:Array;
      
      public var waypoints:Array;
      
      public var wpOb:Object;
      
      public var aiactions:Array;
      
      public var physboxes:Array;
      
      public var pickups:Array;
      
      public var holdpoints:Array;
      
      public var ctfflags:Array;
      
      public var lights:Array;
      
      public var flag1:NodeCtfFlag;
      
      public var flag2:NodeCtfFlag;
      
      private var reflectRot:uint = 0;
      
      public function §\x01§(param1:Game)
      {
         super();
         addFrameScript(1,§\x18\x03§,2,§\x17\t§,3,§\x16\x13§,4,§\x16\b§,5,§\x15\x1a§,6,§\x15\x14§,7,§\x15\x0f§,8,§\x15\b§,9,§\x19\x07§,10,§\x19\x03§,11,§\x18\x1c§,12,§\x18\x18§,13,§\x18\x16§);
         game = param1;
         gotoAndStop(MatchSettings.map.map);
         game.bg1.gotoAndStop(MatchSettings.map.bg1);
         game.bg2.gotoAndStop(MatchSettings.map.bg2);
         §§push(game.bgSky);
         §§push(MatchSettings.specialMode);
         if(false)
         {
            return;
         }
         §§pop().gotoAndStop(§§pop() != "lol猫\x1f\x1f" ? MatchSettings.map.sky : "lol猫\x1f\x1f");
      }
      
      public function changeWallFrame(param1:uint = 1, param2:Boolean = false) : void
      {
         if(param2)
         {
            param1 = wallMC.currentFrame + 1;
         }
         wallMC.gotoAndStop(param1);
         §§push(wall);
         §§push(§§findproperty(Rectangle));
         §§push(0);
         §§push(0);
         §§push(wall.width);
         §§push(wall);
         if(false)
         {
            return;
         }
         §§pop().fillRect(new §§pop().Rectangle(§§pop(),§§pop(),§§pop(),§§pop().height),0);
         wall.draw(wallMC);
      }
      
      protected function init() : void
      {
         var _loc4_:uint = 0;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:uint = 0;
         wall = new BitmapData(wallMC.width,wallMC.height,true,0);
         wall.draw(wallMC);
         wallMC.visible = false;
         if(reflectTake1)
         {
            refData1 = new BitmapData(reflectTake1.width,reflectTake1.height,true,0);
            reflectShow1.addChild(new Bitmap(refData1));
         }
         if(reflectTake2)
         {
            refData2 = new BitmapData(reflectTake2.width,reflectTake2.height,true,0);
            reflectShow2.addChild(new Bitmap(refData2));
         }
         shakeX = 0;
         §§push(§§findproperty(shakeY));
         if(false)
         {
            return;
         }
         §§pop().shakeY = 0;
         shkOffX = 0;
         shkOffY = 0;
         if(waterMC)
         {
            game.water.setWater(waterMC);
         }
         spawns = [];
         spawnsT1 = [];
         spawnsT2 = [];
         waypoints = [];
         aiactions = [];
         physboxes = [];
         pickups = [];
         holdpoints = [];
         ctfflags = [];
         lights = [];
         var _loc1_:uint = 1;
         var _loc2_:uint = 2;
         var _loc3_:Boolean = Math.random() < 0.5;
         if(_loc3_)
         {
            _loc1_ = 2;
            if(false)
            {
               throw true;
            }
            _loc2_ = 1;
         }
         _loc4_ = 0;
         while(_loc4_ < numChildren)
         {
            if(getChildAt(_loc4_).name == "light")
            {
               lights.push(getChildAt(_loc4_));
            }
            if(getChildAt(_loc4_) is NodeSpawn)
            {
               §§push(§§findproperty(getChildAt));
               §§push(_loc4_);
               if(false)
               {
                  return false;
               }
               _loc5_ = §§pop().getChildAt(§§pop());
               if(_loc5_.team == 0)
               {
                  §§push(spawns);
                  if(false)
                  {
                     return;
                  }
                  §§pop().push(getChildAt(_loc4_));
               }
               if(_loc5_.team == _loc1_)
               {
                  spawnsT1.push(getChildAt(_loc4_));
               }
               if(_loc5_.team == _loc2_)
               {
                  spawnsT2.push(getChildAt(_loc4_));
               }
            }
            if(getChildAt(_loc4_) is NodeWaypoint)
            {
               waypoints.push(getChildAt(_loc4_));
            }
            if(getChildAt(_loc4_) is NodeAiAction)
            {
               aiactions.push(getChildAt(_loc4_));
            }
            §§push(getChildAt(_loc4_));
            §§push(NodePhysBox);
            if(false)
            {
               return;
            }
            if(§§pop() is §§pop())
            {
               physboxes.push(getChildAt(_loc4_));
            }
            if(getChildAt(_loc4_) is NodePickup)
            {
               pickups.push(getChildAt(_loc4_));
            }
            if(getChildAt(_loc4_) is NodeHoldpoint)
            {
               if(MatchSettings.type == "控制赛\x1f")
               {
                  holdpoints.push(getChildAt(_loc4_));
               }
               else
               {
                  getChildAt(_loc4_).visible = false;
               }
            }
            if(getChildAt(_loc4_) is NodeCtfFlag)
            {
               if(MatchSettings.type != "夺旗赛\x1f\x1f\x1f\x1f\x1f\x1f\x1f")
               {
                  §§push(getChildAt(_loc4_));
                  if(false)
                  {
                     return;
                  }
                  §§pop().visible = false;
               }
               else
               {
                  _loc6_ = getChildAt(_loc4_);
                  ctfflags.push(_loc6_);
                  if(_loc6_.team != 1)
                  {
                     this["flag" + _loc2_] = _loc6_;
                     _loc6_.setTeam(_loc2_);
                  }
                  else
                  {
                     this["flag" + _loc1_] = _loc6_;
                     _loc6_.setTeam(_loc1_);
                  }
               }
            }
            _loc4_++;
         }
         holdpoints.sortOn("x",Array.NUMERIC);
         wpOb = {};
         _loc4_ = 0;
         while(_loc4_ < waypoints.length)
         {
            wpOb[waypoints[_loc4_].id] = waypoints[_loc4_];
            waypoints[_loc4_].arena = this;
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < waypoints.length)
         {
            waypoints[_loc4_].setConnectors(wpOb);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < aiactions.length)
         {
            _loc7_ = 0;
            while(_loc7_ < aiactions[_loc4_].con.length)
            {
               wpOb[aiactions[_loc4_].con.charAt(_loc7_)].setActionBox(aiactions[_loc4_]);
               _loc7_++;
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < spawns.length)
         {
            spawns[_loc4_].setWaypoint(wpOb[spawns[_loc4_].id]);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < spawnsT1.length)
         {
            spawnsT1[_loc4_].setWaypoint(wpOb[spawnsT1[_loc4_].id]);
            _loc4_++;
            if(false)
            {
               return;
            }
         }
         _loc4_ = 0;
         while(true)
         {
            §§push(_loc4_);
            §§push(spawnsT2);
            if(false)
            {
               break;
            }
            if(§§pop() >= §§pop().length)
            {
               game.physWorld.generateWorld(physboxes);
               _loc4_ = 0;
               while(_loc4_ < pickups.length)
               {
                  pickups[_loc4_].game = game;
                  _loc4_++;
               }
               toggleLights();
               game.§\x11\x01§();
               return;
            }
            spawnsT2[_loc4_].setWaypoint(wpOb[spawnsT2[_loc4_].id]);
            _loc4_++;
         }
      }
      
      public function toggleLights() : void
      {
         var _loc1_:uint = 0;
         while(_loc1_ < lights.length)
         {
            §§push(lights);
            §§push(_loc1_);
            if(false)
            {
               throw true;
            }
            §§pop()[§§pop()].visible = SD.graphLights;
            _loc1_++;
         }
      }
      
      public function setShake(param1:Number, param2:Number) : void
      {
         if(param1 > shakeX)
         {
            shakeX = param1;
         }
         if(param2 > shakeY)
         {
            shakeY = param2;
         }
      }
      
      public function focus(param1:*, param2:Boolean = true, param3:Number = 0.5) : void
      {
         camFocus = param1;
         useAim = param2;
         camIntenseX = param3;
         camIntenseY = param3;
      }
      
      public function EnterFrame() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(!shakeX)
         {
            shkOffX = 0;
         }
         else
         {
            shkOffX = UT.rand(-shakeX,shakeX);
            shakeX -= 0.2;
            if(shakeX < 0)
            {
               shakeX = 0;
            }
         }
         if(!shakeY)
         {
            shkOffY = 0;
         }
         else
         {
            shkOffY = UT.rand(-shakeY,shakeY);
            shakeY -= 0.2;
            if(shakeY < 0)
            {
               shakeY = 0;
            }
         }
         if(camFocus)
         {
            _loc4_ = !camFocus.dead ? Number(camFocus.x) : Number(camFocus.dead.rdBody.GetDefinition().userData.x);
            _loc5_ = camFocus.dead ? camFocus.dead.rdBody.GetDefinition().userData.y + 50 : Number(camFocus.y);
            if(!useAim)
            {
               _loc2_ = Main.WIDTH * 0.5 - _loc4_;
               _loc3_ = Main.HEIGHT * 0.5 - _loc5_ + 20;
            }
            else
            {
               §§push(Main.WIDTH * 0.5);
               if(false)
               {
                  return;
               }
               _loc2_ = §§pop() - _loc4_ - (game.mouseX - Main.WIDTH * 0.5) * camIntenseX;
               §§push(Main.HEIGHT * 0.5 - _loc5_ - (game.mouseY - Main.HEIGHT * 0.5) * camIntenseY);
               if(false)
               {
                  return false;
               }
               _loc3_ = §§pop() + 20;
            }
            _loc2_ += shkOffX;
            _loc3_ += shkOffY;
            x += (_loc2_ - x) * 0.7;
            y += (_loc3_ - y) * 0.7;
            if(x > 0)
            {
               x = 0;
            }
            if(y > 5)
            {
               y = 5;
            }
            if(x < -wall.width + Main.WIDTH)
            {
               x = -wall.width + Main.WIDTH;
            }
            if(y < -wall.height + Main.HEIGHT - 45)
            {
               §§push(§§findproperty(y));
               if(false)
               {
                  return false;
               }
               §§pop().y = -wall.height + Main.HEIGHT - 45;
            }
         }
         §§push(game);
         if(false)
         {
            return false;
         }
         §§push(§§pop().bg1);
         §§push(Main.WIDTH - game.bg1.width);
         if(false)
         {
            return false;
         }
         §§pop().x = §§pop() * (x / (Main.WIDTH - wall.width));
         game.bg1.y = (Main.HEIGHT - game.bg1.height) * (y / (Main.HEIGHT - wall.height));
         §§push(game.bg2);
         §§push(Main.WIDTH - game.bg2.width);
         §§push(x);
         if(false)
         {
            return;
         }
         §§pop().x = §§pop() * (§§pop() / (Main.WIDTH - wall.width));
         game.bg2.y = (Main.HEIGHT - game.bg2.height) * (y / (Main.HEIGHT - wall.height));
         var _loc1_:uint = 0;
         while(_loc1_ < ctfflags.length)
         {
            if(!ctfflags[_loc1_].unitCaptured)
            {
               game.createParticle(ctfflags[_loc1_].x + UT.rand(-25,25),ctfflags[_loc1_].y - 4,"raise",{"spd":0.7},"fairy","idle",ctfflags[_loc1_].team != 1 ? 5 : 3);
            }
            _loc1_++;
         }
      }
      
      public function §\x1a\x13§() : void
      {
         var _loc1_:Matrix = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(false)
         {
            return false;
         }
         if(refData1)
         {
            refData1.fillRect(new Rectangle(0,0,refData1.width,refData1.height),0);
            if(SD.graphLights)
            {
               _loc1_ = new Matrix();
               _loc1_.translate(-reflectTake1.x,-reflectTake1.y);
               refData1.draw(game.unitCont,_loc1_,null,null,new Rectangle(0,0,reflectTake1.width,reflectTake1.height),false);
               refData1.draw(game.lineCont,_loc1_,null,null,new Rectangle(0,0,reflectTake1.width,reflectTake1.height),false);
               _loc1_ = new Matrix();
               §§push(_loc1_);
               §§push(-x - reflectTake1.x);
               §§push(-y);
               §§push(reflectTake1);
               if(false)
               {
                  return;
               }
               §§pop().translate(§§pop(),§§pop() - §§pop().y);
               §§push(refData1);
               §§push(game.bitscreen);
               §§push(_loc1_);
               §§push(null);
               §§push(null);
               §§push(new Rectangle(0,0,reflectTake1.width,reflectTake1.height));
               §§push(false);
               if(false)
               {
                  throw true;
               }
               §§pop().draw(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
            }
         }
         if(refData2)
         {
            reflectTake2.x += (game.player.x - reflectTake2.width / 2 - reflectTake2.x) * 0.15;
            reflectTake2.y += (game.player.y - reflectTake2.height + 8 - reflectTake2.y) * 0.15;
            reflectRot += 10;
            _loc2_ = game.player.x - 250;
            §§push(game.player.y - 200);
            if(false)
            {
               return;
            }
            _loc3_ = §§pop() + UT.yMoveToRot(reflectRot,10);
            reflectShow2.x += (_loc2_ - reflectShow2.x) * 0.05;
            reflectShow2.y += (_loc3_ - reflectShow2.y) * 0.05;
            reflectCam2.x = reflectShow2.x;
            if(false)
            {
               return false;
            }
            reflectCam2.y = reflectShow2.y;
            refData2.fillRect(new Rectangle(0,0,refData2.width,refData2.height),0);
            if(SD.graphLights)
            {
               _loc1_ = new Matrix();
               _loc1_.translate(-reflectTake2.x,-reflectTake2.y);
               refData2.draw(game.unitCont,_loc1_,null,null,new Rectangle(0,0,reflectTake2.width,reflectTake2.height),false);
               refData2.draw(game.lineCont,_loc1_,null,null,new Rectangle(0,0,reflectTake2.width,reflectTake2.height),false);
               _loc1_ = new Matrix();
               _loc1_.translate(-x - reflectTake2.x,-y - reflectTake2.y);
               §§push(refData2);
               §§push(game.bitscreen);
               §§push(_loc1_);
               if(false)
               {
                  return;
               }
               §§pop().draw(§§pop(),§§pop(),null,null,new Rectangle(0,0,reflectTake2.width,reflectTake2.height),false);
            }
         }
      }
      
      public function destroy() : void
      {
         wall.dispose();
         if(refData1)
         {
            refData1.dispose();
         }
         if(refData2)
         {
            refData2.dispose();
         }
      }
      
      internal function §\x18\x03§() : *
      {
         init();
      }
      
      internal function §\x17\t§() : *
      {
         init();
      }
      
      internal function §\x16\x13§() : *
      {
         init();
      }
      
      internal function §\x16\b§() : *
      {
         init();
      }
      
      internal function §\x15\x1a§() : *
      {
         init();
      }
      
      internal function §\x15\x14§() : *
      {
         init();
      }
      
      internal function §\x15\x0f§() : *
      {
         init();
      }
      
      internal function §\x15\b§() : *
      {
         init();
      }
      
      internal function §\x19\x07§() : *
      {
         init();
      }
      
      internal function §\x19\x03§() : *
      {
         init();
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
   }
}

§§push(§§findproperty(§\x01§));
§§push(DisplayObject);
if(false)
{
   throw true;
}
§§push(§§newclass(§\x01§,MovieClip));
if(false)
{
   return;
}


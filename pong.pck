GDPC                                                                                  res://Ball/Ball.gd.remap�      $       ���Af�X�j&2�P�   res://Ball/Ball.gdc �      T      ���6[�K������$   res://Ball/Ball.tscn            �X%/�S3R}�(�j�   res://Ball/Node2D.gd.remap          &       ��N���ٶψ�c�u0   res://Ball/Node2D.gdc          �      P'Լ��Ӆ{��/=   res://Main.tscn �      f      ,�k�(��b\�|ºd�    res://Player1/Player1.gd.remap  P       *       d���	����h�   res://Player1/Player1.gdc   P      �      u�Xʲ��>���`��   res://Player1/Player1.tscn  �            a0=Q�����9w��J�    res://Player2/Player2.gd.remap  �       *       �#T ��c���(9�   res://Player2/Player2.gdc         �      �\��� ;����`�   res://Player2/Player2.tscn  �      3      f��l9O������f�K   res://default_env.tres  �      �       B����dCB~��gR��   res://project.binary�       �      ~�uV֣T���1v�GDSC         ;   �     ��������τ�   ��¶   ��������Ҷ��   ��������Ҷ��   ����������Ӷ   �����϶�   ����������������¶��   ���Ӷ���   ��������ض��   ��������������϶   �������Ŷ���   ����׶��   ζ��   �����������������϶�   �������ض���   ϶��   �������϶���   �����¶�   �������ζ���   �������϶���   �����޶�   ����Ӷ��   ���������ć������������Ҷ���   ���϶���   ���������Ą������������Ҷ���   �      �                         �         test %s                                                     	      
   !      )      2      :      E      H      T      U      \      o      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $     %     &     '     (   %  )   -  *   4  +   <  ,   D  -   K  .   N  /   O  0   V  1   \  2   ]  3   d  4   k  5   v  6   w  7   x  8     9   �  :   �  ;   3YB�  YY8;�  Y8;�  �  Y;�  YYY0�  PQV�  �%  PQ�  �  �  PQT�  �  ;�  �&  PQ�  �  &P�  �  QV�  �	  �  P�  �  R�  Q�  (V�  �	  �  P�  �  R�  Q�  Y0�
  P�  QV�  �	  T�  �  P�	  T�  R�  T�  R�  T�  Q�  �	  T�  �  P�	  T�  R�  T�  R�  T�  QYY0�  PQV�  &P�  T�  �  T�  QV�  &P�	  T�  �  QV�  �	  T�  �  P�	  T�  Q�  'P�  T�  
�  QV�  &P�	  T�  	�  QV�  �	  T�  �  P�	  T�  QY�  Y0�  PQV�  &P�  T�  �  T�  QV�  &P�	  T�  �  QV�  �	  T�  �  P�	  T�  Q�  'P�  T�  
�  QV�  &P�	  T�  	�  QV�  �	  T�  �  P�	  T�  QYY0�  P�  R�  R�  QV�  &P�  �  QV�  &P�  �  QV�  �  �  P�  Q�  'P�  
�  QV�  &P�  	�  QV�  �  �  P�  Q�  .�  YY0�  P�  QV�  .�  �  YY0�  P�  QV�  �?  P�  �  Q�  �	  T�  �	  T�  �  YYY0�  P�  QV�  �?  P�  �  Q�  �	  T�  �	  T�  �  Y`            [gd_scene load_steps=4 format=2]

[ext_resource path="res://Ball/Ball.gd" type="Script" id=1]
[ext_resource path="res://Ball/Node2D.gd" type="Script" id=2]

[sub_resource type="CircleShape2D" id=1]
radius = 20.0

[node name="Ball" type="RigidBody2D"]
mass = 0.102041
gravity_scale = 0.0
can_sleep = false
linear_damp = 0.0
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
script = ExtResource( 2 )

[connection signal="body_entered" from="." to="CollisionShape2D" method="_on_Ball_body_entered"]
[connection signal="body_shape_entered" from="." to="." method="_on_Ball_body_shape_entered"]
[connection signal="input_event" from="." to="." method="_on_Ball_input_event"]
         GDSC   
         E      ���ӄ�   ����������Ӷ   �����Ŷ�   ��ض   �����϶�   ����������������¶��   ���Ӷ���   ��������   ��ڶ   ����������Ӷ                �                                                       	   &   
   '      -      9      B      C      3YY;�  YY8;�  Y;�  �  P�  R�  QYY0�  PQV�  �  �  PQT�  YY0�  PQV�  ;�  �  P�  R�  R�  Q�  �	  P�  R�  R�  QYY`          [gd_scene load_steps=4 format=2]

[ext_resource path="res://Player1/Player1.tscn" type="PackedScene" id=1]
[ext_resource path="res://Ball/Ball.tscn" type="PackedScene" id=2]
[ext_resource path="res://Player2/Player2.tscn" type="PackedScene" id=3]

[node name="Node" type="Node"]

[node name="Player1" parent="." instance=ExtResource( 1 )]

[node name="Ball" parent="." instance=ExtResource( 2 )]
position = Vector2( 500, 250 )

[node name="Player2" parent="." instance=ExtResource( 3 )]

[connection signal="body_entered" from="Player1" to="Ball" method="_on_Player1_body_entered"]
[connection signal="body_entered" from="Ball" to="Player1" method="_on_Ball_body_entered"]
[connection signal="body_shape_entered" from="Ball" to="Player1" method="_on_Ball_body_shape_entered"]
[connection signal="body_entered" from="Player2" to="Ball" method="_on_Player2_body_entered"]
          GDSC            �      ���ׄ�   ����Ҷ��   ����������Ӷ   ����������¶   �����϶�   ����������������¶��   ���Ӷ���   �������Ӷ���   ��������¶��   �������Ӷ���   ϶��   �������Ŷ���   ����׶��   �������϶���   ����¶��   ����������������Ҷ��   �����޶�   ���������Ҷ�   �������ض���   �     	   ColorRect         player_1_down               player_1_up                           	                                 	      
   0      1      2      3      4      ;      B      K      Q      Z      `      j      t      z      {      �      3YY8;�  Y;�  Y;�  YYY0�  PQV�  �  �  PQT�  �  �  P�  P�  Q<�  QT�	  PQT�
  YYYYY0�  P�  QV�  ;�  �  PQ�  &�  T�  P�  QV�  �  T�
  �  �  &�  T�  P�  QV�  �  T�
  �  �  &�  T�  PQ�  V�  �  �  T�  PQ�  �  �  �  �  �  �  �  T�
  �5  P�  T�
  R�  R�  T�
  �  QY`[gd_scene load_steps=3 format=2]

[ext_resource path="res://Player1/Player1.gd" type="Script" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 10, 75.5 )

[node name="Player1" type="Area2D"]
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="ColorRect" type="ColorRect" parent="."]
margin_right = 20.0
margin_bottom = 150.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 10, 75 )
shape = SubResource( 1 )
           GDSC            �      ���ׄ�   ����Ҷ��   ����������Ӷ   ����������¶   �����϶�   ����������������¶��   ���Ӷ���   �������Ӷ���   ��������¶��   �������Ӷ���   ϶��   �������Ŷ���   ����׶��   �������϶���   ����¶��   ����������������Ҷ��   �����޶�   ���������Ҷ�   �������ض���   �     	   ColorRect         player_2_down               player_2_up                           	                                 	      
   0      1      2      3      4      ;      B      K      Q      Z      `      j      t      z      {      �      3YY8;�  Y;�  Y;�  YYY0�  PQV�  �  �  PQT�  �  �  P�  P�  Q<�  QT�	  PQT�
  YYYYY0�  P�  QV�  ;�  �  PQ�  &�  T�  P�  QV�  �  T�
  �  �  &�  T�  P�  QV�  �  T�
  �  �  &�  T�  PQ�  V�  �  �  T�  PQ�  �  �  �  �  �  �  �  T�
  �5  P�  T�
  R�  R�  T�
  �  QY`[gd_scene load_steps=3 format=2]

[ext_resource path="res://Player2/Player2.gd" type="Script" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 10, 75.5 )

[node name="Player2" type="Area2D"]
position = Vector2( 1004, 0 )
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="ColorRect" type="ColorRect" parent="."]
margin_right = 20.0
margin_bottom = 150.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 10, 75 )
shape = SubResource( 1 )
             [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 1
background_sky = SubResource( 1 )
background_energy = 0.0
ambient_light_energy = 0.0
ambient_light_sky_contribution = 0.0
     [remap]

path="res://Ball/Ball.gdc"
            [remap]

path="res://Ball/Node2D.gdc"
          [remap]

path="res://Player1/Player1.gdc"
      [remap]

path="res://Player2/Player2.gdc"
      ECFG      application/config/name         tetris     application/run/main_scene         res://Main.tscn    display/window/stretch/mode         2d     display/window/stretch/aspect         keep   input/player_1_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      W      unicode           echo          script         input/player_1_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      S      unicode           echo          script         input/player_2_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode           unicode           echo          script         input/player_2_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode           unicode           echo          script      )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_clear_color                    �?)   rendering/environment/default_environment          res://default_env.tres   
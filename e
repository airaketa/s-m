warning: LF will be replaced by CRLF in .import/Run_01.png-c1150163c0fedc622af9026cf673a85f.md5.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in .import/Run_02.png-9a705489142152b177e7ba938d5b5f3c.md5.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in .import/Run_03.png-6c0195f6c34f6440c4a045dba8979d78.md5.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in default_env.tres.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in player/Run_01.png.import.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in player/Run_02.png.import.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in player/Run_03.png.import.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in World.tscn.
The file will have its original line endings in your working directory.
[1mdiff --git a/Infinite_background.gd b/Infinite_background.gd[m
[1mdeleted file mode 100644[m
[1mindex 830a679..0000000[m
[1m--- a/Infinite_background.gd[m
[1m+++ /dev/null[m
[36m@@ -1,31 +0,0 @@[m
[31m-extends Node[m
[31m-[m
[31m-var screen_width = ProjectSettings.get_setting("display/window/size/width")[m
[31m-var move_speed = [150, 100, 50][m
[31m-var backgrounds = [][m
[31m-var end_coords = [][m
[31m-[m
[31m-# Called when the node enters the scene tree for the first time.[m
[31m-func _ready():[m
[31m-	for i in range(3):[m
[31m-		backgrounds.append([])[m
[31m-		for j in range(2):[m
[31m-			backgrounds[i].append(get_node("dynamic_background_" + str(i) + str(j)))[m
[31m-		end_coords.append(-screen_width + backgrounds[i][0].get_position().x)[m
[31m-	print(backgrounds[0][0].get_texture().get_size().x)[m
[31m-	print(backgrounds[0][0].get_position().x)[m
[31m-	print(screen_width)[m
[31m-	[m
[31m-[m
[31m-# Called every frame. 'delta' is the elapsed time since the previous frame.[m
[31m-func _process(delta):[m
[31m-	for i in range(len(backgrounds)):[m
[31m-		for j in range(2):[m
[31m-			var position = backgrounds[i][j].get_position()[m
[31m-			position.x -= move_speed[i] * delta[m
[31m-			[m
[31m-			var size = backgrounds[i][j].get_texture().get_size().x[m
[31m-			if (position.x <= -screen_width/2):[m
[31m-				position.x = screen_width * 1.5[m
[31m-			[m
[31m-			backgrounds[i][j].set_position(position)[m
\ No newline at end of file[m
[1mdiff --git a/World.tscn b/World.tscn[m
[1mindex 35e7562..98c40a5 100644[m
[1m--- a/World.tscn[m
[1m+++ b/World.tscn[m
[36m@@ -1,70 +1,47 @@[m
[31m-[gd_scene load_steps=15 format=2][m
[32m+[m[32m[gd_scene load_steps=6 format=2][m
 [m
[31m-[ext_resource path="res://Infinite_background.gd" type="Script" id=1][m
[31m-[ext_resource path="res://background/game_background_1/layers/sky.png" type="Texture" id=2][m
[31m-[ext_resource path="res://background/game_background_1/layers/rocks_1.png" type="Texture" id=3][m
[31m-[ext_resource path="res://background/game_background_1/layers/clouds_1.png" type="Texture" id=4][m
[31m-[ext_resource path="res://background/game_background_1/layers/clouds_2.png" type="Texture" id=5][m
[31m-[ext_resource path="res://player/Run_01.png" type="Texture" id=6][m
[31m-[ext_resource path="res://player/Run_02.png" type="Texture" id=7][m
[31m-[ext_resource path="res://player/Run_03.png" type="Texture" id=8][m
[31m-[ext_resource path="res://player/Run_04.png" type="Texture" id=9][m
[31m-[ext_resource path="res://player/Run_05.png" type="Texture" id=10][m
[31m-[ext_resource path="res://player/Run_06.png" type="Texture" id=11][m
[31m-[ext_resource path="res://player/Run_07.png" type="Texture" id=12][m
[31m-[ext_resource path="res://player/Run_08.png" type="Texture" id=13][m
[31m-[m
[31m-[sub_resource type="SpriteFrames" id=1][m
[31m-animations = [ {[m
[31m-"frames": [ ExtResource( 6 ), ExtResource( 7 ), ExtResource( 8 ), ExtResource( 9 ), ExtResource( 10 ), ExtResource( 11 ), ExtResource( 12 ), ExtResource( 13 ) ],[m
[31m-"loop": true,[m
[31m-"name": "walk",[m
[31m-"speed": 10.0[m
[31m-} ][m
[32m+[m[32m[ext_resource path="res://background/background/sky.png" type="Texture" id=1][m
[32m+[m[32m[ext_resource path="res://background/background/rocks_1.png" type="Texture" id=2][m
[32m+[m[32m[ext_resource path="res://background/background/clouds_2.png" type="Texture" id=3][m
[32m+[m[32m[ext_resource path="res://background/background/clouds_1.png" type="Texture" id=4][m
[32m+[m[32m[ext_resource path="res://Scene.tscn" type="PackedScene" id=5][m
 [m
 [node name="World" type="Node2D"][m
[31m-script = ExtResource( 1 )[m
 [m
[31m-[node name="static_background" type="Sprite" parent="."][m
[31m-position = Vector2( 512.015, 179.332 )[m
[31m-scale = Vector2( 0.534945, 0.331011 )[m
[31m-texture = ExtResource( 2 )[m
[32m+[m[32m[node name="ParallaxBackground" type="ParallaxBackground" parent="."][m
 [m
[31m-[node name="dynamic_warning: LF will be replaced by CRLF in project.godot.
The file will have its original line endings in your working directory.
background_00" type="Sprite" parent="."][m
[31m-position = Vector2( 512, 116 )[m
[31m-scale = Vector2( 0.533328, 0.44923 )[m
[31m-texture = ExtResource( 3 )[m
[32m+[m[32m[node name="texture" type="TextureRect" parent="ParallaxBackground"][m
[32m+[m[32manchor_right = 1.0[m
[32m+[m[32manchor_bottom = 1.0[m
[32m+[m[32mtexture = ExtResource( 1 )[m
 [m
[31m-[node name="dynamic_background_01" type="Sprite" parent="."][m
[31m-position = Vector2( 1536, 116 )[m
[31m-scale = Vector2( 0.535601, 0.44923 )[m
[31m-texture = ExtResource( 3 )[m
[32m+[m[32m[node name="bg-1" type="ParallaxLayer" parent="ParallaxBackground"][m
[32m+[m[32mmotion_scale = Vector2( 0.5, 1 )[m
[32m+[m[32mmotion_mirroring = Vector2( 1280, 0 )[m
 [m
[31m-[node name="dynamic_background_10" type="Sprite" parent="."][m
[31m-position = Vector2( 514.166, 165 )[m
[31m-scale = Vector2( 0.531043, 0.269668 )[m
[31m-texture = ExtResource( 4 )[m
[32m+[m[32m[node name="texture" type="TextureRect" parent="ParallaxBackground/bg-1"][m
[32m+[m[32manchor_right = 1.0[m
[32m+[m[32manchor_bottom = 1.0[m
[32m+[m[32mmargin_right = 1920.0[m
[32m+[m[32mmargin_bottom = 1080.0[m
[32m+[m[32mtexture = ExtResource( 2 )[m
 [m
[31m-[node name="dynamic_background_11" type="Sprite" parent="."][m
[31m-position = Vector2( 1534, 165 )[m
[31m-scale = Vector2( 0.531043, 0.269668 )[m
[31m-texture = ExtResource( 4 )[m
[32m+[m[32m[node name="bg-2" type="ParallaxLayer" parent="ParallaxBackground"][m
[32m+[m[32mmotion_scale = Vector2( 0.7, 1 )[m
[32m+[m[32mmotion_mirroring = Vector2( 1280, 0 )[m
 [m
[31m-[node name="dynamic_background_20" type="Sprite" parent="."][m
[31m-position = Vector2( 642.121, 188.458 )[m
[31m-scale = Vector2( 0.268787, 0.268787 )[m
[31m-texture = ExtResource( 5 )[m
[32m+[m[32m[node name="texture" type="TextureRect" parent="ParallaxBackground/bg-2"][m
[32m+[m[32mmargin_right = 1920.0[m
[32m+[m[32mmargin_bottom = 1080.0[m
[32m+[m[32mrect_scale = Vector2( 0.5, 0.5 )[m
[32m+[m[32mtexture = ExtResource( 3 )[m
 [m
[31m-[node name="dynamic_background_21" type="Sprite" parent="."][m
[31m-position = Vector2( 1684.12, 190.85 )[m
[31m-scale = Vector2( 0.268787, 0.268787 )[m
[31m-texture = ExtResource( 5 )[m
[32m+[m[32m[node name="bg-3" type="ParallaxLayer" parent="ParallaxBackground"][m
[32m+[m[32mmotion_mirroring = Vector2( 1280, 0 )[m
 [m
[31m-[node name="KinematicBody2D" type="KinematicBody2D" parent="."][m
[32m+[m[32m[node name="texture" type="TextureRect" parent="ParallaxBackground/bg-3"][m
[32m+[m[32mmargin_right = 1920.0[m
[32m+[m[32mmargin_bottom = 1080.0[m
[32m+[m[32mtexture = ExtResource( 4 )[m
 [m
[31m-[node name="AnimatedSprite" type="Animate
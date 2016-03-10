#define Draw_Title

switch (T_Mode)
{
   case(0): Title_Meun_Top(); break;//绘制等待按下X
   case(1): Title_Meun();break;//标题菜单
   case(2): StoryMode_Meun() ;break;//进入选择菜单
   case(3): Options_Meun(); break;
   
}


#define Title_Init
///标题要用的的函数
T_Mode=0
//标题部件的初始化
Title_Meun_Init()
StoryMode_Meun_Init()
Options_Meun_Init()
Title_Draw_BG()
Title_BGM_Init()
T_BGM=false

#define Title_Draw_BG
///黑底 两个园 一个blackSong
//黄金比例位置
var _Y, van, fuck;

van = (0.12450 / 4) * (sin(current_time / 450));
_Y = (room_height * (1 - 0.618));
fuck = (current_time / 450) * 6;
//绘制刷新一个黑色的背景
draw_set_alpha(1);
draw_set_colour(c_black);
draw_rectangle(0, 0, room_width, room_height, 0);

//圆环
draw_sprite_ext(sprO, 0, room_width / 2, _Y, 1.5 + van, 1.5 + van, -fuck, c_white, 10);
draw_sprite_ext(sprO, 0, room_width / 2, _Y, 1.3 + van, 1.3 + van, fuck * 2, c_white, 10);

//black song 两个单词
draw_set_alpha(0.9 / 2);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(global.Font_En_Gt_128);
draw_set_colour(c_white);
draw_text(room_width / 2, _Y, "Black Song");



#define Title_Draw_Butter
if argument0//选中绘制白底 写黑字
{
var a,b;

draw_set_alpha(0.9 * (0.45 + 0.45 * (sin(current_time / 450) * 1)));
draw_set_colour(c_white)
draw_text(argument1, argument2, argument3)
}
else
{   draw_set_alpha(0.45)
draw_set_colour(c_white)
draw_text_transformed(argument1, argument2, argument3,1,1,0)}


#define Title_BGM_Init
var path;
path = "MaizeMusic.dll"
mm_init(path)
mp3 = mm_music_load("Title.mp3",false)
data[1024] = 0


//设置下音量
var v;
v = mm_get_volume(mp3)
v = global.Enable_Audio/100
v = min(1,v)
mm_set_volume(mp3,v)

#define Title_BGM_Free
mm_free()

#define Title_BGM_Loop
var New,End;

New=mm_get_position(mp3)
End=mm_get_length(mp3)

if New=End
mm_play(mp3)
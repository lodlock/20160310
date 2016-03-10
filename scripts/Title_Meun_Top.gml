#define Title_Meun_Top
///等待按下X
var _Y, _W, _H;
_Y = (room_height * (1 - 0.618));
_H = room_width / 2;
_W = (room_height) * 0.68 + _Y * (1 - 0.618) - 48 //最中间的绘制位置
//绘制背景
Title_Draw_BG()
//按下“X”开始游戏
draw_set_colour(c_white);
draw_set_font(Font_En_Gt_48);
draw_set_alpha(0.9 * (0.45 + 0.45 * (sin(current_time / 450) * 1)));
draw_text(room_width / 2, (room_height) * 0.68 + _Y * (1 - 0.618), "Press 'X' To Start")

//换到菜单页
if keyboard_check_pressed(ord("X")) {
T_Mode = 1;
keyboard_clear(ord("X"))
}

if 
T_BGM=false
{ mm_play(mp3)
T_BGM=true}//放bgm


#define Title_Meun_Top_Init

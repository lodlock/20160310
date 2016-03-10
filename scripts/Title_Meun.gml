#define Title_Meun
//黄金比例位置
Title_Draw_BG();
//临时函数
var _Y, _H, _W;
_Y = (room_height * (1 - 0.618));
_H = room_width / 2 _W = (room_height) * 0.68 + _Y * (1 - 0.618) - 48 //最中间的绘制位置
//绘制按钮
draw_set_font(Font_En_Gt_48);
draw_set_colour(c_white);
var i;
for (i = 0; i < TMSN; i += 1) {
Title_Draw_Butter(TMS == i, room_width / 2, (room_height) * 0.68 + _Y * (1 - 0.618)+(i-1)*40, ds_list_find_value(TML,i))
};
//选择转移
if keyboard_check_pressed(vk_up) {
TMS--
}
if keyboard_check_pressed(vk_down) {
TMS++
}
if TMS > TMSN - 1 {
TMS = 0
}
if TMS < 0 {
TMS = TMSN - 1
}
//选择确认
if keyboard_check_pressed(ord("X")) {
    switch (TMS) {
        case(0):T_Mode = 2;break;
        case(2):game_end();break;
}
keyboard_clear(ord("X"))
}

#define Title_Meun_Init


//创建菜单的列表
TML=ds_list_create();
ds_list_add(TML,"StoryMode")
ds_list_add(TML,"Options")
ds_list_add(TML,"Eixt")



//记录目前是第几个选项
TMS=0;
//选项的数量
TMSN=ds_list_size(TML)
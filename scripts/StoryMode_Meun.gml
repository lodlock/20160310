#define StoryMode_Meun
var A,B,Vs;
A=x
B=(room_height/2)*1.618
Vs=SMSN-1

StoryMode_BG()
StoryMode_Meun_Step(SMS,SMSN-1,2,A,B,SML)
//StoryMode_Meun_Step选项确认在最下面
SMS=SM_1


//选项确认
if keyboard_check_pressed(ord("X"))
{switch (SMS)
{
    case (Vs): T_Mode=1 StoryMode_Meun_Init() ; break;
    case (0):mm_free(mp3) room_goto_next();break;
}
 keyboard_clear(ord("X"))}


#define StoryMode_Meun_Init
//空缓存数字
SM_1=0
SM_2=0
SM_3=0

//创建菜单的列表
SML=ds_list_create();
ds_list_add(SML,"New Game")
ds_list_add(SML,"Clanne")

//读取列表对应位置 的数量
ds_list_find_value(SML,0)
SMS=0//预留来给确定选项位置的
//读取的数量
SMSN=ds_list_size(SML)

#define StoryMode_Meun_Step
//StoryMode_Meun_Step(预留来给确定选项位置的,这个系列的数量,菜单显示的数量,X,y,菜单是啥系列的);

var Y1,Y2;
Y1=(room_height*(1-0.618))/2

Y2=(room_height/2)*1.618

var _VarX,_VarY,_VarZ,_X,_Y;
_VarX=argument0
_VarY=argument1
_VarZ=argument2-1
_X=argument3
_Y=argument4
argument0=SM_1
  var _Y;
_Y = (room_height * (1 - 0.618));
var _H;
_H=room_width / 2
var _W;
_W=(room_height) * 0.68 + _Y * (1 - 0.618)-48

if keyboard_check_pressed(vk_up)
{SM_1-=1
}
if keyboard_check_pressed(vk_down)
{SM_1+=1
}
if SM_1<0 SM_1=_VarY
if SM_1 >_VarY SM_1=0
if keyboard_check_pressed(vk_down)
{SM_2++}
if SM_2>_VarZ { SM_3++ SM_2=_VarZ} 
if keyboard_check_pressed(vk_up)
{SM_2--}
if SM_2<0 { SM_3-- SM_2=0} 
if SM_3<0 {SM_3=_VarY-_VarZ SM_2=_VarZ} 
if SM_3>_VarY-_VarZ {SM_3=0 SM_2=0}
draw_set_font(Font_En_Gt_48)


var i;
for (i=0; i<_VarZ+1; i+=1)
{
 Title_Draw_Butter(SM_1==i+SM_3,_X,_Y+i*64,ds_list_find_value(argument5,i+SM_3))
};






#define StoryMode_BG
var _Y, van, _H, A, B, C, D, fuck;
//绘制刷新一个黑色的背景
draw_set_alpha(1);
_H = room_height / sprite_get_height(sprO);
fuck = (current_time / 450) * 6;
draw_set_colour(c_black);
draw_rectangle(0, 0, room_width, room_height, 0);
van = (0.12450 / 4) * (sin(current_time / 450)) + 0.45;
_Y = (room_height * 0.5) 
draw_sprite_ext(sprO, 0, room_width / 2, _Y, 1.2 + van, 1.2 + van, -fuck, c_white, van);

draw_sprite_ext(sprO, 0, room_width / 2, _Y, 1 + van, 1 + van, fuck * 2, c_white, van);

A = (room_height * (1 - 0.618)) / 2;
B = (room_height / 2) * 1.618;
draw_set_alpha(0.45 / 9);
draw_set_colour(c_white);
draw_rectangle(0, A, room_width, B, 0);
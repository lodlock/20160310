#define Spr_GameSet
First_Open_Game()
Land_Set()
Default_Set()


#define First_Open_Game
///玩家第一次打开游戏讲 要用的函数初始

//假如玩家第一次打开游戏
ini_open("Set.ini");
global.First_Game = ini_read_real("Set", "First_Game", false);

//创建音效和音量
ini_write_real("Set", "Audio", 40) ini_write_real("Set", "Music", 50)


//然后结束第一次进入游戏的处死话（由于游戏测试 每次开头都刷新）
if global.First_Game = false {
//global.First_Game= true
ini_write_real("Seet", "First_Game",true);
}

ini_close();

#define Land_Set
///读取保存在ini的游戏设定
ini_open("Set.ini");

//进行读取
//音效大小
global.Enable_Audio = ini_read_real("Set", "Audio", false);





//音量大小
global.Enable_Music = ini_read_real("Set", "Music", false);

ini_close();

#define Default_Set
///游戏默认设定
//不出现奇怪比例
texture_set_interpolation(true);
//载入默认字体
Font_Add()

//临时放在的各种初始函数
Title_Init()

#define Font_Add
///载入游戏字体；
globalvar Font_En_Gt_32;
Font_En_Gt_32 = font_add("GT_EN.ttf", 32, 0, 0, 0, 65535)

globalvar Font_En_Gt_128;
Font_En_Gt_128 = font_add("GT_EN.ttf", 128, 0, 0, 0, 65535)

globalvar Font_En_Gt_64;
Font_En_Gt_64 = font_add("GT_EN.ttf", 64, 0, 0, 0, 65535)

globalvar Font_En_Gt_48;
Font_En_Gt_48 = font_add("GT_EN.ttf", 48, 0, 0, 0, 65535)

globalvar Font_En_Gt_96;
Font_En_Gt_96 = font_add("GT_EN.ttf", 96, 0, 0, 0, 65535)

globalvar Font_En_Gt_40;
Font_En_Gt_40 = font_add("GT_EN.ttf", 40, 0, 0, 0, 65535)
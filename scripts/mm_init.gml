var path;
path = "MaizeMusic.dll"
global.__mm_dll_path = path
global.__mm_dll_init = external_define(path,"mmInit",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_free = external_define(path,"mmFree",dll_stdcall,ty_real,0)

global.__mm_dll_load_music = external_define(path,"mmLoadMusic",dll_stdcall,ty_real,2,ty_string,ty_real)
global.__mm_dll_load_music_ext = external_define(path,"mmLoadMusicExt",dll_stdcall,ty_real,4,ty_string,ty_real,ty_real,ty_real)
global.__mm_dll_load_music_mem = external_define(path,"mmLoadMusicMem",dll_stdcall,ty_real,2,ty_string,ty_real)
global.__mm_dll_load_music_mem_ext = external_define(path,"mmLoadMusicMemExt",dll_stdcall,ty_real,4,ty_string,ty_real,ty_real,ty_real)

global.__mm_dll_load_url = external_define(path,"mmLoadMusicUrl",dll_stdcall,ty_real,1,ty_string)

global.__mm_dll_free_music = external_define(path,"mmFreeMusic",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_play = external_define(path,"mmMusicPlay",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_pause = external_define(path,"mmMusicPause",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_resume = external_define(path,"mmMusicResume",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_stop = external_define(path,"mmMusicStop",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_get_length = external_define(path,"mmMusicGetLength",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_get_position = external_define(path,"mmMusicGetPosition",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_set_position = external_define(path,"mmMusicSetPosition",dll_stdcall,ty_real,2,ty_real,ty_real)
global.__mm_dll_get_volume = external_define(path,"mmMusicGetVolume",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_set_volume = external_define(path,"mmMusicSetVolume",dll_stdcall,ty_real,2,ty_real,ty_real)
global.__mm_dll_get_pan = external_define(path,"mmMusicGetPan",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_set_pan = external_define(path,"mmMusicSetPan",dll_stdcall,ty_real,2,ty_real,ty_real)
global.__mm_dll_get_speed = external_define(path,"mmMusicGetSpeed",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_set_speed = external_define(path,"mmMusicSetSpeed",dll_stdcall,ty_real,2,ty_real,ty_real)
global.__mm_dll_get_tempo = external_define(path,"mmMusicGetTempo",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_set_tempo = external_define(path,"mmMusicSetTempo",dll_stdcall,ty_real,2,ty_real,ty_real)
global.__mm_dll_get_pitch = external_define(path,"mmMusicGetPitch",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_set_pitch = external_define(path,"mmMusicSetPitch",dll_stdcall,ty_real,2,ty_real,ty_real)
global.__mm_dll_get_global_volume = external_define(path,"mmMusicGetGlobalVolume",dll_stdcall,ty_real,0)
global.__mm_dll_set_global_volume = external_define(path,"mmMusicSetGlobalVolume",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_slide_volume = external_define(path,"mmMusicSlideVolume",dll_stdcall,ty_real,3,ty_real,ty_real,ty_real)
global.__mm_dll_get_level_left = external_define(path,"mmMusicGetLeftLevel",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_get_level_right = external_define(path,"mmMusciGetRightLevel",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_set_loop = external_define(path,"mmMusicSetLoopSection",dll_stdcall,ty_real,3,ty_real,ty_real,ty_real)
global.__mm_dll_remove_loop = external_define(path,"mmMusicRemoveLoopSection",dll_stdcall,ty_real,1,ty_real)
global.__mm_dll_get_data = external_define(path,"mmMusicGetData",dll_stdcall,ty_real,2,ty_real,ty_real)
global.__mm_dll_read_data_mes = external_define(path,"mmMusicReadDataPos",dll_stdcall,ty_real,1,ty_real)
//global.__mm_dll_test = external_define(path,"mmTest",dll_stdcall,ty_real,0)
return external_call(global.__mm_dll_init,window_handle())

/// @description Insert description here
move = 0;
settingIndex = 0;
character = false;
menu = true;
instructions = false;

menu_options = ["Start Game", "Characters", "Exit", "Setting: ", "Instructions"];
global.fullscreen = false;
global.label = false;


c_sprites[0] = luke_large;
c_sprites[1] = sam_large;
c_sprites[2] = alistair_large;
c_sprites[3] = monica_large;

c_text[0] = "Dr. Hahn is not new to the E.R., he has been at the UCLA Medical Center for more than ten years and has no intentions of leaving any time soon. He is admired and respected by his peers not only because of his seniority, but because he is an exceedingly competent physician and has seen just about everything.";
c_text[1] = "Dr. Martino is the only surgeon on the team and the only surgeon at the hospital skilled enough to work a shift in the O.R. without supervision. Her ability to work under pressure is what distinguishes her from her peers, but her ability to excel outside the hospital is what makes her somewhat of a celebrity among the staff. Aside from medical school, Dr. Martino has studied quite a bit on science and technology, with an interest in nuclear threats and civil defense, an area that some staffers believe to be morbid and irrelevant.";
c_text[2] = "Alistair is 26 years old and grew up in Vermont. He has just recently started working at the UCLA Medical Center, a move that has proven to be difficult for the young nurse. He is still getting to know his peers and co-workers and is slowly adjusting to the warm weather, but often thinks about his quiet and familiar home in the North East.";
c_text[3] = "Monica is the most social of staff at the hospital. She started working at the UCLA Medical Center a few years ago and can gossip better than she can treat a patient. Don’t be confused however, Monica does not only indulge in small talk within the hospital, she is also especially politically informed and well read on all things regarding debate.";

audio_stop_all();
global.bgm = audio_play_sound(Project_Music,100,true);

global.total_patients_saved = 0;
global.total_patients_lost = 0;

credits_text = "Credits:\nKatherine Bryant\nAdam Gincel\nWill Grzybowski\nSam Martino\nMax Rizzuto\nDaniel Stuart\nRobyn Verrill\n------\nNicholas O'Brien\nAlex Wellerstein\n";
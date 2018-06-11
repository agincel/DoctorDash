/// @description Insert description here
move = 0;
global.fullscreen=false;
character = false;
menu = true;
instructions = false;

menu_options = ["Start Game", "Characters", "Exit", "Fullscreen", "Instructions"];

c_sprites[0] = luke_large;
c_sprites[1] = sam_large;
c_sprites[2] = alistair_large;
c_sprites[3] = monica_large;

c_text[0] = "Luke isn’t new to the ER. He has been at UCLA Medical Center for over ten years and is fairly confident that he has seen just about every injury and illness you could imagine. He is incredibly hard working and loves being a doctor. His only weakness is that while in medical school he worked as a barista in Starbucks to help with tuition...and now he can’t go a day without at least a cup of their coffee in his system.";
c_text[1] = "Sam is the only surgeon on the team and is 35 years old. She has a fairly bright personality that only sours at the end of a graveyard shift, especially when she runs out of energy drinks. She’s also married, but it’s so easy to forget when you see her at the hospital more than at her house. Aside from medical school Sam studied quite a bit about science and technology, specifically nuclear weapons and civil defense. Her vast knowledge of things is astounding, but sometimes unsettles the rest of the staff, especially her dark sense of humor.";
c_text[2] ="Alistair is 26 years old and grew up in Vermont. He has just recently moved to the area and has also recently started working at UCLA Medical Center. He is a little bit of an introvert who is still trying to get used to the West Coast and warm weather. Alistair is known for having a sweet tooth and stops at the bakery every morning to grab a crumb-cake for himself and donuts for the rest of the staff. However, his sweet tooth doesn’t carry over into a soft spot for people. He is usually skeptical of everyone around him, but his analytical mindset greatly helps him in being a nurse.";
c_text[3] = "Monica is the most social of the group at the hospital. She started working at UCLA Medical Center a few years ago and can gossip better than she can treat a patient. She has a fun personality that is kept alive with her cup of black coffee and Boston Creme donut every morning. Although a wonderful and vibrant 45 year old, she doesn’t always handle stress very well. She usually leaves high stress situations for Alistair and the rest of the staff.";

audio_play_sound(Project_Music,100,true);

global.total_patients_saved = 0;
global.total_patients_lost = 0;

credits_text = "Credits:\nDaniel Stuart\nKatherine Bryant\nSam Martino\nWill Grzybowski\nAdam Gincel\n------\nAlex Wellerstein\nNicholas O'Brien";
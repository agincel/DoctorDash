drag_object = noone;
xrelative = 0;
yrelative = 0;

// Create a sort depth to start with
start_depth = 0;
with (drag_o)
{
    depth = other.start_depth;
    other.start_depth++;
}
//pause menu shit

pause = false;
move = 0;
screenshot = -1;

//end screens and wave behavior
end_screen_1 = false;
end_screen_2 = false;
end_screen3 = false;
end_screen_show[1] = false;
end_screen_show[2] = false;
end_screen_show[3] = false;


text_jenn = "Jenn is the 25 year old lovable best friend of the hospital. She gives lollipops to kids who break their arms and console the loved ones of incredibly sick patients. Jenn absolutely loves her job and almost never comes to work without a smile on her face. This might also have to do with her crush on a certain broody nurse that works in the ER, but how she feels never affects how hard she works in the hospital. She is also incredibly smart and can give you information on anything from why the sky is blue to how to make a perfect batch of chocolate chip cookies.";
text_katie = "Katie is the 37 year old lifesaver. She is the surgeon that answers phone calls at all hours of the night to come in and help patients. Of course, for her being up until three in the morning is normal as long as she has her sketchpad and a little inspiration. With all of these night calls she is not someone to wake at early hours of the morning. Some sweets may tempt her to get up.";
text_will = "Will is a temporary doctor in the hospital and is 28 years old. He was in fairly close range to the blast and his legs were crushed, leaving doctors at UCLA to have to amputate them. After a little bit of recovery time he decided to join the team that helped save his life. Will is of enormous help as days go by and more and more patients are brought into the hospital. He has a big heart, especially with children and anyone incredibly sick or injured. He is also the jokester of the staff and attempts to keep the spirits of the other doctors and nurses up.";

will = false;
katie = true;
next = true;
nexto = false;

cutscene_frame = 0;
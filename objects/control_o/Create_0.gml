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

alarmEnd = false;

end_screen_show[1] = false;
end_screen_show[2] = false;
end_screen_show[3] = false;


text_jenn = "Jenn is a young and ambitious nurse and a dear friend of the hospital. She hasn’t worked at the hospital for long, but has made a great impression on the staff and patients alike. Before the events of today, Jenn’s friendly and familiar smile charmed all who passed through the hospital’s doors. Known as the nurse with lollipops and a skip in her step, Jenn rushed to the hospital after the blast. Upon her arrival, she was greeted by an overwhelmed staff and dozens of wounded survivors. It is safe to say her smile did not endure.";
text_katie = "Dr. Chadwick is the face of experience and devotion at her hospital and is second to none among her colleagues. Dr. Chadwick is the kind surgeon that answers the phone at any hour to come and help patients. Dr.Chadwick lives by a code, to help anyone who needs treatment. She found herself working at the UCLA Medical Center after the blast to aid the understaffed hospital and to help treat the wounded hoards.";
text_will = "Dr. Slotin made his way to the hospital on a stretcher after a roof collapsed on him following the blast. Now confined to a wheelchair at the loss of his legs and managing his own worsening condition, Dr. Slotin has recruited himself to aid the overburdened UCLA staff in treating those who cannot help themselves. Afterall, he cannot just sit idly by while there are scores of people worse off than him.";

will = false;
katie = true;
next = true;
nexto = false;

cutscene_frame = 0;
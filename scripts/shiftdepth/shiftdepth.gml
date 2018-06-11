{
    var top_object = argument0;
    var object_type = argument1;

    if (instance_exists(object_type))
    {
        if (top_object.depth == -y)
            exit;

        top_object.depth = -y;
       /* with(object_type)
        {
            if (id == top_object || depth == 2 || depth == 3 )
                continue;
            depth=-y;
        }*/
    }
}

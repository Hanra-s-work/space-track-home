/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_story_seperator.js
*/

function add_an_image(ID,
    img_path = "../../img/assets/icon_301_302.png",
    img_class = "image_seperator",
    description = "Space Track logo(a white rocket on an orange background)") {
    var seperator = "";
    seperator += "<img src=\"";
    seperator += img_path;
    seperator += "\" class=\"" + img_class + "\"";
    seperator += "alt = \"" + description + "\"";
    seperator += "aria-label=\"" + description + "\"";
    seperator += "/> "
    document.getElementById(ID).innerHTML += seperator;
}

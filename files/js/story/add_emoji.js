/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_emoji.js
*/

function add_emoji(ID, emoji = "", description = "an emoji", emoji_class = "emoji_b_n_w", colour = "") {
    var content = "<span "
    content += "class=\"" + emoji_class + "\"";
    content += " alt=\"" + description + "\"";
    content += " aria-label=\"" + description + "\"";
    if (colour != "") {
        content += " style=\"color:" + colour + ";\"";
    }
    content += ">" + emoji + "</span>";
    document.getElementById(ID).innerHTML += content;
}


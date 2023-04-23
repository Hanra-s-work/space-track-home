/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_contributor.js
*/

function add_contributor(ID, name, social_link, social_name, more_info = "") {
    var contributor = "";
    contributor += "<div class='contributor'>";
    contributor += name + " : ";
    contributor += "<a href = '" + social_link + "' target = '_blank' class='social_link'>";
    contributor += social_name;
    if (more_info != "") {
        contributor += " - " + more_info;
    }
    contributor += "</a>";
    contributor += "</div>";
    document.getElementById(ID).innerHTML += contributor;
}

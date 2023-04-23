/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_inform.js
*/

function add_inform(ID) {
    var message = "";
    message += "This Website uses only one cookie to track the theme you are using.";
    message += '<button class=" inform_button" onclick="clear_all_cookies()" aria-label="Clear this websites cookies.">';
    message += "Clear my cookies!";
    message += "</button>";
    document.getElementById(ID).innerHTML += message;
}

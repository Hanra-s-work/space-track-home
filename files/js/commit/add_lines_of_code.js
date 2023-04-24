/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_lines_of_code.js
*/

function add_lines_of_code(ID, username = "Hanra-s-work", repository = "space-track", branch = "main") {
    var lines_of_code = "";
    lines_of_code += `<div class='lines_of_code' aria-label='The lines of code in ${repository} from ${username}'>`;
    lines_of_code += `<img alt="Lines of code" src="https://img.shields.io/tokei/lines/github.com/${username}/${repository}?branch=${branch}&logo=github&style=flat-square">`;
    lines_of_code += "</div>";
    document.getElementById(ID).innerHTML += lines_of_code;
}

/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_top_language.js
*/

function add_top_language(ID, user_name = "Hanra-s-work", repository = "space-track") {
    var license = "";
    var msg = `The most used language in ${repository}.`;
    license += `<div class='license' aria-label="${msg}">`;
    license += `<img title="${msg}" alt="${msg}" aria-label="${msg}" src="https://img.shields.io/github/languages/top/${user_name}/${repository}?logo=Github&style=flat-square"/>`;
    license += "</div>";
    document.getElementById(ID).innerHTML += license;
}

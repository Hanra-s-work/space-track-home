/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_language_count.js
*/

function add_language_count(ID, user_name = "Hanra-s-work", repository = "space-track") {
    var language_count = "";
    var msg = `The number of languages used in ${repository}.`;
    language_count += `<div class='language_count' aria-label="${msg}">`;
    language_count += `<img title="${msg}" alt="${msg}" aria-label="${msg}" src="https://img.shields.io/github/languages/count/${user_name}/${repository}?logo=Github&style=flat-square"/>`;
    language_count += "</div>";
    document.getElementById(ID).innerHTML += language_count;
}

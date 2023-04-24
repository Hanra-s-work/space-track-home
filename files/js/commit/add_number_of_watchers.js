/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_number_of_watchers.js
*/

function add_number_of_watchers(ID, owner = "Hanra-s-work", repository = "space-track") {
    var number_of_watchers = "";
    var msg = `The number of watchers in ${repository}.`;
    number_of_watchers += `<div class='number_of_watchers' aria-label="${msg}">`;
    number_of_watchers += `<img title="${msg}" alt="${msg}" aria-label="${msg}" src="https://img.shields.io/github/watchers/${owner}/${repository}?logo=github&style=flat-square"/>`;
    number_of_watchers += "</div>";
    document.getElementById(ID).innerHTML += number_of_watchers;
}

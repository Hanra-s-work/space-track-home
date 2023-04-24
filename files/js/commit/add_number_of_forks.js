/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_number_of_forks.js
*/

function add_number_of_forks(ID, owner = "Hanra-s-work", repository = "space-track-home") {
    var number_of_forks = "";
    var msg = `The number of forks in ${repository}.`;
    number_of_forks += `<div class='number_of_forks' aria-label="${msg}">`;
    number_of_forks += `<img title="${msg}" alt="${msg}" aria-label="${msg}" src="https://img.shields.io/github/forks/${owner}/${repository}?logo=github&style=flat-square"/>`;
    number_of_forks += "</div>";
    document.getElementById(ID).innerHTML += number_of_forks;
}

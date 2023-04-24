/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_contributors_count.js
*/

function add_contributors_count(ID, owner = "Hanra-s-work", repository = "space-track") {
    var contributors_count = "";
    var msg = `The number of contributors in ${repository}.`;
    contributors_count += `<div class='contributors_count' aria-label="${msg}">`;
    contributors_count += `<img title="${msg}" alt="${msg}" aria-label="${msg}" src="https://img.shields.io/github/contributors/${owner}/${repository}?logo=github&style=flat-square"/>`;
    contributors_count += "</div>";
    document.getElementById(ID).innerHTML += contributors_count;
}

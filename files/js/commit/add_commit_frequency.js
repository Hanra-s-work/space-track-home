/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_commit_frequency.js
*/

function add_commit_frequency(ID, username = "Hanra-s-work", repository = "space-track", frequency = "w") {
    var commit_frequency = "";
    var msg = `The commit frequency in ${repository} from ${username}`;
    commit_frequency += `<div class='commit_frequency' aria-label=''>`;
    commit_frequency += `<img title="${msg}" alt="${msg}" aria-label="${msg}" src="https://img.shields.io/github/commit-activity/${frequency}/${username}/${repository}?logo=github&style=flat-square">`;
    commit_frequency += "</div>";
    document.getElementById(ID).innerHTML += commit_frequency;
}

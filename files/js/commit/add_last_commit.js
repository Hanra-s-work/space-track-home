/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_last_commit.js
*/

function add_last_commit(ID, username = "Hanra-s-work", repository = "space-track") {
    var last_commit = "";
    var msg = `The last commit in ${repository} from ${username}`;
    last_commit += `<div class='last_commit' aria-label=''>`;
    last_commit += `<img title="${msg}" alt="${msg}" aria-label="${msg}" src="https://img.shields.io/github/last-commit/${username}/${repository}?logo=github&style=flat-square">`;
    last_commit += "</div>";
    document.getElementById(ID).innerHTML += last_commit;
}

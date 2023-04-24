/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_repository_size.js
*/

function add_repository_size(ID, username = "Hanra-s-work", repository = "space-track", workflow_file = "space.yml", branch = "main") {
    var build_status = "";
    build_status += `<div class='build_status' aria-label='The size of ${repository} from ${username}'>`;
    build_status += `<img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/${username}/${repository}?branch=${branch}&logo=github&style=flat-square">`
    build_status += "</div>";
    document.getElementById(ID).innerHTML += build_status;
}

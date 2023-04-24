/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_workflow_status.js
*/

function add_workflow_status(ID, username = "Hanra-s-work", repository = "space-track", workflow_file = "space.yml", branch = "main") {
    var build_status = "";
    build_status += `<div class='build_status' aria-label='The build status of ${repository} from ${username}'>`;
    build_status += `<img src="https://github.com/${username}/${repository}/actions/workflows/${workflow_file}/badge.svg?=${branch}&style=flat-square"/>`;
    build_status += "</div>";
    document.getElementById(ID).innerHTML += build_status;
}

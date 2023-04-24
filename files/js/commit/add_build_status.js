/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_build_status.js
*/

function add_build_status(ID, username = "Hanra-s-work", repository = "space-track", workflow = "space.yml", branch = "main", label = "Build") {
    var build_status = "";
    build_status += `<div class='build_status' aria-label='The build status of ${repository} from ${username}'>`;
    build_status += `<img src="https://img.shields.io/github/actions/workflow/status/${username}/${repository}/${workflow}?branch=${branch}&label=${label}&logo=github&style=flat-square"/>`;
    build_status += "</div>";
    document.getElementById(ID).innerHTML += build_status;
}

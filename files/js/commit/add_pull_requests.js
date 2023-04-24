/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_pull_requests.js
*/

function add_pull_requests(ID, user_name = "Hanra-s-work", repository = "space-track") {
    var pull_requests = "";
    var msg = `The number of pull requests in ${repository}.`;
    pull_requests += `<div class='pull_requests' aria-label="${msg}">`;
    pull_requests += `<img title="${msg}" alt="${msg}" aria-label="${msg}" src="https://img.shields.io/github/issues-pr/${user_name}/${repository}?logo=github&style=flat-square"/>`;
    pull_requests += "</div>";
    document.getElementById(ID).innerHTML += pull_requests;
}

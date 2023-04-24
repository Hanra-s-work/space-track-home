/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_repository_security.js
*/

function add_repository_security(ID, user_name = "Hanra-s-work", repository = "space-track") {
    var language_count = "";
    var msg = `Check if vulnerabilities are present in ${repository}.`;
    language_count += `<div class='language_count' aria-label="${msg}">`;
    language_count += `<img title="${msg}" alt="${msg}" aria-label="${msg}" src="https://img.shields.io/snyk/vulnerabilities/github/${user_name}/${repository}?logo=github&style=flat-square"/>`;
    language_count += "</div>";
    document.getElementById(ID).innerHTML += language_count;
}

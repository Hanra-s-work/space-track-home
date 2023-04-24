/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_number_of_issues.js
*/

function add_number_of_issues(ID, name = "Hanra-s-work", repository = "space-track") {
    var number_of_issues = "";
    var msg = `The number of issues in ${repository}.`;
    number_of_issues += `<div class='number_of_issues' aria-label="${msg}">`;
    number_of_issues += `<img title="${msg}" alt="${msg}" aria-label="${msg}" src="https://img.shields.io/github/issues/${name}/${repository}?logo=github&style=flat-square"/>`;
    number_of_issues += "</div>";
    document.getElementById(ID).innerHTML += number_of_issues;
}

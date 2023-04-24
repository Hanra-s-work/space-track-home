/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_contributors.js
*/

function add_contributors(ID, owner = "Hanra-s-work", repository = "space-track") {
    var contributors = "";
    var msg = `The number of contributors in ${repository}.`;
    contributors += `<div class='contributors' aria-label="${msg}">`;
    contributors += `<img title="${msg}" alt="${msg}" aria-label="${msg}" src="https://contrib.rocks/image?repo=${owner}/${repository}"/>`;
    contributors += "</div>";
    document.getElementById(ID).innerHTML += contributors;
}

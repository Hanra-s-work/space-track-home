/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_license.js
*/

function add_license(ID, user_name = "Hanra-s-work", repository = "space-track") {
    var license = "";
    var msg = `The license that the repository ${repository} is currently under.`;
    license += `<div class='license' aria-label="${msg}">`;
    license += `<img title="${msg}" alt="${msg}" aria-label="${msg}" src="https://img.shields.io/github/license/${user_name}/${repository}?logo=Github&style=flat-square"/>`;
    license += "</div>";
    document.getElementById(ID).innerHTML += license;
}

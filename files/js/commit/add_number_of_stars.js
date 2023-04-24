/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_number_of_stars.js
*/

function add_number_of_stars(ID, owner = "Hanra-s-work", repos = "space-track") {
    var number_of_stars = "";
    var msg = `The number of stars in ${repos}.`;
    number_of_stars += `<div class='number_of_stars' aria-label="${msg}">`;
    number_of_stars += `<img title="${msg}" alt="${msg}" aria-label="${msg}" src="https://img.shields.io/github/stars/${owner}/${repos}?logo=github&style=flat-square"/>`;
    number_of_stars += "</div>";
    document.getElementById(ID).innerHTML += number_of_stars;
}

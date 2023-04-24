/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_hit_search.js
*/

function add_hit_search(ID, user_name = "Hanra-s-work", repository = "space-track", query = "space-track") {
    var hit_search = "";
    var msg = `The most searched language in ${repository} has been searched.`;
    hit_search += `<div class='hit_search' aria-label="${msg}">`;
    hit_search += `<img title="${msg}" alt="${msg}" aria-label="${msg}" src="https://img.shields.io/github/search/${user_name}/${repository}/${query}?logo=${query}&style=flat-square"/>`;
    hit_search += "</div>";
    document.getElementById(ID).innerHTML += hit_search;
}

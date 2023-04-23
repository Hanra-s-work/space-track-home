/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_social_icon.js
*/

function add_social_icon(ID, media_name, social_link) {
    var social_icon = "";
    var icon_list = {
        "Instagram": "",
        "Facebook": "",
        "Twitter": "",
        "Youtube": "",
        "Twitch": "",
        "Discord": "",
        "Github": "",
        "Linkedin": "",
        "Pinterest": "",
        "Reddit": "",
        "Snapchat": "",
        "Spotify": "",
        "Steam": "",
        "Tiktok": "",
        "Tumblr": "",
        "Vimeo": "",
    }
    social_icon += "<a href = 'https://www." + media_name + ".com' target = '_blank' class='social_icon'>";
    social_icon += "<img src = 'files/img/" + media_name + ".png' alt = '" + media_name + "' class='social_icon'>";
    social_icon += "</a>";
    document.getElementById(ID).innerHTML += social_icon;
}

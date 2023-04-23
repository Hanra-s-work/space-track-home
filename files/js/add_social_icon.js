/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_social_icon.js
*/

function add_social_icon(ID, media_name, social_link, icon_source_path = "../../../") {
    var theme = currentTheme = readCookie("theme").toLowerCase();
    if (theme === "L") {
        theme = "b";
    } else {
        theme = "w";
    }
    var icon_list = {
        "Instagram": `${icon_source_path}/files/img/follow_me/instagram/instagram_${theme}.png`,
        "Facebook": `${icon_source_path}/files/img/follow_me/facebook/facebook_${theme}.png`,
        "Twitter": `${icon_source_path}/files/img/follow_me/twitter/twitter_${theme}.png`,
        "Youtube": `${icon_source_path}/files/img/follow_me/youtube/youtube_${theme}.png`,
        "Twitch": `${icon_source_path}/files/img/follow_me/twitch/twitch_${theme}.png`,
        "Discord": `${icon_source_path}/files/img/follow_me/discord/discord_${theme}.png`,
        "Github": `${icon_source_path}/files/img/follow_me/github/github_${theme}.png`,
        "Linkedin": `${icon_source_path}/files/img/follow_me/linkedin/linkedin_${theme}.png`,
        "Pinterest": `${icon_source_path}/files/img/follow_me/pinterest/pinterest_${theme}.png`,
        "Reddit": `${icon_source_path}/files/img/follow_me/reddit/reddit_${theme}.png`,
        "Snapchat": `${icon_source_path}/files/img/follow_me/snapchat/snapchat_${theme}.png`,
        "Spotify": `${icon_source_path}/files/img/follow_me/spotify/spotify_${theme}.png`,
        "Steam": `${icon_source_path}/files/img/follow_me/steam/steam_${theme}.png`,
        "Tiktok": `${icon_source_path}/files/img/follow_me/tiktok/tiktok_${theme}.png`,
        "Tumblr": `${icon_source_path}/files/img/follow_me/tumblr/tumblr_${theme}.png`,
        "Vimeo": `${icon_source_path}/files/img/follow_me/vimeo/vimeo_${theme}.png`,
    }
    social_icon += "<a href = '" + social_link + "' target = '_blank' class='social_icon'>";
    social_icon += "<img src = 'files/img/" + media_name + ".png' alt = '" + media_name + "' class='social_icon'>";
    social_icon += "</a>";
    document.getElementById(ID).innerHTML += social_icon;
}

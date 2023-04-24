/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** add_a_user_global_status.js
*/

function add_a_user_global_status(ID, user_name = "HenraL", theme = "blue-green") {
    // Theme list at: https://github.com/anuraghazra/github-readme-stats/blob/master/themes/README.md
    var status = "";
    status += "<div class='user_global_status'>";
    status += "<p>" + user_name + "</p>";
    status += `<img title="${user_name}" alt="${user_name}" aria-label="The profile info of ${user_name}" src="https://github-readme-stats.vercel.app/api?username=${user_name}&show_icons=true&theme=${theme}&count_private=true"/>`; //&include_all_commits=true&hide_border=true&hide_title=true&hide_rank=true&hide=stars,issues,contribs"/>`;
    status += "</div>";
    document.getElementById(ID).innerHTML += status;
}

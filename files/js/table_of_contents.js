/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** table_of_contents.js
*/

function keep_as_link(CURRENT = "Home", links = {}) {
    var key = '';
    var res = "";

    for (key in links) {
        if (key == CURRENT) {
            res += `        <li class="table_list_bullet">${key}</li>`;
        } else {
            res += `        <li class="table_list_bullet"><a class="table_list_link" href="${links[key]}">${key}</a></li>`;
        }
    }
    return res;
}

function table_of_contents(ID, CURRENT = "Home") {
    var i = 0;
    var compile_all = "";
    var dest = document.getElementById(ID);
    var links = {
        "Home": "/space-track-home/",
        "Story": "/space-track-home/files/sub_pages/story",
        "Timeline": "/space-track-home/files/sub_pages/timeline",
        "Commit": "/space-track-home/files/sub_pages/commit",
        "Try me": "/space-track-home/files/sub_pages/try_me",
        "Inspiration": "/space-track-home/files/sub_pages/inspiration",
        "Credits": "/space-track-home/files/sub_pages/credits",
        "PowerPoint": "/space-track-home/files/sub_pages/powerpoint",
    };

    compile_all += '<side id="table_of_contents">';
    compile_all += '    <button class="table_button table_close_button" onclick = "animate_menu(\'table_of_contents\')">Close</button>';
    compile_all += '    <h1 class="table_title">Table of contents:</h1>';
    compile_all += '    <nav class="table_list">';
    compile_all += '    <ul class="table_list_block">';
    compile_all += keep_as_link(CURRENT, links);
    compile_all += '    </ul>';
    compile_all += '    </nav>';
    compile_all += '</side>';
    compile_all += '';

    dest.innerHTML = compile_all;
}

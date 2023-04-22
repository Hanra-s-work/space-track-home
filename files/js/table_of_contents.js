/*
** EPITECH PROJECT, 2022
** space-track-home (Workspace)
** File description:
** table_of_contents.js
*/

function table_of_contents(ID) {
    var i = 0;
    var compile_all = "";
    var dest = document.getElementById(ID);

    compile_all += '<side id="table_of_contents">';
    compile_all += '    <button class="table_button" onclick = "animate_menu(\'table_of_contents\')">Close</button>';
    compile_all += '    <h1 class="table_title">Table of contents:</h1>';
    compile_all += '    <nav class="table_list">';
    compile_all += '    <ul class="table_list_block">';
    compile_all += '        <li class="table_list_bullet"><a class="table_list_link" href="/space-track-home/">Home</a></li>';
    compile_all += '        <li class="table_list_bullet"><a class="table_list_link" href="/space-track-home/files/sub_pages/story">Story</a></li>';
    compile_all += '        <li class="table_list_bullet"><a class="table_list_link" href="/space-track-home/files/sub_pages/timeline">Timeline</a></li>';
    compile_all += '        <li class="table_list_bullet"><a class="table_list_link" href="/space-track-home/files/sub_pages/commit">Commit</a></li>';
    compile_all += '        <li class="table_list_bullet"><a class="table_list_link" href="/space-track-home/files/sub_pages/try_me">Try me</a></li>';
    compile_all += '        <li class="table_list_bullet"><a class="table_list_link" href="/space-track-home/files/sub_pages/inspiration">Inspiration</a></li>';
    compile_all += '        <li class="table_list_bullet"><a class="table_list_link" href="/space-track-home/files/sub_pages/credits">Credits</a></li>';
    compile_all += '        <li class="table_list_bullet"><a class="table_list_link" href="/space-track-home/files/sub_pages/powerpoint">Powerpoint</a></li>';
    compile_all += '    </ul>';
    compile_all += '    </nav>';
    compile_all += '</side>';
    compile_all += '';

    dest.innerHTML = compile_all;
}

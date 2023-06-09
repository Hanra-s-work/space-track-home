function writeBodyHeader(ID, HOME = "/") {
    var writeBodyHeader = "";
    writeBodyHeader += '    <HeaderContainer>\n';
    writeBodyHeader += '    <HeaderLeft>\n';
    writeBodyHeader += '        <button class="table_button" onclick = "animate_menu(\'table_of_contents\')">Menu</button>\n';
    writeBodyHeader += '        <a class="link" href="' + HOME + '"><img class="homeIcon" src="' + HOME + 'files/img/logo/favicon.png"/></a>\n';
    writeBodyHeader += '    </HeaderLeft>\n';
    writeBodyHeader += '    <center class="HeaderCenter">\n';
    writeBodyHeader += '        <h1>Space Track</h1>\n';
    writeBodyHeader += '    </center>\n';
    writeBodyHeader += '    <HeaderRight>\n';
    writeBodyHeader += '        <div class="fb-like" data-href="https://www.facebook.com/HenrySoftwareHouse" data-width="" data-layout="button_count" data-action="like" data-size="small" data-share="true"></div>\n';
    writeBodyHeader += '        <!-- Place this tag where you want the button to render. -->\n';
    writeBodyHeader += '        <a class="github-button" href="https://github.com/Hanra-s-work" data-color-scheme="no-preference: light; light: light; dark: dark;" data-show-count="true" aria-label="Follow @Hanra-s-work on GitHub">Follow @Hanra-s-work</a>\n';
    writeBodyHeader += '        <!-- Place this tag where you want the button to render. -->\n';
    writeBodyHeader += '        <a class="github-button" href="https://github.com/Hanra-s-work/space-track/subscription" data-icon="octicon-eye" data-show-count="true" aria-label="Watch Hanra-s-work/space-track on GitHub">Watch</a>\n';
    writeBodyHeader += '        <!-- Place this tag where you want the button to render. -->\n';
    writeBodyHeader += '        <a class="github-button" href="https://github.com/Hanra-s-work/space-track" data-icon="octicon-star" data-show-count="true" aria-label="Star Hanra-s-work/space-track on GitHub">Star</a>\n';
    writeBodyHeader += '        <!-- Place this tag where you want the button to render. -->\n';
    writeBodyHeader += '        <a class="github-button" href="https://github.com/Hanra-s-work/space-track-home/fork" data-icon="octicon-repo-forked" data-show-count="true" aria-label="Fork Hanra-s-work/space-track-home on GitHub">Fork (Website)</a>\n';
    writeBodyHeader += '        <!-- Place this tag where you want the button to render. -->\n';
    writeBodyHeader += '        <a href="https://github.com/Hanra-s-work/space-track-home" class="link"><img src="https://img.shields.io/github/actions/workflow/status/Hanra-s-work/space-track-home/jekyll-gh-pages.yml?branch=main&label=build&logo=github&style=flat-square" alt="GitHub Pages build status" aria-label="The build status of the github pages"/></a>'
    writeBodyHeader += '    </HeaderRight>\n';
    writeBodyHeader += '</HeaderContainer>\n';
    writeBodyHeader += '<div id="checkboxContainer">\n';
    writeBodyHeader += '    <input type="checkbox" id="darkOrLight" onclick="theme(\'darkOrLight\',\'theme\',\'' + HOME + '\',\'files/css/boostrap/boostrap_dark.css\',\'files/css/boostrap/bootstrap.css\');">\n';
    writeBodyHeader += '    <label for="darkOrLight">\n';
    writeBodyHeader += '        <div id="star">\n';
    writeBodyHeader += '            <div class="star" id="star-1">&starf;</div>\n';
    writeBodyHeader += '            <div class="star" id="star-2">&starf;</div>\n';
    writeBodyHeader += '        </div>\n';
    writeBodyHeader += '        <div id="moon"></div>\n';
    writeBodyHeader += '    </label>\n';
    writeBodyHeader += '</div>\n';
    document.getElementById(ID).innerHTML = writeBodyHeader;
}

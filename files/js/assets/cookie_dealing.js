console.log("js/cookie_dealing initialising");
var createMany = function (string) {
    document.cookie = string
}
var create = function (key = "0", value = "0", expires = "", path = "/") { //modifying cookie == create cookie
    document.cookie = key + "=" + value + "; expires=" + expires + "; path=" + path;
}
var read = function (key) { //from https://www.w3schools.com/js/js_cookies.asp
    var name = key + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}
var remove = function (key) {
    document.cookie = key + "=a; expires=Sat, 1 Jan 1921 00:00:00 UTC;"
}

// class Cookie{
//     static createMany
//     static create
//     static read
//     static remove
// }

var createManyCookie = function (string) {
    document.cookie = string
}
var createCookie = function (key = "0", value = "0", expires = "", path = "/") { //modifying cookie == create cookie
    content = key + "=" + value + "; expires=" + expires + "; path=" + path + ";samesite=Lax";
    document.cookie = content;
}
var readCookie = function (key) { //from https://www.w3schools.com/js/js_cookies.asp
    var name = key + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}
var removeCookie = function (key) {
    document.cookie = key + "=a; expires=Sat, 1 Jan 1921 00:00:00 UTC;"
}

var clear_all_cookies = function () {
    var cookies = document.cookie;
    var cookies_array = cookies.split(";");
    for (var i = 0; i < cookies_array.length; i++) {
        var cookie = cookies_array[i];
        var cookie_name = cookie.split("=")[0];
        removeCookie(cookie_name);
    }
    console.log("Cookies cleared");
    alert("Cookies Cleared");
}
console.log("js/cookie_dealing initialised");

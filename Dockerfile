FROM httpd:2.4.57
RUN mkdir -p /usr/local/apache2/htdocs/space-track-home
RUN echo "<html>\n<head>\n<title>Redirecting to 'space-track-home'</title>\n<meta http-equiv='refresh' content=\"5; url='space-track-home'\">\n</head>\n<body>\n<p>Redirecting to <a href=\"space-track-home\">space-track-home</a></p>\n</body>\n</html>\n" >"/usr/local/apache2/htdocs/index.html" && echo Displaying content && cat /usr/local/apache2/htdocs/index.html
EXPOSE 8080

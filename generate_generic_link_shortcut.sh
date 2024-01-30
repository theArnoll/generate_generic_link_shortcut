if [ "$#" -eq 1 ]; then
    touch ./link.html;
    if [ $1 != "https://"* ] && [ $1 != "http://"* ]; then
        echo "<html>\n    <head>\n        <meta http-equiv=\"refresh\" content=\"0; url=https://$1\" />\n    </head>\n    <body> </body>\n</html>" > "./link.html";
    else
        echo "<html>\n    <head>\n        <meta http-equiv=\"refresh\" content=\"0; url=$1\" />\n    </head>\n    <body> </body>\n</html>" > "./link.html";
    fi
    chmod +x ./link.html;
else
    touch "./$1.html";
    if [ $2 != "https://"* ] && [ $2 != "http://"* ]; then
        echo "<html>\n    <head>\n        <meta http-equiv=\"refresh\" content=\"0; url=https://$2\" />\n    </head>\n    <body> </body>\n</html>" > "./$1.html";
    else
        echo "<html>\n    <head>\n        <meta http-equiv=\"refresh\" content=\"0; url=$2\" />\n    </head>\n    <body> </body>\n</html>" > "./$1.html";
    fi
    chmod +x "./$1.html";
fi
# Generic Link Shortcut
## Make the cross-platform link shortcut

The batch code is translated by ChatGPT and modified by me

### Please download this via [Release](https://github.com/theArnoll/generate_generic_link_shortcut)

[See all functions in a video](./readme_gif/All_mp4.mp4)

### Usage

#### Drag-and-drop (Windows .bat only)
![Repository(Project)/readme_gif/Drag.gif](./readme_gif/Drag.gif)
Generate the normal .url shortcut file by dragging link from url bar on your browser, and drag the shortcut file to `generate_generic_link_shortcut.bat`. `link.html` will be generate. That is the cross-platform link shortcut. You can rename it if you want.\
The reason to make it Windows only is that I personally think Linux (such as Ubuntu) has no opportunity to use this function at all.

#### Command

##### No specify file name
![Repository(Project)/readme_gif/NoFileName.gif](./readme_gif/NoFileName.gif)
Windows: `.\generate_generic_link_shortcut.bat [url]`\
Ex. `.\generate_generic_link_shortcut.bat google.com`\
<br>
Linux: `./generate_generic_link_shortcut.sh [url]`\
Ex. `./generate_generic_link_shortcut.sh google.com`

##### Specify file name (No space)
![Repository(Project)/readme_gif/WithFileName.gif](./readme_gif/WithFileName.gif)
Windows: `.\generate_generic_link_shortcut.bat [File name without space] [url]`\
Ex. `.\generate_generic_link_shortcut.bat Pureclock theArnoll.github.io/pureclock`\
<br>
Linux: `./generate_generic_link_shortcut.sh [File name without space] [url]`\
Ex. `./generate_generic_link_shortcut.sh Pureclock theArnoll.github.io/pureclock`


##### Specify file name (With space)
![Repository(Project)/readme_gif/WithSpcFileName.gif](./readme_gif/WithSpcFileName.gif)
Windows: `.\generate_generic_link_shortcut.bat "[File name with space]" [url]`\
Ex. `.\generate_generic_link_shortcut.bat "Start Page" theArnoll.github.io/startpage`\
<br>
Linux: `./generate_generic_link_shortcut.sh "[File name with space]" [url]`\
Ex. `./generate_generic_link_shortcut.sh "Start Page" theArnoll.github.io/startpage`

Lastly, if you notice my competer language looks like Chinese, yes, it is. But it's not Simplified Chinese. It's Traditional Chinese which is using only in Taiwan and Hong Kong. I'm Taiwanese, so you don't need to worry about China problem.\
Or you can check the code yourself actually. We're in GitHub.
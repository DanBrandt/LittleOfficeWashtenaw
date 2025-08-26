# LittleOfficeWashtenaw

Worship guides for the Little Office of the Blessed Virgin Mary, according to the use of Washtenaw
County, MI, USA

This edition bases its text on the Little Office of the Blessed Virgin Mary, published by Baronius
Press (in conformity with the 1962 Roman Missal) with commemoration taken from
[here](https://www.lobvm.com) and specifies postures in the manner of the Benedictines of Solemnes.

## Contributing

### Set up a local development environment

For the most general directions, refer to
[the Gregorio project's](https://gregorio-project.github.io/index.html) notes on
[installation](https://gregorio-project.github.io/installation.html).

First, install TeX Live and its additional packages for music, LuaTeX, and fonts.

On Ubuntu:

```shell
sudo apt install texlive-latex-base texlive-latex-recommended texlive-music texlive-luatex texlive-fonts-recommended texlive-fonts-extra texlive-extra-utils
```

On Arch:

```shell
pacman -S texlive-latex texlive-latexrecommended texlive-music texlive-luatex texlive-fontsrecommended texlive-fontsextra texlive-latexextra
```

### Test your changes

After editing a file, check the resulting PDF by running the following command in the relevant
hour's directory:

```shell
lualatex Little_Office_{HOUR}.tex
```


makams.json
author: Phaedon Sinis

File structure:
---------------
root: a single JSON object containing key-value pairs. 
The key is the makam name and the value is an object 
that contains all the key-value pairs describing one makam.

Fields:
-------
  - key:  One word, ASCII characters only, lowercase. 
          "Suz-i dil" should be written as "suzidil" for the key.
  - name:  The correct Turkish spelling, using Unicode characters.
           This field is intended to be used for display, not for
           lookup or code
  - name_alternate:  Use this when there are two different spellings
                     of the same makam. 
                     Examples: "Suznak" vs "Suzinak",
                               "Beyati" vs "Bayati"
  - karar: Lowercase, single word ASCII Turkish pitch name. 


Conventions:
------------
Indentation: 4 spaces (no tabs). If you use emacs:
  M-x javascript-mode
  M-x indent-region

Braces: K&R style (opening brace on same line as the key).

One key-value pair on each line
One space on either side of the colon in a key-value pair
qOne blank line after each object

Keep makam names in alphabetical order. Although the JSON object is 
an unordered container, editing and deciding to add new makams
will be made easier by alphabetizing the root object.

All lines should be 72 characters or shorter

Seyir:
------
Excerpts from the following books may optionally be included. 
TCB: Tanburi Cemil Bey, "Rehber-i Musiki"
EK: Ekrem Karadeniz
RYB: Rauf Yekta Bey
IHO: Ismail Hakki Ozkan, "Turk Musikisi Nazariyati ve Usulleri"

Please use proper citation when displaying any of these citations in 
an app or on a website. For convenience, here are BibTeX citations:


@book{bey1993rehber,
  title={Rehber-i m{\^u}s{\i}k{\i}̂},
  author={Bey, Tanb{\^u}r{\i}̂ Cemil and Cevher, M Hakan},
  number={9},
  year={1993},
  publisher={Ege {\"U}niversitesi Bas{\i}mevi}
}

@book{yekta1986turk,
  title={T{\"u}rk musikisi},
  author={Yekta, Rauf},
  year={1986},
  publisher={Pan Yay{\i}nc{\i}l{\i}k}
}

@book{ozkan2000turk,
  title={T{\"u}rk m{\^u}zik{\i}̂si nazariyat{\i} ve us{\^u}lleri: kud{\"u}m velveleleri},
  author={{\"O}zkan, {\.I}smail Hakk{\i}},
  year={2000},
  publisher={{\"O}t{\"u}ken Yay{\i}nlar{\i}, {\.I}stanbul},
}

@book{karadeniz1983turk,
  title={T{\"u}rk musik{\i}̂sinin nazariye ve esaslar{\i}},
  author={Karadeniz, M Ekrem},
  volume={37},
  year={1983},
  publisher={T{\"u}rkiye {\.I}{\c{s}} Bankas{\i} K{\"u}lt{\"u}r Yay{\i}nlar{\i}}
}


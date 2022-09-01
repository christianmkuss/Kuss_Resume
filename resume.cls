% Intro Options
\ProvidesClass{resume}
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.55cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage{fontawesome}
\usepackage{tabularx}
\usepackage{fontspec}

% Color definitions
\definecolor{body-text}{HTML}{505050}
\definecolor{body-text-emphasis}{HTML}{111111}
\definecolor{body-text-bold}{HTML}{050505}
\definecolor{heading}{HTML}{4A4A4A}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{descript}{HTML}{444444}
\definecolor{position}{HTML}{666666}
\definecolor{subheading}{HTML}{464646}
\definecolor{header-link}{HTML}{6A6A6A}
\definecolor{education}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Ligatures=TeX}
\setmainfont[Color=body-text, Path = fonts/lato/]{Lato-Reg}
\setsansfont[Scale=MatchLowercase, Ligatures=TeX, Path = fonts/raleway/]{Raleway-ExtraLight}

% Name command
\newcommand{\namesection}[7]{
  \begin{tabularx}{\textwidth}{Xr}
       \begin{tabular}[x]{@{}l@{}}
          \hspace{-8.7mm}{\fontspec[Path = fonts/lato/]{Lato-Hai}\fontsize{35pt}{10cm}\selectfont #1}
          {\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{35pt}{10cm}\selectfont #2}\\
          \hspace{-7.26mm}{\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{17pt}{10cm}\selectfont #3}
          \vspace{1.5mm}
      \end{tabular}
    &
      \begin{tabular}[x]{@{}r@{}}
        \\
        {\fontsize{11pt}{15cm}\selectfont #4}\\
        {\fontsize{11pt}{15cm}\selectfont #5}\\
        {\fontsize{11pt}{15cm}\selectfont #6}\\
        {\fontsize{11pt}{15cm}\selectfont #7}
      \end{tabular} 
    \end{tabularx}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{heading}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{18pt}{26pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\newcommand{\runsubsection}[1]{\color{subheading}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{14pt}{14pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Line Across
\newcommand{\raisedrulefill}[2][0ex]{\leaders\hbox{\rule[#1]{1pt}{#2}}\hfill}

% Body command
\newcommand{\body}[1]{\color{body-text}\raggedright\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{11pt}{13pt} \selectfont {#1\\} \normalfont}

% Location command
\newcommand{\location}[1]{\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Italic} \fontsize{12pt}{12pt}\selectfont {#1} \normalfont}

% Technologies command
\newcommand{\technologies}[1]{\vspace{0.5mm}\color{heading}
\fontspec[Path = fonts/raleway/]{Raleway-Italic}\fontsize{12pt}{14pt}\selectfont{#1} \normalfont\vspace{0.5mm}}

% Position command
\newcommand{\position}[1]{\color{position}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{12pt}{13pt}\selectfont{#1}\normalfont}

% Description command
\newcommand{\descript}[1]{\color{descript}\fontspec[Path = fonts/raleway/]{Raleway-Light}\fontsize{11.3pt}{13pt}\selectfont {#1} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\fontsize{12pt}{14pt}\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}\vspace{1.75 mm}}

% Letter Commands
\newcommand{\letterintro}[1]{\vspace{10mm}\color{body-text}\raggedright\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{13pt}{14pt} \selectfont {#1\\} \normalfont \vspace{5mm}}
\newenvironment{letter}{\fontsize{20pt}{20pt}\vspace{-\topsep}\vspace{-\topsep}\vspace{1.75 mm}}

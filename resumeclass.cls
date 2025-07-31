\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resumeclass}[2014/08/16 Example LaTeX class]

\LoadClass[a4paper, 11pt]{article}

\RequirePackage[empty]{fullpage}
\RequirePackage{fontawesome5}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[scale=0.90,lf]{FiraMono}
\RequirePackage[parfill]{parskip}
% changing the language pack changes the locale
% (e.g. use 'ngerman' for german date formatting)
\RequirePackage[english]{babel}
\RequirePackage{datetime2}
\RequirePackage{datetime2-calc}
\RequirePackage{enumitem}
\RequirePackage{csquotes}

% change margins
\RequirePackage{array}
\RequirePackage{geometry}
\geometry{margin=0.5in}

% change font
\RequirePackage[T1]{fontenc}
\RequirePackage{tgheros}
\renewcommand{\familydefault}{\sfdefault}

% define custom colours
\RequirePackage[usenames,dvipsnames]{xcolor}
\definecolor{light-gray}{gray}{0.8}
\definecolor{mid-gray}{gray}{0.5}
\definecolor{dark-gray}{gray}{0.3}
\definecolor{text-gray}{gray}{.08}

% accent colors
% for more cool colors look at this site: https://latexcolor.com/
\definecolor{airforceblue}{HTML}{5D8AA8}
\definecolor{darkcyan}{HTML}{008B8B}
\definecolor{darkslateblue}{HTML}{483D8B}
\definecolor{bluebell}{HTML}{A2A2D0}
\definecolor{bondiblue}{HTML}{0095B6}
\definecolor{amaranth}{HTML}{E52B50}
\definecolor{amethyst}{HTML}{9966CC}
\definecolor{antiquefuchsia}{HTML}{915C83}
\definecolor{arsenic}{HTML}{3B444B}
\definecolor{atomictangerine}{HTML}{FF9966}
\definecolor{awesome}{HTML}{FF2052}
\definecolor{bazaar}{HTML}{98777B}
\definecolor{bittersweet}{HTML}{FE6F5E}
\definecolor{bluemunsell}{HTML}{0093AF}
\definecolor{brinkpink}{HTML}{FB607F}

% set colors in use

\colorlet{highlight-color}{amaranth}
\colorlet{icon-color}{black}

% change formatting of \section
\RequirePackage{titlesec}
\titleformat {\section}{
    \bfseries \vspace{0pt} \raggedright % header section
}{}{0em}{}[{\color{highlight-color}\titlerule[1pt]} \vspace{0pt}]

%--------------------CUSTOM FUNCTIONS

% table-like time entries
\newcommand{\timeentry}[4]{
    \begin{tabular}{@{}>{\raggedright\arraybackslash}p{2.3cm}@{}!{\color{light-gray}\vrule width 1pt}@{\hspace{1.5em}}>{\raggedright\arraybackslash}p{\dimexpr\linewidth - 2.3cm - 1.5em}@{}}
        \small \textcolor{mid-gray}{#3} &
        \textbf{#1} \newline
        #2 \newline \vspace{-10pt}
        \setlist{itemsep=1pt, parsep=0pt, leftmargin=*, topsep=0pt}
        \hspace{-9pt} % fix alignment for normal text
        \small #4
    \end{tabular}
}

% formatting for dates
\newcommand{\MonthYear}[1]{
    \DTMsavedate{tmp}{#1}
    \hspace{-5.5pt} % fix alignment problems because of color change?
    \DTMshortmonthname{\DTMfetchmonth{tmp}} \DTMfetchyear{tmp}
}
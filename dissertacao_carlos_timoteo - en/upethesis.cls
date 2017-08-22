\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{upethesis}[2011/02/24 v0.1 Marcos' modified report class]

% Passes and class options to the underlying article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions

% Load LaTeX's article class with the `titlepage' option so that \maketitle creates a title page, not just a title block
\LoadClass[titlepage]{report}

% Required packages [START]
\usepackage[utf8]{inputenc}
\usepackage{array, multirow, nicefrac, amsfonts, amssymb, graphicx, fancyhdr, amsmath}
\usepackage{units, placeins, subfigure, listings, tabularx, colortbl, color}
\usepackage[tmargin=1.5cm]{geometry}
\usepackage[ruled,portuguese,linesnumbered]{algorithm2e}
\usepackage{url}

\usepackage[font=footnotesize,labelfont=bf]{caption}
\renewcommand*\descriptionlabel[1]{\hspace\labelsep\normalfont #1}
\usepackage[brazil]{babel} % dissertacao em portugues



% Required packages [END]

% Default configuration [START]
\definecolor{gray}{rgb}{0.6,0.6,0.6}
\definecolor{white}{rgb}{1.0,1.0,1.0}
\pagestyle{fancyplain}
\fancyhf{}
\fancyhead{}
\fancyfoot{}

\renewcommand{\headrulewidth}{0.0pt}
\renewcommand{\footrulewidth}{0.0pt}
\setlength{\headheight}{80.0pt}
\fancyheadoffset[LO]{3.0cm}
\setlength{\textheight}{650.0pt}

\def\listofsymbols{
  \chapter*{List of Symbols\hfill}\addcontentsline{toc}{chapter}{Lista de Símbolos}
  \input{pre_textual_element/symbols}
  \clearpage
}

\def\listofacronyms{
%  \chapter*{List of Acronyms\hfill}\addcontentsline{toc}{chapter}{Lista de Siglas}
  \input{pre_textual_element/acronyms}
  \clearpage
}

%\def\listofalgorithms{
%  \chapter*{List of Algorithms\hfill}\addcontentsline{toc}{chapter}{Lista de Algoritmos}
%  \input{pre_textual_element/algorithms}
%  \clearpage
%}

\def\newnot#1{\label{#1}}
% Default configuration [END]
\endinput

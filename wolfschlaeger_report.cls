%Latex2e - Class
%Dominik Wolfschlaeger
%18/2/2015
%Version 1.0
%Befehlssatz basierend auf Montavon V2.1 14.10.2013
%---------------------------------------------------------
%Klasseninformation
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wolfschlaeger}[2017/08/22]
%---------------------------------------------------------

\LoadClass[a4paper, twocolumn, oneside,  parskip, 11pt, DIV=11, numbers=noenddot, captions=tableabove]{scrreprt}%
%parskip Verhindert Einrücken bei neuem Paragraph, dafür entsteht ein größerer Abstand zwischen den Absätzen (benutze \par\vspace{} für individuelle trennung von Absätzen



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% used packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage[					% clean thesis style
	figuresep=colon,%
	sansserif=false,%
	hangfigurecaption=false,%
	hangsection=false,%
	hangsubsection=false,%
	colorize=full,%
	colortheme=desy,%
	bibsys=bibtex,%
	bibfile=bib-refs,%
	bibstyle=numeric,%
]{cleanthesis}

\RequirePackage[scaled=.92]{helvet} %Schriftart

%Sprache und Kodierung
\RequirePackage[T1]{fontenc}

\DeclareUnicodeCharacter{20AC}{\EUR}
%\usepackage{caption} zur Formatierung der Beschriftung von Gleitobjekten

\RequirePackage{graphicx}
\RequirePackage{array}
%Mathe-Pakete
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{upgreek}
%\RequirePackage{mathpazo}

\usepackage{booktabs, tabularx}
\usepackage[export]{adjustbox}
\usepackage[justification=centering]{caption}
\usepackage{wrapfig}
\usepackage{pdfpages}
\usepackage{enumitem}
\renewcommand{\cfttoctitlefont}{\color{ctcolormain}\LARGE\tgherosfont}
\renewcommand{\cftchapfont}{\color{ctcolormain}\bfseries \tgherosfont}

\renewcommand{\arraystretch}{1.2}

%Colors
\definecolor{RWTHblue}{RGB}{0.0,83,159}
\definecolor{RWTHblack}{RGB}{0,0,0}
\definecolor{RWTHwhite}{RGB}{255,255,255}
\definecolor{RWTHmagenta}{RGB}{227,0,102}
\definecolor{RWTHgrey}{RGB}{204,204,204}
\definecolor{RWTHlightblue}{RGB}{142,186,226}
\definecolor{RWTHsuperlightgrey}{RGB}{247,247,247}
\definecolor{RWTHpetrol}{RGB}{0,97,101}
\definecolor{RWTHteal}{RGB}{0,152,161}
\definecolor{RWTHmaygreen}{RGB}{189,205,0}
\definecolor{RWTHgreen}{RGB}{87,171,39}
\definecolor{RWTHyellow}{RGB}{255,237,0}
\definecolor{RWTHorange}{RGB}{246,168,0}
\definecolor{RWTHred}{RGB}{204,7,30}
\definecolor{RWTHbordeaux}{RGB}{161,16,53}
\definecolor{RWTHviolet}{RGB}{97,33,88}
\definecolor{RWTHpurple}{RGB}{122,111,172}



\renewcommand{\vec}[1]{\underline{#1}}
\ExecuteOptions{}
\ProcessOptions\relax




%Sectionlayout
\renewcommand\thesection{\color{ctcolormain}\arabic{section}}
% \renewcommand{\normalcolor}{\color{}}
\setkomafont{disposition}{\normalcolor\sffamily\bfseries}


% Mathe 

%Nützliche Vektordefinitionen
\newcommand{\vvec}[3]{\begin{pmatrix} #1 \\ #2 \\ #3 \end{pmatrix}} %3er Spaltenvektor
\newcommand{\vecbe}[1]{\vec{\hat e}_{#1}} %EInheitsrichtungsvektor
\newcommand{\tdvec}[2]{\begin{pmatrix} #1 \\ #2 \end{pmatrix} }
\newcommand{\nullvec}{\boldsymbol{\it 0}} 
%Kugelkoordinaten
\newcommand{\ephi}{\vecbe{\phi}} %Einheitsrichtungsvektor in \phi Richtung
\newcommand{\etheta}{\vecbe{\theta}} %Einheitsrichtungsvektor in \theta Richtung

%Klammern
\newcommand{\li}{\left(} %linke Klammer (
\newcommand{\re}{\right)}%recht Klammer ) 
\newcommand{\poi}[1]{\left\{ #1 \right\}} %geschwungene Klammern { }
\newcommand{\bra}[1]{\left< #1 \right|} %angled < >
\newcommand{\ket}[1]{\left| #1 \right>}
\newcommand{\braket}[2]{ \left< #1 \right|\hspace*{-3.5pt}\left.#2 \right>} %Skalarprodukt im Hilbertraum

%Differentiale
\newcommand{\pdiff}[2]{\frac{\partial #1}{\partial #2}} %partielle Ableitung
\newcommand{\diff}[2]{\frac{\mathrm d #1}{\mathrm d #2}} %totale Ableitung
\newcommand{\pdiffc}[3]{\left( \frac{\partial #1}{\partial #2} \right)_{#3}} 

%Mathematische Symbole
\newcommand{\meq}{\overset{!}{=}}
\newcommand{\di}{\mathrm d} %aufrechtes "d" für Differentiale 
\newcommand{\origo}[1]{\mathcal O \left( #1 \right)} %"Terme der Ordnung...
\newcommand{\reell}{\mathbb R} %Zeichen für den reellen Zahlenraum
\newcommand{\Kern}{\mathrm{Kern} \, } 
\newcommand{\abs}[1]{\left| #1 \right| } %Betrag
\newcommand{\vecnorm}[1]{\left| \left| #1 \right| \right| } %Vektornorm
\newcommand{\matb}[1]{\mathbf #1} %Fettdruck im Mathematikmodus
\newcommand{\uuline}[1]{\underline{\underline{ #1}}} %Doppelt Underlined für Matrizen
\newcommand{\im}{\mathrm i} %für imaginäre Zahl 
\newcommand{\expe}{\mathrm e} %Eulerzahl
\newcommand{\unit}[1]{\, \mathrm{#1} } %Aufrecht für Einheiten
\newcommand{\unitb}[1]{\, \mathbf{#1} } %Fett gedruckte Einheiten
\newcommand{\pow}[1]{\cdot 10^{#1} } 
\renewcommand{\\}{\newline \noindent} 
\newcommand{\degree}{^{\circ}}

%Particle physics
\newcommand{\pt}{p_{\mathrm{T}}}
\newcommand{\tauh}{\tau_{\mathrm{h}}}
\newcommand{\taumu}{\tau_{\upmu}}
\newcommand{\taue}{\tau_{\mathrm{e}}}

%Sonstiges
\newcommand{\tab}{\hspace*{0.5cm}}
\newcommand{\ttab}{\hspace*{1.0cm}}
\newcommand{\cit}[1]{\glqq #1\grqq{}}
\newcommand{\Tr}{\mathrm{Tr}\ }
\newcommand{\literature}[1]{
	\nocite{*}
	\bibliography{#1}
	\bibliographystyle{natdin}
	

}

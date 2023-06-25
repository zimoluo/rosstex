\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rosstex}[2023/06/25 RossTeX]

\DeclareOption{12pt}{\PassOptionsToClass{12pt}{amsart}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsart}}
\ProcessOptions\relax

\LoadClass{amsart}

\RequirePackage[margin=0.75in]{geometry}
\RequirePackage{setspace}
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{mathtools}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\setstretch{1.8}
\setlength\parindent{0pt}

\fancypagestyle{rosstexstyle}{
  \fancyhf{}% Clear header and footer
  \renewcommand{\headrulewidth}{0pt}% Remove header rule
  \fancyhead[LE,RO]{\small\thepage}% Header content - odd page numbers at top right, even at top left
  \fancyhead[C]{\scshape\small {{\scshape\small\ifodd\value{page} {\ifx\@psetnum\undefined
      {\small{\@title} \par}
    \else
      {\small{Problem Set {\#\@psetnum}} \par}
    \fi}\else {\@solver}\fi}}}% Custom header content at the top center

  \setlength{\headheight}{24.5042pt}
}

\pagestyle{rosstexstyle}


\DeclareMathOperator{\lcm}{lcm}
\DeclareMathOperator{\ord}{ord}
\DeclareMathOperator{\Ker}{ker}
\DeclareMathOperator{\Aut}{Aut}
\DeclareMathOperator{\Hom}{Hom}
\DeclareMathOperator{\Mor}{Mor}
\DeclareMathOperator{\GL}{GL}
\DeclareMathOperator{\SL}{SL}

\newcommand{\C}{\mathbb{C}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\Z}{\mathbb{Z}}

\newcommand{\floor}[1]{\left\lfloor #1 \right\rfloor}
\newcommand{\ceil}[1]{\left\lceil #1 \right\rceil}
\newcommand{\abs}[1]{\left\lvert #1 \right\rvert}
\newcommand{\norm}[1]{\left\lVert #1 \right\rVert}

\renewcommand{\implies}{\Rightarrow}
\renewcommand{\impliedby}{\Leftarrow}
\renewcommand{\iff}{\Leftrightarrow}

\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    urlcolor=black,
    citecolor=black,
    linktoc=all
}

\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{graphicx}

\newcommand{\psetnum}[1]{\gdef\@psetnum{#1}}
\newcommand{\solver}[1]{\gdef\@solver{#1}}
\renewcommand{\author}[1]{\solver{#1}}

\title{\@ifundefined{title}{}{\@title}}

\renewcommand{\@maketitle}{%
  \newpage
  \null
  \vspace{-0.5in}
  \begin{center}
    \let\footnote\@date
    \ifx\@psetnum\undefined
      {\normalsize\bfseries\MakeUppercase{\@title} \par}
    \else
      {\normalsize\bfseries\MakeUppercase{Problem Set {\#\@psetnum}} \par}
    \fi
    \vskip 0.25em
    \ifx\@solver\undefined
      {}
    \else
      {\normalsize\MakeUppercase{\@solver}}
    \fi
    \vskip 0.25em
    {\let\thefootnote\relax\footnotetext{\textit{Date}: \@date}}
  \end{center}
  \par
  \vspace{0.5in}
}


\titleformat{\section}
  {\normalfont}
  {\MakeUppercase{\MakeUppercase{Problem }\arabic{section}.}}
  {1em}
  {\MakeUppercase}
  [{\titlerule[0.8pt]\smallskip}]

\titleformat{name=\section,numberless}
  {\normalfont}
  {\MakeUppercase{\MakeUppercase{Problem}}}
  {1em}
  {\MakeUppercase}
  [{\titlerule[0.8pt]\smallskip}]

\titleformat{\subsection}[runin]
  {\normalfont\bfseries}
  {\textbf{(\alph{subsection})}\ }
  {0em}
  {}
  [.]

\titlespacing{\subsection}
  {0pt}
  {0.5ex plus 0.5ex minus 0.2ex}
  {0.5em}

\titleformat{\subsubsection}[runin]
  {\normalfont}
  {{(\textit{\roman{subsection}})}\ }
  {0em}
  {\itshape}
  [.]

\titlespacing{\subsubsection}
  {0pt}
  {0.5ex plus 0.5ex minus 0.2ex}
  {0.5em}

\renewcommand{\appendix}{
\setcounter{section}{0}
\titleformat{\section}
  {\normalfont}
  {\MakeUppercase{Appendix \alph{section}.}}
  {1em}
  {\MakeUppercase}
  [{\titlerule[0.8pt]\smallskip}]
}

\renewcommand\@seccntformat[1]{\csname the#1\endcsname\ \ }

\newtheoremstyle{theorem}
  {\topsep}{\topsep}
  {\itshape}{}
  {\bfseries}{}
  {\newline}
  {\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}
\theoremstyle{theorem}

\newcounter{thmcounter}[section]
\newtheorem{theorem}{Theorem}[thmcounter]
\newtheorem{lemma}{Lemma}[thmcounter]
\newtheorem{corollary}{Corollary}[thmcounter]
\newtheorem{proposition}{Proposition}[thmcounter]
\newtheorem{conjecture}{Conjecture}[thmcounter]
\newtheorem{definition}{Definition}[thmcounter]


\endinput

% !Mode:: "TeX:UTF-8"
\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{fengrucup}
              [2018/04/03 v0.0
              The LaTeX template for Feng Ru Cup of BUAA]
\newcommand{\fengrucup@baseclass}{ctexrep}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\fengrucup@baseclass}}
\ProcessOptions\relax
% 引用ctexbook及基本设置
% Format!
% 正文:小四号,中文字体为宋体,西文字体为 Times New Roman 体,首行缩进, 两端对齐。
\LoadClass[zihao=-4,a4paper]{\fengrucup@baseclass}[2007/10/19]

%%%%%%%%%% global package %%%%%%%%%%
% 全局通用宏包
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{amsmath}
\RequirePackage{pgfplotstable}
\RequirePackage{graphicx}
\RequirePackage{pgfplots}
\RequirePackage{capt-of}
\RequirePackage{enumerate}
\RequirePackage{array}
\RequirePackage{pgf-pie}
\RequirePackage{multirow}
\RequirePackage{diagbox}
\RequirePackage[cc]{titlepic}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{colortbl}
\RequirePackage{url}
\RequirePackage{ulem}
\RequirePackage{tabularx}
\input{five-years-table}
\pgfplotsset{ compat=newest }


%%%%%%%%%% external %%%%%%%%%%
% Enable the external feature of pgfplots.
% 节约编译时间
\usepgfplotslibrary{external}
\tikzexternalize

%%%%%%%%%% font %%%%%%%%%%
% 数学相关和字体设置
% 这是英文的字体
\setmainfont{Times New Roman}

%%%%%%%%%% page margin %%%%%%%%%%
% 页面边距
\RequirePackage{geometry}
% Format!
% 学术论文的上边距:25mm;下边距:25mm;左边距:30mm;右边距 20mm。
% 章、节、条三级标题为单倍行距,段前、段后各设为 0.5 行(即前后各空 0.5 行)。
% 正文为 1.5 倍行距,段前、段后无空行(即空 0 行)。
\geometry{
    top=25mm, bottom=25mm, left=30mm, right=20mm,
}


%%%%%%%%%% space %%%%%%%%%%
% 其他间距

\renewcommand{\baselinestretch}{1.5}
\setlength{\parindent}{2em}
% 图形之间或图形与正文之间的距离
\setlength{\floatsep}{3pt plus 3pt minus 2pt}
% 图形中的图与标题之间的距离
\setlength{\abovecaptionskip}{10pt plus 1pt minus 1pt} 
% 表格中的表与标题之间的距离
\setlength{\belowcaptionskip}{3pt plus 1pt minus 2pt} 

%%%%%%%%%% header & footer %%%%%%%%%%
% 页眉页脚
% Format!
% 论文页码从“主体部分(绪论、正文、结论)”开始,直至“参考文献、附录”结
% 束,用五号阿拉伯数字连续编码,页码位于页脚居中。封面、题名页不编页码。 摘要、
% 目录、图标清单、主要符号表用五号小罗马数字连续编码,页码位于页脚居中。

\RequirePackage{fancyhdr}
\fancypagestyle{frontmatter}{
        \renewcommand{\headrulewidth}{0pt}
        \renewcommand{\headrulewidth}{0pt}
        \fancyhf{}
        \fancyfoot[C]{\zihao{5}\centering\roman{page}}
}

% Format!
% 页眉内容为北京航空航天大学第二十七届“冯如杯”学生学术科技作品竞赛参赛作
% 品,内容居中。
% 页眉用小五号宋体字,页眉标注从论文主体部分开始(绪论或第一章)。

% 论文页码从“主体部分(绪论、正文、结论)”开始,直至“参考文献、附录”结
% 束,用五号阿拉伯数字连续编码,页码位于页脚居中。封面、题名页不编页码。 摘要、
% 目录、图标清单、主要符号表用五号小罗马数字连续编码,页码位于页脚居中。
\fancypagestyle{mainmatter}{
        \fancyhead{}
        \fancyfoot{}
        \fancyhead[C]{\songti\zihao{-5}\centering
                \uline{北京航空航天大学第二十八届“冯如杯”学生创业计划竞赛参赛作品}
        }
        \fancyfoot[C]{\zihao{5}\thepage}
        \renewcommand{\headrulewidth}{0pt}
}
\fancypagestyle{plain}{
        \pagestyle{fancy}
}

% 汉化
\renewcommand{\contentsname}{目\qquad 录}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}

% 格式
% Format!
% 章标题:三号,黑体,居中。
% 节标题:四号,黑体,居左。
% 条标题:小四号,黑体,居左。
% 章、节、条三级标题为单倍行距,段前、段后各设为 0.5 行(即前后各空 0.5 行)。
\ctexset{
        chapter={
                format={\heiti\zihao{3}\centering},
                name={},
                number={\zihao{3}\thechapter},
                aftername={\space},
                beforeskip={\baselineskip},
                afterskip={\baselineskip},
                fixskip=true,
                indent=0pt,
        },
        section={
                format={\zihao{4}\heiti\raggedright},
                number={\zihao{4}\thesection},
                aftername={\space},
                beforeskip={\baselineskip},
                afterskip={\baselineskip},
                fixskip=true,
                indent=0pt
        },
        subsection={
                format={\heiti\zihao{-4}\raggedright},
                aftername={\space},
                number={\zihao{-4}\thesubsection},
                beforeskip={\baselineskip},
                afterskip={\baselineskip},
                fixskip=true,
                indent=0pt,
        },
        paragraph={
                runin=false,
                format={\heiti\normalsize},
                beforeskip=0pt,
                afterskip=0pt,
                number=\theparagraph,
        },
        subparagraph={
                format={\songti\normalsize},
                beforeskip=0pt,
                afterskip=0pt,
        },
        appendix={
                name={附录},
                number={\chinese{chapter}},
        },
}

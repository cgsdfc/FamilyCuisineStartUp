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
\RequirePackage{tabularx}
\input{five-years-table}
\pgfplotsset{ compat=newest }


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
    \fancyfoot[C]{\zihao{5}\roman{\thepage}}
}
% \iffalse
% \fancypagestyle{mainmatter}{
%     \fancyhead{}
%     \fancyfoot{}
%     \ifbuaa@bachelor
%         \fancyhead[C]{
%             \includegraphics[width=37bp]{figure/buaamark.eps}\hfill
%             \raisebox{2ex}{\heiti\zihao{4}\buaa@university 毕业设计(论文)}\hfill
%             \raisebox{2ex}{\songti\zihao{5}第\quad\thepage\quad 页}
%         }
%     \else
%         \if@twoside
%             \fancyhead[CO]{\zihao{-5}\songti
%                 \buaa@university\buaa@headdegree 学位论文\vspace{1.5mm}
%             }
%             \fancyhead[CE]{\zihao{-5}\songti\leftmark\vspace{1.5mm}}
%         \else
%             \fancyhead[C]{\zihao{-5}\songti
%                 \ifthenelse{\isodd{\value{page}}}
%                     {\buaa@university\buaa@headdegree 学位论文}
%                     {\leftmark}
%                 \vspace{1.5mm}
%             }
%         \fi
%         \fancyfoot[C]{\zihao{5}\thepage}
%     \fi
%     \renewcommand{\headrulewidth}{0.5bp} % 页眉线宽度
% }

% \fancypagestyle{plain}{
%     \pagestyle{fancy}
% }
% \fi

% 汉化
\renewcommand{\contentsname}{目\qquad 录}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}

% 格式
\ctexset{
        chapter={
                % 章标题:三号,黑体,居中。
                format={\centering\zihao{3}\heiti},
                numbering=true,
                name={},
                number={\zihao{3}\thechapter},
                % aftername={\quad},
                % titleformat={},
                % beforeskip={-.5\baselineskip},
                % afterskip={\baselineskip},
        },
        section={
            % 节标题:四号,黑体,居左。
                format={\raggedright\zihao{4}\heiti},
                aftername={\quad},
                beforeskip={.5\baselineskip},
                afterskip={.5\baselineskip},
        },
        subsection={
            % 条标题:小四号,黑体,居左。
                format={\zihao{-4}\heiti\raggedright},
                aftername={\quad},
                beforeskip={.5\baselineskip},
                afterskip={.5\baselineskip},
        },
}

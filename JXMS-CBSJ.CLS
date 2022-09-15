%!Mode:: "TeX:UTF-8"
\ProvidesClass{JXMS-CBSJ}[2022/02/02]
\LoadClass{ctexart}%本模板基于Ctexart文类开发，符合Latex社区公共项目开发证书1.3。

%交流、BUG反馈请联系作者：v_362502@outlook.com

\RequirePackage{indentfirst} %缩进
\RequirePackage{xeCJK}    %使用系统字体
\RequirePackage{fancyhdr} %自定义页眉页脚
%\pagestyle{empty}                   %不设置页眉页脚
\RequirePackage{ amsthm, amssymb, amsfonts} %数学公式
\RequirePackage[fleqn]{amsmath} 	%---[fleqn}选项------实现公式全局居左排列
\RequirePackage[left=3cm,right=3cm,top=3cm,bottom=3cm]{geometry}
\RequirePackage{booktabs} %插入表格
\RequirePackage[section]{placeins} %避免浮动
\RequirePackage{listings} %插入代码
\RequirePackage{color}    %颜色宏包
\RequirePackage[svgnames, table]{xcolor} %彩色表格
\RequirePackage{algorithmicx}
\RequirePackage{algpseudocode}
\RequirePackage{algorithm,algpseudocode,float}
\RequirePackage{lipsum}


\RequirePackage{enumitem}  %调整列举环境
\RequirePackage{url}
\RequirePackage{fontspec,xunicode}
\defaultfontfeatures{Mapping=tex-text} %如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。

\RequirePackage{graphicx}
\graphicspath{{imgage/}}
\graphicspath{{figures/}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 缩进及行间距
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\parindent}{22pt} %重新定义缩进长度
\setlength{\baselineskip}{20pt}  %定义行间距
\renewcommand{\baselinestretch}{1.0} %定义行间距
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 列表设置
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setenumerate{fullwidth,itemindent=\parindent,listparindent=\parindent,itemsep=0ex,partopsep=0pt,parsep=0ex}
\setenumerate[2]{label=\alph*),leftmargin=1.5em}  %二级item设置
\setitemize{itemindent=38pt,leftmargin=0pt,itemsep=-0.4ex,listparindent=26pt,partopsep=0pt,parsep=0.5ex,topsep=-0.25ex}
\setdescription{itemindent=38pt,leftmargin=0pt,itemsep=-0.4ex,listparindent=26pt,partopsep=0pt,parsep=0.5ex,topsep=-0.25ex}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 图的标题行间距设置
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\bottomcaption}{%
	\setlength{\abovecaptionskip}{6pt}%
	\setlength{\belowcaptionskip}{6pt}%
	\caption}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 字体定义
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setmainfont{Times New Roman}  %默认英文字体.serif是有衬线字体sans serif无衬线字体
\setmonofont{Consolas}
\setCJKmainfont[ItalicFont={楷体}, BoldFont={黑体}]{宋体}%衬线字体 缺省中文字体为
\setCJKsansfont{黑体}
\punctstyle{hangmobanjiao}
%-----------------------xeCJK下设置中文字体------------------------------%
\setCJKfamilyfont{song}{SimSun}                             %宋体 song
\newcommand{\song}{\CJKfamily{song}}
\setCJKfamilyfont{fs}{FangSong}                      %仿宋  fs
\newcommand{\fs}{\CJKfamily{fs}}
\setCJKfamilyfont{ktgb}{KaiTi}                      %楷体2312 ktgb
\newcommand{\ktgb}{\CJKfamily{ktgb}}
\setCJKfamilyfont{yh}{Microsoft YaHei}                    %微软雅黑 yh
\newcommand{\yh}{\CJKfamily{yh}}
\setCJKfamilyfont{hei}{SimHei}                              %黑体  hei
\newcommand{\hei}{\CJKfamily{hei}}
\setCJKfamilyfont{hwxk}{STXingkai}                                %华文行楷  hwxk
\newcommand{\hwxk}{\CJKfamily{hwxk}}
%------------------------------设置字体大小------------------------%
\newcommand{\shiyanbaogao}{\fontsize{36pt}{\baselineskip}\selectfont}
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}     %初号
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont} %小初号
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}      %一号
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}      %二号
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}  %小二号
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}  %三号
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}      %四号
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}  %小四号
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}    %五号
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}   %小五号
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}  %六号
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}    %七号

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 图题字体大小相同
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{caption}
\captionsetup{font={footnotesize}}   % footnotesize = 9pt
\captionsetup[lstlisting]{font={footnotesize}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 重定义枚举编号为 1),2)...
% \renewcommand{\labelenumi}{\theenumi)}
%---------------------------使用说明-------------------------------------------------
% 若无此需要则将其取置

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 重定义section标题
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\CTEXsetup[format={\centering\CJKfamily{zhsong}\zihao{2}},,aftername={\quad},beforeskip={0.5ex},afterskip={0.5ex}]{section}
\CTEXsetup[format={\raggedright\CJKfamily{zhsong}\zihao{-3}},,aftername={\quad},beforeskip={0.5ex},afterskip={0.5ex}]{subsection}
\CTEXsetup[format={\raggedright\CJKfamily{zhsong}\zihao{4}},,aftername={\quad},beforeskip={0.5ex},afterskip={0.5ex}]{subsubsection}

%\CTEXsetup[number={\chinese{section}},name={附录, ~~ }]{appendix}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 标题名称中文化
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\figurename{\hei 图}
\renewcommand\tablename{\hei 表}
\renewcommand\lstlistingname{\hei 代码}
\renewcommand{\algorithmicrequire}{\textbf{输入:}}
\renewcommand{\algorithmicensure}{\textbf{输出:}}
\newtheorem{define}{定义}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%目录样式定制
\setcounter{tocdepth}{2} %控制目录显示层级
\RequirePackage{titletoc}
\titlecontents{section}[2em]{\songti \bfseries \zihao{4} \vspace{10pt}}{\contentslabel{1em}}{\hspace*{-4em}}{~\titlerule*[0.6pc]{$.$}~\contentspage}

\titlecontents{subsection}[3em]{\song \zihao{-4} \vspace{10pt}}{\contentslabel{2em}}{\hspace*{-4em}}{~\titlerule*[0.6pc]{$.$}~\contentspage}

\titlecontents{subsubsection}[4em]{\song \zihao{-4} \vspace{10pt}}{\contentslabel{3em}}{\hspace*{-4em}}{~\titlerule*[0.6pc]{$.$}~\contentspage}
%---------------------------使用说明-------------------------------------------------
%1.{section}:标题级别
%2.[4em]:标题位置 (左间距)
%3.{\bfseries \zihao{5} \vspace{10pt}}:标题格式 (设置标题的整体格式，如字体尺寸、粗细、与上一个标题的垂直距离等，可空置)
%4.{\contentslabel{4em}}:标题标志 (设置标题标志的格式，如序号格式、序号宽度、序号与标题内容之间的间距等，不可空置)
%5.{\hspace*{-4em}}:无序号标题 (设置无序号标题的格式，如字体、字体尺寸、位置等。该参数可以空置)
%6.{~\titlerule*[0.6pc]{$.$}~\contentspage}:指引线与页码 (设置标题与页码之间的指引线样式以及页码的格式，该参数如果空置，标题将无指引线和页码)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%图表中英双标题定制
\RequirePackage{bicaption}
\captionsetup[figure][bi-second]{name=Figure} %设置图的英文编号前缀
\captionsetup[table][bi-second]{name=Table} %设置表的英文编号前缀
%---------------------------使用说明-------------------------------------------------
%在 figure 或者 table 环境中使用 \bicaption 命令生成中英文双语标题即可
%\begin{figure}
%  \centering
%	\includegraphics[width=.75\textwidth]{image}
%	\bicaption{中文标题}{English title} \label{label:figxx}
%	\end{figure}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%实现公式图表按章节编号
\RequirePackage{amsmath}
\numberwithin{equation}{section}
\numberwithin{figure}{section}
\numberwithin{table}{section}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%实现表格单元占据多个行或者列
\RequirePackage{multirow}
%---------------------------使用说明-------------------------------------------------
% \multirow{NUMBER_OF_ROWS}{WIDTH}{CONTENT} 
% NUMBER_OF_ROWS代表该表格单元占据的行数，
% WIDTH代表表格的宽度，一般填 * 代表自动宽度，
% CONTENT则是表格单元里的内容.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%cite角标定制
\RequirePackage[superscript]{cite}       %将cite角标置于右上角
\RequirePackage[colorlinks,
linkcolor=black, %目录颜色
anchorcolor=black, 
citecolor=black    %cite角标颜色设置
]{hyperref}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%定义图表标题大小
\captionsetup{font={{normalsize}}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%定义定理环境
\newtheorem{theorem}{\song 定理}[section]
\newtheorem{definition}{\song 定义}[section]
%定义定理样式


%---------------------------使用说明-------------------------------------------------
% \newtheorem{name}[counter]{text}[section]
% name：标识这个环境的关键字（用于编程）
% text：真正在文档中打印出来的定理环境的名字
% counter：计数器；一般新定义的定理环境会自己用一个新的计数器，但是可以在 counter 中传入其他的定理环境，表示和这个环境共用计数器。
% section：定理编号依赖于某个章节层次（比如：定理1.1）

%%%%%%%%%%%%%%%%%%%%%%自定义命令%%%%%%%%%%%%%%%%%%%

\setlength{\headheight}{15pt} %设置页眉高度，防止出现badbox
\newcommand\Zongjingli[1]{#1}
\renewcommand\headrulewidth{0pt} %取消页眉下横线

\setlength\columnsep{0.6cm}  % 设置两栏之间的间距为0.6cm
% \columnseprule=2pt         % 实现插入分隔线


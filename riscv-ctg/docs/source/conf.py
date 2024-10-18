# See LICENSE.incore for details


# riscv_ctg documentation build configuration file, created by
# sphinx-quickstart on Fri Jun  9 13:47:02 2017.
#
# This file is execfile()d with the current directory set to its
# containing dir.
#
# Note that not all possible configuration values are present in this
# autogenerated file.
#
# All configuration values have a default; values that are commented out
# serve to show the default.

import sys
import os
import re

import sphinx_rtd_theme

def get_version():
    changelog = open('../../CHANGELOG.md','r').read()
    x = re.findall(r'## \[(.*?)\] -',changelog)[0]
    return str(x)

sys.path.insert(0, os.path.abspath('../..'))
sys.setrecursionlimit(1500)

# General information about the project.
project = 'RISC-V Compatibility Test Generator'
copyright = u'2020 InCore Semiconductors Pvt. Ltd'

author = ''

version = str(get_version())
# The full version, including alpha/beta/rc tags
release = version

def setup(app):
    app.add_stylesheet("custom.css")
    app.add_css_file("_static/custom.css")

# -- General configuration ---------------------------------------------------

# If your documentation needs a minimal Sphinx version, state it here.
#needs_sphinx = '1.0'

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
needs_sphinx = '1.7.5'
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.doctest',
    'sphinx.ext.intersphinx',
    'sphinx.ext.todo',
    'sphinx.ext.coverage',
    'sphinx.ext.mathjax',
    'sphinx.ext.viewcode',
    'sphinxcontrib.autoyaml',
    'sphinxcontrib.bibtex',
    'sphinx_tabs.tabs',
    'm2r2'
]

# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# The suffix(es) of source filenames.
# You can specify multiple suffix as a list of string:
source_suffix = ['.rst', '.md']
#source_suffix = '.rst'

# The encoding of source files.
#source_encoding = 'utf-8-sig'

# The master toctree document.
master_doc = 'index'


# The language for content autogenerated by Sphinx. Refer to documentation
# for a list of supported languages.
#
# This is also used if you do content translation via gettext catalogs.
# Usually you set "language" from the command line for these cases.
language = None

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
exclude_patterns = ['_build']

# The name of the Pygments (syntax highlighting) style to use.
pygments_style = 'sphinx'


# -- Options for HTML output -------------------------------------------------

# If true, `todo` and `todoList` produce output, else they produce nothing.
todo_include_todos = True


# -- Options for HTML output ----------------------------------------------

github_url = 'https://github.com/riscv/riscv-ctg'
html_show_sourcelink = True
# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
#
#html_theme = 'bootstrap'
#html_theme = 'alabaster'
html_theme_path = [sphinx_rtd_theme.get_html_theme_path()]
html_theme = 'sphinx_rtd_theme'
html_theme_options = {
        'prev_next_buttons_location': 'both',
        'display_version': True,
        'collapse_navigation':True,
        'sticky_navigation': True,
        'navigation_depth': 4,
        'includehidden': True,
        'titles_only': False
        }
#html_sidebars = {
#    "**": ["about.html", "navigation.html", "searchbox.html", "donate.html"]
#}

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ['_static']
html_logo='_static/incore_logo.png'
html_show_license = True
docs_title = 'Docs / %s' %(version)
# The name of an image file (within the static path) to use as favicon of the
# docs.  This file should be a Windows icon file (.ico) being 16x16 or 32x32
# pixels large.
html_favicon = '_static/onlyC.png'
html_context = {
    'show_license': html_show_license,
    'docs_title': docs_title,
    'is_release': False,
    'theme_logo_only': False,
    'current_version': version,
     }
html_last_updated_fmt = '%b %d, %Y'
# If false, no module index is generated.
html_domain_indices = False

# If false, no index is generated.
html_use_index = True

# If true, the index is split into individual pages for each letter.
html_split_index = True

# If true, links to the reST sources are added to the pages.
html_show_sourcelink = False

# If true, "Created using Sphinx" is shown in the HTML footer. Default is True.
html_show_sphinx = False

# If true, license is shown in the HTML footer. Default is True.
html_show_license = True

# Custom sidebar templates, must be a dictionary that maps document names
# to template names.
#
# The default sidebars (for documents that don't match any pattern) are
# defined by theme itself.  Builtin themes are using these templates by
# default: ``['localtoc.html', 'relations.html', 'sourcelink.html',
# 'searchbox.html']``.
#
# html_sidebars = {}



# Output file base name for HTML help builder.
htmlhelp_basename = 'RISC-V Compatibility Test Generator'

# -- Options for LaTeX output ---------------------------------------------

# -- Options for LaTeX output ------------------------------------------------
latex_engine='xelatex'
numfig = True
latex_elements = {
    # The paper size ('letterpaper' or 'a4paper').
#
    'papersize': 'letterpaper',
    'releasename':version,
    'extraclassoptions': 'openany, twoside',

    # Sonny, Lenny, Glenn, Conny, Rejne, Bjarne and Bjornstrup
    #'fncychap': '\\usepackage[Bjornstrup]{fncychap}',
    'fncychap': '\\usepackage{fancyhdr}',
    'fontpkg': '\\usepackage{amsmath,amsfonts,amssymb,amsthm}',

    'figure_align':'htbp',
    # The font size ('10pt', '11pt' or '12pt').
#
    'pointsize': '12pt',

    # Additional stuff for the LaTeX preamble.
#
    'preamble': r'''
        % change the fon to san-serif
        %\renewcommand{\familydefault}{\sfdefault}

        %%%%%%%%%%%%%%%%%%%% Meher %%%%%%%%%%%%%%%%%%
        %%%add number to subsubsection 2=subsection, 3=subsubsection
        %%% below subsubsection is not good idea.
        \setcounter{secnumdepth}{3}
        %
        %%%% Table of content upto 2=subsection, 3=subsubsection
        \setcounter{tocdepth}{2}

        \usepackage{amsmath,amsfonts,amssymb,amsthm}
        \usepackage{graphicx}
        \usepackage{array, caption, tabularx,  ragged2e,  booktabs, longtable}
        \usepackage{stfloats}
        \usepackage{multirow}
        \usepackage{gensymb}
        \usepackage{fontspec}
        \setmainfont{Ubuntu Light}
        \definecolor{light-gray}{gray}{0.85}
        \usepackage{color,xesearch}
        \usepackage{soul}
        \sethlcolor{light-gray}
        \makeatletter

        %%% reduce spaces for Table of contents, figures and tables
        %%% it is used "\addtocontents{toc}{\vskip -1.2cm}" etc. in the document
        \usepackage[notlot,nottoc,notlof]{}

        \usepackage{color}
        \usepackage{transparent}
        \usepackage{eso-pic}
        \usepackage{lipsum}

        \usepackage{footnotebackref} %%link at the footnote to go to the place of footnote in the text

        %% spacing between line
        \usepackage{setspace}
        %%%%\onehalfspacing
        %%%%\doublespacing
        \singlespacing


        %%%%%%%%%%% datetime
        \usepackage{datetime}

        \newdateformat{MonthYearFormat}{%
            \monthname[\THEMONTH], \THEYEAR}


        %% RO, LE will not work for 'oneside' layout.
        %% Change oneside to twoside in document class
        \pagestyle{fancy}
        \makeatletter
        \fancypagestyle{normal}{
            \fancyhf{}

            %%% Alternating Header for oneside
            %\fancyhead[L]{\ifthenelse{\isodd{\value{page}}}{ \small \nouppercase{\leftmark} }{}}
            %\fancyhead[R]{\ifthenelse{\isodd{\value{page}}}{}{ \small \nouppercase{\rightmark} }}

            %%% Alternating Header for two side
            \fancyhead[RO]{\small \nouppercase{\leftmark}}
            \fancyhead[RE]{\small \nouppercase{\leftmark}}
            \fancyhead[LE,LO]{\py@HeaderFamily \@title\sphinxheadercomma\releasename}
            %\fancyhead[RE,RO]{\py@HeaderFamily \c@chapter}

            %% for oneside: change footer at right side. If you want to use Left and right then use same as header defined above.
            %\fancyfoot[R]{\ifthenelse{\isodd{\value{page}}}{{\tiny Meher Krishna Patel} }{\href{http://pythondsp.readthedocs.io/en/latest/pythondsp/toc.html}{\tiny PythonDSP}}}

            %%% Alternating Footer for two side
            \fancyfoot[LO, LE]{\small \bf{Copyright \textcopyright \the\year \textbf{ } InCore Semiconductors Pvt. Ltd.}}
            %\fancyfoot[LO, LE]{\scriptsize \bf{RISC-V Compatibility Test Generator}}

            %%% page number
            \fancyfoot[RO, RE]{\thepage}

            \renewcommand{\headrulewidth}{0.4pt}
            \renewcommand{\footrulewidth}{0.4pt}
        }
        \makeatother
        \RequirePackage{tocbibind} %%% comment this to remove page number for following
        \addto\captionsenglish{\renewcommand{\contentsname}{Table of contents}}
        \addto\captionsenglish{\renewcommand{\listfigurename}{List of figures}}
        \addto\captionsenglish{\renewcommand{\listtablename}{List of tables}}
        % \addto\captionsenglish{\renewcommand{\chaptername}{Chapter}}


        %%reduce spacing for itemize
        \usepackage{enumitem}
        \setlist{nosep}

        %%%%%%%%%%% Quote Styles at the top of chapter
        \usepackage{epigraph}
        \setlength{\epigraphwidth}{0.8\columnwidth}
        \newcommand{\chapterquote}[2]{\epigraphhead[60]{\epigraph{\textit{#1}}{\textbf {\textit{--#2}}}}}
        %%%%%%%%%%% Quote for all places except Chapter
        \newcommand{\sectionquote}[2]{{\quote{\textit{``#1''}}{\textbf {\textit{--#2}}}}}

        \linespread{1}
    ''',


    'maketitle': r'''
        \pagenumbering{Roman} %%% to avoid page 1 conflict with actual page 1

        \begin{titlepage}
            \centering

            \begin{figure}[!h]
                \centering
                \includegraphics[scale=0.2]{incore_logo.png}
            \end{figure}
            \vspace*{40mm} %%% * is used to give space from top
            \textbf{\Huge {RISC-V Compatibility Test Generator}}
            \vspace*{40mm} %%% * is used to give space from top


            \vspace{10mm}
            \Large \textbf{{Release: \releasename}}
            \vspace{10mm}

            Last update on : \today

            \vspace*{0mm}
            %\small  Last updated : \MonthYearFormat\today


            %% \vfill adds at the bottom
            \vfill
            Copyright \textcopyright \the\year \textbf{ } InCore Semiconductors Pvt. Ltd.
        \end{titlepage}
        \sloppy

        \clearpage
%        \pagenumbering{roman}
        \tableofcontents
        \clearpage
        \listoffigures
        \clearpage
        \listoftables
        \clearpage
        \pagenumbering{arabic}
        ''',
    # Latex figure (float) alignment
#
    # 'figure_align': 'htbp',
    'sphinxsetup': \
        'hmargin={0.7in,0.7in}, vmargin={1in,1in}, \
        verbatimwithframe=true, \
        TitleColor={rgb}{0,0,0}, \
        HeaderFamily=\\rmfamily\\bfseries, \
        InnerLinkColor={rgb}{0,0,1}, \
        OuterLinkColor={rgb}{0,0,1}',

        'tableofcontents':' ',



}

#latex_elements = {
#    # The paper size ('letterpaper' or 'a4paper').
#    #
#     'papersize': 'letterpaper',
#
#    # The font size ('10pt', '11pt' or '12pt').
#    #
#     'pointsize': '10pt',
#
#    # Additional stuff for the LaTeX preamble.
#    #
#     'preamble': '',
#
#    # Latex figure (float) alignment
#    #
#     'figure_align': 'htbp',
#
#     'atendofbody' : ' InCore Semiconductors Pvt. Ltd.'
#}

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title,
#  author, documentclass [howto, manual, or own class]).
latex_documents = [
    (master_doc, 'riscv_ctg.tex', 'RISC-V CTG Documentation',
     'InCore Semiconductors Pvt. Ltd.', 'manual'),
]

latex_logo = '_static/incore_logo.png'

latex_show_pagerefs = True

# -- Options for manual page output ------------------------------------------

# One entry per manual page. List of tuples
# (source start file, name, description, authors, manual section).
man_pages = [
    (master_doc, 'riscv_ctg', 'RISC-V CTG Documentation',
     'InCore Semiconductors Pvt. Ltd.', 1)
]


# -- Options for Texinfo output ----------------------------------------------

# Grouping the document tree into Texinfo files. List of tuples
# (source start file, target name, title, author,
#  dir menu entry, description, category)
texinfo_documents = [
    (master_doc, 'riscv_ctg', 'RISC-V CTG Documentation',
     'InCore Semiconductors Pvt. Ltd.', 'One line description of project.',
     'Miscellaneous'),
]

# -- Options for Epub output -------------------------------------------------

# Bibliographic Dublin Core info.
epub_title = project
epub_author = author
epub_publisher = author
epub_copyright = copyright

# The unique identifier of the text. This can be a ISBN number
# or the project homepage.
#
# epub_identifier = ''

# A unique identification for the text.
#
# epub_uid = ''

# A list of files that should not be packed into the epub file.
epub_exclude_files = ['search.html']


# -- Extension configuration -------------------------------------------------

# -- Options for intersphinx extension ---------------------------------------

# Example configuration for intersphinx: refer to the Python standard library.
intersphinx_mapping = {'https://docs.python.org/': None}

# -- Options for todo extension ----------------------------------------------

# If true, `todo` and `todoList` produce output, else they produce nothing.
todo_include_todos = True

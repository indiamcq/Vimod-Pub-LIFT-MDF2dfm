# Vimod-Pub-LIFT-MDF2dfm
Process LIFT output to MDF and onto DictionaryForMids J2ME dictionary

## Installation

### Required

You must have a version of Java installed on your computer. If you don't know if you have Java installed, then open a command prompt and type in `where java`. If it is installed it should list several locations where it is found, otherwise it will tell you it is not found. You can download from [https://java.com/en/download/](https://java.com/en/download/) Then install Java.

### Download

From the Github project [indiamcq/Vimod-Pub-LIFT-MDF2dfm](https://github.com/indiamcq/Vimod-Pub-LIFT-MDF2dfm) download the [Download ZIP](https://github.com/indiamcq/Vimod-Pub-LIFT-MDF2dfm/archive/master.zip)

Unzip that and place the included folder **Vimod-Pub-LIFT-MDF2dfm** wherever it suits you. (Note: It must not be put in a folder that needs admin approval. i.e. **Program Files**)

## Setting up your project

The Vimod-Pub publishing environment keeps its projects in the **data** folder. Within that folder can be groups, sub-group and projects. A **project** must have a subfolder called **setup**. Within that folder is one essential file called **project.menu** that definse the wording of the menu and the actions associated with each menu item.

Most projects including this project type also have a **project.tasks** file that defines all the variables/parameters of the project.

Open the file **data\Dict-dfm\xxx\project.tasks** in a text editor. (If you use PSPad for your text editor, there is a syntax and context file under resources\PSPad\Syntax\Vimod-Pub.INI and resources\PSPad\Context\Vimod-Pub.DEF)

````
# project.tasks
** schema type      ;var schema "mdf"
iso code            ;var iso "xxx"
languages           ;var langs "3"
title               ;var voltitle "LanguageName-English-NationalLangName Dictionary"
languages           ;var langname "LanguageName"
** languages        ;var langname2 "English"
languages           ;var langname3 "NationalLangName"
languages           ;var langname4 ""
languages           ;var compiler "FirstName LastName"
Publisher           ;var publisher "© SIL International  http://www.sil.org"
publication date    ;var pubdate 2015
second language     ;var iso2 "eng"
third language      ;var iso3 "xx3"
fourth language     ;var iso4 ""
sourcefile          ;var liftfile "%projectpath%\xxx-full.lift"
** mdf xml file     ;var xmlfile "%projectpath%\%iso%.xml"
** vernacular       ;var vernacular "%iso%"

create project.xslt ;projectxslt
````

Go through and edit each line by modifying what is in double quotes. Leave all the rest intact. Though if you want to add more information before the semi-colon that is also okay.

The lines starting with \*\* do not need to be edited.

Make sure you enter the source file variable **liftfile**. It does not have to be in the **%projectpath%** folder it can be anywhere on your computer.

**%projectpath%** for the project refers to the absolute path of the relative path, it is automatically specified, you do not need to do it:
**data\Dict-dfm\xxx\**

## Starting Vimod-Pub

* Open a command prompt at the folder **Vimod-Pub-LIFT-MDF2dfm** you just unzipped and moved. (To do that In Windows Explorer, hold down SHIFT and right click on the folder, then select **Open command window here**) 
* Type in `pub` and press ENTER.
* Choose the menu item letter **a** and press ENTER
* Continue to navigate the menu system untill you are in the project.

## Steps for making DFM JAR file

This is a flexible build system, that has three outputs. 

* A simple word list output
* A full dictionary with search on key words
* A full dictionary with search on all words

The first two are the two recommended version to use. There is also a possibility of making a minimal dictionary that omits example sentences, but those options are commented out in the relevant files.


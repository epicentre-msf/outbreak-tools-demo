# Show case of outbreak-tools usage

<script  src="readme_files/libs/quarto-diagram/mermaid-postprocess-shim.js"></script>

<div align="center">

<p align="center">

*Excercises and show-case of
[outbreak-tools](https://github.com/epicentre-msf/outbreak-tools/) and
[outbreak-tools-setup](https://github.com/epicentre-msf/outbreak-tools-setup/).*

[![Download all the materials of the
demo](https://github.com/epicentre-msf/outbreak-tools/raw/dev/src/imgs/materials.svg)](https://github.com/epicentre-msf/outbreak-tools-demo/raw/main/demo_materials.zip)
[![Download Latest version of setup
file](https://github.com/epicentre-msf/outbreak-tools/raw/main/src/imgs/setup_file.svg)](https://github.com/epicentre-msf/outbreak-tools-setup/raw/main/setup.xlsb)
[![Download Latest development version of the
designer](https://github.com/epicentre-msf/outbreak-tools/raw/dev/src/imgs/ribbon_template.svg)](https://github.com/epicentre-msf/outbreak-tools/raw/dev/misc/_ribbontemplate.xlsb)
[![Download ribbon template of
linelist](https://github.com/epicentre-msf/outbreak-tools/raw/dev/src/imgs/dev_designer.svg)](https://github.com/epicentre-msf/outbreak-tools/raw/dev/src/bin/designer_dev.xlsb)
</p>

</div>

## Introduction

Outbreak-tools is a set of tools to facilitate the creation and
maintainance of Excel linelists. In particular, you can easily:

- Define different types of variables (dropdown lists, Excel formulas)
  their format and data validation rules.
- Print a register book that perfectly match your linelist.
- Translate your linelist into several languages.
- Use pre-defined geo databases for patient origin.
- Display custom analyses (univariate, bivariate, temporal, spatial) as
  tables and graphs.  
- Export the entire data or selected variables/lines.
- Migrate the data to an updated version of the linelist.

The linelist is defined in a configuration file called *setup*. This
*setup* file is then loaded into another file that designs the linelist
(the *designer*). The designer creates the linelist, based on the
configurations of the *setup*.

There are 3 steps to creating a linelist:

1- Open the setup file and define your needs. The configuration of the
file is inspired from Kobo’s XLS forms. No in-depth knowledge of Excel
is required. A setup file can be used to create linelists in several
languages.

2- Download geographic data for the targeted area: There is [a
Geo-App](https://reports.msf.net/secure/app/outbreak-tools-geoapp)
available online to download the geobase for the region of interest (new
users must register). The Geo-App is updated as new geographical
information becomes available.

3- Open the designer, load the setup and geobase files, set the options
(languages etc) and generate your linelist.

# Use-case

In this demo, you’ll familiarise yourself with the various features of
the tool and simulate a scenario well known to epidemiologists in the
field: upgrading a linelist that already contains data to a new version.
This often happens when you want to collect new variables as the
epidemic unfold and you need to answer new questions.

<img src="readme_files/figure-commonmark/mermaid-figure-2.svg"
style="width:6.6in;height:4.9in" />

The folders contain all the materials needed to perform the exercises.

<div>

> **Download and unzip the materials**
>
> You can download the exercices in `zip` file for offline use
> [here](https://github.com/epicentre-msf/outbreak-tools-demo/raw/main/demo_materials.zip).
> **Extract the zip files after the download.**
>
> **Be sure the downloaded files are not locked by windows**
>
> On some Windows machine, you will need to unblock downloaded files to
> be able to use macros. In some cases, excel macro files downloaded
> from the web are automatically blocked for security reasons. You can
> unblock the files by:
>
> 0- Right click on the file
>
> 1- Select Properties
>
> 2- Check the *Unblock* box on the bottom right.

</div>

<div>

> **Activate macros before exercises**
>
> If you’re going to run the designer to build a linelist, you’ll need
> to enable VBA macros in Excel, as well as access to the VBA object
> model:
>
> 0- Open Excel
>
> 1- Display the *Developer* tab in Excel.
>
> 2- In the *Developer* tab, click on *Macro security*. Check the
> options as shown in the following image:
>
> <img src="macros_security_en.png" style="width:80.0%"
> data-fig-align="center" />

</div>

## Exercise 1: Getting started.

- Open the linelist `linelist_measles_en_ex1.xlsb` located in the
  `linelist` folder. The file password is 5678. It contains a mock
  measles dataset.

- Take a quick look at the different sheets to get an overview.

- In the *Linelist patients* sheet, add one or two patients manually. In
  particular, use the geo-Helper to enter the patient’s origin (see
  *Data Entry and Print* ribbon).

- Explore univariate, bivariate, temporal and spatial analyses. Use
  button in *Analyses Sheets* ribbon to recalculate the analyses.

  - In the temporal analysis, change the start/end dates as well as the
    time unit of the analysis.
  - In the spatial analysis, change the administrative level and divide
    by the population size to get attack rates (note we don’t have
    population estimates below the health-zone level).

- Go back to the *Linelist patients* and use the filters to show only
  patients under 2 years of age. Then go back to the analyses sheets and
  recalculate (use button in *Analyses Sheets* ribbon).

- Export the filtered data using the `anonymous export for MSF` (see
  *Export button* in *Admin* ribbon). Open and browse the exported file.
  If you didn’t change the password, it should be: **605637**.

- Finally, print a register book for the `Linelist patients` (see *Data
  Entry and Print* ribbon).

## Exercise 2: Adding new variables

- Open the setup file `setup_measles_base_ex2.xlsb` in the `setup`
  folder. This setup file corresponds to the linelist you’ve been
  working with. Take a look at the different sheets and see how they
  relate to the linelist.

- Now, we would like to add the following variables:

  - In the *Admission* section of *Linelist patients* sheet, just before
    the *hospitalisation* sub-section:
    - A variable called `muac` (MUAC) that can take three values: “Green
      (125+mm)”, “Yellow (115-124mm)”, “Red (\< 115mm)”
  - In the *Vaccination* section of *Linelist patients* sheet, just
    after *Vaccination against measles*:
    - A variable called `vacci_measles_doses` (Number of doses received)
      which is a numeric variable.
    - Create a data validation rule to ensure that this variable remains
      between 0 and
      4.  

- Translate newly added labels into French (see *Setup Options* ribbon).

- Check the setup for potential errors (see *Setup Options* ribbon).

<div>

> **Note**
>
> *You should normally have a configuration file identical to*
> *`setup_measles_exercise_two.xlsb` in the* *`setup` folder. You can
> also start from this file if you like.*

</div>

- Regenerate a new linelist named `linelist_measles_en_ex2` using the
  designer located in the `designer` folder. Save the linelist in the
  demo folder, making sure you’ve selected English as the language.
  You’ll use the file `geobase-cod-2023-03-13_20230612.xlsx` in the
  `geobase` folder as your geobase.

<div>

> **Mac Users**
>
> Sometimes generating the linelist using a ribbon file can fail on Mac.
> In that case, it will default back to a linelist with button instead,
> but you should be able to pursue the exercices with this linelist. We
> are working to provide full support for Ribbon on Mac Os.
>
> You might experience screen flickering during the linelist creation
> process.

</div>

- You are now ready to migrate your data from the old to the new
  linelist. You need to proceed in 2 steps:
  - First, go back to the linelist `linelist_measles_en_ex1.xlsb` and
    remove all filters (see *Data Entry and Print* ribbon). Then, export
    the data (see *Admin* ribbon \> *Advance Options* \> *Export data*)
    to a location of your choice. This migration file contains all your
    data.
  - Second, go back to the new linelist `linelist_measles_en_ex2.xlsb`
    and import the migration file (see *Admin* ribbon \> *Advance
    Options* \> *Import data*). Look at the importation report and
    browse the data in the new linelist.

## Exercise 3: Adding new Analysis

We’ve decided to add some analyses on the type of discharge (variable
`outcome`) to the linelist.

- Open the setup file `setup_measles_base_ex3.xlsb` located in the
  `setup` folder.

- In the *Analysis* sheet, section *Univariate Analysis* add a
  univariate table showing the number of patients by type of discharge.
  Add percentages and a graph for this table.

- In the *Analysis* sheet, section *Time Series Analysis* add a temporal
  table showing the number of patient by type of discharge and
  notification date. Add percentages by row and add total.

- In the *Analysis* sheet, section *Labels for Time Series Graphs* add a
  graph title *Deaths*. In the section *Graph on Time Series* graph
  specifications, add the number of deaths per notification date, in
  bars.

- Translate newly added labels into French (see *Setup Options* ribbon).

- Check the setup for potential errors (see *Setup Options* ribbon).

<div>

> **Note**
>
> *You should get a configuration file identical to
> `setup_measles_exercise_three.xlsb` in* *the `setup` folder. You can
> also start from this file if you like.*

</div>

- Regenerate a new linelist named `linelist_measles_en_ex3` using the
  designer located in the `designer` folder. Save the linelist in the
  demo folder, making sure you’ve selected English as the language.
  You’ll use the file `geobase-cod-2023-03-13_20230612.xlsx` in the
  `geobase` folder as your geobase.

- You are now ready to migrate your data from the old to the new
  linelist. You need to proceed in 2 steps:

  - First, go back to the linelist `linelist_measles_en_ex1.xlsb` and
    remove all filters (see *Data Entry and Print* ribbon). Then, export
    the data (see *Admin* ribbon \> *Advance Options* \> *Export data*)
    to a location of your choice. This migration file contains all your
    data.
  - Second, go back to the new linelist `linelist_measles_en_ex3.xlsb`
    and import the migration file (see *Admin* ribbon \> *Advance
    Options* \> *Import data*). Look at the importation report and
    browse the data in the new linelist.

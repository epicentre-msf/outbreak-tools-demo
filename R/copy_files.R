
# copy the lastest designer and setup files
user_name  <- Sys.info()[["user"]]

# Please pay attention to which branch you are copying from.
# SHOULD BE ON DEV BRANCH

obt_folder  <- dplyr::case_when(
    user_name == "Y-AMEVOIN" ~ "D:/Projects/outbreak-tools",
    user_name == "komlaviamevoin" ~ "~/Documents/Projects/outbreak-tools",
    TRUE ~ "~/outbreak-tools"
)

setup_folder  <- dplyr::case_when(
    user_name == "Y-AMEVOIN" ~ "D:/Projects/outbreak-tools-setup",
    user_name == "komlaviamevoin" ~ "~/Documents/Projects/outbreak-tools-setup",
    TRUE ~ "~/outbreak-tools-setup"
)

# copy the designer
file.copy(from = glue::glue("{obt_folder}/designer.xlsb"),
          to = "./designer/designer.xlsb",
          overwrite = TRUE)

# # copy the ribbon template
file.copy(from = glue::glue("{obt_folder}/misc/_ribbontemplate_main.xlsb"),
          to = "./designer/_ribbontemplate.xlsb",
          overwrite = TRUE
)

# # copy the empty setup
file.copy(
    from = glue::glue("{setup_folder}/setup.xlsb"),
    to = "./setup/empty_setup.xlsb",
    overwrite = TRUE
)


# add the files to a zip file for demo
utils::zip(
    zipfile = "demo_materials.zip",
    files = c(
    "./linelist/linelist_measles_en_ex1.xlsb",
    "./linelist/linelist_measles_en_ex2.xlsb",
    "./linelist/linelist_measles_en_ex3.xlsb",
    "./data/import_linelist_en.xlsx",
    "./data/import_linelist_fr.xlsx",
    "./setup/setup_measles_base_ex2.xlsb",
    "./setup/setup_measles_exercise_two.xlsb",
    "./setup/setup_measles_base_ex3.xlsb",
    "./setup/setup_measles_exercise_three.xlsb",
    "./geobase/geobase-cod-2023-03-13_20230612.xlsx",
    "./exercise/fr/demo_exercise_fr.html",
    "./exercise/en/demo_exercise_en.html",
    "./exercise/fr/demo_exercise_fr.pdf",
    "./exercise/en/demo_exercise_en.pdf",
    "./exercise/fr/demo_exercise_fr.docx",
    "./exercise/en/demo_exercise_en.docx",
    "./designer/designer.xlsb",
    "./designer/_ribbontemplate.xlsb"
   )
)

# add the files to a zip file for demo
utils::zip(
    zipfile = "demo_materials_usage.zip",
    files = c(
    "./data/import_linelist_en.xlsx",
    "./data/import_linelist_fr.xlsx",
    "./linelist/en/linelist_measles_usage_en.xlsb",
    "./linelist/fr/linelist_measles_usage_fr.xlsb",
    "./exercise/en/demo_usage_en.html",
    "./exercise/en/demo_usage_en.pdf",
    "./exercise/fr/demo_usage_fr.html",
    "./exercise/fr/demo_usage_fr.pdf",
    "./guides/en/OBT-GUI-002-V2.5-EN-User Guide OBT Linelist.pdf"
    ),
   flags = "-j"
)

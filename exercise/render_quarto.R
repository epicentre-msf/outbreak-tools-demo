quarto::quarto_render(input = "./exercise/en/demo_exercise_en.qmd")
quarto::quarto_render(input = "./exercise/fr/demo_exercise_fr.qmd")
quarto::quarto_render(input = "./exercise/fr/demo_usage_fr.qmd")
quarto::quarto_render(input = "./exercise/en/demo_usage_en.qmd")
quarto::quarto_render(input = "./exercise/en/readme.qmd",
                      output_file = "README.md")

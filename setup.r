
if (!require(pacman)) install.packages("pacman")

# Load here
pacman::p_load(
  purrr, # functional programming
  here # computational reproducibility
)

create_dirs <- function(name) {
  dir.create(here(name))
}

purrr::map(c("data", "processed_data", "src", "outputs", "functions"), create_dirs)

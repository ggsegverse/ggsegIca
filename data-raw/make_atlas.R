library(ggseg.extra)
library(ggseg.formats)

Sys.setenv(FREESURFER_HOME = "/Applications/freesurfer/7.4.1")

annot_files <- file.path(
  here::here("data-raw", "fsaverage5"),
  c("lh.ica.annot", "rh.ica.annot")
)

ica <- create_cortical_from_annotation(
  input_annot = annot_files,
  atlas_name = "ica",
  output_dir = "data-raw",
  skip_existing = TRUE,
  cleanup = FALSE
) |>
  atlas_region_contextual("unknown|Unknown", "label")

print(ica)
plot(ica)

.ica <- ica
usethis::use_data(.ica, overwrite = TRUE, compress = "xz", internal = TRUE)

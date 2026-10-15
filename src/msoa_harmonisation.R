


#---------------------------------------------------------------------------------------#


#                     PUTTING TOGETHER UK WIDE "MSOA" BOUNDARIES 2021                      


#---------------------------------------------------------------------------------------#




# 1. BACKGROUND INFORMATION ON GEOGRAPHICAL DATASETS -------------------------------#

#England and Wales, as at 21 march 2021 
#5,000-15,000 residents
#https://geoportal.statistics.gov.uk/datasets/middle-layer-super-output-areas-december-2021-boundaries-ew-bgc-v3-2

#Scottish Intermediate Zones - Intermediate Zone Boundaries 2022 -1,334
#2,500-6,000 residents https://ocsi.uk/2024/12/04/scotlands-statistical-geographies-comparison-with-england-and-wales/
#https://www.data.gov.uk/dataset/f11c9e6e-88ea-4a65-ba66-2ecb89cde175/intermediate-zone-boundaries-2022
#use SG_IntermediateZoneBdry_2022_MHW – Mainland, Highland & Western Isles boundaries, Mean High Water

#Northern Irelands Super Data Zones - 850
#~14,000 to 45,000 (SDZ nest within DEAs)
#https://www.nisra.gov.uk/publications/super-data-zone-boundaries-gis-format



# 2. COMBINE 3 SHAPEFILES TO ONE ---------------------------------------------------#

library(sf)
library(dplyr)
library(stringr)


# -----------------------------
# 1. File paths 
# -----------------------------
paths <- list(
  england_wales = "data/geographies/Middle_layer_Super_Output_Areas_December_2021_Boundaries_EW_BGC_V3_-6221323399304446140/MSOA_2021_EW_BGC_V3.shp",
  scotland      = "data/geographies/SG_IntermediateZoneBdry_2022/SG_IntermediateZoneBdry_2022_MHW.shp",
  n_ireland     = "data/geographies/geography-sdz2021-esri-shapefile/SDZ2021.shp"
)

# -----------------------------
# 2. Read shapefiles
# -----------------------------
read_shp <- function(path) {
  if (grepl("\\.zip$", path)) {
    st_read(paste0("/vsizip/", path))
  } else {
    st_read(path)
  }
}

ew <- read_shp(paths$england_wales)
sc <- read_shp(paths$scotland)
ni <- read_shp(paths$n_ireland)


# -----------------------------
# 3. Harmonise datasets
# -----------------------------

# England & Wales
ew_clean <- ew %>%
  mutate(
    country = "england_wales",
    MSOA21C = MSOA21CD,
    MSOA21N = MSOA21NM,
    DZ21C = NA, DZ21N = NA,
    IZCode = NA, IZName = NA,
    dt_zn_c = MSOA21CD,
    # New column for the region name
    dt_zn_n = MSOA21NM 
  ) %>%
  dplyr::select(dt_zn_c, dt_zn_n, country, MSOA21C, MSOA21N, DZ21C, DZ21N, IZCode, IZName, geometry)

# Scotland
sc_clean <- sc %>%
  mutate(
    country = "scotland",
    MSOA21C = NA, MSOA21N = NA,
    DZ21C = NA, DZ21N = NA,
    IZCode = IZCode, IZName = IZName,
    dt_zn_c = IZCode,
    # New column for the region name
    dt_zn_n = IZName
  ) %>%
  dplyr::select(dt_zn_c, dt_zn_n, country, MSOA21C, MSOA21N, DZ21C, DZ21N, IZCode, IZName, geometry)

# Northern Ireland
ni_clean <- ni %>%
  mutate(
    country = "n_ireland",
    MSOA21C = NA, MSOA21N = NA,
    DZ21C = SDZ2021_cd, DZ21N = SDZ2021_nm,
    IZCode = NA, IZName = NA,
    dt_zn_c = SDZ2021_cd,
    # New column for the region name
    dt_zn_n = SDZ2021_nm
  ) %>%
  dplyr::select(dt_zn_c, dt_zn_n, country, MSOA21C, MSOA21N, DZ21C, DZ21N, IZCode, IZName, geometry)

# -----------------------------
# 4. Harmonise CRS
# -----------------------------
target_crs <- st_crs(ew_clean)
sc_clean <- st_transform(sc_clean, target_crs)
ni_clean <- st_transform(ni_clean, target_crs)

# -----------------------------
# 5. Combine
# -----------------------------
UK_MSOA_IZB_SDZ <- rbind(ew_clean, sc_clean, ni_clean)
dim(UK_MSOA_IZB_SDZ)
# -----------------------------
# 6. Save
# -----------------------------
st_write(UK_MSOA_IZB_SDZ, "/Users/martinapardy/Desktop/Liverpool/imago/data/geographies/UK_MSOA_IZB_SDZ/UK_MSOA_IZB_SDZ.gpkg", delete_dsn = TRUE)


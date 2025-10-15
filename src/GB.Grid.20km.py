# This script prepares a 20×20 km grid covering Great Britain. The resulting data will be used to support the processing of satellite imagery.
# Author: Behzad Valipour Sh. <Behzad.Valipour-Shokouhi@newcastle.ac.uk>

import numpy as np
import pandas as pd

import geopandas as gpd
import os,glob

# I/O Path
storage = '/IMAGO/02.Storage'

# Read Files
uk_admin = gpd.read_file(f'{storage}/DataLake/UK.Border/UK.BoundaryLine.gpkg')
uk_20km_grid = gpd.read_file(f'{storage}/DataLake/UK.Grid/UK.National.gpkg',layer='20km_grid')

uk_20km_grid_filtered = uk_20km_grid[uk_20km_grid.intersects(uk_admin.union_all())]

uk_20km_grid_country = gpd.sjoin(uk_20km_grid_filtered,uk_admin, predicate='intersects')[['tile_name', 'geometry','NAME_1']]

uk_20km_grid_country.rename(columns={'NAME_1':'country'},inplace=True)
uk_20km_grid_country.to_file(f'{storage}/DataLake/UK.Grid/uk_20km_grid.gpkg', driver='GPKG', layer='20km_grid')
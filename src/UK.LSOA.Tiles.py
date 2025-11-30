# This script is joining the LSOA with 20x20km tiles. The LSOA areas which was touching the the tiles were removed.
# Author: Behzad Valipour Sh. <Behzad.Valipour-Shokouhi@newcastle.ac.uk>
import geopandas as gpd
import pandas as pd
import numpy as np

# I/O Path
storage = '/IMAGO/02.Storage'

uk_20km_grid_country = gpd.read_file(f'{storage}/DataLake/UK.Grid/uk_20km_grid.gpkg')
uk_lsoa = gpd.read_file(f'{storage}/DataWarehouse/uk_datazones.gpkg')
uk_lsoa.drop('country',axis=1,inplace=True)
uk_lsoa_grid = uk_lsoa.sjoin(uk_20km_grid_country, how="inner", predicate='intersects').drop(columns=["index_right"])

# Only one LSOA area was tauching the tile boundry and it was removed
uk_lsoa_grid = uk_lsoa_grid[~((uk_lsoa_grid['data_zone_code'] == 'W01001936') & (uk_lsoa_grid['tile_name'] == 'SN66'))]

uk_lsoa_grid = uk_lsoa_grid[['data_zone_code', 'tile_name', 'geometry']]
uk_lsoa_grid.to_file(f'{storage}/DataWarehouse/uk_lsoa_tiles.gpkg', driver='GPKG', layer='lsoa_tiles')
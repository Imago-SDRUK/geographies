
<img src="assets/Imago-logo.png" alt="Imago Logo" width="300"/>

# Imago Geographies Repository

Welcome to the Imago Geographies Repository!
This repository contains the source datasets used by product teams in the IMAGO project to generate various outputs and deliverables.

## List of Data

| Dataset Name | Code | Download | Description/metadata |
|---|---|---|---|
| 1. British National Grid (20 km x 20 km) | [Link](https://github.com/Imago-SDRUK/geographies/blob/main/src/UK.Grid.20km.py) | [Link](https://data.imago.ac.uk/datasets/united-kingdom-20-x-20-km-british-national-grid-tiles) | The key set of tiles used to tile raster data in IMAGO ([Ordnance Survey]([https://github.com/OrdnanceSurvey/OS-British-National-Grids?tab=readme-ov-file)) |
| 2. Small areas | [Link](https://github.com/Imago-SDRUK/geographies/blob/main/src/UK_datazones.qmd) | [Link](https://data.imago.ac.uk/datasets/lsoa-boundaries-for-the-united-kingdom-2021) | LSOAs for England and Wales and equivalent geographies for Scotland and NI: Data Zones, Super Output Areas ([detailed documentation](https://github.com/Imago-SDRUK/geographies/issues/6)) |
| 3. Middle layer areas | [Link PENDING](...) | [Link](https://data.imago.ac.uk/datasets/msoa-boundaries-for-the-united-kingdom-2021) | MSOAs for England and Wales and equivalent geographies for Scotland and NI: Intermediate Zones/Super Data Zones ([detailed documentation](https://github.com/Imago-SDRUK/geographies/issues/16)) |
| 4. Local authority areas | [Link PENDING](...) | [Link](https://data.imago.ac.uk/datasets/local-authority-areas-uk) | LAD for England and equivalent geographies: Unitary authority/Principal area/Council area/Local government district ([detailed documentation](https://github.com/Imago-SDRUK/geographies/issues/17)) |
| 5. Electoral geographies | [Wards](https://github.com/Imago-SDRUK/geographies/blob/main/src/wards.ipynb), [Constituencies](https://github.com/Imago-SDRUK/geographies/blob/main/src/uk_constituencies.ipynb) | [Wards](https://data.imago.ac.uk/datasets/electoral-wards-united-kingdom), [Constituencies](https://data.imago.ac.uk/datasets/legislative-constituencies-westminster-holyrood-and-senedd) | Electoral wards (UK), including District Electoral Areas in NI ([detailed documentation](https://github.com/Imago-SDRUK/geographies/issues/10)); Westminster Parliamentary Constituencies ([detailed documentation](https://github.com/Imago-SDRUK/geographies/issues/11)); Scottish Holyrood Parliamentary Constituencies ([detailed documentation](https://github.com/Imago-SDRUK/geographies/issues/12)); Senedd Cymru constituencies ([detailed documentation](https://github.com/Imago-SDRUK/geographies/issues/13)) |
| 6. Health-service geographies | [Link](https://github.com/Imago-SDRUK/geographies/blob/main/src/icb_nhs.ipynb) | [Link](https://data.imago.ac.uk/datasets/health-boards-uk) | Equivalent geographies in England/Wales/Scotland/NI: Sub Integrated Care Boards (ICBs), Wales Local Health Boards, Scotland NHS Health Boards, Northern Ireland HSC Trusts ([detailed documentation](https://github.com/Imago-SDRUK/geographies/issues/14)) |
| 7. Tiled geographies | [Link](https://github.com/Imago-SDRUK/geographies/blob/main/src/UK.LSOA.Tiles.py) | [Link](https://data.imago.ac.uk/datasets/lsoa-boundaries-for-the-united-kingdom-2021/resources/01a0a434-a506-779f-a126-6c111d1a5f96) | Geographies intersected with British National Grid tiles. This is a helper dataset for the raster data aggregation, currently for small areas (LSOA-equivalent) only. |
| 8... | .... | ... | ... |


## 📖 Instruction

To help us make the data available in the Geographies Repository, please follow these steps:

- If you used code to prepare the dataset, please upload it to the [src](https://github.com/Imago-SDRUK/geographies/tree/main/src) directory in the repository.
- Place the dataset in the designated directory: [Geographies](https://theuniversityofliverpool.sharepoint.com/:f:/r/sites/imago-O365-Team/Shared%20Documents/01.%20Imago%20delivery%20(General)/09.%20Imago%20Data/Geographies?csf=1&web=1&e=hFFyxs) Folder ( _If you do not have access, please contact the RSE team leader or project manager to request permission_).
- Open a new issue using the `Dataset Upload Request` template. Fill in all required information and make sure to select the `RSE Team` project.

- The RSE team will review your request. Once approved and there are no issues, a download link for the dataset will be added to the `List of Data` table.

## 🙋 License

This repository uses a dual-licensing approach:

- **MIT License** for all software code (see [LICENSE](LICENSE))
- **Creative Commons Attribution 4.0 International (CC BY 4.0)** for documentation, data, and non-code content

See the [LICENSE](LICENSE) file for full details.

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->



<img src="assets/Imago-logo.png" alt="Imago Logo" width="300"/>

# Imago Geographies Repository

Welcome to the Imago Geographies Repository!
This repository contains the source datasets used by product teams in the IMAGO project to generate various outputs and deliverables.

## List of Data

| Dataset Name  | Dataset Version | Description      | Geographic Level | Geographic Coverage  | Data Source                                                                                       | Code         | Download         |
|---------------|-----------------|------------------|-------------------|---------------------|---------------------------------------------------------------------------------------------------|--------------|------------------|
| Grid          |2021             | GB National Grid | 20 km             |GB                   | [Ordnance Survey](https://github.com/OrdnanceSurvey/OS-British-National-Grids?tab=readme-ov-file) |[Link](https://github.com/Imago-SDRUK/geographies/blob/main/src/GB.Grid.20km.py)      |[Link](https://imagoblobstore.blob.core.windows.net/geographies/uk_20km_grid.gpkg?sp=r&st=2025-11-24T12:33:20Z&se=2026-12-31T20:48:20Z&spr=https&sv=2024-11-04&sr=b&sig=9bkpS8HCKysNP8bg39KOxz8OQONQ3g%2Bm4qg7I54FuBA%3D)|
|UK Data Zones |2021                 |[Small-area boundaries](https://github.com/Imago-SDRUK/geographies/tree/main/Documents/UK-Data-Zone-Sescription.md)                  |-------              |GB  |ONS Census 2021, North Ireland Statistics and Research Agency 2021, Scottish Government 2022|[Link](https://github.com/Imago-SDRUK/geographies/blob/main/src/UK_datazones.qmd)            |[Link](https://imagoblobstore.blob.core.windows.net/geographies/uk_datazones.gpkg?sp=r&st=2025-11-24T12:36:12Z&se=2026-12-31T20:51:12Z&spr=https&sv=2024-11-04&sr=b&sig=SqXImuAljNDqnocF%2FBOMjA69GB8wAasvnV6GdDjTjCw%3D)|


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


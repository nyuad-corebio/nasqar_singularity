![alt text](nasqar_bar.png "NASQAR")
 
## NASQAR (Nucleic Acid SeQuence Analysis Resource): 
### A web-based platform for High-throughput sequencing data analysis and visualization
- Pre-print: [NASQAR: A web-based platform for High-throughput sequencing data analysis and visualization](https://doi.org/10.1101/709980)
- This repo contains the source code for the NASQAR homepage http://nasqar.abudhabi.nyu.edu/
- Below are links to github repos for the apps contained in NASQAR
- The Dockerfile can be used to build the latest image of NASQAR
- The latest Docker image for nasqar is available via DockerHub https://hub.docker.com/r/nyuadcorebio/nasqarall

### Run using docker (Recommended):
Make sure Docker (version >= 17.03.0-ce) is installed.
```
docker run -p 80:80 nyuadcorebio/nasqarall:nasqar
```
This will run on port 80

To run on a different port:
```
docker run -p 8083:80 nyuadcorebio/nasqarall:nasqar
```
This will run on port 8083

---
### Apps included in NASQAR
NASQAR Custom apps:
- [SeuratV3Wizard (scRNA)](https://github.com/nyuad-corebio/Seuratv3wizard)
- [SeuratWizard (scRNA)](https://github.com/nyuad-corebio/Nasqar2/tree/main//SeuratWizard)
- [deseq2shiny (Bulk RNA)](https://github.com/nyuad-corebio/Nasqar2/tree/main//deseq2shiny)
- [GeneCountMerger (Pre-processing)](https://github.com/nyuad-corebio/Nasqar2/tree/main//GeneCountMerger)
- [ClusterProfShinyGSEA (Enrichment)](https://github.com/nyuad-corebio/Nasqar2/tree/main//ClusterProfShinyGSEA)
- [ClusterProfShinyORA (Enrichment)](https://github.com/nyuad-corebio/Nasqar2/tree/main//ClusterProfShinyORA)

Other open-source apps:
- [STARTapp](https://github.com/jminnier/STARTapp)
- [DEApp](https://github.com/yan-cri/DEApp)
- [Shaman](https://github.com/aghozlane/shaman)

# Introduction

**The GDC Application Programming Interface (API) provides developers with a programmatic interface to query and download GDC data as well as to submit data to GDC**

The GDC API is the external facing REST interface for the National Cancer Institute (NCI) Genomic Data Commons (GDC). The GDC API drives the GDC Data Portal and is made accessible to external developers for programmatic access to the same functionality found through the GDC Data Portal.  This includes searching for and downloading subsets of data files, metadata, and annotations based on specific parameters.  GDC API also allows programatic access for slicing BAM files and for submission of dbGaP registered projects (studies) and its associated  data files, metadata, and annotations to GDC.


**GDC API Key Features are:**

- **Query GDC data**
Using a wide set of parameters, GDC API can be queried to return results of a search or details about a specific entity. Helper features are available to assist the user in building their query and understand available fields
- **Download files**
GDC API can be used to download data files, if restricted data is requested, a token must be provided by the user along with his API call. This token can be downloaded directly from GDC Data Portal or GDC Submission Portal upon login.
- **BAM File Slcing**
GDC API also supports BAM slicing to retrieve only a portion of a file.
- **Submit data to GDC**
GDC API can be used to validate and submit data to the GDC by performing create, update, retrieve actions on entities.

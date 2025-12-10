# Lollipop Plot for Mutation Visualization
### This repository provides a complete guide to generating Lollipop Plots for visualizing protein-level mutations using the maftools package in R.
## Overview
A Lollipop plot is a graphical representation used primarily to visualize mutations across a gene or protein sequence. It shows the distribution and frequency of mutations along the linear sequence of a gene or protein. The “lollipops” represent mutations, where:

The stick represents the position along the sequence.

The circle (lollipop head) represents the mutation event, often scaled by frequency or impact.

Protein domains can also be marked along the x-axis to provide context.

In bioinformatics, Lollipop plots are commonly generated from MAF (Mutation Annotation Format) files from cancer genomics datasets like TCGA. They help quickly identify hotspot mutations—regions in the gene that are frequently mutated.

## Dataset Requirements
This analysis uses a MAF (Mutation Annotation Format) file as input.

Input Source (TCGA – GDC Data Portal)

The mutation dataset was downloaded directly from the GDC (Genomic Data Commons) Portal.

To get the same type of file, follow these steps:

1. Go to the GDC Data Portal.

2. Click on “Explore More Tools”.

3. Choose “Cohort Level MAF” under available tools.

4. Select any cancer cohort you are interested in (e.g., BRCA, LUAD, etc.).

5. Open the file summary page.

6. Download the MAF file to your system.

7. This file contains all somatic mutations identified in the selected TCGA cohort.

Required Columns in the MAF File

Your MAF file should include:
- Hugo_Symbol – Gene name
- Variant_Classification – Mutation type
- HGVSp_Short – Amino-acid change (e.g., p.R248Q)
- Protein_position or HGVSp_Short – Required for plotting
- Lollipop plots need either Protein_position or HGVSp_Short to locate mutations on the protein.

## Step-by-Step Tutorial
1. Install and Load Necessary Package

   Ensure the “maftools” library is installed and loaded in your R environment.
   This package is responsible for reading MAF files and generating the lollipop plot.
2. Import Your MAF File

    Load the downloaded MAF file into R.
   Once imported, convert it into a MAF object so that the mutations can be processed correctly.
3. Check Gene Summary

   Generate the gene summary table to verify mutation counts and confirm that your selected gene (such as STAB2 or TP53) is present in the dataset.
   This helps ensure that the gene you plan to visualize contains mutation entries.
4. Generate the Lollipop Plot

   Create the lollipop plot by specifying the MAF object and the gene you want to visualize.
   The plot maps each mutation to its corresponding protein position and highlights functional domains.
   You can choose to display labels for all amino-acid changes if needed.
6. Customize and Export

    Adjust the appearance of the plot as necessary, such as label placement, layout, or domain styling.
   Finally, export the plot in your desired format (PNG, PDF, etc.).

Use Cases
1. Visualizing Mutation Hotspots

   Identify positions in a gene/protein where mutations cluster.

   Example: TP53 has frequent mutations at codons 175, 248, and 273.
3. Comparing Mutation Types

    Different colors or shapes can denote mutation types: missense, nonsense, frameshift, etc.
5. Cancer Genomics Studies

   Examine mutation patterns across cohorts to find driver mutations vs. passenger mutations.
7. Drug Target Analysis

    Identify mutations in drug-binding domains to guide targeted therapy design.


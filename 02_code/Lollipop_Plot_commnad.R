library(maftools)
mut_data <- file.choose()

# Create MAF object
maf_obj <- read.maf(maf = mut_data)
maf <- maf_obj@data
genes <- getGeneSummary(maf_obj)


# Lollipop plot for TP53
lollipopPlot(
  maf = maf_obj,
  gene = "STAB2",
  AACol = "HGVSp_Short",
  labelPos = "all",
  labPosAngle = 90,
  showDomainLabel = F
)


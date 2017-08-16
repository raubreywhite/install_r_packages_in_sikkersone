
# https://cran.r-project.org/web/packages/miniCRAN/vignettes/miniCRAN-introduction.html
library("miniCRAN")

# DEFINE WHERE YOU WANT TO MAKE YOUR "miniCRAN" FOLDER
pth <- file.path("/git", "install_r_packages_in_sikkersone", "miniCRAN")

# DEFINE WHICH R PACKAGES YOU WANT TO DOWNLOAD
pkgs <- c("xtable", "memisc", "Cairo")

unlink(pth, recursive=T, force=T)
dir.create(pth)

# Make repo for source and win.binary
pkgList <- pkgDep(pkgs, type="source", suggests = FALSE)
makeRepo(pkgList, path=pth, type=c("source"))
makeRepo(pkgList, path=pth, type=c("win.binary"), Rversion = "3.4")

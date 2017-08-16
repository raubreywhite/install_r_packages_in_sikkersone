# DEFINE WHERE YOUR "miniCRAN" FOLDER IS IN SIKKERSONE
repos <- paste0("file:///",
               file.path(
                 "G:",
                 "Helseregistre",
                 "MSIS",
                 "Sp\u00F8rringer og data UTEN person-id",
                 "Brita",
                 "PN",
                 "Surveillance",
                 "surveillance_pneumokokk",
                 "miniCRAN"))

# DEFINE WHICH R PACKAGES YOU WANT TO INSTALL
pkgs <- c("xtable", "memisc", "Cairo")

install.packages(pkgs, repos = repos)

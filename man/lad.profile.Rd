% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{lad.profile}
\alias{lad.profile}
\title{This function calculate the lad profile from the input lad.voxels}
\usage{
lad.profile(VOXELS_LAD, relative = F)
}
\arguments{
\item{VOXELS_LAD}{3D grid of LAD values (output of lad.voxels() function)}

\item{relative}{produce lad profile by relative total LAI values. Indicate when usinh effective LAI}
}
\description{
This function calculate the lad profile from the input lad.voxels
}
\examples{
# Get the example laz file
normlas.file = system.file("extdata", "lidar_example.laz", package="leafR")

# Calculate LAD from voxelization
VOXELS_LAD = lad.voxels(normlas.file,
                        grain.size = 2)

lad_profile = lad.profile(VOXELS_LAD)
plot(lad_profile$height ~ lad_profile$lad, type = "l", ylim = c(0, 40),
     ylab = "Canopy height (m)", xlab = "LAD (m2/m3)")

# relative LAD PROFILE
relative.lad_profile = lad.profile(VOXELS_LAD, relative = TRUE)

plot(relative.lad_profile$height ~ relative.lad_profile$lad, type = "l", ylim = c(0, 40),
     ylab = "Canopy height (m)", xlab = "LAD (\% of LAI)")

}

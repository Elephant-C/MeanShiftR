% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{MeanShift_Voxels}
\alias{MeanShift_Voxels}
\title{Mean shift clustering using a discrete voxel space}
\usage{
MeanShift_Voxels(
  pc,
  H2CW_fac,
  H2CL_fac,
  UniformKernel = FALSE,
  MaxIter = 20L,
  maxx = 100L,
  maxy = 100L,
  maxz = 60L
)
}
\arguments{
\item{pc}{Point cloud has to be in matrix format with 3-columns representing X, Y and Z and each row representing one point}

\item{H2CW_fac}{Factor for the ratio of height to crown width. Determines kernel diameter based on its height above ground.}

\item{H2CL_fac}{Factor for the ratio of height to crown length. Determines kernel height based on its height above ground.}

\item{UniformKernel}{Boolean to enable the application of a simple uniform kernel without distance weighting (Default False)}

\item{MaxIter}{Maximum number of iterations, i.e. steps that the kernel can move for each point. If centroid is not found after all iteration, the last position is assigned as centroid and the processing jumps to the next point}

\item{maxx}{Maximum X-coordinate}

\item{maxy}{Maximum Y-coordinate}

\item{maxz}{Maximum Z-coordinate}
}
\value{
data.frame with X, Y and Z coordinates of each point in the point cloud and  X, Y and Z coordinates of the centroid to which the point belongs
}
\description{
Adaptive mean shift clustering to delineate tree crowns from lidar point clouds. This is a version using 1-m³ voxels instead of exact point coordinates, to speed up processing.
}
\details{
Mean shift clustering using a discrete voxel space
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_data.R
\name{DC.CO_plot}
\alias{DC.CO_plot}
\title{DC.CO_plot}
\usage{
DC.CO_plot(
  obj = obj,
  col_negOR = c("blue", "light blue"),
  col_zero = "white",
  col_posOR = c("pink", "red"),
  plot.oma = NULL,
  plot.mar = NULL,
  xlim_leftAdj = NULL,
  xlim_rightAdj = NULL,
  ylim_lowerAdj = NULL,
  ylim_upperAdj = NULL,
  grid.color = "grey50",
  grid.lwd = 0.7,
  sig_CO.symbol = "*",
  sig_CO.cex = 2,
  sig_CO.col = "black",
  sig_DE.col = "green",
  sig_DE.lwd = 2,
  triangle.lwd = 1,
  label.gene.offset.vertical = 0.7,
  label.gene.offset.horiz = 0.5,
  label.gene.col = "black",
  label.gene.font = 3,
  label.gene.cex = 1,
  legend.offset.X = 1,
  legend.y.below.manualset = NULL,
  legend.y.height.manualset = NULL,
  legend.width = 0.5,
  text.logor.offset = NULL,
  legend.text.cex = 1,
  legend.text.length = 5,
  legend.triangle.position = NULL
)
}
\arguments{
\item{obj}{Object generated by Stat.Extraction function. Required}

\item{col_negOR}{Color palette to color mutual exclusivity paires from stong to weak. Optional. Default: c("blue","light blue")}

\item{col_zero}{Color palette to color paires with no/very week cooccurrence/mutual exclusivity. Optional. Default: c("white")}

\item{col_posOR}{Color palette to color cooccurrency paires from weak to strong. Optional. Default: c("pink","red")}

\item{plot.oma}{Oma parameter of par function (to manually adjust plot). Optional. Default: NULL(automatically adjust)}

\item{plot.mar}{Mar parameter of par function (to manually adjust plot). Optional. Default: NULL(automatically adjust)}

\item{xlim_leftAdj}{Numerical. Set the x-axis lower limits. Optional. Default: NULL(automatically adjust)}

\item{xlim_rightAdj}{Numerical. Set the x-axis upper limits. Optional. Default: NULL(automatically adjust)}

\item{ylim_lowerAdj}{Numerical. Set the y-axis lower limits. Optional. Default: NULL(automatically adjust)}

\item{ylim_upperAdj}{Numerical. Set the y-axis upper limits. Optional. Default: NULL(automatically adjust)}

\item{grid.color}{Grid color. Optional. Default: "grey50"}

\item{grid.lwd}{Numerical. Grid line width. Optional. Default: 0.7}

\item{sig_CO.symbol}{Symbol to label the significance in cooccurrence pairs. Optional. Default: "*"}

\item{sig_CO.cex}{Numerical. Size of "sig_CO.symbol". Optional. Default: 2}

\item{sig_CO.col}{Color of "sig_CO.symbol". Optional. Default: "black"}

\item{sig_DE.col}{Grid color to denote there is significant differential occurrence. Applys to DC mode. Optional. Default: "green".}

\item{sig_DE.lwd}{Numerical. Line width of grid of significant differential occurrence. Applys to DC mode. Optional. Default: 2}

\item{triangle.lwd}{Numerical. Line width of the triangle. Applys to DC or Separate mode. Optional. Default: 1}

\item{label.gene.offset.vertical}{Numerical. Offset to label the gene name against the upper side of the grid. Optional. Default: 0.7}

\item{label.gene.offset.horiz}{Numerical. Offset to label the gene name against the left side of the grid. Optional. Default: 0.5}

\item{label.gene.col}{Color to label the gene name. Optional. Default: "black"}

\item{label.gene.font}{Font to lable the gene name. Optional. Default: 3}

\item{label.gene.cex}{Size of the gene name. Optional. Default: 1}

\item{legend.offset.X}{Numerical. Offset between the color legend and the right side of gird. Optional. Default: 1}

\item{legend.y.below.manualset}{Numerical. Manually set up the lower y position of the color legend. Optional. Default: NULL(automatically adjust)}

\item{legend.y.height.manualset}{Numerical. Manually set up the height of the color legend. Optional.Default: NULL(automatically adjust)}

\item{legend.width}{Numerical. The width of the color legend. Optional. Default: Default: 0.5}

\item{text.logor.offset}{Numerical. Offset of "LogOR" against the upper side of color legend. Optional.Default: NULL(automatically adjust)}

\item{legend.text.cex}{Numerical. Size of the text in legend. Optional. Default: 1}

\item{legend.text.length}{Numerical. Sequence length of the range of LogOR to label in color length. Optional. Default: 5}

\item{legend.triangle.position}{Position to place the legend of triangle, significance and FDR. Two options: "Right" or "LeftBottom". Optional.Default: NULL(automatically adjust)}
}
\value{
The plot
}
\description{
Plot the cooccurrence/mutual exclusivity or differential cooccurrence/mutual exclusivity result
}
\examples{
data(gbm_dat)
cohort<-gbm_dat$cohort;unique(cohort)
dat<-gbm_dat[,-1]

Result_Separate<-DC.CO_Evaluation(input_data=dat,
                                  group=cohort,
                                  which_group_to_be_one="UT",
                                  mode="Separate",
                                  adjust.method="BH",
                                  FDRCutoff=0.05)
Sig_Separate<-Stat.Extraction(obj=Result_Separate,WhichGrp_adjP.Separate="Each")
DC.CO_plot(obj=Sig_Separate)
}

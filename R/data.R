#' ICA Probabilistic Cortical Parcellation
#'
#' Brain atlas for the probabilistic independent component analysis (ICA)
#' cortical parcellation with 163 regions. Contains 2D polygon geometry
#' for [ggseg::geom_brain()].
#'
#' @family ggseg_atlases
#'
#' @references Beckmann CF, Smith SM (2004). Probabilistic Independent
#'   Component Analysis for Functional Magnetic Resonance Imaging. *IEEE
#'   Transactions on Medical Imaging*, 23(2):137-152.
#'   \doi{10.1109/TMI.2003.822821}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (cortical).
#' @import ggseg.formats
#' @export
#' @examples
#' ica()
ica <- function() .ica

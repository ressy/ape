# APE

This is a copy of the APE source code drawing from those hosted at
<https://github.com/cran/ape> (upstream branch) and
<https://cran.r-project.org/web/packages/ape> (cran branch).
The project's official homepage is <http://ape-package.ird.fr>.

## Differences from Latest Version

Relative to the latest official release, this version:

 * Fixes a crash in `pcoa` for distance matrices yielding negative eigenvalues
   but no zeros ([#2])
 * Adds a little unit testing via [testthat](https://testthat.r-lib.org/)


[#2]: https://github.com/ressy/ape/pull/2

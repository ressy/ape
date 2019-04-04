# APE

This is a copy of the APE source code drawing from those hosted at
<https://github.com/cran/ape> (upstream branch) and
<https://cran.r-project.org/web/packages/ape> (cran branch).
The project's official homepage is <http://ape-package.ird.fr>.

## Differences from Latest Version

Relative to the latest official release, this version:

 * Fixes a crash in `pcoa` for distance matrices yielding negative eigenvalues
   but no zeros

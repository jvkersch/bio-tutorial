BioPython/scikit-bio tutorial (EuroSciPy 2018)
==============================================

[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/jvkersch/bio-tutorial/master)

Welcome to the BioPython/scikit-bio tutorial for EuroSciPy 2018 (Trento,
Italy)! Here you'll find setup instructions, the tutorial materials, and much
more.

The material is geared towards people with a beginner-to-intermediate Python background (if you can write a for-loop, a function, know what lists/dictionaries/... are, you should be fine). You don't need a background in bio-informatics (in fact, I don't have one): we will develop the required concepts as needed.

If you have any questions, are getting stuck somewhere, or if you find any
errors, please [open an
issue](https://github.com/jvkersch/bio-tutorial/issues). If you are at the
conference, don't hesitate to ask me directly. Suggestions for future topics
are very welcome, as is any help with the dev-opsy part of things. In particular, the tutorial was not tested on Windows.

Note that the tutorial is Python 3.

Getting set up
--------------

The tutorial is presented as a series of Jupyter notebooks that explore various
pieces of BioPython and scikit-bio. The bulk of the material requires only
those 3 packages, so if you have a Python 3 environment with
Jupyter/BioPython/scikit-bio, you can use that. Some of the visualization apps
require additional packages, those are detailed below.

If you use either EDM or Conda, you can use a pre-packaged environment. Both
package managers have most or all of the packages that you need.

### Installing with EDM

1. Download [EDM](https://www.enthought.com/product/enthought-deployment-manager/) and install the package. If you are on mac OS and use the Homebrew package manager, this is as easy as doing `brew cask install edm`.
2. Run `edm configure` and answer "no" to the question asked (unless you have an Enthought account)
3. Open the `.edm.yaml` file in your home directory and add the `enthought/euroscipy-tutorial` repository. A sample of how this file is supposed to look can be found [here](deploy/edm.yaml).
4. Run the following commands

```
edm envs create --force bio-tutorial --version 3.6
edm install -e bio-tutorial -y biopython scikit_bio jupyter reportlab pillow mafft
edm run -e bio-tutorial pip install nglview
jupyter-nbextension enable nglview --py --sys-prefix
```

This should give you a Python 3.6 environment called `bio-tutorial`. You can then activate this environment with `edm shell -e bio-tutorial`.

### Installing with Conda

This repo comes with an [environment.yml](environment.yml) file that you can use if you have the conda package manager installed. From the root of the repo, run `conda env create -f environment.yml` to create the `bio-tutorial` environment. Then, activate the environment with `activate bio-tutorial` (Windows) or `source activate bio-tutorial` (mac OS/Linux).

This environment will install the [nglview](https://github.com/arose/nglview) Jupyter extension, but despite this I could not get the extension to work. I'd be interested in hearing from others how this worked out.

### Installing with pip

As mentioned before, you can also use pip to install the requirements. Starting from a Python 3 environment, run `pip install biopython scikit_bio jupyter reportlab pillow`.

 This will mostly work, except that chapter 3 requires the [MAFFT](https://mafft.cbrc.jp/alignment/software/) multiple aligner. This is a 3-rd party utility; see the web page for download and installation instructions. After compiling, make sure the `mafft` binary is on your path. 

Credits
-------

During the making of this tutorial, I relied heavily on the [Bioinformatics with Python Cookbook](https://www.packtpub.com/application-development/bioinformatics-python-cookbook) by Tiago Antao. This book goes into much more depth than what we cover here.

BioPython comes with a very extensive [tutorial](http://biopython.org/DIST/docs/tutorial/Tutorial.html) and scikit-bio comes with a set of [cookbooks](http://nbviewer.jupyter.org/github/biocore/scikit-bio-cookbook/blob/master/Index.ipynb).

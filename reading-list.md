# Reading list

* Compiled August, 2018 by Jonah Gabry


Hope this list is helpful. If I forgot any topics please let me know!


### Quick links

* [Stan website](http://mc-stan.org)
* [The Stan Forums](http://discourse.mc-stan.org) (get free help from Stan developers and users)
* [Stan documentation](http://mc-stan.org/users/documentation/index.html) (links to various kinds of documentation for Stan). Some of the most useful doc pages are:
    - [Stan Modeling Language User’s Guide and Reference Manual v2.17.0](https://github.com/stan-dev/stan/releases/download/v2.17.0/stan-reference-2.17.0.pdf)
    - [Case Studies](http://mc-stan.org/users/documentation/case-studies)
    - [Best Practices wiki](https://github.com/stan-dev/stan/wiki/Stan-Best-Practices)
    - [Prior Choice Recommendations wiki](https://github.com/stan-dev/stan/wiki/Prior-Choice-Recommendations)
* Stan developer Ben Goodrich's lecture videos and materials from his masters-level course at Columbia _Bayesian Statistics for the Social Sciences_ [(YouTube videos,](https://www.youtube.com/playlist?list=PLSZp9QshJ8wyPCgoQR0Kw3HDNuy1FEZH9) [course materials)](https://courseworks2.columbia.edu/courses/54170/files)
* Contributed talks and materials from past Stan conferences, including videos, slides, and code ([stancon_talks repository](https://github.com/stan-dev/stancon_talks/blob/master/README.md))

### R packages from the Stan development team

* [rstan](http://mc-stan.org/rstan), the R interface to Stan
* [rstanarm](http://mc-stan.org/rstanarm) provides a traditional R formula interface for fitting common applied regression models with Stan, without having to write the Stan code yourself
* [bayesplot](http://mc-stan.org/bayesplot) provides plotting functions for use after fitting a model
* [shinystan](http://mc-stan.org/shinystan) provides interactive tables and visualizations in a GUI
* [loo](http://mc-stan.org/loo) provides tools for model comparison and averaging
* [brms](https://cran.r-project.org/package=brms) is similar to rstanarm with several advantages (more models are implemented, Stan code is simpler to read) and several disadvantages (models not pre-compiled, Stan code is less robust to numerical problems)
* [rstantools](http://mc-stan.org/rstantools) tools for developing R packages interfacing with Stan
* [projpred](http://mc-stan.org/projpred) is for projection predictive variable selection, which is described in this paper: http://arxiv.org/abs/1508.02502

You can also find many R packages developed by Stan users that fit Stan models for you. Check out the list of packages that depend on the **rstan** package at [cran.r-project.org/package=rstan](https://cran.r-project.org/package=rstan) (scroll down to the **Reverse dependencies** section).


### Workflow

* Visualization in Bayesian Workflow ([paper](https://arxiv.org/pdf/1709.01449.pdf), [code](https://github.com/jgabry/bayes-vis-paper))
* Jim Savage's [A quick-start introduction to Stan for economists](http://nbviewer.jupyter.org/github/QuantEcon/QuantEcon.notebooks/blob/master/IntroToStan_basics_workflow.ipynb) is a good guide to Bayesian data analysis workflow regardless of whether or not you care about economics
* Jim Savage's blog post [Building useful models for industry—some tips
](http://modernstatisticalworkflow.blogspot.com/2017/01/building-useful-models-for-industrysome.html)

### Hamiltonian Monte Carlo (HMC) and related background

Chi Feng's interactive MCMC demos that we used in class:

* The Markov-chain Monte Carlo Interactive Gallery ([website](https://chi-feng.github.io/mcmc-demo/))

I highly recommend my Stan colleague Michael Betancourt's intro to HMC paper. Michael has a lot of very technical papers about HMC but this one is primarily focused on providing intuition (e.g., he has a whole section on the connection between HMC and the physics of planetary motion that I mentioned briefly in class):

* A Conceptual Introduction to Hamiltonian Monte Carlo ([paper](https://arxiv.org/abs/1701.02434))

This next paper is aimed at ecologists, but the HMC explanation is well written and is worth reading regardless of your field of work/study:

* Faster Estimation of Bayesian Models in Ecology using Hamiltonian Monte Carlo ([paper](http://onlinelibrary.wiley.com/doi/10.1111/2041-210X.12681/full))

This case study from Stan developer Bob Carpenter uses simple simulations to demonstrate how things get strange (and challenging) very quickly as the number of dimensions grows due to the tension between probability density at the mode and volume in the tails:

* Typical Sets and the Curse of Dimensionality ([case study](http://mc-stan.org/users/documentation/case-studies/curse-dims.html))


### Diagnostics and reparameterization 

* Visual MCMC diagnostics ([tutorial vignette](http://mc-stan.org/bayesplot/articles/visual-mcmc-diagnostics.html))
* Diagnosing biased inference with divergences ([case study](http://mc-stan.org/users/documentation/case-studies/divergences_and_bias.html))
* A few simple reparameterizations ([blog post](http://modernstatisticalworkflow.blogspot.com/2017/07/a-few-simple-reparameterizations.html))
* The impact of reparameterization on point estimates ([case study](http://mc-stan.org/users/documentation/case-studies/mle-params.html))
* A bag of tips and tricks for dealing with scale issues ([blog post/case study](http://modernstatisticalworkflow.blogspot.com/2016/11/a-bag-of-tips-and-tricks-for-dealing.html))
* The QR decomposition for regression models ([case study](http://mc-stan.org/users/documentation/case-studies/qr_regression.html))



### Miscellaneous thoughts on priors

* [Prior Choice Recommendations wiki](https://github.com/stan-dev/stan/wiki/Prior-Choice-Recommendations)
* How the Shape of a Weakly Informative Prior Affects Inferences ([case study](http://mc-stan.org/users/documentation/case-studies/weakly_informative_shapes.html))
* The prior can generally only be understood in the context of the likelihood ([paper](https://arxiv.org/abs/1708.07487))



### Heteroscedasticity and collinearity 

#### Heteroscedasticity

This is only a problem if your model lacks important structure. The generative modeling perspective provides a simple solution to this problem: build a model that allows for different amounts of variability in different subpopulations:

* Jeff Arnold's [notes on heteroscedasticity](https://jrnold.github.io/bayesian_notes/heteroskedasticity.html), with RStan examples

#### Collinearity

* _Informative_ priors on the relevant regression coefficients will help a lot
* The [QR reparameterization](http://mc-stan.org/users/documentation/case-studies/qr_regression.html)) helps avoid computational issues when you have highly correlated predictors. 

### Visualization and graphical model checking

This is my paper (with many great coauthors!) that most of the course slides were based off of: 

* Visualization in Bayesian Workflow ([paper](https://arxiv.org/pdf/1709.01449.pdf), [code](https://github.com/jgabry/bayes-vis-paper))

We also have some vignettes for the **bayesplot** package that demonstrate many of the important graphical model checks:

* __bayesplot__ tutorial vignettes ([online vignettes](http://mc-stan.org/bayesplot/articles/index.html))


### Time series & spatial models

* Chapter 10 in the [Stan Manual v2.17.0](https://github.com/stan-dev/stan/releases/download/v2.17.0/stan-reference-2.17.0.pdf)
* Mitzi Morris' case study [Spatial Models in Stan: Intrinsic Auto-Regressive (ICAR) Models for Areal Data](http://mc-stan.org/users/documentation/case-studies/icar_stan.html))
* Stan tutorial: [Modern Bayesian Tools for Time Series Analysis](http://tharte.github.io/mbt/) contributed by Stan users Thomas P. Harte and R. Michael Weylandt.
* Jim Savage's blog post on [Regime-switching models with Stan](http://modernstatisticalworkflow.blogspot.com/2018/02/regime-switching-models-in-stan.html)
* Jim Savage's blog post on [Hierarchical vector autoregression (VAR) with Stan](http://modernstatisticalworkflow.blogspot.com/2017/04/hierarchical-vector-autoregression.html)
* Lu Zhang's case study [Nearest neighbor Gaussian process (NNGP) models in Stan](http://mc-stan.org/users/documentation/case-studies/nngp.html)


### Measurement error & missing data

* Chapters 11 through 14 in the Stan Manual [v2.17.0]((https://github.com/stan-dev/stan/releases/download/v2.17.0/stan-reference-2.17.0.pdf)

* Ben Goodrich's course materials for [week 14](https://courseworks2.columbia.edu/courses/54170/files/folder/LectureMaterial/Week14?)

### Survival (duration) analysis

Some Stan users have written Python and R libraries to help fit certain survival models using Stan: 

* [Estimating Joint Models for Longitudinal and Time-to-Event Data with rstanarm
](http://mc-stan.org/rstanarm/articles/jm.html)
* [Library of Stan Models for Survival Analysis](https://github.com/hammerlab/survivalstan) from Jacki Novik and HammerLab
* [survHE R package for fitting survival models via RStan](https://github.com/giabaio/survHE) from Gianluca Baio
* Chapters 11 through 15 in the [Stan Manual v2.17.0](https://github.com/stan-dev/stan/releases/download/v2.17.0/stan-reference-2.17.0.pdf) all have content that relates in some way to survival models even if not explicitly mentioned. 
* Paper and Stan code for survival analysis with shrinkage priors from Aki Vehtari ([link](https://groups.google.com/forum/#!topic/stan-users/IOzu8_tkCSk)). (Note: this is a few years old so the Stan code may use some deprecated syntax) 


### Model comparison, predictive performance, variable selection

The **loo** package has several useful vignettes that Aki Vehtari and I recently updated for version 2.0.0:

* [Using the loo package (version >= 2.0.0)](http://mc-stan.org/loo/articles/loo2-example.html)
* [Bayesian Stacking and Pseudo-BMA weights using the loo package](http://mc-stan.org/loo/articles/loo2-weights.html)
* [Writing Stan programs for use with the loo package](http://mc-stan.org/loo/articles/loo2-with-rstan.html)
* [Leave-one-out cross-validation for non-factorizable models](http://mc-stan.org/loo/articles/loo2-non-factorizable.html)

Aki Vehtari also has a bunch of tutorials online as well as some blog posts on the topic:

* [Model selection tutorials](https://github.com/avehtari/modelselection_tutorial/blob/master/README.md)
* [Aki's blog posts](http://andrewgelman.com/author/aki/)

Papers from various authors (published in journals but I'm including links to the free arXiv preprint versions):

* Practical Bayesian model evaluation using leave-one-out cross-validation and WAIC ([arXiv](https://arxiv.org/abs/1507.04544), [R package](https://github.com/stan-dev/loo))
* Understanding predictive information criteria for Bayesian models ([arXiv](https://arxiv.org/abs/1307.5928))
* Projection predictive variable selection using Stan+R ([arXiv](http://arxiv.org/abs/1508.02502), [R package](http://mc-stan.org/projpred))
* Using stacking to average Bayesian predictive distributions ([arXiv](https://arxiv.org/abs/1704.02030))
* Comparison of Bayesian predictive methods for model selection ([arXiv](https://arxiv.org/pdf/1503.08650.pdf))


### Mixture models

* Michael Betancourt's [Identifying Bayesian Mixture Models](http://mc-stan.org/users/documentation/case-studies/identifying_mixture_models.html) case study
* Chapter 13 in the [Stan Manual v2.17.0](https://github.com/stan-dev/stan/releases/download/v2.17.0/stan-reference-2.17.0.pdf)


### Gaussian processes

* Chapter 18 in the [Stan Manual v2.17.0](https://github.com/stan-dev/stan/releases/download/v2.17.0/stan-reference-2.17.0.pdf)
* Michael Betancourt's case study Robust Gaussian Processes in Stan 
    - [part 1](https://betanalpha.github.io/assets/case_studies/gp_part1/part1.html)
    - [part 2](https://betanalpha.github.io/assets/case_studies/gp_part2/part2.html)
    - [part 3](https://betanalpha.github.io/assets/case_studies/gp_part3/part3.html)

* Lu Zhang's case study [Nearest neighbor Gaussian process (NNGP) models in Stan](http://mc-stan.org/users/documentation/case-studies/nngp.html)
* Rob Trangucci's repository of multi-output GP [code and slides](http://mc-stan.org/users/documentation/case-studies/nngp.html)

### Horseshoe and other hierarchical shrinkage priors

* Aki's talk at StanCon 2018 Asilomar about regularized horseshoe priors [(video)](https://www.youtube.com/watch?v=umk7eOkt5k8)
* Michael Betancourt's case study [Bayes Sparse Regression](https://betanalpha.github.io/assets/case_studies/bayes_sparse_regression.html)
* Juho and Aki's paper [Sparsity information and regularization in the horseshoe and other shrinkage priors](https://projecteuclid.org/euclid.ejs/1513306866)


### Discrete choice

Condition logit has different meanings in different fields. What we call conditional logit is implemented in the  **rstanarm** package:

* `rstanarm::stan_clogit()`([function doc](http://mc-stan.org/rstanarm/reference/stan_clogit.html),  [vignette section](http://mc-stan.org/rstanarm/articles/binomial.html#conditional-logit-models))

Multinomial logit is a common discrete choice model (which may sometimes also be referred to as conditional logit in a small number of fields): 

* Starting at section 9.3 of the [Stan Manual v2.17.0](https://github.com/stan-dev/stan/releases/download/v2.17.0/stan-reference-2.17.0.pdf) the next few sections discuss related topics 

* Rob Trangucci's case study [Hierarchical multinomial logistic regression models in Stan](https://rawgit.com/rtrangucci/class_20170809/master/multinomial-logit/multinomial-logit-regression.html)



### Stan vs other MCMC options

* Appendix B in the [Stan Manual v2.17.0](https://github.com/stan-dev/stan/releases/download/v2.17.0/stan-reference-2.17.0.pdf) talks about differences between Stan and Bugs/Jags

* The only MCMC option that I would say is close to on par with Stan as a (general purpose) MCMC tool is [PyMC3](https://docs.pymc.io/). I like the PyMC3 project a lot (they also have a good implementation of NUTS) but PyMC3 programs can only be run in Python, unlike Stan programs which can be used with any of the Stan interfaces (RStan, PyStan, CmdStan, MatlabStan, and all [the others](http://mc-stan.org/users/interfaces/index.html)). But if you are a diehard Python user and so are all of your collaborators you might give PyMC3 a try  

* [Fitting Bayesian item response models in Stata and Stan](https://arxiv.org/abs/1601.03443) (paper comparing Stan against Stata's new MCMC implementation)

### Why do Bayesian modeling? 

Some blog posts on the topic from various authors: 

* [Frank Harrell](http://www.fharrell.com/post/journey/)

* [Jim Savage](http://modernstatisticalworkflow.blogspot.com/2017/04/why-learn-bayesian-modeling.html)

* [John D. Cook](https://www.johndcook.com/blog/2009/04/28/reasons-to-use-bayesian-inference/)

### Automatic differentiation & Stan's math library

Several Stan developers wrote a paper about the custom implementation of autodiff developed for Stan:  

* The Stan Math Library: Reverse-Mode Automatic Differentiation in C++. [arXiv 1509.07164](https://arxiv.org/abs/1509.07164)

### Current limitations of Stan

Here's a wiki page where we list a lot of things we want to add to Stan going forward. Many of these things are already in progress, but this should help give a sense of some of the current limitations: 

* [Stan Roadmap](https://github.com/stan-dev/stan/wiki/Stan-Road-Map#math-library-roadmap)
FROM quay.io/jupyter/r-notebook:r-4.3.2

# Install R packages
RUN conda install -y --quiet \
    nb_conda_kernels=2.3.1 \
    r-irkernel=1.3.2 \ 
    r-psych=2.4.1 \ 
    r-ggally=2.2.1 \
    r-docopt=0.7.1 \
    r-kableextra=1.4.\
    r-vdiffr=1.0.7 \
    r-testthat=3.2.0 \
    r-devtools=2.4.5 \
    jupyter-book=0.15.1 \
    quarto=1.4.550 \
    make

# Install `predicttornado` package
RUN R -e 'devtools::install_github("DSCI-310-2024/predicttornado@v1.0.0")'


    

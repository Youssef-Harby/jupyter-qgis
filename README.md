# Jupyter Remote QGIS Desktop

Run [QGIS Desktop App (3.18)](https://qgis.org/en/site/) vi BinderHub! Click the button below to launch a server:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Youssef-Harby/jupyter-qgis/qgis?urlpath=desktop)

As more GIS datasets are hosted in Cloud datacenters it can be advantageous to move your computing environment to the data rather than the other way around. Jupyter Servers are most commonly used to run Jupyter Notebooks, but they also facilitate running many other applications! For example [VScode](https://github.com/betatim/vscode-binder) or [Rstudio](https://github.com/binder-examples/r-conda). Those modern applications are built to run in browsers, but what about things like QGIS, a GUI desktop application for geospatial analysis? Thanks to the brilliant folks working on project Jupyter you can even run QGIS!

This configuration runs a [Linux XFCE](https://www.xfce.org) desktop on the Jupyter single-user server, and proxies it to your browser using Virtual Network Computing (VNC). Read more about the implementation here: https://github.com/jupyterhub/jupyter-remote-desktop-proxy.

Don't expect extreme performance here, this is really just a proof of concept, but could be a great resource for classrooms, tutorials, or demos. You can also set up your own [BinderHub](https://binderhub.readthedocs.io/en/latest/) to deploy configurations like this with more computational resources and higher bandwidth:

[![badge](https://img.shields.io/static/v1.svg?logo=Jupyter&label=PangeoBinderAWS&message=us-west-2&color=orange)](https://aws-uswest2-binder.pangeo.io/v2/gh/giswqs/jupyter-qgis/qgis?urlpath=desktop) 

### Demo

![qgis-demo-loop](https://user-images.githubusercontent.com/3924836/112456403-d9a18800-8dae-11eb-883a-6d87290c7f95.gif)


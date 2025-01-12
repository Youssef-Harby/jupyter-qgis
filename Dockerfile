FROM jupyter/base-notebook:python-3.7.6


USER root

RUN apt-get -y update \
 && apt-get install -y dbus-x11 \
   firefox \
   git \
   gcc \
   build-essential \
   xfce4 \
   xfce4-panel \
   xfce4-session \
   xfce4-settings \
   xorg \
   xubuntu-icon-theme

# Remove light-locker to prevent screen lock
RUN wget 'https://sourceforge.net/projects/turbovnc/files/2.2.5/turbovnc_2.2.5_amd64.deb/download' -O turbovnc_2.2.5_amd64.deb && \
   apt-get install -y -q ./turbovnc_2.2.5_amd64.deb && \
   apt-get remove -y -q light-locker && \
   rm ./turbovnc_2.2.5_amd64.deb && \
   ln -s /opt/TurboVNC/bin/* /usr/local/bin/

# apt-get may result in root-owned directories/files under $HOME
RUN chown -R $NB_UID:$NB_GID $HOME

ADD . /opt/install
RUN fix-permissions /opt/install

USER $NB_USER
RUN cd /opt/install && \
   conda env update -n base --file environment.yml

# deepbands Plugins
RUN git clone https://github.com/deepbands/buildseg.git Downloads
RUN mkdir -p ~/.local/share/QGIS/QGIS3/profiles/default/python/plugins
RUN ln -s  ~/Downloads/buildseg/ ~/.local/share/QGIS/QGIS3/profiles/default/python/plugins/

RUN git clone https://github.com/deepbands/deep-learning-datasets-maker.git Desktop
RUN ln -s  ~/Desktop/deep-learning-datasets-maker/ ~/.local/share/QGIS/QGIS3/profiles/default/python/plugins/

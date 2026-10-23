# OS is injected by the dagger custom flavor as <upstream.repo>:<upstream.tag>-<os>
ARG OS

FROM ${OS}
# every key under builds[].args in config.yaml arrives as a build arg
ARG pkg_installer
COPY install.sh /tmp/install.sh
RUN /tmp/install.sh ${pkg_installer} && rm /tmp/install.sh

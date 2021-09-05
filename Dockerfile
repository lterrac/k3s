FROM ubuntu:latest

COPY k3s /usr/bin
# RUN echo -e '#!/bin/bash\nk3s server' > /usr/bin/server && \
#     chmod +x /usr/bin/server

# RUN echo 'alias agent="k3s agent"' >> ~/.bashrc
# RUN echo 'alias kubectl="k3s kubectl"' >> ~/.bashrc
# RUN echo 'alias crictl="k3s crictl"' >> ~/.bashrc
# RUN echo 'alias ctr="k3s ctr"' >> ~/.bashrc
# RUN echo 'alias etcd-snapshot="k3s etcd-snapshot"' >> ~/.bashrc

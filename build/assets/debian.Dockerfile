#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
#-------------------------------------------------------------------------------------------------------------

FROM REPLACE-ME

# Update to get latest package versions (e.g. with security patches), optionally install more
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get -y upgrade \
    #
    # [Optional] Uncomment to install more packages
    # && apt-get -y install --no-install-recommends <your-package-list-here> \
    #
    # Clean up and remove any old packages
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
 ENV DEBIAN_FRONTEND=dialog


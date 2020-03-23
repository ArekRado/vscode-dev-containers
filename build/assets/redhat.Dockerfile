#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
#-------------------------------------------------------------------------------------------------------------

FROM REPLACE-ME

# Get latest security patches, install packages if needed
RUN yum update -y \
    #
    # [Optional] Uncomment this section to install additional packages. 
    # && yum -y install <your-package-list-here> \
    # 
    # Clean up
    && yum clean all

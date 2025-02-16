openapi-generator generate \
    -i https://raw.githubusercontent.com/Nadr0j/PagesServiceModel/mainline/openapi.yaml \
    -g java \
    -o . \
    --invoker-package com.github.nadr0j.pagesclient \
    --api-package com.github.nadr0j.pagesclient.api \
    --model-package com.github.nadr0j.pagesclient.model \
    --group-id com.github.nadr0j \
    --artifact-id pages-client \
    --artifact-version 1.0.0 \
    --additional-properties=gradleBuildFile=true,mavenBuildFile=false,sbtBuildFile=false


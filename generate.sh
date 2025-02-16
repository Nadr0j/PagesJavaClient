openapi-generator generate \
    -i https://raw.githubusercontent.com/Nadr0j/PagesServiceModel/mainline/openapi.yaml \
    -g java \
    -o . \
    --invoker-package com.example.pagesclient \
    --api-package com.example.pagesclient.api \
    --model-package com.example.pagesclient.model \
    --group-id com.github.nadr0j \
    --artifact-id pages-client \
    --artifact-version 1.0.0 \
    --additional-properties=gradleBuildFile=true,mavenBuildFile=false,sbtBuildFile=false


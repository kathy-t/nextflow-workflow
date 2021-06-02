#!/usr/bin/env nextflow

params.str = 'Hello world!'

process parameterizedDocker {
    container '$params.container'

    exec:
    println "parameterizedDocker"
}

process latestDocker {
    container 'katetran/dockstore-tool-helloworld:latest'

    exec:
    println "latestDocker"
}

process versionedDocker {
    container 'katetran/dockstore-tool-helloworld:1@sha256helloworld'

    exec:
    println "versionedDocker"
}

process taglessDocker {
    container 'katetran/dockstore-tool-helloworld'

    exec:
    println "taglessDocker"
}

process digestDocker {
    container 'katetran/dockstore-tool-helloworld@sha256:0484449b6bdd6e39a34f630a86e18253f6b88899d64faa652c926e90001c84d4'

    exec:
    println "digestDocker"
}

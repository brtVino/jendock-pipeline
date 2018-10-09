pipeline {
  agent any
  stages {
    stage('Pre-Build') {
      steps {
        pwd()
        sleep 5
        dir(path: 'pwd')
      }
    }
    stage('Build') {
      steps {
        build(job: 'bazel build //src:hello_world', quietPeriod: 5, wait: true, propagate: true)
      }
    }
    stage('Run Unit Tests') {
      steps {
        build(job: 'bazel run //src:unit_test', propagate: true, quietPeriod: 5, wait: true)
      }
    }
    stage('Push Docker-Image') {
      steps {
        build(job: 'bazel run //src:container_push', propagate: true, quietPeriod: 5, wait: true)
      }
    }
  }
}
import jenkins.*

import jenkins.model.*

import hudson.*

import hudson.model.*

    def test(String key, String value) {

nodes = Jenkins.getInstance().getGlobalNodeProperties()

nodes.getAll(hudson.slaves.EnvironmentVariablesNodeProperty.class)

if ( nodes.size() != 1 ) {

  println("error: unexpected number of environment variable containers: "

          + nodes.size()

          + " expected: 1")

} else {

  envVars= nodes.get(0).getEnvVars()

  envVars.put(key,value)

  Jenkins.getInstance().save()

  println("okay")

}
    }

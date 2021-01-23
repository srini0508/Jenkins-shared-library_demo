import jenkins.*
import jenkins.model.*
import hudson.*
import hudson.model.*
import hudson.slaves.*

def updateEnvVar() {
    script {
    instance = Jenkins.getInstance()
    globalNodeProperties = instance.getGlobalNodeProperties()
    envVarsNodePropertyList = globalNodeProperties.getAll(hudson.slaves.EnvironmentVariablesNodeProperty.class)

    newEnvVarsNodeProperty = null
    envVars = null

    if ( envVarsNodePropertyList == null || envVarsNodePropertyList.size() == 0 ) {
      newEnvVarsNodeProperty = new hudson.slaves.EnvironmentVariablesNodeProperty();
      globalNodeProperties.add(newEnvVarsNodeProperty);
      envVars = newEnvVarsNodeProperty.getEnvVars();
      envVars.put(NEW_VAR, "toto");
    } else {
      for (property in envVarsNodePropertyList) {
        envVars = property.getEnvVars();
        envVars.put("EXISTING_VAR","tata");
      }
    }

    instance.save()
    }
    
}


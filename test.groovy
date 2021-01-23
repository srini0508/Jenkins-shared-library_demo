def generateStage(nameOfTestSet, pathToTestSet, machineLabel, listOfEnvVarDeclarations=[])
{
    echo "Generating stage for ${nameOfTestSet} on ${machineLabel}"
    return node("${machineLabel}") {
        stage(nameOfTestSet)
        {
            withEnv(listOfEnvVarDeclarations) {
                try {
                    echo "Would run: "+pathToTestSet

                } finally {
                    echo "Archive results here"
                }   
            }
        }
    }
}

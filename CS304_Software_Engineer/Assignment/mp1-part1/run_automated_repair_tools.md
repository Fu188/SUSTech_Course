# Run automated program repair tools
## Setup the target buggy program
1. Download a target project. In this instruction, we use fastjson ([https://github.com/alibaba/fastjson](https://github.com/alibaba/fastjson)) as an example.
2. Compile and execute the unit tests that the target project as the doc listed. Hint: the log of Travis CI or GitHub Action may be helpful. 
    - For example, installing the proper version of Java JDK, fastjson needs OpenJDK8. 
    - `mvn clean compile test` , run unit tests to make sure right configuration.

## Setup automated program repair tools

1. Here we manually inject a bug by reverting the fix of commit e62525f ([https://github.com/alibaba/fastjson/commit/e62525f5e9c01b2bc62f74d881b30ebc8a142116](https://github.com/alibaba/fastjson/commit/e62525f5e9c01b2bc62f74d881b30ebc8a142116)). Comment or delete the line 62-65 of the file `src/main/java/com/alibaba/fastjson/serializer/SerialContext.java`.

2. This action will lead to a test case failure (`src/test/java/com/alibaba/fastjson/serializer/issue3084/TestRefWithQuote.java`). You can run “`mvn test`” to check it.


## Instruction for running prapr (Maven mode)
1. prapr provides maven plugin which can be easily used. Modify “`pom.xml`” of the target project to add prapr maven plugin based on the example [https://github.com/prapr/prapr/blob/master/examples/toy-java-program/pom.xml](https://github.com/prapr/prapr/blob/master/examples/toy-java-program/pom.xml). Note that the `prapr-plugin` version should be specified to `2.0.2`.

2. Check `pom.xml` to make sure the test suites which trigger the bug have been inclued in maven test task. For example, `maven-surefire-plugin` may skip unit tests.

3. (optional) if you are not sure the failing test have been ran, you can delete all other test suites and just leave the failing test suites.

4. Run the prapr tasks: `mvn org.mudebug:prapr-plugin:prapr`, if the java version of target program is under JAVA 7, you need to attach `-Dhttps.protocols=TLSv1.2` for every above mvn commands

## Instruction for running Astor
1. Follow the Option 2 for getting class path in the document Getting started Astor (https://github.com/SpoonLabs/astor/blob/master/docs/getting-starting.md#option-2-compiling-and-building-class-path-separately) to start with the example program.
2. Replace the example program with your target program, please remember to compile the project with `mvn clean compile test`
3. Executing the Astor: https://github.com/SpoonLabs/astor/blob/master/docs/getting-starting.md#executing-the-program 



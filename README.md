# kafka-as-module
Include Kafka as extra module in gradle multi-project

1. clone repository

2. run 
```bash
>./initialize_project.sh
```

root build.gradle contains variable rootKafkaSubPath, that uses in patched kafka/build.gradle file

3. module company-commons has relative dependency on submodule kafka
```groovy
dependencies {
    compile project(":kafka:clients")
}
```

look class com.company.test.RunForrestRun
```java
    public static void main(String... args) {
        KafkaConsumer<String, String> consumer;
    }
```


4. module kafka hash dependency on company-extra-utils
```groovy
    // link to the top level project out of Kafka directory
    if (project.hasProperty("rootKafkaSubPath") && project.properties.get("rootKafkaSubPath").toString().trim() != "") {
      compile project(":company-extra-utils")
    }
```

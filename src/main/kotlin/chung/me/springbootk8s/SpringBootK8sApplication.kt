package chung.me.springbootk8s

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class SpringBootK8sApplication

fun main(args: Array<String>) {
    runApplication<SpringBootK8sApplication>(*args)
}

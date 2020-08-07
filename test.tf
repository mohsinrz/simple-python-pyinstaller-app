resource "null_resource" "cluster_upgrade" {
    //provisioner "local-exec" {
    //    command = "apk update && apk add bash"
    //}

    provisioner "local-exec" {
        command = "curl -su admin:Ice@ge1983 https://mohsinrz.jfrog.io/artifactory/go/azure-cluster-upgrade -o azure-cluster-upgrade && chmod +x azure-cluster-upgrade"
    }

    provisioner "local-exec" {
        command = "ls /bin/bash"
    }

    provisioner "local-exec" {
        command = "/bin/bash -c /data/azure-cluster-upgrade -h"
        //interpreter = ["/bin/bash", "-c"]
    }
}

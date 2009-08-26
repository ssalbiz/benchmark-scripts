#!/bin/bash
#OT/../geronimo-common/target/classes:$PROJECT_ROOT/../geronimo-deploy-jsr88/target/classes:$PROJECT_ROOT/../geronimo-interceptor/target/classes:$PROJECT_ROOT/../geronimo-deploy-config/target/classes:$PROJECT_ROOT/../geronimo-deploy-jsr88-bootstrapper/target/classes:$PROJECT_ROOT/../geronimo-naming/target/classes:$PROJECT_ROOT/../geronimo-plugin/target/classes:$PROJECT_ROOT/../geronimo-upgrade/target/classes:$PROJECT_ROOT/../geronimo-transformer/target/classes:$PROJECT_ROOT/../geronimo-core/target/classes:$PROJECT_ROOT/../geronimo-management/target/classes:$PROJECT_ROOT/../geronimo-cli/target/classes:$PROJECT_ROOT/../geronimo-deploy-tool/target/classes:$PROJECT_ROOT/../geronimo-service-builder/target/clover/classes:$PROJECT_ROOT/../geronimo-service-builder/target/classes:$PROJECT_ROOT/../geronimo-service-builder/target/test-classes/services/service3/classes:$PROJECT_ROOT/../geronimo-service-builder/src/test/resources/services/service3/classes:$PROJECT_ROOT/../geronimo-system/target/classes:$PROJECT_ROOT/../geronimo-security/target/classes:$PROJECT_ROOT/../geronimo-deployment/target/classes:$PROJECT_ROOT/../geronimo-crypto/target/classes

find $PROJECT_ROOT/../geronimo-jdbc/target/classes | sed 's/.*classes\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//' 

find $PROJECT_ROOT/../geronimo-commands/target/classes | sed 's/.*classes\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//'

find $PROJECT_ROOT/../geronimo-kernel/target/classes | sed 's/.*classes\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//'

find $PROJECT_ROOT/../geronimo-core/target/classes | sed 's/.*classes\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//'

find $PROJECT_ROOT/../geronimo-jmx-remoting/target/classes | sed 's/.*classes\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//'


find $PROJECT_ROOT/../geronimo-j2ee/target/classes | sed 's/.*classes\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//'

find $PROJECT_ROOT/../geronimo-common/target/classes | sed 's/.*classes\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//'

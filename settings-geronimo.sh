#!/bin/bash
# NOTE: fix deps



export PROJECT_ROOT=$BENCHMARKS_ROOT/geronimo/2.1.4/framework/modules/geronimo-core
export CLASSES_DIR=$PROJECT_ROOT/../geronimo-jdbc/target/classes:$PROJECT_ROOT/../geronimo-commands/target/classes:$PROJECT_ROOT/../geronimo-kernel/target/classes:$PROJECT_ROOT/../geronimo-jmx-remoting/target/classes:$PROJECT_ROOT/../geronimo-j2ee/target/classes:$PROJECT_ROOT/../geronimo-common/target/classes:$PROJECT_ROOT/../geronimo-deploy-jsr88/target/classes:$PROJECT_ROOT/../geronimo-interceptor/target/classes:$PROJECT_ROOT/../geronimo-deploy-config/target/classes:$PROJECT_ROOT/../geronimo-deploy-jsr88-bootstrapper/target/classes:$PROJECT_ROOT/../geronimo-naming/target/classes:$PROJECT_ROOT/../geronimo-plugin/target/classes:$PROJECT_ROOT/../geronimo-upgrade/target/classes:$PROJECT_ROOT/../geronimo-transformer/target/classes:$PROJECT_ROOT/../geronimo-core/target/classes:$PROJECT_ROOT/../geronimo-management/target/classes:$PROJECT_ROOT/../geronimo-cli/target/classes:$PROJECT_ROOT/../geronimo-deploy-tool/target/classes:$PROJECT_ROOT/../geronimo-service-builder/target/clover/classes:$PROJECT_ROOT/../geronimo-service-builder/target/classes:$PROJECT_ROOT/../geronimo-service-builder/target/test-classes/services/service3/classes:$PROJECT_ROOT/../geronimo-service-builder/src/test/resources/services/service3/classes:$PROJECT_ROOT/../geronimo-system/target/classes:$PROJECT_ROOT/../geronimo-security/target/classes:$PROJECT_ROOT/../geronimo-deployment/target/classes:$PROJECT_ROOT/../geronimo-crypto/target/classes
export EXTRA=${CLASSES_DIR}:$PROJECT_ROOT/../j2ee-1.4.jar:$PROJECT_ROOT/../commons-logging.jar:$PROJECT_ROOT/../gshell-cli-1.0-alpha-1.jar:$PROJECT_ROOT/../gshell-embeddable-1.0-alpha-1.jar:$PROJECT_ROOT/../groovy-all-1.5.3.jar:$PROJECT_ROOT/../nlog4j-1.2.25.jar:$PROJECT_ROOT/../asm-util.jar:$PROJECT_ROOT/../asm-commons.jar:$PROJECT_ROOT/../ant.jar:$PROJECT_ROOT/../ant-launcher.jar:$PROJECT_ROOT/../commons-lang.jar:$PROJECT_ROOT/../xbean-reflect-3.5.jar:$PROJECT_ROOT/../jmxri-1.2.jar:$PROJECT_ROOT/../cglib-2.1_3.jar:$PROJECT_ROOT/../cglib-nodep-2.1_3.jar:$PROJECT_ROOT/../cglib-asm-1.0.jar:$PROJECT_ROOT/../xbean-2.2.0.jar:$PROJECT_ROOT/../commons-cli-1.2.jar:$PROJECT_ROOT/../xbean-spring-2.6.jar

#$PROJECT_ROOT/../asm.jar
#$PROJECT_ROOT/../cglib-asm-1.0.jar
#$PROJECT_ROOT/../cglib-2.1_3.jar:$PROJECT_ROOT/../cglib-nodep-2.1_3.jar

export MAIN_CLASS=( org.apache.geronimo.kernel.util.MainConfigurationBootstrapper org.apache.geronimo.kernel.util.MainBootstrapper org.apache.geronimo.upgrade.UpgradeGBean org.apache.geronimo.cli.client.ClientCLI org.apache.geronimo.cli.deployer.DeployerCLI org.apache.geronimo.cli.daemon.DaemonCLI org.apache.geronimo.system.main.CommandLine org.apache.geronimo.system.main.ClientCommandLine org.apache.geronimo.system.configuration.cli.AddStartupConfiguration org.apache.geronimo.crypto.asn1.util.Dump )
export PACKAGE=( org.apache.geronimo )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/apache/geronimo/"
  
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi

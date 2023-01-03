<?xml version='1.1' encoding='UTF-8'?>
<org.jenkinsci.plugins.workflow.multibranch.WorkflowMultiBranchProject plugin="workflow-multibranch@716.vc692a_e52371b_">
  <actions/>
  <description></description>
  <displayName>${pipeline_display_name}</displayName>
  <properties>
    <org.jenkinsci.plugins.configfiles.folder.FolderConfigFileProperty plugin="config-file-provider@3.11.1">
      <configs class="sorted-set">
        <comparator class="org.jenkinsci.plugins.configfiles.ConfigByIdComparator"/>
        <org.jenkinsci.plugins.configfiles.json.JsonConfig>
          <id>b114ffa2-8221-42da-8099-d5f121546f28</id>
          <name>JsonConfig</name>
          <comment></comment>
          <content>{&apos;registry_url&apos;: &apos;${registry_url}&apos;,
                    &apos;registry_id&apos;: &apos;${registry_id}&apos;, 
                    &apos;registry_repo_name&apos;: &apos;${registry_repo_name}&apos;, 
                    &apos;image_name&apos;: &apos;${image_name}&apos;}
          </content>
          <providerId>org.jenkinsci.plugins.configfiles.json.JsonConfig</providerId>
        </org.jenkinsci.plugins.configfiles.json.JsonConfig>
      </configs>
    </org.jenkinsci.plugins.configfiles.folder.FolderConfigFileProperty>
    <org.jenkinsci.plugins.docker.workflow.declarative.FolderConfig plugin="docker-workflow@563.vd5d2e5c4007f">
      <dockerLabel></dockerLabel>
      <registry plugin="docker-commons@1.21"/>
    </org.jenkinsci.plugins.docker.workflow.declarative.FolderConfig>
  </properties>
  <folderViews class="jenkins.branch.MultiBranchProjectViewHolder" plugin="branch-api@2.1051.v9985666b_f6cc">
    <owner class="org.jenkinsci.plugins.workflow.multibranch.WorkflowMultiBranchProject" reference="../.."/>
  </folderViews>
  <healthMetrics/>
  <icon class="jenkins.branch.MetadataActionFolderIcon" plugin="branch-api@2.1051.v9985666b_f6cc">
    <owner class="org.jenkinsci.plugins.workflow.multibranch.WorkflowMultiBranchProject" reference="../.."/>
  </icon>
  <orphanedItemStrategy class="com.cloudbees.hudson.plugins.folder.computed.DefaultOrphanedItemStrategy" plugin="cloudbees-folder@6.800.v71307ca_b_986b">
    <pruneDeadBranches>true</pruneDeadBranches>
    <daysToKeep>-1</daysToKeep>
    <numToKeep>-1</numToKeep>
    <abortBuilds>false</abortBuilds>
  </orphanedItemStrategy>
  <triggers>
    <com.cloudbees.hudson.plugins.folder.computed.PeriodicFolderTrigger plugin="cloudbees-folder@6.800.v71307ca_b_986b">
      <spec>* * * * *</spec>
      <interval>180000</interval>
    </com.cloudbees.hudson.plugins.folder.computed.PeriodicFolderTrigger>
  </triggers>
  <disabled>false</disabled>
  <sources class="jenkins.branch.MultiBranchProject$BranchSourceList" plugin="branch-api@2.1051.v9985666b_f6cc">
    <data>
      <jenkins.branch.BranchSource>
        <source class="org.jenkinsci.plugins.github_branch_source.GitHubSCMSource" plugin="github-branch-source@1696.v3a_7603564d04">
          <id>7e35e092-a8f3-4779-9437-df4ad3a60bab</id>
          <apiUri>https://api.github.com</apiUri>
          <repoOwner>${repo_owner}</repoOwner>
          <repository>${repository}</repository>
          <repositoryUrl>${git_repo}</repositoryUrl>
          <traits>
            <org.jenkinsci.plugins.github__branch__source.BranchDiscoveryTrait>
              <strategyId>3</strategyId>
            </org.jenkinsci.plugins.github__branch__source.BranchDiscoveryTrait>
            <org.jenkinsci.plugins.github__branch__source.TagDiscoveryTrait/>
          </traits>
        </source>
        <strategy class="jenkins.branch.DefaultBranchPropertyStrategy">
          <properties class="empty-list"/>
        </strategy>
        <buildStrategies>
          <jenkins.branch.buildstrategies.basic.NamedBranchBuildStrategyImpl plugin="basic-branch-build-strategies@71.vc1421f89888e">
            <filters>
              <jenkins.branch.buildstrategies.basic.NamedBranchBuildStrategyImpl_-ExactNameFilter>
                <name>main</name>
                <caseSensitive>false</caseSensitive>
              </jenkins.branch.buildstrategies.basic.NamedBranchBuildStrategyImpl_-ExactNameFilter>
            </filters>
          </jenkins.branch.buildstrategies.basic.NamedBranchBuildStrategyImpl>
          <jenkins.branch.buildstrategies.basic.TagBuildStrategyImpl plugin="basic-branch-build-strategies@71.vc1421f89888e">
            <atLeastMillis>0</atLeastMillis>
            <atMostMillis>86400000</atMostMillis>
          </jenkins.branch.buildstrategies.basic.TagBuildStrategyImpl>
        </buildStrategies>
      </jenkins.branch.BranchSource>
    </data>
    <owner class="org.jenkinsci.plugins.workflow.multibranch.WorkflowMultiBranchProject" reference="../.."/>
  </sources>
  <factory class="org.jenkinsci.plugins.workflow.multibranch.WorkflowBranchProjectFactory">
    <owner class="org.jenkinsci.plugins.workflow.multibranch.WorkflowMultiBranchProject" reference="../.."/>
    <scriptPath>Jenkinsfile</scriptPath>
  </factory>
</org.jenkinsci.plugins.workflow.multibranch.WorkflowMultiBranchProject>
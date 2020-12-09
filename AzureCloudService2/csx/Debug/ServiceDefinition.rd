<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="AzureCloudService2" generation="1" functional="0" release="0" Id="0f310049-5195-4005-92aa-e9539017b481" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="AzureCloudService2Group" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="WebRole2:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/AzureCloudService2/AzureCloudService2Group/LB:WebRole2:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="WebRole2:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudService2/AzureCloudService2Group/MapWebRole2:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="WebRole2Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AzureCloudService2/AzureCloudService2Group/MapWebRole2Instances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:WebRole2:Endpoint1">
          <toPorts>
            <inPortMoniker name="/AzureCloudService2/AzureCloudService2Group/WebRole2/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapWebRole2:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudService2/AzureCloudService2Group/WebRole2/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapWebRole2Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AzureCloudService2/AzureCloudService2Group/WebRole2Instances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="WebRole2" generation="1" functional="0" release="0" software="C:\AzureCloudService\AzureRmPipeline-repo\WebApp\AzureCloudService2\csx\Debug\roles\WebRole2" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WebRole2&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WebRole2&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AzureCloudService2/AzureCloudService2Group/WebRole2Instances" />
            <sCSPolicyUpdateDomainMoniker name="/AzureCloudService2/AzureCloudService2Group/WebRole2UpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/AzureCloudService2/AzureCloudService2Group/WebRole2FaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="WebRole2UpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="WebRole2FaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="WebRole2Instances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="3e2ccd31-aa8f-4208-9224-86e70fac2588" ref="Microsoft.RedDog.Contract\ServiceContract\AzureCloudService2Contract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="95bdd677-b0fa-4775-856f-d986833e1f92" ref="Microsoft.RedDog.Contract\Interface\WebRole2:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/AzureCloudService2/AzureCloudService2Group/WebRole2:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>
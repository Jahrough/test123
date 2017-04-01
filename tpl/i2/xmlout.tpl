<?xml version="1.0" encoding="UTF-8"?>
<vlx:vlx xmlns:xsi="http://www.w3.org/2000/10/XMLSchema-instance" xmlns:vlx="http://www.i2group.com/Schemas/2001-12-07/VLXSchema" service="SmartLinx">
  <chartCommands>
    <centerChart/>
  </chartCommands>
  <appletReturnedData/>
<tmpl_var RESULT>
<typeCatalogue identityProperty="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" documentation="V:\Projects\VLV\VLV Development\VLV Demo Deployments\Lynx XML Samples\LNMockup2\LNTypeCatalogueNew.tcd">
	<endTypes>
		<endType tGUID="guid8A586959-9837-47DE-8DBF-BC7031F01545" localName="Person" LNIconFile="vlv_person">
			<imageURI height="32" width="32">VLImages/gifs/vlv_person.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid5DEA9AAD-3794-49E1-960B-D4E3EEF89912" localName="Report" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidB852E2D2-EC8A-453a-9F0B-65D76316BD1A" localName="EndType" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid62B01C18-2E64-46D5-B2FF-3C69B4F76FEB" localName="LastName" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid4DE7370B-60E5-4EB0-860E-4066D3DFD7B6" localName="FirstName" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guidBE6A2505-B545-464C-B407-51F9847ECE39" localName="MiddleName" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid213B2D98-35D0-4D1D-B1E8-0D3BC9B1B388" localName="IsDeceased" isMandatory="false" baseProperty="guid74F2A516-2F49-4282-989F-F4A468656FF0" fGUID="guidD29583C2-8B1F-442c-B43B-F1BE08D1BBBA">
				<attribute vlvfDisplayAsGlyph="true">
					<Symbol URI="VLImages/glyphs/vlv_deceased.gif" LNIconFile="vlv_deceased" shown="true" position="4" width="12" height="12"/>
					<ShowValue>false</ShowValue>
					<OnlyShownIfVal>1</OnlyShownIfVal>
					<ShowOnChart>true</ShowOnChart>
				</attribute>
			</property>
			<property pGUID="guidE63027BF-A21D-478a-B773-B4BE344EED69" localName="IsPrimary" isMandatory="false" isVLVFproperty="true" baseProperty="guid74F2A516-2F49-4282-989F-F4A468656FF0" fGUID="guidD29583C2-8B1F-442c-B43B-F1BE08D1BBBA">
				<attribute vlvfDisplayAsGlyph="true">
					<Symbol URI="VLImages/glyphs/vlv_red_box.gif" LNIconFile="vlv_red_box" shown="true" width="32" height="32" position="3"/>
					<ShowValue>false</ShowValue>
					<OnlyShownIfVal>1</OnlyShownIfVal>
					<ShowOnChart>true</ShowOnChart>
				</attribute>
			</property>
			<property pGUID="guid7548369B-BA9A-4C4B-AEAD-0CB442EAFA27" localName="Gender" isMandatory="false" fGUID="guid89BE2889-F201-4AA8-B075-D292EAD210BD">
				<attribute vlvfDisplayAsGlyph="true">
					<Symbol URI="VLImages/glyphs/vlv_female_glyph.gif" shown="true" position="1" width="10" height="15"/>
					<ShowValue>false</ShowValue>
					<OnlyShownIfVal>Female</OnlyShownIfVal>
					<ShowOnChart>false</ShowOnChart>
				</attribute>
				<attribute vlvfDisplayAsGlyph="true">
					<Symbol URI="VLImages/glyphs/vlv_male_glyph.gif" width="12" height="14" position="1"/>
					<OnlyShownIfVal>Male</OnlyShownIfVal>
					<ShowOnChart>false</ShowOnChart>
				</attribute>
				<attribute>
					<Symbol URI="" shown="false"/>
				</attribute>
			</property>
			<property pGUID="guidFE45F1C4-B198-4111-8123-F42D2CD6419D" localName="DateOfBirth" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false" isVLVFToolTip="true">
				<attribute>
					<Symbol URI="" shown="false"/>
					<Prefix><![CDATA[DOB: ]]></Prefix>
					<ShowValue>true</ShowValue>
					<ShowOnChart>true</ShowOnChart>
				</attribute>
			</property>
			<property pGUID="guid764F0E02-7B16-40F7-B5C9-E563FA773FBF" localName="SSN" isMandatory="false" idType="databaseID" fGUID="guid171067BE-266D-495A-9DB3-B308433014AD"/>
			<property pGUID="guid77EC45E7-EC48-4482-9EC9-CE9BE1726871" localName="SSNList" isMandatory="false" idType="databaseID" fGUID="guid171067BE-266D-495A-9DB3-B308433014AD">
				<attribute>
					<Symbol URI="" shown="false"/>
					<Prefix>SSN: </Prefix>
					<ShowValue>true</ShowValue>
					<ShowOnChart>true</ShowOnChart>
				</attribute>
			</property>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid22D95AE3-93EB-4BE9-8FB2-850CDA03F341" localName="NameVariation" isMandatory="false"/>
			<property pGUID="guid4210C905-121A-4764-B4BE-6B2771177F10" localName="NameVariationList" isMandatory="false"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid02120055-7E16-4936-8907-4847180AB3FF" localName="QueryDate" isMandatory="false" update="always"/>
		</endType>
		<endType tGUID="guid29920C6A-DDF4-427B-A002-A7F7AEAB0BAA" localName="WeaponPermit" LNIconFile="vlv_weapon">
			<imageURI height="32" width="32">VLImages/gifs/vlv_weapon.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid0E467615-4E34-4A3B-9708-3973F38B2327" localName="FullText" isMandatory="false" isVLVFToolTip="true" baseProperty="guidCC2BDFB2-96F6-459C-92E9-7BC0556A3553"/>
		</endType>
		<endType tGUID="guid42C94280-6D50-49F2-A590-FD13A8D893B8" localName="AircraftRegistration" LNIconFile="vlv_aircraft">
			<imageURI height="32" width="32">VLImages/gifs/vlv_aircraft.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid9D3100EE-ECB8-4011-A10C-8E5FF08A5416" localName="FAARegistrationRegion" isMandatory="false"/>
			<property pGUID="guid4DCD924A-92DC-461F-B534-0CD2D517BC9F" localName="TailNumber" isMandatory="false">
				<attribute>
					<Symbol URI="" shown="false"/>
					<Prefix>Tail No:</Prefix>
					<ShowValue>true</ShowValue>
					<ShowOnChart>false</ShowOnChart>
				</attribute>
			</property>
			<property pGUID="guid56E8E572-284B-4F3D-A4CF-5C728838DFB5" localName="Manufacturer" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid160717BD-C494-476C-8377-7D9B6CD6B88B" localName="Model" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guidC51B9D90-4C54-4EAF-A892-FDB0B8C4A605" localName="Year" fGUID="guid80CA4D51-93FD-4E25-A337-270C738DF02F" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid7BCFFC46-0CC7-4D6C-82F2-B68DAB5132FA" localName="SerialNumber" isMandatory="false"/>
			<property pGUID="guid13118848-0DAD-40C8-B597-0878F3ECBC33" localName="Type" isMandatory="false"/>
			<property pGUID="guid74BF8017-C057-43B8-8CAF-65F6867FD374" localName="Engines" isMandatory="false" baseProperty="guid6D676796-915D-487f-B384-73503C988ABE" fGUID="guidA01164B3-009F-47e5-9449-B7820929BC72"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</endType>
		<endType tGUID="guid5A5844EC-651F-40DE-A84D-65CF36FABA8B" localName="BoatRegistration" LNIconFile="vlv_boat">
			<imageURI height="32" width="32">VLImages/gifs/vlv_boat.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidA29B5F8F-BA18-4262-95BD-65B8216D8841" localName="State" isMandatory="false"/>
			<property pGUID="guid3FDE5AD1-1624-4215-87F7-7FA40552285C" localName="County" isMandatory="false"/>
			<property pGUID="guid91E0DB72-4376-4F14-8684-0CA04D78B864" localName="RegistrationNumber" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid684387C9-B3B9-46FC-9BDC-0F571C5F800A" localName="VesselManufacturer" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guidBDA3725F-6F20-4F99-938B-6957EF34AC78" localName="VesselYear" fGUID="guid80CA4D51-93FD-4E25-A337-270C738DF02F" isMandatory="false" isVLVFToolTip="true" baseProperty="guidCD68867D-7CEC-46d3-936A-C609292ADF0E"/>
			<property pGUID="guidB1BD20B4-ABDB-4BFF-9983-6365FCBCC320" localName="HullIdentificationNumber" isMandatory="false"/>
			<property pGUID="guid8F2A8211-7AF3-48DC-85A8-BDBE6B6C3E03" localName="VesselName" isMandatory="false" isVLVFToolTip="true">
				<attribute>
					<Symbol URI="" shown="true"/>
					<ShowValue>true</ShowValue>
					<ShowOnChart>false</ShowOnChart>
				</attribute>
			</property>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</endType>
		<endType tGUID="guid8E9AB21D-C18E-40C7-8D0D-7533F639A524" localName="PilotsLicense" LNIconFile="vlv_pilots_license">
			<imageURI height="32" width="32">VLImages/gifs/vlv_pilots_license.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidF6074F48-5C61-4824-8852-47C06F674C64" localName="LicenseNumber" isMandatory="false"/>
			<property pGUID="guid9D3100EE-ECB8-4011-A10C-8E5FF08A5416" localName="FAARegistrationRegion" isMandatory="false"/>
			<property pGUID="guidAC831355-4F35-4461-8C43-21089A2BA892" localName="Rating" isMandatory="false"/>
			<property pGUID="guidDFBE3619-23E4-4467-AE7E-C08539F79B46" localName="CertificationClass" isMandatory="false"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</endType>
		<endType tGUID="guid1A90480B-093D-47E7-A2BB-B5B2DB8AB784" localName="LiquorLicense" LNIconFile="vlv_liquor_license">
			<imageURI height="32" width="32">VLImages/gifs/vlv_liquor_license.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidA29B5F8F-BA18-4262-95BD-65B8216D8841" localName="State" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid3FDE5AD1-1624-4215-87F7-7FA40552285C" localName="County" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guidE3A80F73-70D7-42C3-BF6D-30E5C28671AF" localName="IssuedTo" isMandatory="false"/>
			<property pGUID="guid3AE0E3E3-F896-49C7-80C4-EF7038C30FB9" localName="Status" isMandatory="false" isVLVFToolTip="true">
				<attribute>
					<Symbol URI="" shown="false"/>
					<ShowValue>true</ShowValue>
					<ShowOnChart>true</ShowOnChart>
				</attribute>
			</property>
			<property pGUID="guid30C0E33A-0CD9-44FA-AE9C-4C8BDAED2451" localName="StatusDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false" baseProperty="guidCD68867D-7CEC-46d3-936A-C609292ADF0E"/>
			<property pGUID="guid04B330A4-15F8-412B-950C-A076E66D1525" localName="ExpirationDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false" isVLVFToolTip="true" baseProperty="guidCD68867D-7CEC-46d3-936A-C609292ADF0E"/>
			<property pGUID="guidEB7B0F42-AA8B-4C94-93F3-ED5A09B179C3" localName="District" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</endType>
		<endType tGUID="guidB0C337D9-8C15-47F1-831D-1C628BD02E83" localName="SportLicense" LNIconFile="vlv_sport_license">
			<imageURI height="32" width="32">VLImages/gifs/vlv_sport_license.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid1368D388-1FEC-4F9B-A7C1-2A856A8DA20C" localName="Type" isMandatory="false"/>
			<property pGUID="guidB66FB2D5-EF26-4C39-9E19-6B4D373C6E30" localName="IssueDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false" baseProperty="guidCD68867D-7CEC-46d3-936A-C609292ADF0E"/>
			<property pGUID="guid04B330A4-15F8-412B-950C-A076E66D1525" localName="ExpirationDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false" isVLVFToolTip="true" baseProperty="guidCD68867D-7CEC-46d3-936A-C609292ADF0E"/>
			<property pGUID="guidF6074F48-5C61-4824-8852-47C06F674C64" localName="LicenseNumber" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</endType>
		<endType tGUID="guidA06CA5D4-ACE9-4760-8F88-4DA4D8695FD4" localName="Bankruptcy" LNIconFile="vlv_bankruptcy">
			<imageURI height="32" width="32">VLImages/gifs/vlv_bankruptcy.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid0AC601B9-DE01-4534-94B3-F75FBF4D109D" localName="Jurisdiction" isMandatory="false"/>
			<property pGUID="guidD5B22B6F-817B-4BD4-960F-833ED9A92D39" localName="Petitioner" isMandatory="false" baseProperty="guidC4710BC4-4556-4b6f-AD64-1EBF73044B41"/>
			<property pGUID="guidE1A74431-CA45-4A7A-AE09-2CF8E3EF1F64" localName="CaseName" isMandatory="false"/>
			<property pGUID="guidF0791F96-D0F8-4B0A-A13A-5A763669B34C" localName="CaseNumber" isMandatory="false"/>
			<property pGUID="guid2215039C-3CD9-4DAA-B93F-9BF80300A64B" localName="Assets" isMandatory="false" fGUID="guid4B29FD2D-24D5-4CE9-8815-B4476B6B6DF4"/>
			<property pGUID="guid8F79BAD9-FAAB-4504-9181-7420008B2A99" localName="Liabilities" isMandatory="false" fGUID="guid4B29FD2D-24D5-4CE9-8815-B4476B6B6DF4"/>
			<property pGUID="guidD414DEF5-5D29-4BFE-AD03-336425623B8D" localName="FilingDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid14F1017D-BC21-4B8A-9B32-CC97F9C3D370" localName="Type" isMandatory="false"/>
			<property pGUID="guidA3B64B00-A63F-41D1-88E4-7022F4D4D165" localName="Status" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid5FA2B242-95A4-4BC6-AD77-3E2FD2B14852" localName="StatusDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false"/>
			<property pGUID="guid501255DE-A5FF-4E3C-9E4B-6EA27AB79253" localName="Attorney" isMandatory="false"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</endType>
		<endType tGUID="guidB2C666A0-2D09-4AB7-91A6-874209200BF3" localName="Judgment" LNIconFile="vlv_judgment">
			<imageURI height="32" width="32">VLImages/gifs/vlv_judgment.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid0AC601B9-DE01-4534-94B3-F75FBF4D109D" localName="Jurisdiction" isMandatory="false"/>
			<property pGUID="guidAC00AE5E-3EEA-4812-B052-50B15AFE1F96" localName="Creditor" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guidD414DEF5-5D29-4BFE-AD03-336425623B8D" localName="FilingDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guidD9E50880-6AE0-4D9D-B77A-DAA99AEB02BB" localName="ReleaseDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false" baseProperty="guidCD68867D-7CEC-46d3-936A-C609292ADF0E"/>
			<property pGUID="guid3D280439-E549-4E3C-9BC2-B9AC601F7835" localName="Amount" isMandatory="false" isVLVFToolTip="true" fGUID="guid4B29FD2D-24D5-4CE9-8815-B4476B6B6DF4"/>
			<property pGUID="guid14F1017D-BC21-4B8A-9B32-CC97F9C3D370" localName="Type" isMandatory="false"/>
			<property pGUID="guidAD5C928A-7E0F-4368-8D7D-2480C46532B3" localName="FilingNumber" isMandatory="false"/>
			<property pGUID="guid501255DE-A5FF-4E3C-9E4B-6EA27AB79253" localName="Attorney" isMandatory="false"/>
			<property pGUID="guidA77C9402-0642-4B99-9472-43110F53B951" localName="Debtor" isMandatory="false"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</endType>
		<endType tGUID="guid5F5AE58E-89BF-4A83-A3E5-048818CC93FB" localName="Lien" LNIconFile="vlv_lien">
			<imageURI height="32" width="32">VLImages/gifs/vlv_lien.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid0AC601B9-DE01-4534-94B3-F75FBF4D109D" localName="Jurisdiction" isMandatory="false"/>
			<property pGUID="guid14F1017D-BC21-4B8A-9B32-CC97F9C3D370" localName="Type" isMandatory="false"/>
			<property pGUID="guidD414DEF5-5D29-4BFE-AD03-336425623B8D" localName="FilingDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guidAD5C928A-7E0F-4368-8D7D-2480C46532B3" localName="FilingNumber" isMandatory="false"/>
			<property pGUID="guidD9E50880-6AE0-4D9D-B77A-DAA99AEB02BB" localName="ReleaseDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false" baseProperty="guidCD68867D-7CEC-46d3-936A-C609292ADF0E"/>
			<property pGUID="guid501255DE-A5FF-4E3C-9E4B-6EA27AB79253" localName="Attorney" isMandatory="false"/>
			<property pGUID="guid2CD780E2-F247-497A-B214-467C9CABAE56" localName="SecuredParties" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guidF63DFFEA-7A75-4367-BD7D-8BA7B9964C7E" localName="Assignee" isMandatory="false"/>
			<property pGUID="guidA77C9402-0642-4B99-9472-43110F53B951" localName="Debtor" isMandatory="false"/>
			<property pGUID="guid3D280439-E549-4E3C-9BC2-B9AC601F7835" localName="Amount" isMandatory="false" isVLVFToolTip="true" fGUID="guid4B29FD2D-24D5-4CE9-8815-B4476B6B6DF4"/>
			<property pGUID="guidA3B64B00-A63F-41D1-88E4-7022F4D4D165" localName="Status" isMandatory="false"/>
			<property pGUID="guidAC00AE5E-3EEA-4812-B052-50B15AFE1F96" localName="Creditor" isMandatory="false"/>
			<property pGUID="guid73BCA318-6506-4B2F-BD28-B2A2ACD5EC71" localName="ExpirationDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false" baseProperty="guidCD68867D-7CEC-46d3-936A-C609292ADF0E"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</endType>
		<endType tGUID="guidDB8328BF-3AC1-42A9-B09D-51F4FC93DC42" localName="Business" LNIconFile="vlv_company">
			<imageURI height="32" width="32">VLImages/gifs/vlv_company.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid5DEA9AAD-3794-49E1-960B-D4E3EEF89912" localName="Report" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidB852E2D2-EC8A-453a-9F0B-65D76316BD1A" localName="EndType" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidB2A3B23C-07B8-4A87-8B45-4CD20079E79C" localName="Name" isMandatory="false"/>
			<property pGUID="guid422BC6C9-67B7-4c63-BD15-86ED76AC6297" localName="NameVariation" isMandatory="false"/>
			<property pGUID="guid6E675335-CAE0-4087-8C1E-C18AE0744954" localName="NameVariationList" isMandatory="false"/>
			<property pGUID="guid638AA8A1-B07F-4320-BDBD-91BC5993EA8B" localName="WWWAddress" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid0C67265F-F074-4fe3-84A8-EF5E1DEF7693" localName="WWWAddressList" isMandatory="false"/>
			<property pGUID="guid7D0DF839-B553-457A-93B4-B333D603B7FD" localName="EmailAddress" isMandatory="false" fGUID="guidEAECC35B-8AF8-4FEE-A98A-1FD36C3158F9"/>
			<property pGUID="guid7FAB2EAF-0FDE-4adc-8B74-CCAC06B2D894" localName="EmailAddressList" isMandatory="false" fGUID="guidEAECC35B-8AF8-4FEE-A98A-1FD36C3158F9"/>
			<property pGUID="guid015D2A41-BC1D-4085-A1F8-C462A359FB85" localName="YearStarted" isMandatory="false"/>
			<property pGUID="guid8910C918-6C23-43af-A675-8ADAEB9B5D9C" localName="YearStartedList" isMandatory="false"/>
			<property pGUID="guid7D237AA5-F981-483C-BFE5-686F7ACD9693" localName="IncorporationDate" fGUID="guidFDEED4A3-619E-45DE-AF1A-2A4108EF9593" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid34EC1445-F754-4d99-9F7C-CBA2A9D8B15B" localName="IncorporationDateList" fGUID="guidFDEED4A3-619E-45DE-AF1A-2A4108EF9593" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guidF4F39165-17C5-4BF4-BBA7-6D02C32923D9" localName="IncorporationState" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid0C2D780C-BEA7-4d8a-9EF3-AB53AFC50764" localName="IncorporationStateList" isMandatory="false"/>
			<property pGUID="guid694EB231-9982-46FE-A40E-3D9165582101" localName="IncorporationNumber" isMandatory="false"/>
			<property pGUID="guidE00D193E-7A3A-4b9e-BDA4-799076FF292C" localName="IncorporationNumberList" isMandatory="false"/>
			<property pGUID="guidC69FB10F-3B4E-413C-8FD9-D85D27B0E305" localName="Status" isMandatory="false"/>
			<property pGUID="guid29BED2E6-C309-4485-9ABC-579CF8EEB2F1" localName="StatusList" isMandatory="false"/>
			<property pGUID="guid08AC5655-AEB8-4D6F-B876-F08859E88C83" localName="Type" isMandatory="false"/>
			<property pGUID="guidC572FC66-DBC6-44e4-8F73-FAB87E7C1C16" localName="TypeList" isMandatory="false"/>
			<property pGUID="guid7870884C-BF92-4385-94AF-916F5330243D" localName="StockTicker" isMandatory="false"/>
			<property pGUID="guidC5F44B5E-4942-4d3c-9B75-76BA7F501213" localName="StockTickerList" isMandatory="false"/>
			<property pGUID="guid1A468AEC-A49A-4734-8D98-004F8C38595A" localName="StockExchange" fGUID="guidFDEED4A3-619E-45DE-AF1A-2A4108EF9593" isMandatory="false"/>
			<property pGUID="guid667DF6B9-F640-46fd-BF49-20FD1BBEBFA3" localName="StockExchangeList" fGUID="guidFDEED4A3-619E-45DE-AF1A-2A4108EF9593" isMandatory="false"/>
			<property pGUID="guid24B2CFD4-6FEF-4F3D-AFD3-F1EA738A354F" localName="SICNumber" isMandatory="false" fGUID="guidFC8CB41B-D7DC-4E9E-B8E4-FF523E40C62D"/>
			<property pGUID="guid5BA18E4F-3AB4-45a9-8140-E9F712AC85B3" localName="SICNumberList" isMandatory="false" fGUID="guidFC8CB41B-D7DC-4E9E-B8E4-FF523E40C62D"/>
			<property pGUID="guidF85BE13B-8B03-4968-8EB5-D4E4C602763A" localName="SecondarySICNumber" isMandatory="false" fGUID="guidFC8CB41B-D7DC-4E9E-B8E4-FF523E40C62D" baseProperty="guid24B2CFD4-6FEF-4F3D-AFD3-F1EA738A354F"/>
			<property pGUID="guidFCB09868-180E-40d1-A2D8-4D1D6B76F78A" localName="SecondarySICNumberList" isMandatory="false" fGUID="guidFC8CB41B-D7DC-4E9E-B8E4-FF523E40C62D"/>
			<property pGUID="guid8333A6F3-03CD-4B4A-86F1-08E0D3395906" localName="StateID" isMandatory="false"/>
			<property pGUID="guid84E599F8-1978-4439-999D-EEA08E012F53" localName="StateIDList" isMandatory="false"/>
			<property pGUID="guid5183EE12-8869-4AF1-8590-BCE932D994F2" localName="FEINNumber" isMandatory="false" fGUID="guidB3C7D2BB-15B7-4f75-8628-D0842C152127"/>
			<property pGUID="guid4D53BCD8-7986-474e-B74F-A5647F85D307" localName="FEINNumberList" isMandatory="false" fGUID="guidB3C7D2BB-15B7-4f75-8628-D0842C152127"/>
			<property pGUID="guidD19279DF-39AC-4DEB-8940-6F5D62713E2E" localName="DUNS" isMandatory="false" fGUID="guid0527DBBB-25A0-4E17-9D9F-81DD163A544C"/>
			<property pGUID="guid7EFAF803-010D-4691-8992-ADCA7C927622" localName="DUNSList" isMandatory="false" fGUID="guid0527DBBB-25A0-4E17-9D9F-81DD163A544C"/>
			<property pGUID="guidE63027BF-A21D-478a-B773-B4BE344EED69" localName="IsPrimary" isMandatory="false" isVLVFproperty="true" baseProperty="guid74F2A516-2F49-4282-989F-F4A468656FF0" fGUID="guidD29583C2-8B1F-442c-B43B-F1BE08D1BBBA">
				<attribute vlvfDisplayAsGlyph="true">
					<Symbol URI="VLImages/glyphs/vlv_red_box.gif" LNIconFile="vlv_red_box" shown="true" width="32" height="32" position="3"/>
					<ShowValue>false</ShowValue>
					<OnlyShownIfVal>1</OnlyShownIfVal>
					<ShowOnChart>true</ShowOnChart>
				</attribute>
			</property>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid02120055-7E16-4936-8907-4847180AB3FF" localName="QueryDate" isMandatory="false" update="always"/>
		</endType>
		<endType tGUID="guidCD3DB3DB-55F6-440A-9BB8-3F3EE4DB4D52" localName="Location" LNIconFile="vlv_location">
			<imageURI height="32" width="32">VLImages/gifs/vlv_location.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid5DEA9AAD-3794-49E1-960B-D4E3EEF89912" localName="Report" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidB852E2D2-EC8A-453a-9F0B-65D76316BD1A" localName="EndType" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidFE6D4127-D05B-41DF-B4AA-4D54C9A2A79D" localName="LegalDescription" isMandatory="false"/>
			<property pGUID="guid49E215FA-313A-4CE8-82A6-42AFF557E932" localName="BriefDescription" isMandatory="false"/>
			<property pGUID="guidADCE5E3F-1A99-4FA4-8936-249499174A5C" localName="LandUse" isMandatory="false"/>
			<property pGUID="guid98B687A3-5F64-474E-828D-4FACE98993C2" localName="APN" isMandatory="false"/>
			<property pGUID="guidD23FC121-E9F7-4767-84FB-48605FA542B7" localName="APNList" isMandatory="false"/>
			<property pGUID="guidE6D82567-6B16-4595-B230-300F060AA393" localName="EstimatedRollCertificationDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false" baseProperty="guidCD68867D-7CEC-46d3-936A-C609292ADF0E"/>
			<property pGUID="guidDE335FF4-31F2-4F9B-A29A-55811C18959D" localName="SaleDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false" baseProperty="guidCD68867D-7CEC-46d3-936A-C609292ADF0E"/>
			<property pGUID="guidE6678068-B922-4761-8D9B-C27215B46FF1" localName="SalePrice" isMandatory="false" fGUID="guid4B29FD2D-24D5-4CE9-8815-B4476B6B6DF4" baseProperty="guid2D261BF0-A92A-42ed-B36E-4F9ED527E952"/>
			<property pGUID="guid17E12D2D-47D5-4E27-812E-6C8499536F6C" localName="PriorSaleDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false" baseProperty="guidDE335FF4-31F2-4F9B-A29A-55811C18959D"/>
			<property pGUID="guid3419FF4E-4658-4A36-8AE3-4CF1642ED2C7" localName="PriorSalePrice" isMandatory="false" fGUID="guid4B29FD2D-24D5-4CE9-8815-B4476B6B6DF4" baseProperty="guidE6678068-B922-4761-8D9B-C27215B46FF1"/>
			<property pGUID="guid3357D6D0-CB8B-4BE6-A9EE-A12B5BFE569F" localName="Lender" isMandatory="false"/>
			<property pGUID="guidE4688E88-1148-4543-AAAC-A309E372E28E" localName="MortgageType" isMandatory="false"/>
			<property pGUID="guid485C2D9B-A586-44BE-BB17-187EFDD3D60E" localName="LoanAmount" isMandatory="false" fGUID="guid4B29FD2D-24D5-4CE9-8815-B4476B6B6DF4" baseProperty="guid2D261BF0-A92A-42ed-B36E-4F9ED527E952"/>
			<property pGUID="guidA0D4110B-9774-4C9A-88AF-FC96A3A1201E" localName="LoanTerm" isMandatory="false" fGUID="guid4B29FD2D-24D5-4CE9-8815-B4476B6B6DF4"/>
			<property pGUID="guid81E59BB5-E971-41FE-8AFA-D92996E714AA" localName="LoanRate" isMandatory="false"/>
			<property pGUID="guid2F6B7E57-7626-44DC-9CE5-ECD67DF2157E" localName="Street" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid6D5B39A9-41EC-477D-AA79-4CEF272FF067" localName="City" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guidA29B5F8F-BA18-4262-95BD-65B8216D8841" localName="State" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guidE88DF247-7CA6-4E4F-B38B-87DDE11EE98C" localName="ZIP" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid3FDE5AD1-1624-4215-87F7-7FA40552285C" localName="County" isMandatory="false"/>
			<property pGUID="guid5304A03B-FE47-4406-91E7-0D49EC8409A6" localName="Latitude" isMandatory="false" fGUID="guid95B72BCA-F853-43F6-A389-A5A0992432E7"/>
			<property pGUID="guid14BCA0EC-D67A-4A67-BC36-CFF650FD77A9" localName="Longitude" isMandatory="false" fGUID="guidDC3730BB-4C70-4F5B-A39C-EB5B5CD38CDE"/>
			<property pGUID="guid5D7D1B45-084B-440D-B922-DA382B94D3EE" localName="MSA" isMandatory="false"/>
			<property pGUID="guidA6E89511-96A0-416B-9CAA-38B1DAADA216" localName="Centroid" isMandatory="false"/>
			<property pGUID="guidD8AA4926-20A7-4569-8529-0656DEA32BDB" localName="DeedType" isMandatory="false"/>
			<property pGUID="guid1B952B42-3C0A-4781-822F-330E88759F3D" localName="AssessmentYear" fGUID="guid80CA4D51-93FD-4E25-A337-270C738DF02F" isMandatory="false" baseProperty="guidCD68867D-7CEC-46d3-936A-C609292ADF0E"/>
			<property pGUID="guid7C61E02C-D7E4-44FD-9AF4-5AFEBFD015FB" localName="AssessedLandValue" isMandatory="false" fGUID="guid4B29FD2D-24D5-4CE9-8815-B4476B6B6DF4" baseProperty="guid2D261BF0-A92A-42ed-B36E-4F9ED527E952"/>
			<property pGUID="guid2E984674-91B3-41E2-AC22-49544BFAE4CC" localName="AssessedImprovementValue" isMandatory="false" fGUID="guid4B29FD2D-24D5-4CE9-8815-B4476B6B6DF4" baseProperty="guid2D261BF0-A92A-42ed-B36E-4F9ED527E952"/>
			<property pGUID="guid1887DD63-09B0-40AD-BE15-D1735B590727" localName="TotalAssessedValue" isMandatory="false" fGUID="guid4B29FD2D-24D5-4CE9-8815-B4476B6B6DF4" baseProperty="guid2D261BF0-A92A-42ed-B36E-4F9ED527E952"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guidE63027BF-A21D-478a-B773-B4BE344EED69" localName="IsPrimary" isMandatory="false" isVLVFproperty="true" baseProperty="guid74F2A516-2F49-4282-989F-F4A468656FF0" fGUID="guidD29583C2-8B1F-442c-B43B-F1BE08D1BBBA">
				<attribute vlvfDisplayAsGlyph="true">
					<Symbol URI="VLImages/glyphs/vlv_red_box.gif" LNIconFile="vlv_red_box" shown="true" width="32" height="32" position="3"/>
					<ShowValue>false</ShowValue>
					<OnlyShownIfVal>1</OnlyShownIfVal>
					<ShowOnChart>true</ShowOnChart>
				</attribute>
			</property>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid02120055-7E16-4936-8907-4847180AB3FF" localName="QueryDate" isMandatory="false" update="always"/>
		</endType>
		<endType tGUID="guidDB820CCD-D028-4B20-A3AE-57374B83EFD4" localName="Phone" LNIconFile="vlv_phone_asset">
			<imageURI height="32" width="32">VLImages/gifs/vlv_phone_asset.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidCD2F57CA-D475-454B-9B0D-71F31A604631" localName="AreaCode" isMandatory="false" isVLVFToolTip="true" fGUID="guidEF0A742C-097B-4899-B048-3CA75312DB96"/>
			<property pGUID="guid2A9C3212-8918-4477-9818-47E467FB47AC" localName="LocalNumber" fGUID="guidFDEED4A3-619E-45DE-AF1A-2A4108EF9593" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</endType>
		<endType tGUID="guidDE9E6F95-72F9-420F-927F-C9A194AFA629" localName="Fax" LNIconFile="vlv_fax_asset">
			<imageURI height="32" width="32">VLImages/gifs/vlv_fax_asset.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidCD2F57CA-D475-454B-9B0D-71F31A604631" localName="AreaCode" isMandatory="false" isVLVFToolTip="true" fGUID="guidEF0A742C-097B-4899-B048-3CA75312DB96"/>
			<property pGUID="guid2A9C3212-8918-4477-9818-47E467FB47AC" localName="LocalNumber" fGUID="guidFDEED4A3-619E-45DE-AF1A-2A4108EF9593" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</endType>
		<endType tGUID="guid6E083B5F-7B50-4673-9872-508F2046F06C" localName="SSN" LNIconFile="vlv_ssn">
			<imageURI height="32" width="32">VLImages/gifs/vlv_ssn.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid764F0E02-7B16-40F7-B5C9-E563FA773FBF" localName="SSN" isMandatory="false" idType="databaseID" fGUID="guid171067BE-266D-495A-9DB3-B308433014AD"/>
		</endType>
		<endType tGUID="guidF78CBF45-87BF-4C67-8AAF-AA93AEF79B80" localName="ProfessionalLicense" LNIconFile="vlv_professional_license">
			<imageURI height="32" width="32">VLImages/gifs/vlv_professional_license.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidF6074F48-5C61-4824-8852-47C06F674C64" localName="LicenseNumber" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid3AE0E3E3-F896-49C7-80C4-EF7038C30FB9" localName="Status" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid1368D388-1FEC-4F9B-A7C1-2A856A8DA20C" localName="LicenseType" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guidD50FFCE7-B681-4A61-BF70-92C93A39AE4F" localName="Board" isMandatory="false"/>
			<property pGUID="guidA29B5F8F-BA18-4262-95BD-65B8216D8841" localName="State" isMandatory="false" isVLVFToolTip="true"/>
		</endType>
		<endType tGUID="guidB03AE986-4073-4C8A-9DEC-5D8BB7757CA3" localName="PersonNameVariation" LNIconFile="vlv_alias">
			<imageURI height="32" width="32">VLImages/gifs/vlv_alias.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid5B82CAFD-3167-4e53-9B70-DCCBF2804B73" localName="Source" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid5DEA9AAD-3794-49E1-960B-D4E3EEF89912" localName="Report" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid62B01C18-2E64-46D5-B2FF-3C69B4F76FEB" localName="LastName" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid4DE7370B-60E5-4EB0-860E-4066D3DFD7B6" localName="FirstName" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guidBE6A2505-B545-464C-B407-51F9847ECE39" localName="MiddleName" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</endType>
		<endType tGUID="guid3EEF125F-2411-4ED4-A6F4-A6CBD5DD7B83" localName="Profile" LNIconFile="vlv_corporate_filing">
			<imageURI height="32" width="32">VLImages/gifs/vlv_corporate_filing.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidB2A3B23C-07B8-4A87-8B45-4CD20079E79C" localName="Name" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid015D2A41-BC1D-4085-A1F8-C462A359FB85" localName="YearStarted" fGUID="guid80CA4D51-93FD-4E25-A337-270C738DF02F" isMandatory="false"/>
			<property pGUID="guid7D237AA5-F981-483C-BFE5-686F7ACD9693" localName="IncorporationDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false"/>
			<property pGUID="guidF4F39165-17C5-4BF4-BBA7-6D02C32923D9" localName="IncorporationState" isMandatory="false"/>
			<property pGUID="guid694EB231-9982-46FE-A40E-3D9165582101" localName="IncorporationNumber" isMandatory="false"/>
			<property pGUID="guidC69FB10F-3B4E-413C-8FD9-D85D27B0E305" localName="Status" isMandatory="false"/>
			<property pGUID="guid08AC5655-AEB8-4D6F-B876-F08859E88C83" localName="Type" isMandatory="false"/>
			<property pGUID="guid72273EB8-9AA5-4F4C-828F-E6C89B32AB06" localName="Duration" isMandatory="false"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</endType>
		<endType tGUID="guid0F69598B-6238-45AB-AF15-65181C1E36A2" localName="MotorVehicleRegistration" LNIconFile="vlv_motor_vehicle">
			<imageURI height="32" width="32">VLImages/gifs/vlv_motor_vehicle.gif</imageURI>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidA29B5F8F-BA18-4262-95BD-65B8216D8841" localName="State" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid3FDE5AD1-1624-4215-87F7-7FA40552285C" localName="County" isMandatory="false"/>
			<property pGUID="guidD1F35949-FC3C-4985-B068-F09B74CE1AE3" localName="PlateNumber" fGUID="guidFDEED4A3-619E-45DE-AF1A-2A4108EF9593" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid9E0541A4-7A4E-42F0-ABCF-9C6C8312F9AC" localName="PreviousState" isMandatory="false" baseProperty="guidA29B5F8F-BA18-4262-95BD-65B8216D8841"/>
			<property pGUID="guidF08EAD8A-CCF0-43F5-A010-58E476F735A4" localName="PreviousPlateNumber" fGUID="guidFDEED4A3-619E-45DE-AF1A-2A4108EF9593" isMandatory="false" baseProperty="guidD1F35949-FC3C-4985-B068-F09B74CE1AE3"/>
			<property pGUID="guid52FF1D68-FA10-495C-AA62-CB327FE84639" localName="VIN" fGUID="guidFDEED4A3-619E-45DE-AF1A-2A4108EF9593" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid160717BD-C494-476C-8377-7D9B6CD6B88B" localName="Model" isMandatory="false"/>
			<property pGUID="guidF98B951F-335E-4157-B5F2-55C032B06295" localName="BodyStyle" isMandatory="false"/>
			<property pGUID="guid63CF5DCD-A409-463D-80AA-988770FF665C" localName="VehicleColor" fGUID="guidFDEED4A3-619E-45DE-AF1A-2A4108EF9593" isMandatory="false"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidB99BE38F-0357-4ADA-82F5-69688D742889" localName="VehicleMake" isMandatory="false"/>
			<property pGUID="guidC51B9D90-4C54-4EAF-A892-FDB0B8C4A605" localName="Year" fGUID="guid80CA4D51-93FD-4E25-A337-270C738DF02F" isMandatory="false"/>
		</endType>
		<endType tGUID="guidB19B8435-00B3-4E80-9DCF-05418587C613" localName="BusinessNameVariation" LNIconFile="vlv_company_name_variation">
			<imageURI height="32" width="32">VLImages/gifs/vlv_company_name_variation.gif</imageURI>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isMandatory="true" idType="databaseID" isVLVFproperty="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidB2A3B23C-07B8-4A87-8B45-4CD20079E79C" localName="Name" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</endType>
		<endType tGUID="guid096AF1C0-C905-4885-8003-34D758AE37F2" localName="DriversLicense" LNIconFile="vlv_drivers_license">
			<imageURI height="32" width="32">VLImages/gifs/vlv_drivers_license.gif</imageURI>
			<property pGUID="guidDDFD419C-6311-42ED-B2E5-EFC9A3714474" localName="Ref-Report" update="always" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidA29B5F8F-BA18-4262-95BD-65B8216D8841" localName="State" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guid04B330A4-15F8-412B-950C-A076E66D1525" localName="ExpirationDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false" isVLVFToolTip="true" baseProperty="guidCD68867D-7CEC-46d3-936A-C609292ADF0E"/>
			<property pGUID="guidB66FB2D5-EF26-4C39-9E19-6B4D373C6E30" localName="IssueDate" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false" isVLVFToolTip="true" baseProperty="guidCD68867D-7CEC-46d3-936A-C609292ADF0E"/>
			<property pGUID="guid3FDE5AD1-1624-4215-87F7-7FA40552285C" localName="County" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guidBB6AAD0D-6F48-4c94-A80D-0280E1DCA5E6" localName="LicenseNumber" isMandatory="false" isVLVFToolTip="true"/>
			<property pGUID="guidFE45F1C4-B198-4111-8123-F42D2CD6419D" localName="DateOfBirth" fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8" isMandatory="false"/>
			<property pGUID="guid7548369B-BA9A-4C4B-AEAD-0CB442EAFA27" localName="Gender" isMandatory="false" fGUID="guid89BE2889-F201-4AA8-B075-D292EAD210BD"/>
			<property pGUID="guid3DA39818-EEBA-432D-BAA4-37B6B104C3FB" localName="Height" isMandatory="false"/>
			<property pGUID="guidE123CC8F-9010-40ED-AE46-516AE21ACC7B" localName="Weight" isMandatory="false"/>
			<property pGUID="guidCC7B13DC-DABE-48F2-8FDE-2653BD30950E" localName="HairColor" isMandatory="false"/>
			<property pGUID="guid462B63B6-603F-4719-AFA1-7485EDBE8C60" localName="EyeColor" isMandatory="false"/>
			<property pGUID="guid2BE23676-845C-49A7-AC51-518A13B45CBF" localName="LicenseType" isMandatory="false"/>
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guidC871DE4A-9994-4FC2-BFFB-7B72DB795907" localName="PreviousLicenseNumber" isMandatory="false" isVLVFToolTip="true" baseProperty="guidBB6AAD0D-6F48-4c94-A80D-0280E1DCA5E6"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</endType>
	</endTypes>
	<linkTypes>
		<linkType tGUID="guid18E7D3EF-0694-4DB7-8AA7-4BCEF634391E" localName="AddressOf" color="#0000ff">
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid5B82CAFD-3167-4e53-9B70-DCCBF2804B73" localName="Source" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidF1151957-545E-453C-B61E-D35C57699B35" localName="IsCurrent" isMandatory="false"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid909C0E31-9ACA-480a-9093-615C6824446A" localName="AppletSource" isMandatory="false" isVLVFproperty="true"/>
		</linkType>
		<linkType tGUID="guidC9E54967-BBBF-494B-8348-B9D524F500FD" localName="Link" color="#808080">
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid5B82CAFD-3167-4e53-9B70-DCCBF2804B73" localName="Source" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid909C0E31-9ACA-480a-9093-615C6824446A" localName="AppletSource" isMandatory="false" isVLVFproperty="true"/>
		</linkType>
		<linkType tGUID="guid1A451DF5-5A8E-4FA7-AE50-4EABE35B47C7" localName="Ownership" color="#00ff00">
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid5B82CAFD-3167-4e53-9B70-DCCBF2804B73" localName="Source" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidF1151957-545E-453C-B61E-D35C57699B35" localName="IsCurrent" isMandatory="false">
				<attribute>
					<Symbol URI="VLImages/gifs/vlv_tick.gif" width="12" height="12" LNIconFile="tick.bmp" shown="true"/>
					<ShowValue>false</ShowValue>
					<OnlyShownIfVal>1</OnlyShownIfVal>
					<ShowOnChart>true</ShowOnChart>
				</attribute>
			</property>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid909C0E31-9ACA-480a-9093-615C6824446A" localName="AppletSource" isMandatory="false" isVLVFproperty="true"/>
		</linkType>
		<linkType tGUID="guidE48ED0E7-3D02-4481-B98C-8D3BDAFDAB92" localName="Subject" color="#000000">
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid5B82CAFD-3167-4e53-9B70-DCCBF2804B73" localName="Source" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid909C0E31-9ACA-480a-9093-615C6824446A" localName="AppletSource" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</linkType>
		<!-- New Link Types -->
		<linkType tGUID="guidD1188524-CCE4-46aa-8B92-D1D6AA8EDF50" localName="CurrentOwner" kindOf="guid1A451DF5-5A8E-4FA7-AE50-4EABE35B47C7" color="#0f0f00">
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid5B82CAFD-3167-4e53-9B70-DCCBF2804B73" localName="Source" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid909C0E31-9ACA-480a-9093-615C6824446A" localName="AppletSource" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</linkType>
		<linkType tGUID="guidF020DC91-88DB-405b-8691-8F04698DB6A9" localName="PreviousOwner" kindOf="guid1A451DF5-5A8E-4FA7-AE50-4EABE35B47C7" color="#0ff000">
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid5B82CAFD-3167-4e53-9B70-DCCBF2804B73" localName="Source" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid909C0E31-9ACA-480a-9093-615C6824446A" localName="AppletSource" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</linkType>
		<linkType tGUID="guid9E35BD50-EA8F-4e52-9E82-9DF88914DFDD" localName="CurrentAddressOf" kindOf="guid18E7D3EF-0694-4DB7-8AA7-4BCEF634391E" color="#000f0f">
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid5B82CAFD-3167-4e53-9B70-DCCBF2804B73" localName="Source" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid909C0E31-9ACA-480a-9093-615C6824446A" localName="AppletSource" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</linkType>
		<linkType tGUID="guid48C4DC55-87C0-40b3-AD73-F07235E2B64F" localName="PreviousAddressOf" kindOf="guid18E7D3EF-0694-4DB7-8AA7-4BCEF634391E" color="#000ff0">
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid5B82CAFD-3167-4e53-9B70-DCCBF2804B73" localName="Source" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid909C0E31-9ACA-480a-9093-615C6824446A" localName="AppletSource" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
		</linkType>
		<!-- New Link Types 13Jan06 -->
		<linkType color="#FF8000" isSymmetricLink="true" showArrows="false" tGUID="guidD1F66E7F-7298-488C-9372-EF166BD04D43" localName="Relationship" kindOf="guid3C07BD39-5F65-4fb0-B87F-5B633BCF9B04">
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid5B82CAFD-3167-4e53-9B70-DCCBF2804B73" localName="Source" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid909C0E31-9ACA-480a-9093-615C6824446A" localName="AppletSource" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
			<property localName="Relationship" displayName="Relationship Type" pGUID="guidFE222F42-05D8-4be2-9172-71BCE5A6E707" fGUID="guidFDEED4A3-619E-45DE-AF1A-2A4108EF9593" baseProperty="guid9A224CCF-28F7-4c55-9F14-9E820A0B1631" />
		</linkType>
		<linkType color="#804000" isSymmetricLink="true" showArrows="false" tGUID="guid3609C342-EAB4-4909-8A87-00763413D163" localName="Neighbor" kindOf="guid3C07BD39-5F65-4fb0-B87F-5B633BCF9B04">
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid5B82CAFD-3167-4e53-9B70-DCCBF2804B73" localName="Source" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid909C0E31-9ACA-480a-9093-615C6824446A" localName="AppletSource" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
			<property localName="Relationship" displayName="Relationship Type" pGUID="guidFE222F42-05D8-4be2-9172-71BCE5A6E707" fGUID="guidFDEED4A3-619E-45DE-AF1A-2A4108EF9593" baseProperty="guid9A224CCF-28F7-4c55-9F14-9E820A0B1631" />
		</linkType>
		<linkType color="#FF0000" isSymmetricLink="true" showArrows="false" tGUID="guidFD647B82-FDAE-4218-A15D-964E982CFEF9" localName="Relative" kindOf="guid3C07BD39-5F65-4fb0-B87F-5B633BCF9B04">
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid5B82CAFD-3167-4e53-9B70-DCCBF2804B73" localName="Source" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid909C0E31-9ACA-480a-9093-615C6824446A" localName="AppletSource" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
			<property localName="Relationship" displayName="Relationship Type" pGUID="guidFE222F42-05D8-4be2-9172-71BCE5A6E707" fGUID="guidFDEED4A3-619E-45DE-AF1A-2A4108EF9593" baseProperty="guid9A224CCF-28F7-4c55-9F14-9E820A0B1631" />
		</linkType>
                <!-- New link called EmployeeOf for connecting PAW nodes -->
		<linkType tGUID="guid18E7D3EF-0694-4DB7-8AA7-4BCEF634391E" localName="is Employee of" color="#FF0000">
			<property pGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E" localName="SLID" isVLVFproperty="true" idType="databaseID" isMandatory="true">
				<idSource localName="LexisNexis SmartLinx" sGUID="guidE7627EEA-44F0-46EF-B8AD-BB9D7F6F3CC9"/>
			</property>
			<property pGUID="guid5B82CAFD-3167-4e53-9B70-DCCBF2804B73" localName="Source" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guidF1151957-545E-453C-B61E-D35C57699B35" localName="IsCurrent" isMandatory="false"/>
			<property pGUID="guid997493BA-3E70-4EA6-AD1D-6FD759798EFB" localName="LabelText" isMandatory="false" isLabel="true"/>
			<property pGUID="guid5A7E25C4-9239-4500-A20A-B986D7D28E40" localName="URLreference" isMandatory="false" isVLVFproperty="true"/>
			<property pGUID="guid909C0E31-9ACA-480a-9093-615C6824446A" localName="AppletSource" isMandatory="false" isVLVFproperty="true"/>
		</linkType>
	</linkTypes>
	<forms>
		<form fGUID="guidFA315507-3E6E-4AD2-8BC0-4731381547E8">
			<FormName>SmartLinx Date Form</FormName>
			<baseForm>dateTime</baseForm>
			<formatters>
				<formatter>mm/yyyy</formatter>
				<formatter>mm/dd/yyyy</formatter>
				<formatter>mm/yy</formatter>
				<formatter>m/dd/yyyy</formatter>
			</formatters>
		</form>
		<form fGUID="guid80CA4D51-93FD-4E25-A337-270C738DF02F">
			<FormName>SmartLinx Year Form</FormName>
			<baseForm>dateTime</baseForm>
			<formatters>
				<formatter>01/yyyy</formatter>
				<formatter>yyyy</formatter>
			</formatters>
		</form>
		<form fGUID="guidD6A66A40-B842-47BD-AAA8-CA34A2C6E43C">
			<FormName>US Date 2</FormName>
			<baseForm>dateTime</baseForm>
			<formatters>
				<formatter>MM/dd/yyyy</formatter>
			</formatters>
		</form>
		<form fGUID="guidB3C7D2BB-15B7-4f75-8628-D0842C152127">
			<FormName>FEIN Number Form</FormName>
			<baseForm>text</baseForm>
		</form>
	</forms>
	<services>
		<service localName="SmartLinx" sGUID="guidF90914BE-374F-4E96-9EBC-F7D7642BC72E" serviceName="SmartLinx" providerName="Lexis Nexis" LNDatabaseName="LexisNexis(TM) SmartLinx(TM)" LNDatabaseGUID="guid9DE283C6-773F-4CAA-98A9-46C99BD90E2E"/>
	</services>
</typeCatalogue>
</vlx:vlx>

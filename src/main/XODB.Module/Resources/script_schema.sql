--This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.
-- =============================================
-- Author:		Andrew Grosser
-- Create date: July 2012
-- Description:	XODB - Xstract Open Database (Open source database for geology and mining)
-- =============================================

USE [XODB]
;
/****** Object:  Table [dbo].[X_Address]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Address](
	[AddressID] [uniqueidentifier] NOT NULL,
	[AddressName] [nvarchar](50) NULL,
	[Street] [nvarchar](255) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Postcode] [nvarchar](16) NULL,
	[IsHQ] [bit] NULL,
	[IsPostBox] [bit] NOT NULL,
	[Priority] [int] NOT NULL,
	[Phone] [nvarchar](16) NULL,
	[Fax] [nvarchar](16) NULL,
	[Email] [nvarchar](16) NULL,
	[Mobile] [nvarchar](16) NULL,
	[LocationID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_AssayGroup]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_AssayGroup](
	[AssayGroupID] [uniqueidentifier] NOT NULL,
	[AssayGroupName] [nvarchar](16) NULL,
	[LabCompanyID] [uniqueidentifier] NULL,
	[Submitted] [date] NULL,
	[SubmittedContactID] [uniqueidentifier] NULL,
	[Received] [date] NULL,
	[ReceivedContactID] [uniqueidentifier] NULL,
	[Entered] [date] NULL,
	[EnteredContactID] [uniqueidentifier] NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_Assay] PRIMARY KEY CLUSTERED 
(
	[AssayGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_AssayGroupStandardTestResult]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_AssayGroupStandardTestResult](
	[AssayGroupStandardTestResultID] [uniqueidentifier] NOT NULL,
	[AssayGroupTestSampleID] [uniqueidentifier] NULL,
	[AssayGroupTestID] [uniqueidentifier] NULL,
	[AssayStandardID] [uniqueidentifier] NULL,
	[SampleCategoryID] [uniqueidentifier] NULL,
	[SampleStateID] [uniqueidentifier] NULL,
	[SampleTypeID] [uniqueidentifier] NULL,
	[LabResultText] [nvarchar](58) NULL,
	[LabResult] [numeric](38, 20) NULL,
	[LabSampleNumber] [nvarchar](16) NOT NULL,
	[LabBatchNumber] [nvarchar](16) NULL,
	[Sampled] [date] NULL,
	[SampledBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_X_AssayGroupStandardTestResult] PRIMARY KEY CLUSTERED 
(
	[AssayGroupStandardTestResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_AssayGroupTest]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_AssayGroupTest](
	[AssayGroupTestID] [uniqueidentifier] NOT NULL,
	[AssayGroupID] [uniqueidentifier] NULL,
	[AssayTypeName] [nvarchar](16) NULL,
	[AssayTestName] [nvarchar](16) NULL,
	[ParameterID] [uniqueidentifier] NULL,
	[AssayTestPriority] [int] NULL,
	[AssayMethodID] [uniqueidentifier] NULL,
	[AssayTypeID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_AssayTest] PRIMARY KEY CLUSTERED 
(
	[AssayGroupTestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_AssayGroupTestResult]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_AssayGroupTestResult](
	[AssayGroupTestResultID] [uniqueidentifier] NOT NULL,
	[AssayGroupTestSampleID] [uniqueidentifier] NULL,
	[AssayGroupTestID] [uniqueidentifier] NOT NULL,
	[LabResultText] [nvarchar](58) NULL,
	[LabResult] [numeric](38, 20) NULL,
	[LabSampleNumber] [nvarchar](16) NULL,
	[LabBatchNumber] [nvarchar](16) NULL,
	[Sampled] [date] NULL,
	[SampledBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_X_AssayGroupTestResult] PRIMARY KEY CLUSTERED 
(
	[AssayGroupTestResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_AssayGroupTestResultComment]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_AssayGroupTestResultComment](
	[AssayGroupTestResultCommentID] [uniqueidentifier] NOT NULL,
	[AssayGroupTestResultID] [uniqueidentifier] NOT NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_AssayGroupTestResultComment] PRIMARY KEY CLUSTERED 
(
	[AssayGroupTestResultCommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_AssayGroupTestResultDuplicate]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_AssayGroupTestResultDuplicate](
	[AssayGroupTestResultDuplicateID] [uniqueidentifier] NOT NULL,
	[AssayGroupTestResultID] [uniqueidentifier] NOT NULL,
	[LabResultText] [nvarchar](58) NULL,
	[LabResult] [numeric](38, 20) NULL,
	[LabSampleNumber] [nvarchar](16) NULL,
	[LabBatchNumber] [nvarchar](16) NULL,
	[Sampled] [date] NULL,
	[SampledBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_X_AssayGroupTestResultDuplicate] PRIMARY KEY CLUSTERED 
(
	[AssayGroupTestResultDuplicateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_AssayGroupTestSample]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_AssayGroupTestSample](
	[AssayGroupTestSampleID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NULL,
	[SampleCategoryID] [uniqueidentifier] NULL,
	[SampleStateID] [uniqueidentifier] NULL,
	[SampleTypeID] [uniqueidentifier] NULL,
	[SampleName] [nvarchar](16) NULL,
	[SampleNumber] [nvarchar](16) NULL,
	[FromDepth] [numeric](9, 3) NULL,
	[ToDepth] [numeric](9, 3) NULL,
	[SampleMassKg] [numeric](6, 4) NULL,
	[DryMassKg] [numeric](6, 4) NULL,
 CONSTRAINT [PK_X_AssayGroupTestSample] PRIMARY KEY CLUSTERED 
(
	[AssayGroupTestSampleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_BlockModel]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_BlockModel](
	[BlockModelID] [uniqueidentifier] NOT NULL,
	[ProjectID] [uniqueidentifier] NOT NULL,
	[OriginX] [numeric](38, 20) NULL,
	[OriginY] [numeric](38, 20) NULL,
	[OriginZ] [numeric](38, 20) NULL,
	[IsIJKCalculated] [bit] NULL,
	[OriginI] [int] NULL,
	[OriginJ] [int] NULL,
	[OriginK] [int] NULL,
	[MaximumI] [int] NULL,
	[MaximumJ] [int] NULL,
	[MaximumK] [int] NULL,
	[MinimumI] [int] NULL,
	[MinimumJ] [int] NULL,
	[MinimumK] [int] NULL,
	[DimensionEasting] [nvarchar](1) NULL,
	[DimensionNorthing] [nvarchar](1) NULL,
	[DimensionElevation] [nvarchar](1) NULL,
	[IsOriginNorthPositive] [bit] NULL,
	[IsOriginEastPositive] [bit] NULL,
	[IsOriginElevationUpwardsPositive] [bit] NULL,
	[CubeCentroid0OriginOffsetX] [numeric](38, 20) NULL,
	[CubeCentroid0OriginOffsetY] [numeric](38, 20) NULL,
	[CubeCentroid0OriginOffsetZ] [numeric](38, 20) NULL,
	[UnitIJK] [nvarchar](8) NULL,
	[DefaultISize] [numeric](38, 20) NULL,
	[DefaultJSize] [numeric](38, 20) NULL,
	[DefaultKSize] [numeric](38, 20) NULL,
	[AuthorContactID] [uniqueidentifier] NULL,
	[ResponsibleContactID] [uniqueidentifier] NULL,
	[ApproverContactID] [uniqueidentifier] NULL,
	[ExternalReviewerContactID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_BlockModel] PRIMARY KEY CLUSTERED 
(
	[BlockModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_BlockModelBlock]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_BlockModelBlock](
	[BlockModelBlockID] [uniqueidentifier] NOT NULL,
	[BlockModelID] [uniqueidentifier] NOT NULL,
	[Domain] [nvarchar](50) NULL,
	[I] [int] NULL,
	[J] [int] NULL,
	[K] [int] NULL,
	[CentroidX] [numeric](38, 20) NULL,
	[CentroidY] [numeric](38, 20) NULL,
	[CentroidZ] [numeric](38, 20) NULL,
	[LegthX] [numeric](38, 20) NULL,
	[LengthY] [numeric](38, 20) NULL,
	[LengthZ] [numeric](38, 20) NULL,
	[MinimumSamples] [int] NULL,
	[MaximumSamples] [int] NULL,
	[EstimationTechnique] [nvarchar](50) NULL,
	[KrigingEfficiency] [numeric](38, 20) NULL,
	[KrigingError] [numeric](38, 20) NULL,
	[KrigingVariance] [numeric](38, 20) NULL,
	[SlopeOfRegression] [numeric](38, 20) NULL,
	[ResourceCategory] [nvarchar](50) NULL,
	[Numeric1] [numeric](38, 20) NULL,
	[Numeric2] [numeric](38, 20) NULL,
	[Numeric3] [numeric](38, 20) NULL,
	[Numeric4] [numeric](38, 20) NULL,
	[Numeric5] [numeric](38, 20) NULL,
	[Numeric6] [numeric](38, 20) NULL,
	[Numeric7] [numeric](38, 20) NULL,
	[Numeric8] [numeric](38, 20) NULL,
	[Numeric9] [numeric](38, 20) NULL,
	[Numeric10] [numeric](38, 20) NULL,
	[Numeric11] [numeric](38, 20) NULL,
	[Numeric12] [numeric](38, 20) NULL,
	[Numeric13] [numeric](38, 20) NULL,
	[Numeric14] [numeric](38, 20) NULL,
	[Numeric15] [numeric](38, 20) NULL,
	[Numeric16] [numeric](38, 20) NULL,
	[Numeric17] [numeric](38, 20) NULL,
	[Numeric18] [numeric](38, 20) NULL,
	[Numeric19] [numeric](38, 20) NULL,
	[Numeric20] [numeric](38, 20) NULL,
	[Numeric21] [numeric](38, 20) NULL,
	[Numeric22] [numeric](38, 20) NULL,
	[Numeric23] [numeric](38, 20) NULL,
	[Numeric24] [numeric](38, 20) NULL,
	[Numeric25] [numeric](38, 20) NULL,
	[Numeric26] [numeric](38, 20) NULL,
	[Numeric27] [numeric](38, 20) NULL,
	[Numeric28] [numeric](38, 20) NULL,
	[Numeric29] [numeric](38, 20) NULL,
	[Numeric30] [numeric](38, 20) NULL,
	[Numeric31] [numeric](38, 20) NULL,
	[String1] [nvarchar](50) NULL,
	[String2] [nvarchar](50) NULL,
	[String3] [nvarchar](50) NULL,
	[String4] [nvarchar](50) NULL,
	[String5] [nvarchar](50) NULL,
	[String6] [nvarchar](50) NULL,
	[String7] [nvarchar](50) NULL,
	[String8] [nvarchar](50) NULL,
	[String9] [nvarchar](50) NULL,
	[String10] [nvarchar](50) NULL,
	[String11] [nvarchar](50) NULL,
 CONSTRAINT [PK_X_BlockModelBlock] PRIMARY KEY CLUSTERED 
(
	[BlockModelBlockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_BlockModelBlockData]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_BlockModelBlockData](
	[BlockModelBlockDataID] [uniqueidentifier] NOT NULL,
	[ParameterID] [uniqueidentifier] NOT NULL,
	[BlockModelBlockID] [uniqueidentifier] NOT NULL,
	[BlockModelBlockDataText] [nvarchar](58) NULL,
	[BlockModelBlockDataValue] [numeric](38, 20) NULL,
 CONSTRAINT [PK_X_BlockModelBlockData] PRIMARY KEY CLUSTERED 
(
	[BlockModelBlockDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_BlockModelMetadata]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_BlockModelMetadata](
	[BlockModelMetadataID] [uniqueidentifier] NOT NULL,
	[BlockModelID] [uniqueidentifier] NOT NULL,
	[ParameterID] [uniqueidentifier] NOT NULL,
	[BlockModelMetadataText] [nvarchar](58) NULL,
	[BlockModelMetadataValue] [numeric](38, 20) NULL,
 CONSTRAINT [PK_X_BlockModelMetadata] PRIMARY KEY CLUSTERED 
(
	[BlockModelMetadataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Casing]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Casing](
	[CasingID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](9,3) NULL,
	[ToDepth] [numeric](9,3) NULL,
	[CasingTypeID] [uniqueidentifier] NULL,
	[CasingSize] [int] NULL,
	[LengthRecovered] [numeric](9,3) NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_CasingData] PRIMARY KEY CLUSTERED 
(
	[CasingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Cementing]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Cementing](
	[CementingID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](9, 3) NULL,
	[ToDepth] [numeric](9, 3) NULL,
	[CementingDate] [date] NULL,
	[Volume] [numeric](4, 2) NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_CementingData] PRIMARY KEY CLUSTERED 
(
	[CementingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Company]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Company](
	[CompanyID] [uniqueidentifier] NOT NULL,
	[CompanyName] [nvarchar](255) NULL,
	[CountryID] [nvarchar](2) NULL,
	[PrimaryContactID] [uniqueidentifier] NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_CompanyAddress]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_CompanyAddress](
	[CompanyAddressID] [uniqueidentifier] NOT NULL,
	[CompanyID] [uniqueidentifier] NOT NULL,
	[AddressID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_X_CompanyAddress] PRIMARY KEY CLUSTERED 
(
	[CompanyAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_CompanyRelation]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_CompanyRelation](
	[CompanyRelationID] [uniqueidentifier] NOT NULL,
	[CompanyID] [uniqueidentifier] NOT NULL,
	[ParentCompanyID] [uniqueidentifier] NOT NULL,
	[IsChildVisible] [bit] NOT NULL,
	[IsParentVisible] [bit] NOT NULL,
 CONSTRAINT [PK_X_CompanyRelation] PRIMARY KEY CLUSTERED 
(
	[CompanyRelationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Composite]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Composite](
	[CompositeID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](9,3) NULL,
	[ToDepth] [numeric](9,3) NULL,
	[TopX] [numeric](38, 20) NULL,
	[TopY] [numeric](38, 20) NULL,
	[TopZ] [numeric](38, 20) NULL,
	[CentroidX] [numeric](38, 20) NULL,
	[CentroidY] [numeric](38, 20) NULL,
	[CentroidZ] [numeric](38, 20) NULL,
	[BottomX] [numeric](38, 20) NULL,
	[BottomY] [numeric](38, 20) NULL,
	[BottomZ] [numeric](38, 20) NULL,
	[DesurveyID] [uniqueidentifier] NULL,
	[HeaderID] [uniqueidentifier] NULL,
	[AssayGroupTestSampleID] [uniqueidentifier] NULL,
	[CasingID] [uniqueidentifier] NULL,
	[CementingID] [uniqueidentifier] NULL,
	[DefectID] [uniqueidentifier] NULL,
	[DrillingID] [uniqueidentifier] NULL,
	[GeologyID] [uniqueidentifier] NULL,
	[GeophysicsDataID] [uniqueidentifier] NULL,
	[LithologyID] [uniqueidentifier] NULL,
	[MineralogyID] [uniqueidentifier] NULL,
	[PointLoadID] [uniqueidentifier] NULL,
	[RecoveryID] [uniqueidentifier] NULL,
	[BlockModelBlockID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DesurveyResult] PRIMARY KEY CLUSTERED 
(
	[CompositeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_CompositeData]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_CompositeData](
	[CompositeDataID] [uniqueidentifier] NOT NULL,
	[ParameterID] [uniqueidentifier] NOT NULL,
	[CompositeDataText] [nvarchar](58) NULL,
	[CompositeDataValue] [numeric](38, 20) NULL,
 CONSTRAINT [PK_X_CompositeCustomData] PRIMARY KEY CLUSTERED 
(
	[CompositeDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Contact]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
SET ANSI_PADDING ON
;
CREATE TABLE [dbo].[X_Contact](
	[ContactID] [uniqueidentifier] NOT NULL,
	[ContactName] [nvarchar](120) NOT NULL,
	[Title] [nvarchar](16) NULL,
	[Surname] [nvarchar](60) NOT NULL,
	[Firstname] [nvarchar](60) NOT NULL,
	[Username] [nvarchar](100) NULL,
	[MiddleNames] [nvarchar](60) NULL,
	[Initials] [nvarchar](16) NULL,
	[DOB] [date] NULL,
	[BirthCountryID] [nvarchar](2) NULL,
	[BirthCity] [nvarchar](60) NULL,
	[AspNetUserID] [uniqueidentifier] NULL,
	[XafUserID] [uniqueidentifier] NULL,
	[OAuthID] [nvarchar](256) NULL,
	[Photo] [varbinary](max) NULL,
	[ShortBiography] [nvarchar](max) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
SET ANSI_PADDING OFF
;
/****** Object:  Table [dbo].[X_ContactAddress]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_ContactAddress](
	[ContactAddressID] [uniqueidentifier] NOT NULL,
	[ContactID] [uniqueidentifier] NULL,
	[AddressID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_ContactAddress] PRIMARY KEY CLUSTERED 
(
	[ContactAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_ContactCompany]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_ContactCompany](
	[ContactCompanyID] [uniqueidentifier] NOT NULL,
	[ContactID] [uniqueidentifier] NULL,
	[CompanyID] [uniqueidentifier] NULL,
	[PositionName] [nvarchar](50) NULL,
	[ProfessionID] [uniqueidentifier] NULL,
	[IsActive] [bit] NOT NULL,
	[OfficeLocation] [nvarchar](50) NOT NULL,
	[Division] [nvarchar](50) NULL,
	[Started] [date] NULL,
	[Finished] [date] NULL,
 CONSTRAINT [PK_X_ContactCompany] PRIMARY KEY CLUSTERED 
(
	[ContactCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Defect]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Defect](
	[DefectID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](9, 3) NULL,
	[ToDepth] [numeric](9, 3) NULL,
	[WeatheringID] [uniqueidentifier] NULL,
	[RockMassUnitTypeID] [uniqueidentifier] NULL,
	[AlterationID] [uniqueidentifier] NULL,
	[EstimatedStrengthID] [uniqueidentifier] NULL,
	[BedSpacingID] [uniqueidentifier] NULL,
	[BedDip] [int] NULL,
	[MoistureSensitivityID] [uniqueidentifier] NULL,
	[PlasticityID] [uniqueidentifier] NULL,
	[DefectDepth] [numeric](9, 3) NULL,
	[DefectLength] [int] NULL,
	[NumberOfDefects] [int] NULL,
	[DefectsSpacing] [int] NULL,
	[DefectTypeID] [uniqueidentifier] NULL,
	[DefectCompletenessID] [uniqueidentifier] NULL,
	[DefectContinuityID] [uniqueidentifier] NULL,
	[DefectDip] [int] NULL,
	[MinimumDipBrokenZone] [int] NULL,
	[MaximumDipBrokenZone] [int] NULL,
	[DipOrientation] [int] NULL,
	[DipOrientationMethodID] [uniqueidentifier] NULL,
	[ShapeID] [uniqueidentifier] NULL,
	[RoughnessID] [uniqueidentifier] NULL,
	[JointRoughnessCoefficient] [int] NULL,
	[PerpendicularWidth] [int] NULL,
	[PrimaryInfillTypeID] [uniqueidentifier] NULL,
	[SecondaryInfillTypeID] [uniqueidentifier] NULL,
	[InfillModeID] [uniqueidentifier] NULL,
	[InfillEstimatedStrengthID] [uniqueidentifier] NULL,
	[InfillPlasticityID] [uniqueidentifier] NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_DefectData] PRIMARY KEY CLUSTERED 
(
	[DefectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Desurvey]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Desurvey](
	[DesurveyID] [uniqueidentifier] NOT NULL,
	[SurveyID] [uniqueidentifier] NULL,
	[DesurveyAlgorithmTypeID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_Desurvey] PRIMARY KEY CLUSTERED 
(
	[DesurveyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Dictionary]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Dictionary](
	[CategoryID] [nvarchar](15) NOT NULL,
	[CodeID] [nvarchar](16) NOT NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_Dictionary] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC,
	[CodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryAdjective]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryAdjective](
	[AdjectiveID] [uniqueidentifier] NOT NULL,
	[StandardAdjectiveName] [nvarchar](16) NOT NULL,
	[CoalAdjectiveName] [nvarchar](16) NULL,
	[GoldAdjectiveName] [nvarchar](16) NULL,
	[CustomAdjectiveName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryAdjective] PRIMARY KEY CLUSTERED 
(
	[AdjectiveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryAlteration]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryAlteration](
	[AlterationID] [uniqueidentifier] NOT NULL,
	[StandardAlterationName] [nvarchar](16) NOT NULL,
	[CoalAlterationName] [nvarchar](16) NULL,
	[GoldAlterationName] [nvarchar](16) NULL,
	[CustomAlterationName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryAlteration] PRIMARY KEY CLUSTERED 
(
	[AlterationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryAssayMethod]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryAssayMethod](
	[AssayMethodID] [uniqueidentifier] NOT NULL,
	[StandardAssayMethodName] [nvarchar](16) NOT NULL,
	[CoalAssayMethodName] [nvarchar](16) NULL,
	[GoldAssayMethodName] [nvarchar](16) NULL,
	[CustomAssayMethodName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryAssayMethod] PRIMARY KEY CLUSTERED 
(
	[AssayMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryAssayStandard]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryAssayStandard](
	[AssayStandardID] [uniqueidentifier] NOT NULL,
	[StandardAssayStandardName] [nvarchar](16) NOT NULL,
	[CoalAssayStandardName] [nvarchar](16) NULL,
	[GoldAssayStandardName] [nvarchar](16) NULL,
	[CustomAssayStandardName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryAssayStandard] PRIMARY KEY CLUSTERED 
(
	[AssayStandardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryAssayTest]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryAssayTest](
	[AssayTestID] [uniqueidentifier] NOT NULL,
	[StandardAssayTestName] [nvarchar](16) NOT NULL,
	[CoalAssayTestName] [nvarchar](16) NULL,
	[GoldAssayTestName] [nvarchar](16) NULL,
	[CustomAssayTestName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryAssayTest] PRIMARY KEY CLUSTERED 
(
	[AssayTestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryAssayType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryAssayType](
	[AssayTypeID] [uniqueidentifier] NOT NULL,
	[StandardAssayTypeName] [nvarchar](16) NOT NULL,
	[CoalAssayTypeName] [nvarchar](16) NULL,
	[GoldAssayTypeName] [nvarchar](16) NULL,
	[CustomAssayTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryAssayBasisType] PRIMARY KEY CLUSTERED 
(
	[AssayTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryBasalContact]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryBasalContact](
	[BasalContactID] [uniqueidentifier] NOT NULL,
	[StandardBasalContactName] [nvarchar](16) NOT NULL,
	[CoalBasalContactName] [nvarchar](16) NULL,
	[GoldBasalContactName] [nvarchar](16) NULL,
	[CustomBasalContactName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryBasal_Contact] PRIMARY KEY CLUSTERED 
(
	[BasalContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryBedSpacing]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryBedSpacing](
	[BedSpacingID] [uniqueidentifier] NOT NULL,
	[StandardBedSpacingName] [nvarchar](16) NOT NULL,
	[CoalBedSpacingName] [nvarchar](16) NULL,
	[GoldBedSpacingName] [nvarchar](16) NULL,
	[CustomBedSpacingName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryBed_Spacing] PRIMARY KEY CLUSTERED 
(
	[BedSpacingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryColour]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryColour](
	[ColourID] [uniqueidentifier] NOT NULL,
	[StandardColourName] [nvarchar](16) NOT NULL,
	[CoalColourName] [nvarchar](16) NULL,
	[GoldColourName] [nvarchar](16) NULL,
	[CustomColourName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryColour] PRIMARY KEY CLUSTERED 
(
	[ColourID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryCommodity]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryCommodity](
	[CommodityID] [uniqueidentifier] NOT NULL,
	[StandardCommodityName] [nvarchar](30) NOT NULL,
	[CoalCommodityName] [nvarchar](30) NULL,
	[GoldCommodityName] [nvarchar](30) NULL,
	[CustomCommodityName] [nvarchar](30) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_Commodity] PRIMARY KEY CLUSTERED 
(
	[CommodityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryCoreState]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryCoreState](
	[CoreStateID] [uniqueidentifier] NOT NULL,
	[StandardCoreStateName] [nvarchar](16) NOT NULL,
	[CoalCoreStateName] [nvarchar](16) NULL,
	[GoldCoreStateName] [nvarchar](16) NULL,
	[CustomCoreStateName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryCore_State] PRIMARY KEY CLUSTERED 
(
	[CoreStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryCountry]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryCountry](
	[CountryID] [nvarchar](2) NOT NULL,
	[StandardCountryName] [nvarchar](40) NOT NULL,
	[CoalCountryName] [nvarchar](40) NULL,
	[GoldCountryName] [nvarchar](40) NULL,
	[CustomCountryName] [nvarchar](40) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryCountry] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryCountryState]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryCountryState](
	[CountryStateID] [uniqueidentifier] NOT NULL,
	[CountryID] [nvarchar](2) NULL,
	[StandardCountryStateName] [nvarchar](100) NULL,
	[CoalCountryStateName] [nvarchar](100) NULL,
	[GoldCountryStateName] [nvarchar](100) NULL,
	[CustomCountryStateName] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_CountryState] PRIMARY KEY CLUSTERED 
(
	[CountryStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryDataStatus]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryDataStatus](
	[DataStatusID] [uniqueidentifier] NOT NULL,
	[StandardDataStatusName] [nvarchar](16) NOT NULL,
	[CoalDataStatusName] [nvarchar](16) NULL,
	[GoldDataStatusName] [nvarchar](16) NULL,
	[CustomDataStatusName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryData_Status] PRIMARY KEY CLUSTERED 
(
	[DataStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryDefectCompleteness]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryDefectCompleteness](
	[DefectCompletenessID] [uniqueidentifier] NOT NULL,
	[StandardDefectCompletenessName] [nvarchar](16) NOT NULL,
	[CoalDefectCompletenessName] [nvarchar](16) NULL,
	[GoldDefectCompletenessName] [nvarchar](16) NULL,
	[CustomDefectCompletenessName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryDefect_Intact] PRIMARY KEY CLUSTERED 
(
	[DefectCompletenessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryDefectContinuity]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryDefectContinuity](
	[DefectContinuityID] [uniqueidentifier] NOT NULL,
	[StandardDefectContinuityName] [nvarchar](16) NOT NULL,
	[CoalDefectContinuityName] [nvarchar](16) NULL,
	[GoldDefectContinuityName] [nvarchar](16) NULL,
	[CustomDefectContinuityName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryDefect_Contin] PRIMARY KEY CLUSTERED 
(
	[DefectContinuityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryDefectSpacing]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryDefectSpacing](
	[DefectSpacingID] [uniqueidentifier] NOT NULL,
	[StandardDefectSpacingName] [nvarchar](16) NOT NULL,
	[CoalDefectSpacingName] [nvarchar](16) NULL,
	[GoldDefectSpacingName] [nvarchar](16) NULL,
	[CustomDefectSpacingName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryDefect_Spacing] PRIMARY KEY CLUSTERED 
(
	[DefectSpacingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryDefectType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryDefectType](
	[DefectTypeID] [uniqueidentifier] NOT NULL,
	[StandardDefectTypeName] [nvarchar](16) NOT NULL,
	[CoalDefectTypeName] [nvarchar](16) NULL,
	[GoldDefectTypeName] [nvarchar](16) NULL,
	[CustomDefectTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryDefect_Type] PRIMARY KEY CLUSTERED 
(
	[DefectTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryDesurveyAlgorithmType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryDesurveyAlgorithmType](
	[DesurveyAlgorithmTypeID] [uniqueidentifier] NOT NULL,
	[StandardDesurveyAlgorithmTypeName] [nvarchar](50) NOT NULL,
	[CoalDesurveyAlgorithmTypeName] [nvarchar](50) NULL,
	[GoldDesurveyAlgorithmTypeName] [nvarchar](50) NULL,
	[CustomDesurveyAlgorithmTypeName] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryDesurveyAlgorithmType] PRIMARY KEY CLUSTERED 
(
	[DesurveyAlgorithmTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryDimension]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryDimension](
	[DimensionID] [nvarchar](1) NOT NULL,
	[StandardDimensionName] [nvarchar](16) NULL,
	[CoalDimensionName] [nvarchar](16) NULL,
	[GoldDimensionName] [nvarchar](16) NULL,
	[CustomDimensionName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryDimension] PRIMARY KEY CLUSTERED 
(
	[DimensionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryDipOrientationMethod]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryDipOrientationMethod](
	[DipOrientationMethodID] [uniqueidentifier] NOT NULL,
	[StandardDipOrientationMethodName] [nvarchar](16) NOT NULL,
	[CoalDipOrientationMethodName] [nvarchar](16) NULL,
	[GoldDipOrientationMethodName] [nvarchar](16) NULL,
	[CustomDipOrientationMethodName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryDip_Orient_Meth] PRIMARY KEY CLUSTERED 
(
	[DipOrientationMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryDomain]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryDomain](
	[DomainID] [uniqueidentifier] NOT NULL,
	[StandardDomainName] [nvarchar](30) NOT NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryDomain] PRIMARY KEY CLUSTERED 
(
	[DomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryDomainAlias]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryDomainAlias](
	[DomainAliasID] [uniqueidentifier] NOT NULL,
	[DomainID] [uniqueidentifier] NOT NULL,
	[CustomDomainName] [nvarchar](16) NULL,
 CONSTRAINT [PK_X_DictionaryDomainRelations] PRIMARY KEY CLUSTERED 
(
	[DomainAliasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryDrillBitType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryDrillBitType](
	[DrillBitTypeID] [uniqueidentifier] NOT NULL,
	[StandardDrillBitTypeName] [nvarchar](16) NOT NULL,
	[CoalDrillBitTypeName] [nvarchar](16) NULL,
	[GoldDrillBitTypeName] [nvarchar](16) NULL,
	[CustomDrillBitTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryBit_Type] PRIMARY KEY CLUSTERED 
(
	[DrillBitTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryDrillCasingType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryDrillCasingType](
	[DrillCasingTypeID] [uniqueidentifier] NOT NULL,
	[StandardDrillCasingTypeName] [nvarchar](16) NOT NULL,
	[CoalDrillCasingTypeName] [nvarchar](16) NULL,
	[GoldDrillCasingTypeName] [nvarchar](16) NULL,
	[CustomDrillCasingTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryCasing_Type] PRIMARY KEY CLUSTERED 
(
	[DrillCasingTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryDrillFluid]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryDrillFluid](
	[DrillFluidID] [uniqueidentifier] NOT NULL,
	[StandardDrillFluidName] [nvarchar](16) NOT NULL,
	[CoalDrillFluidName] [nvarchar](16) NULL,
	[GoldDrillFluidName] [nvarchar](16) NULL,
	[CustomDrillFluidName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryDrill_Fluid] PRIMARY KEY CLUSTERED 
(
	[DrillFluidID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryDrillRigType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryDrillRigType](
	[DrillRigTypeID] [uniqueidentifier] NOT NULL,
	[StandardDrillRigTypeName] [nvarchar](16) NOT NULL,
	[CoalDrillRigTypeName] [nvarchar](16) NULL,
	[GoldDrillRigTypeName] [nvarchar](16) NULL,
	[CustomDrillRigTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryRig_Type] PRIMARY KEY CLUSTERED 
(
	[DrillRigTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryDrillSize]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryDrillSize](
	[DrillSizeID] [uniqueidentifier] NOT NULL,
	[StandardDrillSizeName] [nvarchar](16) NOT NULL,
	[CoalDrillSizeName] [nvarchar](16) NULL,
	[GoldDrillSizeName] [nvarchar](16) NULL,
	[CustomDrillSizeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryDrill_Size_Name] PRIMARY KEY CLUSTERED 
(
	[DrillSizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryEstimatedStrength]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryEstimatedStrength](
	[EstimatedStrengthID] [uniqueidentifier] NOT NULL,
	[StandardEstimatedStrengthName] [nvarchar](16) NOT NULL,
	[CoalEstimatedStrengthName] [nvarchar](16) NULL,
	[GoldEstimatedStrengthName] [nvarchar](16) NULL,
	[CustomEstimatedStrengthName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryEst_Strength] PRIMARY KEY CLUSTERED 
(
	[EstimatedStrengthID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryFailureMode]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryFailureMode](
	[FailureModeID] [uniqueidentifier] NOT NULL,
	[StandardFailureModeName] [nvarchar](16) NOT NULL,
	[CoalFailureModeName] [nvarchar](16) NULL,
	[GoldFailureModeName] [nvarchar](16) NULL,
	[CustomFailureModeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryFailure_Mode] PRIMARY KEY CLUSTERED 
(
	[FailureModeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryFlowTestType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryFlowTestType](
	[FlowTestTypeID] [uniqueidentifier] NOT NULL,
	[StandardFlowTestTypeName] [nvarchar](16) NOT NULL,
	[CoalFlowTestTypeName] [nvarchar](16) NULL,
	[GoldFlowTestTypeName] [nvarchar](16) NULL,
	[CustomFlowTestTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryFlow_Test_Type] PRIMARY KEY CLUSTERED 
(
	[FlowTestTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryGasDetected]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryGasDetected](
	[GasDetectedID] [uniqueidentifier] NOT NULL,
	[StandardGasDetectedName] [nvarchar](16) NOT NULL,
	[CoalGasDetectedName] [nvarchar](16) NULL,
	[GoldGasDetectedName] [nvarchar](16) NULL,
	[CustomGasDetectedName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryGas] PRIMARY KEY CLUSTERED 
(
	[GasDetectedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryGeodeticDatum]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryGeodeticDatum](
	[GeodeticDatumID] [uniqueidentifier] NOT NULL,
	[StandardGeodeticDatumName] [nvarchar](16) NOT NULL,
	[CoalGeodeticDatumName] [nvarchar](16) NULL,
	[GoldGeodeticDatumName] [nvarchar](16) NULL,
	[CustomGeodeticDatumName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryGeodetic_Datum] PRIMARY KEY CLUSTERED 
(
	[GeodeticDatumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryGeophysicalLogType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryGeophysicalLogType](
	[GeophysicalLogTypeID] [uniqueidentifier] NOT NULL,
	[StandardGeophysicalLogTypeName] [nvarchar](16) NOT NULL,
	[CoalGeophysicalLogTypeName] [nvarchar](16) NULL,
	[GoldGeophysicalLogTypeName] [nvarchar](16) NULL,
	[CustomGeophysicalLogTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryGeophys_Log] PRIMARY KEY CLUSTERED 
(
	[GeophysicalLogTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryGroup]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryGroup](
	[GroupID] [uniqueidentifier] NOT NULL,
	[StandardGroupName] [nvarchar](50) NOT NULL,
	[CoalGroupName] [nvarchar](50) NULL,
	[GoldGroupName] [nvarchar](50) NULL,
	[CustomGroupName] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryGroup] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryGroupMembership]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryGroupMembership](
	[GroupMembershipID] [uniqueidentifier] NOT NULL,
	[ParentGroupID] [uniqueidentifier] NOT NULL,
	[ChildGroupID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_X_DictionaryGroupMembership] PRIMARY KEY CLUSTERED 
(
	[GroupMembershipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryHeightDatum]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryHeightDatum](
	[HeightDatumID] [uniqueidentifier] NOT NULL,
	[StandardHeightDatumName] [nvarchar](16) NOT NULL,
	[CoalHeightDatumName] [nvarchar](16) NULL,
	[GoldHeightDatumName] [nvarchar](16) NULL,
	[CustomHeightDatumName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryHeight_Datum] PRIMARY KEY CLUSTERED 
(
	[HeightDatumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryHolePurpose]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryHolePurpose](
	[HolePurposeID] [uniqueidentifier] NOT NULL,
	[StandardHolePurposeName] [nvarchar](16) NOT NULL,
	[CoalHolePurposeName] [nvarchar](16) NULL,
	[GoldHolePurposeName] [nvarchar](16) NULL,
	[CustomHolePurposeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryHole_Purpose] PRIMARY KEY CLUSTERED 
(
	[HolePurposeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryHoleStatus]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryHoleStatus](
	[HoleStatusID] [uniqueidentifier] NOT NULL,
	[StandardHoleStatusName] [nvarchar](16) NOT NULL,
	[CoalHoleStatusName] [nvarchar](16) NULL,
	[GoldHoleStatusName] [nvarchar](16) NULL,
	[CustomHoleStatusName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryHole_Status] PRIMARY KEY CLUSTERED 
(
	[HoleStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryHoleType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryHoleType](
	[HoleTypeID] [uniqueidentifier] NOT NULL,
	[StandardHoleTypeName] [nvarchar](16) NOT NULL,
	[CoalHoleTypeName] [nvarchar](16) NULL,
	[GoldHoleTypeName] [nvarchar](16) NULL,
	[CustomHoleTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryHole_Type] PRIMARY KEY CLUSTERED 
(
	[HoleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryHorizon]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryHorizon](
	[HorizonID] [uniqueidentifier] NOT NULL,
	[StandardHorizonName] [nvarchar](16) NOT NULL,
	[CoalHorizonName] [nvarchar](16) NULL,
	[GoldHorizonName] [nvarchar](16) NULL,
	[CustomHorizonName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryHorizon] PRIMARY KEY CLUSTERED 
(
	[HorizonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryHue]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryHue](
	[HueID] [uniqueidentifier] NOT NULL,
	[StandardHueName] [nvarchar](16) NOT NULL,
	[CoalHueName] [nvarchar](16) NULL,
	[GoldHueName] [nvarchar](16) NULL,
	[CustomHueName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryHue] PRIMARY KEY CLUSTERED 
(
	[HueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryInfillMode]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryInfillMode](
	[InfillModeID] [uniqueidentifier] NOT NULL,
	[StandardInfillModeName] [nvarchar](16) NOT NULL,
	[CoalInfillModeName] [nvarchar](16) NULL,
	[GoldInfillModeName] [nvarchar](16) NULL,
	[CustomInfillModeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryInfill_Mode] PRIMARY KEY CLUSTERED 
(
	[InfillModeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryInfillType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryInfillType](
	[InfillTypeID] [uniqueidentifier] NOT NULL,
	[StandardInfillTypeName] [nvarchar](16) NOT NULL,
	[CoalInfillTypeName] [nvarchar](16) NULL,
	[GoldInfillTypeName] [nvarchar](16) NULL,
	[CustomInfillTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryInfill_Type] PRIMARY KEY CLUSTERED 
(
	[InfillTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryIntervalStatus]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryIntervalStatus](
	[IntervalStatusID] [uniqueidentifier] NOT NULL,
	[StandardIntervalStatusName] [nvarchar](16) NOT NULL,
	[CoalIntervalStatusName] [nvarchar](16) NULL,
	[GoldIntervalStatusName] [nvarchar](16) NULL,
	[CustomIntervalStatusName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryInterval_Status] PRIMARY KEY CLUSTERED 
(
	[IntervalStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryLeaseApplicationType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryLeaseApplicationType](
	[LeaseApplicationTypeID] [uniqueidentifier] NOT NULL,
	[StandardLeaseApplicationTypeName] [nvarchar](16) NOT NULL,
	[CoalLeaseApplicationTypeName] [nvarchar](16) NULL,
	[GoldLeaseApplicationTypeName] [nvarchar](16) NULL,
	[CustomLeaseApplicationTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryLeaseApplicationType] PRIMARY KEY CLUSTERED 
(
	[LeaseApplicationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryLithologyInterrelation]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryLithologyInterrelation](
	[LithologyInterralationID] [uniqueidentifier] NOT NULL,
	[StandardLithologyInterrelationName] [nvarchar](16) NOT NULL,
	[CoalLithologyInterrelationName] [nvarchar](16) NULL,
	[GoldLithologyInterrelationName] [nvarchar](16) NULL,
	[CustomLithologyInterrelationName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryLitho_Interrel] PRIMARY KEY CLUSTERED 
(
	[LithologyInterralationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryLithologyQualifier]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryLithologyQualifier](
	[LithologyQualifierID] [uniqueidentifier] NOT NULL,
	[StandardLithologyQualifierName] [nvarchar](16) NOT NULL,
	[CoalLithologyQualifierName] [nvarchar](16) NULL,
	[GoldLithologyQualifierName] [nvarchar](16) NULL,
	[CustomLithologyQualifierName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryLitho_Qual] PRIMARY KEY CLUSTERED 
(
	[LithologyQualifierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryLithologyType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryLithologyType](
	[LithologyTypeID] [uniqueidentifier] NOT NULL,
	[StandardLithologyTypeName] [nvarchar](16) NOT NULL,
	[CoalLithologyTypeName] [nvarchar](16) NULL,
	[GoldLithologyTypeName] [nvarchar](16) NULL,
	[CustomLithologyTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryLitho_Type] PRIMARY KEY CLUSTERED 
(
	[LithologyTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryLocationType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryLocationType](
	[LocationTypeID] [uniqueidentifier] NOT NULL,
	[StandardLocationTypeName] [nvarchar](16) NOT NULL,
	[CoalLocationTypeName] [nvarchar](16) NULL,
	[GoldLocationTypeName] [nvarchar](16) NULL,
	[CustomLocationTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryLocationType] PRIMARY KEY CLUSTERED 
(
	[LocationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryMechanicalState]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryMechanicalState](
	[MechanicalStateID] [uniqueidentifier] NOT NULL,
	[StandardMechanicalStateName] [nvarchar](16) NOT NULL,
	[CoalMechanicalStateName] [nvarchar](16) NULL,
	[GoldMechanicalStateName] [nvarchar](16) NULL,
	[CustomMechanicalStateName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryMech_State] PRIMARY KEY CLUSTERED 
(
	[MechanicalStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryMineralAbundance]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryMineralAbundance](
	[MineralAbundanceID] [uniqueidentifier] NOT NULL,
	[StandardMineralAbundanceName] [nvarchar](16) NOT NULL,
	[CoalMineralAbundanceName] [nvarchar](16) NULL,
	[GoldMineralAbundanceName] [nvarchar](16) NULL,
	[CustomMineralAbundanceName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryMin_Abundance] PRIMARY KEY CLUSTERED 
(
	[MineralAbundanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryMineralAndFossilAbundance]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryMineralAndFossilAbundance](
	[MineralAndFossilAbundanceID] [uniqueidentifier] NOT NULL,
	[StandardMineralAndFossilAbundanceName] [nvarchar](16) NOT NULL,
	[CoalMineralAndFossilAbundanceName] [nvarchar](16) NULL,
	[GoldMineralAndFossilAbundanceName] [nvarchar](16) NULL,
	[CustomMineralAndFossilAbundanceName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryMin_Fos_Abund] PRIMARY KEY CLUSTERED 
(
	[MineralAndFossilAbundanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryMineralAndFossilAssociation]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryMineralAndFossilAssociation](
	[MineralAndFossilAssociationID] [uniqueidentifier] NOT NULL,
	[StandardMineralAndFossilAssociationName] [nvarchar](16) NOT NULL,
	[CoalMineralAndFossilAssociationName] [nvarchar](16) NULL,
	[GoldMineralAndFossilAssociationName] [nvarchar](16) NULL,
	[CustomMineralAndFossilAssociationName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryMin_Fos_Assoc] PRIMARY KEY CLUSTERED 
(
	[MineralAndFossilAssociationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryMineralAndFossilType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryMineralAndFossilType](
	[MineralAndFossilTypeID] [uniqueidentifier] NOT NULL,
	[StandardMineralAndFossilTypeName] [nvarchar](16) NOT NULL,
	[CoalMineralAndFossilTypeName] [nvarchar](16) NULL,
	[GoldMineralAndFossilTypeName] [nvarchar](16) NULL,
	[CustomMineralAndFossilTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryMin_Fos_Type] PRIMARY KEY CLUSTERED 
(
	[MineralAndFossilTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryMineralForm]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryMineralForm](
	[MineralFormID] [uniqueidentifier] NOT NULL,
	[StandardMineralFormName] [nvarchar](16) NOT NULL,
	[CoalMineralFormName] [nvarchar](16) NULL,
	[GoldMineralFormName] [nvarchar](16) NULL,
	[CustomMineralFormName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryMin_Form] PRIMARY KEY CLUSTERED 
(
	[MineralFormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryMineralStyle]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryMineralStyle](
	[MineralStyleID] [uniqueidentifier] NOT NULL,
	[StandardMineralStyleName] [nvarchar](16) NOT NULL,
	[CoalMineralStyleName] [nvarchar](16) NULL,
	[GoldMineralStyleName] [nvarchar](16) NULL,
	[CustomMineralStyleName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryMin_Style] PRIMARY KEY CLUSTERED 
(
	[MineralStyleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryMineralType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryMineralType](
	[MineralTypeID] [uniqueidentifier] NOT NULL,
	[StandardMineralTypeName] [nvarchar](16) NOT NULL,
	[CoalMineralTypeName] [nvarchar](16) NULL,
	[GoldMineralTypeName] [nvarchar](16) NULL,
	[CustomMineralTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryMin_Type] PRIMARY KEY CLUSTERED 
(
	[MineralTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryMoistureSensitivity]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryMoistureSensitivity](
	[MoistureSensitivityID] [uniqueidentifier] NOT NULL,
	[StandardMoistureSensitivityName] [nvarchar](16) NOT NULL,
	[CoalMoistureSensitivityName] [nvarchar](16) NULL,
	[GoldMoistureSensitivityName] [nvarchar](16) NULL,
	[CustomMoistureSensitivityName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryMoist_Sensitive] PRIMARY KEY CLUSTERED 
(
	[MoistureSensitivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryPlasticity]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryPlasticity](
	[PlasticityID] [uniqueidentifier] NOT NULL,
	[StandardPlasticityName] [nvarchar](16) NOT NULL,
	[CoalPlasticityName] [nvarchar](16) NULL,
	[GoldPlasticityName] [nvarchar](16) NULL,
	[CustomPlasticityName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryPlasticity] PRIMARY KEY CLUSTERED 
(
	[PlasticityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryPly]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryPly](
	[PlyID] [uniqueidentifier] NOT NULL,
	[StandardPlyName] [nvarchar](16) NOT NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryPly] PRIMARY KEY CLUSTERED 
(
	[PlyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryPlyAlias]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryPlyAlias](
	[PlyAliasID] [uniqueidentifier] NOT NULL,
	[PlyID] [uniqueidentifier] NOT NULL,
	[CustomPlyName] [nvarchar](16) NULL,
 CONSTRAINT [PK_X_DictionaryPlyAlias] PRIMARY KEY CLUSTERED 
(
	[PlyAliasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryPointLoadTestType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryPointLoadTestType](
	[PointLoadTestTypeID] [uniqueidentifier] NOT NULL,
	[StandardPointLoadTestTypeName] [nvarchar](16) NOT NULL,
	[CoalPointLoadTestTypeName] [nvarchar](16) NULL,
	[GoldPointLoadTestTypeName] [nvarchar](16) NULL,
	[CustomPointLoadTestTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryPL_Test_Type] PRIMARY KEY CLUSTERED 
(
	[PointLoadTestTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryProfession]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryProfession](
	[ProfessionID] [uniqueidentifier] NOT NULL,
	[StandardProfessionName] [nvarchar](16) NOT NULL,
	[CoalProfessionName] [nvarchar](16) NULL,
	[GoldProfessionName] [nvarchar](16) NULL,
	[CustomProfessionName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_Role] PRIMARY KEY CLUSTERED 
(
	[ProfessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryProvinceGroup]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryProvinceGroup](
	[ProvinceGroupID] [uniqueidentifier] NOT NULL,
	[StandardProvinceGroupName] [nvarchar](50) NOT NULL,
	[CoalProvinceGroupName] [nvarchar](50) NULL,
	[GoldProvinceGroupName] [nvarchar](50) NULL,
	[CustomProvinceGroupName] [nvarchar](50) NULL,
	[ParentProvinceTypeID] [uniqueidentifier] NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_ProvinceGroup] PRIMARY KEY CLUSTERED 
(
	[ProvinceGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryProvinceType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryProvinceType](
	[ProvinceTypeID] [uniqueidentifier] NOT NULL,
	[StandardProvinceTypeName] [nvarchar](16) NOT NULL,
	[CoalProvinceTypeName] [nvarchar](16) NULL,
	[GoldProvinceTypeName] [nvarchar](16) NULL,
	[CustomProvinceTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_ProvinceType] PRIMARY KEY CLUSTERED 
(
	[ProvinceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryRelationType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryRelationType](
	[RelationTypeID] [uniqueidentifier] NOT NULL,
	[StandardRelationTypeName] [nvarchar](16) NOT NULL,
	[CoalRelationTypeName] [nvarchar](16) NULL,
	[GoldRelationTypeName] [nvarchar](16) NULL,
	[CustomRelationTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryRelationType] PRIMARY KEY CLUSTERED 
(
	[RelationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryRockMassUnitType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryRockMassUnitType](
	[RockMassUnitTypeID] [uniqueidentifier] NOT NULL,
	[StandardRockMassUnitTypeName] [nvarchar](16) NOT NULL,
	[CoalRockMassUnitTypeName] [nvarchar](16) NULL,
	[GoldRockMassUnitTypeName] [nvarchar](16) NULL,
	[CustomRockMassUnitTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryRMU_Type] PRIMARY KEY CLUSTERED 
(
	[RockMassUnitTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionarySampleCategory]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionarySampleCategory](
	[SampleCategoryID] [uniqueidentifier] NOT NULL,
	[StandardSampleCategoryName] [nvarchar](16) NOT NULL,
	[CoalSampleCategoryName] [nvarchar](16) NULL,
	[GoldSampleCategoryName] [nvarchar](16) NULL,
	[CustomSampleCategoryName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionarySample_Category] PRIMARY KEY CLUSTERED 
(
	[SampleCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionarySampleState]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionarySampleState](
	[SampleStateID] [uniqueidentifier] NOT NULL,
	[StandardSampleStateName] [nvarchar](16) NOT NULL,
	[CoalSampleStateName] [nvarchar](16) NULL,
	[GoldSampleStateName] [nvarchar](16) NULL,
	[CustomSampleStateName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionarySample_State] PRIMARY KEY CLUSTERED 
(
	[SampleStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionarySampleType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionarySampleType](
	[SampleTypeID] [uniqueidentifier] NOT NULL,
	[StandardSampleTypeName] [nvarchar](16) NOT NULL,
	[CoalSampleTypeName] [nvarchar](16) NULL,
	[GoldSampleTypeName] [nvarchar](16) NULL,
	[CustomSampleTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionarySample_Type] PRIMARY KEY CLUSTERED 
(
	[SampleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionarySeam]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionarySeam](
	[SeamID] [uniqueidentifier] NOT NULL,
	[StandardSeamName] [nvarchar](16) NOT NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionarySeam] PRIMARY KEY CLUSTERED 
(
	[SeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionarySeamAlias]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionarySeamAlias](
	[SeamAliasID] [uniqueidentifier] NOT NULL,
	[SeamID] [uniqueidentifier] NOT NULL,
	[CustomSeamName] [nvarchar](16) NULL,
 CONSTRAINT [PK_X_DictionarySeamAlias] PRIMARY KEY CLUSTERED 
(
	[SeamAliasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionarySedimentaryFeature]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionarySedimentaryFeature](
	[SedimentaryFeatureID] [uniqueidentifier] NOT NULL,
	[StandardSedimentaryFeatureName] [nvarchar](16) NOT NULL,
	[CoalSedimentaryFeatureName] [nvarchar](16) NULL,
	[GoldSedimentaryFeatureName] [nvarchar](16) NULL,
	[CustomSedimentaryFeatureName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionarySed_Feature] PRIMARY KEY CLUSTERED 
(
	[SedimentaryFeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryShade]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryShade](
	[ShadeID] [uniqueidentifier] NOT NULL,
	[StandardShadeName] [nvarchar](16) NOT NULL,
	[CoalShadeName] [nvarchar](16) NULL,
	[GoldShadeName] [nvarchar](16) NULL,
	[CustomShadeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryShade] PRIMARY KEY CLUSTERED 
(
	[ShadeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryShape]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryShape](
	[ShapeID] [uniqueidentifier] NOT NULL,
	[StandardShapeName] [nvarchar](16) NOT NULL,
	[CoalShapeName] [nvarchar](16) NULL,
	[GoldShapeName] [nvarchar](16) NULL,
	[CustomShapeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryShape] PRIMARY KEY CLUSTERED 
(
	[ShapeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryStratigraphy]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryStratigraphy](
	[StratigraphyID] [uniqueidentifier] NOT NULL,
	[StandardStratigraphyName] [nvarchar](16) NOT NULL,
	[CoalStratigraphyName] [nvarchar](16) NULL,
	[GoldStratigraphyName] [nvarchar](16) NULL,
	[CustomStratigraphyName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryStratigraphy] PRIMARY KEY CLUSTERED 
(
	[StratigraphyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionarySurfaceRoughness]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionarySurfaceRoughness](
	[SurfaceRoughnessID] [uniqueidentifier] NOT NULL,
	[StandardSurfaceRoughnessName] [nvarchar](16) NOT NULL,
	[CoalSurfaceRoughnessName] [nvarchar](16) NULL,
	[GoldSurfaceRoughnessName] [nvarchar](16) NULL,
	[CustomSurfaceRoughnessName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryRoughness] PRIMARY KEY CLUSTERED 
(
	[SurfaceRoughnessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionarySurveyAccuracy]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionarySurveyAccuracy](
	[SurveyAccuracyID] [uniqueidentifier] NOT NULL,
	[StandardSurveyAccuracyName] [nvarchar](16) NOT NULL,
	[CoalSurveyAccuracyName] [nvarchar](16) NULL,
	[GoldSurveyAccuracyName] [nvarchar](16) NULL,
	[CustomSurveyAccuracyName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionarySurvey_Accuracy] PRIMARY KEY CLUSTERED 
(
	[SurveyAccuracyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryTexture]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryTexture](
	[TextureID] [uniqueidentifier] NOT NULL,
	[StandardTextureName] [nvarchar](16) NOT NULL,
	[CoalTextureName] [nvarchar](16) NULL,
	[GoldTextureName] [nvarchar](16) NULL,
	[CustomTextureName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryTexture] PRIMARY KEY CLUSTERED 
(
	[TextureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryUnit]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryUnit](
	[UnitID] [uniqueidentifier] NOT NULL,
	[StandardUnitName] [nvarchar](16) NOT NULL,
	[CoalUnitName] [nvarchar](16) NULL,
	[GoldUnitName] [nvarchar](16) NULL,
	[CustomUnitName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryAssayUnit] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryUsageAuditType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryUsageAuditType](
	[UsageAuditTypeID] [int] NOT NULL,
	[UsageAuditTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_X_DictionaryUsageAuditType] PRIMARY KEY CLUSTERED 
(
	[UsageAuditTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryWeathering]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryWeathering](
	[WeatheringID] [uniqueidentifier] NOT NULL,
	[StandardWeatheringName] [nvarchar](16) NOT NULL,
	[CoalWeatheringName] [nvarchar](16) NULL,
	[GoldWeatheringName] [nvarchar](16) NULL,
	[CustomWeatheringName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DictionaryWeathering] PRIMARY KEY CLUSTERED 
(
	[WeatheringID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryWorkType]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryWorkType](
	[WorkTypeID] [uniqueidentifier] NOT NULL,
	[CompanyID] [uniqueidentifier] NULL,
	[ProfessionID] [uniqueidentifier] NULL,
	[WorkTypeClass] [nvarchar](50) NULL,
	[WorkTypeName] [nvarchar](50) NOT NULL,
	[WorkTypeDescription] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_DictionaryWorkType] PRIMARY KEY CLUSTERED 
(
	[WorkTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DictionaryWorkTypeRelation]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DictionaryWorkTypeRelation](
	[WorkTypeRelationID] [uniqueidentifier] NOT NULL,
	[WorkTypeID] [uniqueidentifier] NOT NULL,
	[ParentWorkTypeID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_X_DictionaryWorkTypeRelation] PRIMARY KEY CLUSTERED 
(
	[WorkTypeRelationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DrillCompanyContract]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DrillCompanyContract](
	[DrillContractID] [uniqueidentifier] NOT NULL,
	[DrillingCompanyID] [uniqueidentifier] NULL,
	[ContractName] [nvarchar](16) NULL,
	[ProjectID] [uniqueidentifier] NULL,
	[Task] [nvarchar](255) NULL,
	[Started] [date] NULL,
	[Ended] [date] NULL,
	[Completed] [date] NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_Drill_Company_Contract] PRIMARY KEY CLUSTERED 
(
	[DrillContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Drilling]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Drilling](
	[DrillingID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](9, 3) NULL,
	[ToDepth] [numeric](9, 3) NULL,
	[RunNumber] [int] NULL,
	[RecoveredThickness] [numeric](5, 3) NULL,
	[DrillingDate] [date] NULL,
	[DrillingCompanyID] [uniqueidentifier] NULL,
	[DrillRigNumber] [nvarchar](16) NULL,
	[DrillRigTypeID] [uniqueidentifier] NULL,
	[DrillerID] [uniqueidentifier] NULL,
	[DrillBitTypeID] [uniqueidentifier] NULL,
	[DrillFluidID] [uniqueidentifier] NULL,
	[DrillSizeID] [uniqueidentifier] NULL,
	[CoreSize] [int] NULL,
	[HoleSize] [int] NULL,
	[Reamed] [bit] NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_DrillingData] PRIMARY KEY CLUSTERED 
(
	[DrillingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_DrillingCompany]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_DrillingCompany](
	[DrillingCompanyID] [uniqueidentifier] NOT NULL,
	[CompanyID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_X_DrillCompany] PRIMARY KEY CLUSTERED 
(
	[DrillingCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Experience]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Experience](
	[ExperienceID] [uniqueidentifier] NOT NULL,
	[CompanyID] [uniqueidentifier] NULL,
	[ProjectID] [uniqueidentifier] NULL,
	[ContactID] [uniqueidentifier] NULL,
	[LocationID] [uniqueidentifier] NULL,
	[WorkTypeID] [uniqueidentifier] NULL,
	[ClientAlias] [nvarchar](50) NULL,
	[ExternalProjectCode] [nvarchar](50) NULL,
	[Comment] [nvarchar](255) NULL,
	[EstimatedDurationDays] [int] NULL,
	[UserExperienceLevel] [int] NULL,
	[AssignedExperienceLevel] [int] NULL,
	[NormalizedExperienceLevel] [int] NULL,
	[DateStart] [date] NOT NULL,
	[DateFinished] [date] NULL,
	[Expiry] [date] NULL,
 CONSTRAINT [PK_X_Experience] PRIMARY KEY CLUSTERED 
(
	[ExperienceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_FileData]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
SET ANSI_PADDING ON
;
CREATE TABLE [dbo].[X_FileData](
	[FileDataID] [uniqueidentifier] NOT NULL,
	[ParentFileID] [uniqueidentifier] NULL,
	[TableType] [nvarchar](50) NOT NULL,
	[ReferenceID] [uniqueidentifier] NOT NULL,
	[FileName] [nvarchar](255) NULL,
	[DocumentType] [nvarchar](50) NULL,
	[MimeType] [nvarchar](50) NULL,
	[Author] [nvarchar](50) NULL,
	[FileBytes] [varbinary](max) NULL,
	[FileContent] [nvarchar](max) NULL,
	[FileChecksum] [nvarchar](50) NULL,
	[Comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_FileID] PRIMARY KEY CLUSTERED 
(
	[FileDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
SET ANSI_PADDING OFF
;
/****** Object:  Table [dbo].[X_Geology]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Geology](
	[GeologyID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[GeologyContactID] [uniqueidentifier] NULL,
	[FromDepth] [numeric](9,3) NULL,
	[ToDepth] [numeric](9,3) NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_GeologistData] PRIMARY KEY CLUSTERED 
(
	[GeologyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_GeologyCompany]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_GeologyCompany](
	[GeologyCompanyID] [uniqueidentifier] NOT NULL,
	[CompanyID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_X_Geolog_Organiz] PRIMARY KEY CLUSTERED 
(
	[GeologyCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_GeophyicsData]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_GeophyicsData](
	[GeophysicsDataID] [uniqueidentifier] NOT NULL,
	[GeophysicsMetadataID] [uniqueidentifier] NOT NULL,
	[Dimension] [numeric](38, 20) NOT NULL,
	[MeasurementValue] [numeric](38, 20) NULL,
	[MeasurementText] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_GeophyicsData] PRIMARY KEY CLUSTERED 
(
	[GeophysicsDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Geophysics]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Geophysics](
	[GeophysicsID] [uniqueidentifier] NOT NULL,
	[DimensionUnit] [nvarchar](16) NOT NULL,
	[HeaderID] [uniqueidentifier] NULL,
	[LasVersion] [nvarchar](16) NULL,
	[LasFormat] [nvarchar](16) NULL,
	[LasWrap] [nvarchar](16) NULL,
	[LasDelimiter] [nvarchar](16) NULL,
	[LasNullValue] [nvarchar](16) NULL,
 CONSTRAINT [PK_X_Geophysics] PRIMARY KEY CLUSTERED 
(
	[GeophysicsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_GeophysicsCompany]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_GeophysicsCompany](
	[GeophysicsCompanyID] [uniqueidentifier] NOT NULL,
	[CompanyID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_X_Geophys_Company] PRIMARY KEY CLUSTERED 
(
	[GeophysicsCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_GeophysicsMetadata]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_GeophysicsMetadata](
	[GeophysicsMetadataID] [uniqueidentifier] NOT NULL,
	[GeophysicsID] [uniqueidentifier] NOT NULL,
	[ParameterID] [uniqueidentifier] NULL,
	[Mnemonic] [nvarchar](16) NULL,
	[Unit] [nvarchar](max) NULL,
	[Data] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Format] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_GeophysicsMetadata] PRIMARY KEY CLUSTERED 
(
	[GeophysicsMetadataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Header]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Header](
	[HeaderID] [uniqueidentifier] NOT NULL,
	[ProjectID] [uniqueidentifier] NULL,
	[HoleName] [nvarchar](16) NULL,
	[Site] [nvarchar](16) NULL,
	[HoleTypeID] [uniqueidentifier] NULL,
	[DataStatusID] [uniqueidentifier] NULL,
	[PrimaryHolePurposeID] [uniqueidentifier] NULL,
	[SecondaryHolePurposeID] [uniqueidentifier] NULL,
	[SurveyAccuracyID] [uniqueidentifier] NULL,
	[GeodeticDatumID] [uniqueidentifier] NULL,
	[UtmZoneNumber] [int] NULL,
	[UtmZoneHemisphere] [nvarchar](1) NULL,
	[HeightDatumID] [uniqueidentifier] NULL,
	[Easting] [numeric](19, 7) NULL,
	[Northing] [numeric](19, 7) NULL,
	[Elevation] [numeric](9, 3) NULL,
	[Inclination] [int] NULL,
	[Azimuth] [int] NULL,
	[HeaderGeography] [geography] NULL,
	[StartDate] [date] NULL,
	[CompleteDate] [date] NULL,
	[TotalDepth] [numeric](9, 3) NULL,
	[HoleRedrilled] [nvarchar](16) NULL,
	[GeologyCompanyID] [uniqueidentifier] NULL,
	[HasHadGeotechLogs] [bit] NULL,
	[HasHadCorePhotos] [bit] NULL,
	[GeophysicalLoggingCompanyID] [uniqueidentifier] NULL,
	[GeophysicalLogTypeID1] [uniqueidentifier] NULL,
	[GeophysicalLogTypeID2] [uniqueidentifier] NULL,
	[GeophysicalLogTypeID3] [uniqueidentifier] NULL,
	[GeophysicalLogTypeID4] [uniqueidentifier] NULL,
	[GeophysicalLogTypeID5] [uniqueidentifier] NULL,
	[GeophysicalLogTypeID6] [uniqueidentifier] NULL,
	[GeophysicalLogTypeID7] [uniqueidentifier] NULL,
	[GeophysicalLogTypeID8] [uniqueidentifier] NULL,
	[GeophysicalLogTypeID9] [uniqueidentifier] NULL,
	[GeophysicalLogTypeID10] [uniqueidentifier] NULL,
	[GeophysicalLogTypeID11] [uniqueidentifier] NULL,
	[GeophysicalLogTypeID12] [uniqueidentifier] NULL,
	[GeophysicalLoggerID] [uniqueidentifier] NULL,
	[StandingWaterLevel] [numeric](9, 3) NULL,
	[StandingWaterLevelDate] [date] NULL,
	[DateRehabilitated] [date] NULL,
	[HoleStatusID] [uniqueidentifier] NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_Header_1] PRIMARY KEY CLUSTERED 
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_HeaderRelation]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_HeaderRelation](
	[HeaderRelationID] [uniqueidentifier] NOT NULL,
	[OriginalHeaderID] [uniqueidentifier] NULL,
	[RelatedHeaderID] [uniqueidentifier] NULL,
	[RelationTypeID] [uniqueidentifier] NULL,
	[Related] [date] NULL,
 CONSTRAINT [PK_X_HeaderRelation] PRIMARY KEY CLUSTERED 
(
	[HeaderRelationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_LabCompany]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_LabCompany](
	[LabCompanyID] [uniqueidentifier] NOT NULL,
	[CompanyID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_X_Assay_Company] PRIMARY KEY CLUSTERED 
(
	[LabCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Lease]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Lease](
	[LeaseID] [uniqueidentifier] NOT NULL,
	[TenementID] [uniqueidentifier] NULL,
	[LeaseNumber] [nvarchar](16) NOT NULL,
	[OwnerCompanyID] [uniqueidentifier] NULL,
	[ApprovedByContactID] [uniqueidentifier] NULL,
	[ValidFrom] [date] NULL,
	[Expiry] [date] NULL,
	[Comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_Lease] PRIMARY KEY CLUSTERED 
(
	[LeaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_LeaseApplication]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
SET ANSI_PADDING ON
;
CREATE TABLE [dbo].[X_LeaseApplication](
	[LeaseApplicationID] [uniqueidentifier] NOT NULL,
	[TenementID] [uniqueidentifier] NULL,
	[LeaseApplicationTypeID] [uniqueidentifier] NULL,
	[LeaseApplicationNumber] [nvarchar](16) NOT NULL,
	[OwnerCompanyID] [uniqueidentifier] NULL,
	[OfficeOfApproval] [varchar](50) NULL,
	[Approved] [date] NULL,
	[ApprovedByContactID] [uniqueidentifier] NULL,
	[ValidFrom] [date] NULL,
	[Expiry] [date] NULL,
	[Comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_LeaseApplication] PRIMARY KEY CLUSTERED 
(
	[LeaseApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
SET ANSI_PADDING OFF
;
/****** Object:  Table [dbo].[X_Lithology]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Lithology](
	[LithologyID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](9, 3) NULL,
	[ToDepth] [numeric](9, 3) NULL,
	[RecoveredThickness] [numeric](9, 3) NULL,
	[DomainID] [uniqueidentifier] NULL,
	[SeamID] [uniqueidentifier] NULL,
	[PlyID] [uniqueidentifier] NULL,
	[StratigraphyID] [uniqueidentifier] NULL,
	[HorizonID] [uniqueidentifier] NULL,
	[SampleTypeID] [uniqueidentifier] NULL,
	[SampleNumber] [nvarchar](16) NULL,
	[SampleMassKg] [numeric](6, 4) NULL,
	[IntervalStatusID] [uniqueidentifier] NULL,
	[LithologyPercentage] [int] NULL,
	[LithologyTypeID] [uniqueidentifier] NULL,
	[LithologyQualifierID] [uniqueidentifier] NULL,
	[ShadeID] [uniqueidentifier] NULL,
	[HueID] [uniqueidentifier] NULL,
	[ColourID] [uniqueidentifier] NULL,
	[AdjectiveID1] [uniqueidentifier] NULL,
	[AdjectiveID2] [uniqueidentifier] NULL,
	[AdjectiveID3] [uniqueidentifier] NULL,
	[AdjectiveID4] [uniqueidentifier] NULL,
	[LithologyInterrelationID] [uniqueidentifier] NULL,
	[WeatheringID] [uniqueidentifier] NULL,
	[EstimatedStrengthID] [uniqueidentifier] NULL,
	[BedSpacingID] [uniqueidentifier] NULL,
	[DefectTypeID] [uniqueidentifier] NULL,
	[DefectCompletenessID] [uniqueidentifier] NULL,
	[DefectSpacingID] [uniqueidentifier] NULL,
	[DefectDip] [int] NULL,
	[CoreStateID] [uniqueidentifier] NULL,
	[MechanicalStateID] [uniqueidentifier] NULL,
	[TextureID] [uniqueidentifier] NULL,
	[BasalContactID] [uniqueidentifier] NULL,
	[SedimentaryFeature1ID] [uniqueidentifier] NULL,
	[SedimentaryFeature2ID] [uniqueidentifier] NULL,
	[BeddingDip] [int] NULL,
	[MineralAndFossilAbundanceID] [uniqueidentifier] NULL,
	[MineralAndFossilTypeID] [uniqueidentifier] NULL,
	[MineralAndFossilAssociationID] [uniqueidentifier] NULL,
	[GasDetectedID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_LithologyData] PRIMARY KEY CLUSTERED 
(
	[LithologyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Location]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Location](
	[LocationID] [uniqueidentifier] NOT NULL,
	[LocationType] [uniqueidentifier] NULL,
	[DefaultLocationName] [nvarchar](255) NULL,
	[LocationGeography] [geography] NULL,
	[LatitudeWGS84] [numeric](10, 7) NULL,
	[LongitudeWGS84] [numeric](10, 7) NULL,
	[CountryID] [nvarchar](2) NULL,
	[CountryStateID] [uniqueidentifier] NULL,
	[DefaultCulture] [nvarchar](5) NULL,
	[OwnerCompanyID] [uniqueidentifier] NULL,
	[ResponsibleContactID] [uniqueidentifier] NULL,
	[Comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_Location] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_LocationAlias]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_LocationAlias](
	[LocationAliasID] [uniqueidentifier] NOT NULL,
	[LocationID] [uniqueidentifier] NULL,
	[Alias] [nvarchar](50) NULL,
	[Culture] [nvarchar](5) NULL,
	[Priority] [int] NOT NULL,
 CONSTRAINT [PK_X_LocationAlias] PRIMARY KEY CLUSTERED 
(
	[LocationAliasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_MetaData]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_MetaData](
	[MetaDataID] [uniqueidentifier] NOT NULL,
	[MetaDataType] [nvarchar](50) NULL,
	[ContentToIndex] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_Metadata] PRIMARY KEY CLUSTERED 
(
	[MetaDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_MetaDataRelation]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_MetaDataRelation](
	[MetaDataRelationID] [uniqueidentifier] NOT NULL,
	[MetaDataID] [uniqueidentifier] NOT NULL,
	[TableType] [nvarchar](50) NOT NULL,
	[ReferenceID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_X_MetaDataRelation] PRIMARY KEY CLUSTERED 
(
	[MetaDataRelationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Mineralogy]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Mineralogy](
	[MineralogyID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](9, 3) NULL,
	[ToDepth] [numeric](9, 3) NULL,
	[MineralAbundanceID] [uniqueidentifier] NULL,
	[MineralFormID] [uniqueidentifier] NULL,
	[MineralTypeID] [uniqueidentifier] NULL,
	[MineralStyleID] [uniqueidentifier] NULL,
	[Logged] [date] NULL,
	[LoggedBy] [nvarchar](50) NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_Mineralogy] PRIMARY KEY CLUSTERED 
(
	[MineralogyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Parameter]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Parameter](
	[ParameterID] [uniqueidentifier] NOT NULL,
	[ParameterType] [nvarchar](50) NULL,
	[ParameterName] [nvarchar](50) NULL,
	[DefaultParameterValue] [numeric](38, 20) NULL,
	[DefaultParameterText] [nvarchar](255) NULL,
	[UnitID] [uniqueidentifier] NULL,
	[Format] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[Locale] [nvarchar](16) NULL,
 CONSTRAINT [PK_X_CompositeCustomParamter] PRIMARY KEY CLUSTERED 
(
	[ParameterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_ParameterDuplicate]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_ParameterDuplicate](
	[ParameterDuplicateID] [uniqueidentifier] NOT NULL,
	[Parameter1ID] [uniqueidentifier] NULL,
	[Parameter2ID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_ParameterMatchID] PRIMARY KEY CLUSTERED 
(
	[ParameterDuplicateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_ParameterGroup]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_ParameterGroup](
	[ParameterGroupID] [uniqueidentifier] NOT NULL,
	[ParameterID] [uniqueidentifier] NOT NULL,
	[GroupID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_X_ParameterGroup] PRIMARY KEY CLUSTERED 
(
	[ParameterGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_PointLoad]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_PointLoad](
	[PointLoadID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](9, 3) NULL,
	[ToDepth] [numeric](9, 3) NULL,
	[SampleNumber] [nvarchar](16) NULL,
	[SampleLength] [numeric](5, 3) NULL,
	[SampleStateID] [uniqueidentifier] NULL,
	[SampleTypeID] [uniqueidentifier] NULL,
	[TestSampleCode] [nvarchar](16) NULL,
	[TestSampleDepth] [numeric](9, 3) NULL,
	[PointLoadTestTypeID] [uniqueidentifier] NULL,
	[PlatenSeparation] [int] NULL,
	[Width] [int] NULL,
	[FailureLoad] [numeric](4, 2) NULL,
	[FailureModeID] [uniqueidentifier] NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_PointLoadData] PRIMARY KEY CLUSTERED 
(
	[PointLoadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_PrivateData]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_PrivateData](
	[PrivateDataID] [uniqueidentifier] NOT NULL,
	[UniqueID] [nvarchar](255) NULL,
	[UniqueIDSystemDataType] [nvarchar](255) NULL,
	[TableType] [nvarchar](50) NULL,
	[ReferenceID] [uniqueidentifier] NULL,
	[UserDataType] [nvarchar](50) NULL,
	[Value] [nvarchar](255) NULL,
	[SystemDataType] [nvarchar](255) NULL,
	[IsReadOnly] [bit] NULL,
	[IsVisible] [bit] NULL,
 CONSTRAINT [PK_X_PrivateData] PRIMARY KEY CLUSTERED 
(
	[PrivateDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Project]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Project](
	[ProjectID] [uniqueidentifier] NOT NULL,
	[TenementID] [uniqueidentifier] NULL,
	[ProjectName] [nvarchar](16) NULL,
	[ProjectCode] [nvarchar](16) NULL,
	[ClientCompanyID] [uniqueidentifier] NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_ProjectPlan]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_ProjectPlan](
	[ProjectPlanID] [uniqueidentifier] NOT NULL,
	[ParentProjectPlanID] [uniqueidentifier] NULL,
	[ProjectPlanName] [nvarchar](50) NULL,
	[ResponsibleContactID] [uniqueidentifier] NULL,
	[Comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_ProjectPlan] PRIMARY KEY CLUSTERED 
(
	[ProjectPlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_ProjectPlanTask]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_ProjectPlanTask](
	[ProjectPlanTaskID] [uniqueidentifier] NOT NULL,
	[ProjectPlanID] [uniqueidentifier] NOT NULL,
	[ParentProjectTaskID] [uniqueidentifier] NULL,
	[ProjectTaskName] [nvarchar](50) NULL,
	[Priority] [int] NOT NULL,
	[Progress] [numeric](3, 2) NULL,
	[StartDate] [date] NULL,
	[StopDate] [date] NULL,
	[DurationManHours] [numeric](10, 2) NULL,
	[IsMilestone] [bit] NOT NULL,
	[Comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_ProjectPlanTask] PRIMARY KEY CLUSTERED 
(
	[ProjectPlanTaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_ProjectPlanTaskResponse]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_ProjectPlanTaskResponse](
	[ProjectPlanTaskResponseID] [uniqueidentifier] NOT NULL,
	[ProjectPlanTaskID] [uniqueidentifier] NULL,
	[ResponsibleContactID] [uniqueidentifier] NULL,
	[Completed] [datetime] NULL,
	[Comments] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_ProjectPlanTaskResponse] PRIMARY KEY CLUSTERED 
(
	[ProjectPlanTaskResponseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_ProjectPlanTaskWorker]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_ProjectPlanTaskWorker](
	[ProjectPlanTaskWorkerID] [uniqueidentifier] NOT NULL,
	[ProjectPlanTaskID] [uniqueidentifier] NOT NULL,
	[WorkerID] [uniqueidentifier] NOT NULL,
	[AvailableFromDate] [date] NULL,
	[AvailableUntilDate] [date] NULL,
 CONSTRAINT [PK_X_ProjectPlanTaskWorker] PRIMARY KEY CLUSTERED 
(
	[ProjectPlanTaskWorkerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Prospectus]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Prospectus](
	[ProspectusID] [uniqueidentifier] NOT NULL,
	[ProspectusName] [nvarchar](255) NULL,
	[Author] [nvarchar](255) NULL,
	[ListDate] [date] NULL,
	[ProjectCount] [int] NULL,
	[Cost] [decimal](18, 2) NULL,
	[Pages] [int] NULL,
	[TenementID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_Prospectus] PRIMARY KEY CLUSTERED 
(
	[ProspectusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_ProspectusProject]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_ProspectusProject](
	[ProspectusProjectID] [uniqueidentifier] NOT NULL,
	[ProspectusID] [uniqueidentifier] NOT NULL,
	[ProjectName] [nvarchar](255) NULL,
	[CountryID] [nvarchar](2) NULL,
	[State] [nvarchar](50) NULL,
 CONSTRAINT [PK_X_ProspectusProject] PRIMARY KEY CLUSTERED 
(
	[ProspectusProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_ProspectusProjectCommodity]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_ProspectusProjectCommodity](
	[ProspectusProjectCommodityID] [uniqueidentifier] NOT NULL,
	[ProspectusProjectID] [uniqueidentifier] NULL,
	[CommodityID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_ProspectusProjectCommodityID] PRIMARY KEY CLUSTERED 
(
	[ProspectusProjectCommodityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_ProspectusProjectProvince]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_ProspectusProjectProvince](
	[ProspectusProjectProvinceID] [uniqueidentifier] NOT NULL,
	[ProspectusProjectID] [uniqueidentifier] NOT NULL,
	[ProvinceID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_X_ProspectusProjectProvince] PRIMARY KEY CLUSTERED 
(
	[ProspectusProjectProvinceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Province]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Province](
	[ProvinceID] [uniqueidentifier] NOT NULL,
	[ProvinceName] [nvarchar](200) NULL,
	[ProvinceTypeID] [uniqueidentifier] NULL,
	[CountryID] [nvarchar](2) NULL,
	[CountryStateID] [uniqueidentifier] NULL,
	[ProvinceGroupID] [uniqueidentifier] NULL,
	[ProvinceGeography] [geography] NULL,
	[OwnerCompanyID] [uniqueidentifier] NULL,
	[ApprovedByContactID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_Province] PRIMARY KEY CLUSTERED 
(
	[ProvinceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Recovery]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Recovery](
	[RecoveryID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](9, 3) NULL,
	[ToDepth] [numeric](9, 3) NULL,
	[Advance] [numeric](9, 3) NULL,
	[CoreLoss] [numeric](9, 3) NULL,
	[CoreRecovered] [numeric](9, 3) NULL,
	[Solid] [numeric](9, 3) NULL,
	[Total] [numeric](9, 3) NULL,
	[Confident] [bit] NULL,
	[DrillSizeID] [uniqueidentifier] NULL,
	[CoreSize] [int] NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_RecoveryData] PRIMARY KEY CLUSTERED 
(
	[RecoveryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_SecurityBlacklist]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_SecurityBlacklist](
	[SecurityBlacklistID] [uniqueidentifier] NOT NULL,
	[OwnerApplicationID] [uniqueidentifier] NULL,
	[OwnerCompanyID] [uniqueidentifier] NULL,
	[OwnerProjectID] [uniqueidentifier] NULL,
	[OwnerEntitySystemType] [nvarchar](255) NULL,
	[AccessorApplicationID] [uniqueidentifier] NULL,
	[AccessorCompanyID] [uniqueidentifier] NULL,
	[AccessorProjectID] [uniqueidentifier] NULL,
	[AccessorContactID] [uniqueidentifier] NULL,
	[AccessorRoleID] [uniqueidentifier] NULL,
	[CanCreate] [bit] NULL,
	[CanRead] [bit] NULL,
	[CanUpdate] [bit] NULL,
	[CanDelete] [bit] NULL,
	[IsField] [bit] NULL,
 CONSTRAINT [PK_X_SecurityBlacklist] PRIMARY KEY CLUSTERED 
(
	[SecurityBlacklistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_SecurityWhitelist]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_SecurityWhitelist](
	[SecurityWhitelistID] [uniqueidentifier] NOT NULL,
	[OwnerApplicationID] [uniqueidentifier] NULL,
	[OwnerCompanyID] [uniqueidentifier] NULL,
	[OwnerProjectID] [uniqueidentifier] NULL,
	[OwnerEntitySystemType] [nvarchar](255) NULL,
	[AccessorApplicationID] [uniqueidentifier] NULL,
	[AccessorCompanyID] [uniqueidentifier] NULL,
	[AccessorProjectID] [uniqueidentifier] NULL,
	[AccessorContactID] [uniqueidentifier] NULL,
	[AccessorRoleID] [uniqueidentifier] NULL,
	[CanCreate] [bit] NULL,
	[CanRead] [bit] NULL,
	[CanUpdate] [bit] NULL,
	[CanDelete] [bit] NULL,
	[IsField] [bit] NULL,
 CONSTRAINT [PK_X_SecurityWhitelist] PRIMARY KEY CLUSTERED 
(
	[SecurityWhitelistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Survey]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Survey](
	[SurveyID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[Depth] [numeric](9, 3) NOT NULL,
	[Dip] [numeric](5, 2) NULL,
	[MagneticDip] [numeric](5, 2) NULL,
	[MagnetAffected] [bit] NULL,
	[OriginalAzimuth] [numeric](5, 2) NULL,
	[CorrectedAzimuth] [numeric](5, 2) NULL,
	[Gravity] [numeric](5, 4) NULL,
	[Instrument] [nvarchar](16) NULL,
	[Surveyed] [date] NULL,
	[SurveyContactID] [uniqueidentifier] NULL,
	[SurveyCompanyID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_Survey] PRIMARY KEY CLUSTERED 
(
	[SurveyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_SurveyCompany]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_SurveyCompany](
	[SurveyCompanyID] [uniqueidentifier] NOT NULL,
	[CompanyID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_X_Survey_Company] PRIMARY KEY CLUSTERED 
(
	[SurveyCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Tenement]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Tenement](
	[TenementID] [uniqueidentifier] NOT NULL,
	[TenementName] [nvarchar](60) NULL,
	[TenementNumber] [nvarchar](60) NULL,
	[TenementDevelopmentPhase] [nvarchar](50) NULL,
	[CountryID] [nvarchar](2) NULL,
	[State] [nvarchar](60) NULL,
	[Province] [nvarchar](60) NULL,
	[TenementGeography] [geography] NULL,
	[OwnerCompanyID] [uniqueidentifier] NULL,
	[ApprovedByContactID] [uniqueidentifier] NULL,
	[ValidFrom] [date] NULL,
	[Expiry] [date] NULL,
 CONSTRAINT [PK_X_Tenement] PRIMARY KEY CLUSTERED 
(
	[TenementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_TenementCommodity]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_TenementCommodity](
	[TenementCommodityID] [uniqueidentifier] NOT NULL,
	[TenementID] [uniqueidentifier] NULL,
	[CommodityID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_TenementCommodityID] PRIMARY KEY CLUSTERED 
(
	[TenementCommodityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_TenementProvince]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_TenementProvince](
	[TenementProvinceID] [uniqueidentifier] NOT NULL,
	[TenementID] [uniqueidentifier] NULL,
	[ProvinceID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_TenementProvince] PRIMARY KEY CLUSTERED 
(
	[TenementProvinceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_TenementRelation]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_TenementRelation](
	[TenementRelationID] [uniqueidentifier] NOT NULL,
	[TenementID] [uniqueidentifier] NULL,
	[ParentTenementID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_x_TenementRelation] PRIMARY KEY CLUSTERED 
(
	[TenementRelationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_UsageAudit]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_UsageAudit](
	[AuditID] [uniqueidentifier] NOT NULL,
	[UsageAuditTypeID] [int] NULL,
	[EntitySystemType] [nvarchar](255) NULL,
	[EntityID] [nvarchar](50) NULL,
	[Action] [nvarchar](max) NULL,
	[Audited] [datetime] NULL,
	[ContactID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_Audit] PRIMARY KEY CLUSTERED 
(
	[AuditID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_UserData]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_UserData](
	[UserDataID] [uniqueidentifier] NOT NULL,
	[TableType] [nvarchar](50) NOT NULL,
	[ReferenceID] [uniqueidentifier] NOT NULL,
	[UserDataType] [nvarchar](50) NULL,
	[SystemDataType] [nvarchar](255) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_UserData] PRIMARY KEY CLUSTERED 
(
	[UserDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_WaterFlow]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_WaterFlow](
	[WaterFlowID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[TestDepth] [numeric](9,3) NULL,
	[TestDate] [date] NULL,
	[SampleTypeID] [uniqueidentifier] NULL,
	[SampleNumber] [nvarchar](16) NULL,
	[FlowTestTypeID] [uniqueidentifier] NULL,
	[FlowHeight] [int] NULL,
	[FlowRate] [numeric](5, 2) NULL,
	[Ph] [numeric](4, 2) NULL,
	[TotalDissolvedSolids] [numeric](4, 2) NULL,
	[ElectricalConductivity] [numeric](4, 2) NULL,
	[Temperature] [numeric](3, 1) NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_X_WaterFlowData] PRIMARY KEY CLUSTERED 
(
	[WaterFlowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

;
/****** Object:  Table [dbo].[X_Worker]    Script Date: 19/11/2012 3:11:37 PM ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE [dbo].[X_Worker](
	[WorkerID] [uniqueidentifier] NOT NULL,
	[ContactID] [uniqueidentifier] NULL,
	[CompanyID] [uniqueidentifier] NULL,
	[ProfessionID] [uniqueidentifier] NULL,
	[Started] [date] NULL,
	[Finished] [date] NULL,
	[Comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_X_PersonWorked] PRIMARY KEY CLUSTERED 
(
	[WorkerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;
ALTER TABLE [dbo].[X_Address] ADD  CONSTRAINT [DF_X_Address_IsHQ]  DEFAULT ((0)) FOR [IsHQ]
;
ALTER TABLE [dbo].[X_Address] ADD  CONSTRAINT [DF_X_Address_IsPostBox]  DEFAULT ((0)) FOR [IsPostBox]
;
ALTER TABLE [dbo].[X_Address] ADD  CONSTRAINT [DF_X_Address_Priority]  DEFAULT ((0)) FOR [Priority]
;
ALTER TABLE [dbo].[X_AssayGroup] ADD  CONSTRAINT [DF_X_AssayGroup_AssayGroup]  DEFAULT (newid()) FOR [AssayGroupID]
;
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] ADD  CONSTRAINT [DF_X_AssayGroupStandardTestResult_AssayGroupStandardTestResult]  DEFAULT (newid()) FOR [AssayGroupStandardTestResultID]
;
ALTER TABLE [dbo].[X_AssayGroupTest] ADD  CONSTRAINT [DF_X_AssayGroupTest_AssayGroupTest]  DEFAULT (newid()) FOR [AssayGroupTestID]
;
ALTER TABLE [dbo].[X_AssayGroupTest] ADD  CONSTRAINT [DF_X_AssayGroupTest_AssayTestPriority]  DEFAULT ((0)) FOR [AssayTestPriority]
;
ALTER TABLE [dbo].[X_AssayGroupTestResult] ADD  CONSTRAINT [DF_X_AssayGroupTestResult_AssayGroupTestResult]  DEFAULT (newid()) FOR [AssayGroupTestResultID]
;
ALTER TABLE [dbo].[X_AssayGroupTestResultComment] ADD  CONSTRAINT [DF_X_AssayGroupTestResultComment_AssayGroupTestResultComment]  DEFAULT (newid()) FOR [AssayGroupTestResultCommentID]
;
ALTER TABLE [dbo].[X_AssayGroupTestResultDuplicate] ADD  CONSTRAINT [DF_X_AssayGroupTestResultDuplicate_AssayGroupTestResultDuplicate]  DEFAULT (newid()) FOR [AssayGroupTestResultDuplicateID]
;
ALTER TABLE [dbo].[X_AssayGroupTestSample] ADD  CONSTRAINT [DF_X_AssayGroupTestSample_AssayGroupTestSample]  DEFAULT (newid()) FOR [AssayGroupTestSampleID]
;
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_BlockModelID]  DEFAULT (newid()) FOR [BlockModelID]
;
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_IsIJKCalculated]  DEFAULT ((1)) FOR [IsIJKCalculated]
;
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_OriginI]  DEFAULT ((0)) FOR [OriginI]
;
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_OriginJ]  DEFAULT ((0)) FOR [OriginJ]
;
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_OriginK]  DEFAULT ((0)) FOR [OriginK]
;
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_MinimumI]  DEFAULT ((0)) FOR [MinimumI]
;
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_MinimumJ]  DEFAULT ((0)) FOR [MinimumJ]
;
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_MinimumK]  DEFAULT ((0)) FOR [MinimumK]
;
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_DimensionEasting]  DEFAULT ('X') FOR [DimensionEasting]
;
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_DimensionNorthing]  DEFAULT ('Y') FOR [DimensionNorthing]
;
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_DimensionElevation]  DEFAULT ('Z') FOR [DimensionElevation]
;
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_OriginNorthPositive]  DEFAULT ((1)) FOR [IsOriginNorthPositive]
;
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_OriginEastPositive]  DEFAULT ((1)) FOR [IsOriginEastPositive]
;
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_OriginElevationUpPositive]  DEFAULT ((1)) FOR [IsOriginElevationUpwardsPositive]
;
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_UnitIJK]  DEFAULT ('m') FOR [UnitIJK]
;
ALTER TABLE [dbo].[X_BlockModelBlock] ADD  CONSTRAINT [DF_X_BlockModelBlock_BlockModelBlockID]  DEFAULT (newid()) FOR [BlockModelBlockID]
;
ALTER TABLE [dbo].[X_BlockModelMetadata] ADD  CONSTRAINT [DF_X_BlockModelMetadata_BlockModelMetadataID]  DEFAULT (newid()) FOR [BlockModelMetadataID]
;
ALTER TABLE [dbo].[X_Casing] ADD  CONSTRAINT [DF_X_Casing_Casing]  DEFAULT (newid()) FOR [CasingID]
;
ALTER TABLE [dbo].[X_Cementing] ADD  CONSTRAINT [DF_X_Cementing_Cementing]  DEFAULT (newid()) FOR [CementingID]
;
ALTER TABLE [dbo].[X_Company] ADD  CONSTRAINT [DF_X_Company_Company]  DEFAULT (newid()) FOR [CompanyID]
;
ALTER TABLE [dbo].[X_CompanyRelation] ADD  CONSTRAINT [DF_X_CompanyRelation_IsChildVisible]  DEFAULT ((0)) FOR [IsChildVisible]
;
ALTER TABLE [dbo].[X_CompanyRelation] ADD  CONSTRAINT [DF_X_CompanyRelation_IsParentVisible]  DEFAULT ((0)) FOR [IsParentVisible]
;
ALTER TABLE [dbo].[X_Contact] ADD  CONSTRAINT [DF_X_Contact_Contact]  DEFAULT (newid()) FOR [ContactID]
;
ALTER TABLE [dbo].[X_ContactCompany] ADD  CONSTRAINT [DF_X_ContactCompany_IsActive]  DEFAULT ((0)) FOR [IsActive]
;
ALTER TABLE [dbo].[X_Defect] ADD  CONSTRAINT [DF_X_Defect_Defect]  DEFAULT (newid()) FOR [DefectID]
;
ALTER TABLE [dbo].[X_Desurvey] ADD  CONSTRAINT [DF_X_Desurvey_DesurveyID]  DEFAULT (newid()) FOR [DesurveyID]
;
ALTER TABLE [dbo].[X_Desurvey] ADD  CONSTRAINT [DF_X_Desurvey_DesurveyAlgorithmTypeID]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [DesurveyAlgorithmTypeID]
;
ALTER TABLE [dbo].[X_DictionaryAdjective] ADD  CONSTRAINT [DF_X_DictionaryAdjective_AdjectiveID]  DEFAULT (newid()) FOR [AdjectiveID]
;
ALTER TABLE [dbo].[X_DictionaryAlteration] ADD  CONSTRAINT [DF_X_DictionaryAlteration_AlterationID]  DEFAULT (newid()) FOR [AlterationID]
;
ALTER TABLE [dbo].[X_DictionaryAssayMethod] ADD  CONSTRAINT [DF_X_DictionaryAssayMethod_AssayMethodID]  DEFAULT (newid()) FOR [AssayMethodID]
;
ALTER TABLE [dbo].[X_DictionaryAssayStandard] ADD  CONSTRAINT [DF_X_DictionaryAssayStandard_AssayStandardID]  DEFAULT (newid()) FOR [AssayStandardID]
;
ALTER TABLE [dbo].[X_DictionaryAssayTest] ADD  CONSTRAINT [DF_X_DictionaryAssayTest_AssayTestID]  DEFAULT (newid()) FOR [AssayTestID]
;
ALTER TABLE [dbo].[X_DictionaryAssayType] ADD  CONSTRAINT [DF_X_DictionaryAssayType_AssayTypeID]  DEFAULT (newid()) FOR [AssayTypeID]
;
ALTER TABLE [dbo].[X_DictionaryBasalContact] ADD  CONSTRAINT [DF_X_DictionaryBasalContact_BasalContactID]  DEFAULT (newid()) FOR [BasalContactID]
;
ALTER TABLE [dbo].[X_DictionaryBedSpacing] ADD  CONSTRAINT [DF_X_DictionaryBedSpacing_BedSpacingID]  DEFAULT (newid()) FOR [BedSpacingID]
;
ALTER TABLE [dbo].[X_DictionaryColour] ADD  CONSTRAINT [DF_X_DictionaryColour_ColourID]  DEFAULT (newid()) FOR [ColourID]
;
ALTER TABLE [dbo].[X_DictionaryCommodity] ADD  CONSTRAINT [DF_X_DictionaryCommodity_CommodityID]  DEFAULT (newid()) FOR [CommodityID]
;
ALTER TABLE [dbo].[X_DictionaryCoreState] ADD  CONSTRAINT [DF_X_DictionaryCoreState_CoreStateID]  DEFAULT (newid()) FOR [CoreStateID]
;
ALTER TABLE [dbo].[X_DictionaryDataStatus] ADD  CONSTRAINT [DF_X_DictionaryDataStatus_DataStatusID]  DEFAULT (newid()) FOR [DataStatusID]
;
ALTER TABLE [dbo].[X_DictionaryDefectCompleteness] ADD  CONSTRAINT [DF_X_DictionaryDefectCompleteness_DefectCompletenessID]  DEFAULT (newid()) FOR [DefectCompletenessID]
;
ALTER TABLE [dbo].[X_DictionaryDefectContinuity] ADD  CONSTRAINT [DF_X_DictionaryDefectContinuity_DefectContinuityID]  DEFAULT (newid()) FOR [DefectContinuityID]
;
ALTER TABLE [dbo].[X_DictionaryDefectSpacing] ADD  CONSTRAINT [DF_X_DictionaryDefectSpacing_DefectSpacingID]  DEFAULT (newid()) FOR [DefectSpacingID]
;
ALTER TABLE [dbo].[X_DictionaryDefectType] ADD  CONSTRAINT [DF_X_DictionaryDefectType_DefectTypeID]  DEFAULT (newid()) FOR [DefectTypeID]
;
ALTER TABLE [dbo].[X_DictionaryDesurveyAlgorithmType] ADD  CONSTRAINT [DF_X_DictionaryDesurveyAlgorithmType_DesurveyAlgorithmID]  DEFAULT (newid()) FOR [DesurveyAlgorithmTypeID]
;
ALTER TABLE [dbo].[X_DictionaryDipOrientationMethod] ADD  CONSTRAINT [DF_X_DictionaryDipOrientationMethod_DipOrientationMethodID]  DEFAULT (newid()) FOR [DipOrientationMethodID]
;
ALTER TABLE [dbo].[X_DictionaryDomain] ADD  CONSTRAINT [DF_X_DictionaryDomain_DomainID]  DEFAULT (newid()) FOR [DomainID]
;
ALTER TABLE [dbo].[X_DictionaryDrillBitType] ADD  CONSTRAINT [DF_X_DictionaryDrillBitType_DrillBitTypeID]  DEFAULT (newid()) FOR [DrillBitTypeID]
;
ALTER TABLE [dbo].[X_DictionaryDrillCasingType] ADD  CONSTRAINT [DF_X_DictionaryDrillCasingType_DrillCasingTypeID]  DEFAULT (newid()) FOR [DrillCasingTypeID]
;
ALTER TABLE [dbo].[X_DictionaryDrillFluid] ADD  CONSTRAINT [DF_X_DictionaryDrillFluid_DrillFluidID]  DEFAULT (newid()) FOR [DrillFluidID]
;
ALTER TABLE [dbo].[X_DictionaryDrillRigType] ADD  CONSTRAINT [DF_X_DictionaryDrillRigType_DrillRigTypeID]  DEFAULT (newid()) FOR [DrillRigTypeID]
;
ALTER TABLE [dbo].[X_DictionaryDrillSize] ADD  CONSTRAINT [DF_X_DictionaryDrillSize_DrillSizeID]  DEFAULT (newid()) FOR [DrillSizeID]
;
ALTER TABLE [dbo].[X_DictionaryEstimatedStrength] ADD  CONSTRAINT [DF_X_DictionaryEstimatedStrength_EstimatedStrengthID]  DEFAULT (newid()) FOR [EstimatedStrengthID]
;
ALTER TABLE [dbo].[X_DictionaryFailureMode] ADD  CONSTRAINT [DF_X_DictionaryFailureMode_FailureModeID]  DEFAULT (newid()) FOR [FailureModeID]
;
ALTER TABLE [dbo].[X_DictionaryFlowTestType] ADD  CONSTRAINT [DF_X_DictionaryFlowTestType_FlowTestTypeID]  DEFAULT (newid()) FOR [FlowTestTypeID]
;
ALTER TABLE [dbo].[X_DictionaryGasDetected] ADD  CONSTRAINT [DF_X_DictionaryGasDetected_GasDetectedID]  DEFAULT (newid()) FOR [GasDetectedID]
;
ALTER TABLE [dbo].[X_DictionaryGeodeticDatum] ADD  CONSTRAINT [DF_X_DictionaryGeodeticDatum_GeodeticDatumID]  DEFAULT (newid()) FOR [GeodeticDatumID]
;
ALTER TABLE [dbo].[X_DictionaryGeophysicalLogType] ADD  CONSTRAINT [DF_X_DictionaryGeophysicalLogType_GeophysicalLogTypeID]  DEFAULT (newid()) FOR [GeophysicalLogTypeID]
;
ALTER TABLE [dbo].[X_DictionaryGroup] ADD  CONSTRAINT [DF_X_DictionaryGroup_GroupID]  DEFAULT (newid()) FOR [GroupID]
;
ALTER TABLE [dbo].[X_DictionaryGroupMembership] ADD  CONSTRAINT [DF_X_DictionaryGroupMembership_GroupMembershipID]  DEFAULT (newid()) FOR [GroupMembershipID]
;
ALTER TABLE [dbo].[X_DictionaryHeightDatum] ADD  CONSTRAINT [DF_X_DictionaryHeightDatum_HeightDatumID]  DEFAULT (newid()) FOR [HeightDatumID]
;
ALTER TABLE [dbo].[X_DictionaryHolePurpose] ADD  CONSTRAINT [DF_X_DictionaryHolePurpose_HolePurposeID]  DEFAULT (newid()) FOR [HolePurposeID]
;
ALTER TABLE [dbo].[X_DictionaryHoleStatus] ADD  CONSTRAINT [DF_X_DictionaryHoleStatus_HoleStatusID]  DEFAULT (newid()) FOR [HoleStatusID]
;
ALTER TABLE [dbo].[X_DictionaryHoleType] ADD  CONSTRAINT [DF_X_DictionaryHoleType_HoleTypeID]  DEFAULT (newid()) FOR [HoleTypeID]
;
ALTER TABLE [dbo].[X_DictionaryHorizon] ADD  CONSTRAINT [DF_X_DictionaryHorizon_HorizonID]  DEFAULT (newid()) FOR [HorizonID]
;
ALTER TABLE [dbo].[X_DictionaryHue] ADD  CONSTRAINT [DF_X_DictionaryHue_HueID]  DEFAULT (newid()) FOR [HueID]
;
ALTER TABLE [dbo].[X_DictionaryInfillMode] ADD  CONSTRAINT [DF_X_DictionaryInfillMode_InfillModeID]  DEFAULT (newid()) FOR [InfillModeID]
;
ALTER TABLE [dbo].[X_DictionaryInfillType] ADD  CONSTRAINT [DF_X_DictionaryInfillType_InfillTypeID]  DEFAULT (newid()) FOR [InfillTypeID]
;
ALTER TABLE [dbo].[X_DictionaryIntervalStatus] ADD  CONSTRAINT [DF_X_DictionaryIntervalStatus_IntervalStatusID]  DEFAULT (newid()) FOR [IntervalStatusID]
;
ALTER TABLE [dbo].[X_DictionaryLeaseApplicationType] ADD  CONSTRAINT [DF_X_DictionaryLeaseApplicationType_LeaseApplicationTypeID]  DEFAULT (newid()) FOR [LeaseApplicationTypeID]
;
ALTER TABLE [dbo].[X_DictionaryLithologyInterrelation] ADD  CONSTRAINT [DF_X_DictionaryLithologyInterrelation_LithologyInterralationID]  DEFAULT (newid()) FOR [LithologyInterralationID]
;
ALTER TABLE [dbo].[X_DictionaryLithologyQualifier] ADD  CONSTRAINT [DF_X_DictionaryLithologyQualifiers_LithologyQualifierID]  DEFAULT (newid()) FOR [LithologyQualifierID]
;
ALTER TABLE [dbo].[X_DictionaryLithologyType] ADD  CONSTRAINT [DF_X_DictionaryLithologyType_LithologyTypeID]  DEFAULT (newid()) FOR [LithologyTypeID]
;
ALTER TABLE [dbo].[X_DictionaryLocationType] ADD  CONSTRAINT [DF_X_DictionaryLocationType_LocationTypeID]  DEFAULT (newid()) FOR [LocationTypeID]
;
ALTER TABLE [dbo].[X_DictionaryMechanicalState] ADD  CONSTRAINT [DF_X_DictionaryMechanicalState_MechanicalStateID]  DEFAULT (newid()) FOR [MechanicalStateID]
;
ALTER TABLE [dbo].[X_DictionaryMineralAbundance] ADD  CONSTRAINT [DF_X_DictionaryMineralAbundance_MineralAbundanceID]  DEFAULT (newid()) FOR [MineralAbundanceID]
;
ALTER TABLE [dbo].[X_DictionaryMineralAndFossilAbundance] ADD  CONSTRAINT [DF_X_DictionaryMineralAndFossilAbundance_MineralAndFossilAbundanceID]  DEFAULT (newid()) FOR [MineralAndFossilAbundanceID]
;
ALTER TABLE [dbo].[X_DictionaryMineralAndFossilAssociation] ADD  CONSTRAINT [DF_X_DictionaryMineralAndFossilAssociation_MineralAndFossilAssociationID]  DEFAULT (newid()) FOR [MineralAndFossilAssociationID]
;
ALTER TABLE [dbo].[X_DictionaryMineralAndFossilType] ADD  CONSTRAINT [DF_X_DictionaryMineralAndFossilType_MineralAndFossilTypeID]  DEFAULT (newid()) FOR [MineralAndFossilTypeID]
;
ALTER TABLE [dbo].[X_DictionaryMineralForm] ADD  CONSTRAINT [DF_X_DictionaryMineralForm_MineralFormID]  DEFAULT (newid()) FOR [MineralFormID]
;
ALTER TABLE [dbo].[X_DictionaryMineralStyle] ADD  CONSTRAINT [DF_X_DictionaryMineralStyle_MineralStyleID]  DEFAULT (newid()) FOR [MineralStyleID]
;
ALTER TABLE [dbo].[X_DictionaryMineralType] ADD  CONSTRAINT [DF_X_DictionaryMineralType_MineralTypeID]  DEFAULT (newid()) FOR [MineralTypeID]
;
ALTER TABLE [dbo].[X_DictionaryMoistureSensitivity] ADD  CONSTRAINT [DF_X_DictionaryMoistureSensititvity_MoistureSensitivityID]  DEFAULT (newid()) FOR [MoistureSensitivityID]
;
ALTER TABLE [dbo].[X_DictionaryPlasticity] ADD  CONSTRAINT [DF_X_DictionaryPlasticity_PlasticityID]  DEFAULT (newid()) FOR [PlasticityID]
;
ALTER TABLE [dbo].[X_DictionaryPly] ADD  CONSTRAINT [DF_X_DictionaryPly_PlyID]  DEFAULT (newid()) FOR [PlyID]
;
ALTER TABLE [dbo].[X_DictionaryPointLoadTestType] ADD  CONSTRAINT [DF_X_DictionaryPointLoadTestType_PointLoadTestTypeID]  DEFAULT (newid()) FOR [PointLoadTestTypeID]
;
ALTER TABLE [dbo].[X_DictionaryProfession] ADD  CONSTRAINT [DF_X_DictionaryProfession_ProfessionID]  DEFAULT (newid()) FOR [ProfessionID]
;
ALTER TABLE [dbo].[X_DictionaryProvinceGroup] ADD  CONSTRAINT [DF_X_DictionaryProvinceGroup_ProvinceGroupID]  DEFAULT (newid()) FOR [ProvinceGroupID]
;
ALTER TABLE [dbo].[X_DictionaryProvinceType] ADD  CONSTRAINT [DF_X_DictionaryProvinceType_ProvinceTypeID]  DEFAULT (newid()) FOR [ProvinceTypeID]
;
ALTER TABLE [dbo].[X_DictionaryRelationType] ADD  CONSTRAINT [DF_X_DictionaryRelationType_RelationTypeID]  DEFAULT (newid()) FOR [RelationTypeID]
;
ALTER TABLE [dbo].[X_DictionaryRockMassUnitType] ADD  CONSTRAINT [DF_X_DictionaryRockMassUnitType_RockMassUnitTypeID]  DEFAULT (newid()) FOR [RockMassUnitTypeID]
;
ALTER TABLE [dbo].[X_DictionarySampleCategory] ADD  CONSTRAINT [DF_X_DictionarySampleCategory_SampleCategoryID]  DEFAULT (newid()) FOR [SampleCategoryID]
;
ALTER TABLE [dbo].[X_DictionarySampleState] ADD  CONSTRAINT [DF_X_DictionarySampleState_SampleStateID]  DEFAULT (newid()) FOR [SampleStateID]
;
ALTER TABLE [dbo].[X_DictionarySampleType] ADD  CONSTRAINT [DF_X_DictionarySampleType_SampleTypeID]  DEFAULT (newid()) FOR [SampleTypeID]
;
ALTER TABLE [dbo].[X_DictionarySeam] ADD  CONSTRAINT [DF_X_DictionarySeam_SeamID]  DEFAULT (newid()) FOR [SeamID]
;
ALTER TABLE [dbo].[X_DictionarySedimentaryFeature] ADD  CONSTRAINT [DF_X_DictionarySedimentaryFeature_SedimentaryFeatureID]  DEFAULT (newid()) FOR [SedimentaryFeatureID]
;
ALTER TABLE [dbo].[X_DictionaryShade] ADD  CONSTRAINT [DF_X_DictionaryShade_ShadeID]  DEFAULT (newid()) FOR [ShadeID]
;
ALTER TABLE [dbo].[X_DictionaryShape] ADD  CONSTRAINT [DF_X_DictionaryShape_ShapeID]  DEFAULT (newid()) FOR [ShapeID]
;
ALTER TABLE [dbo].[X_DictionaryStratigraphy] ADD  CONSTRAINT [DF_X_DictionaryStratigraphy_StratigraphyID]  DEFAULT (newid()) FOR [StratigraphyID]
;
ALTER TABLE [dbo].[X_DictionarySurfaceRoughness] ADD  CONSTRAINT [DF_X_DictionarySurfaceRoughness_SurfaceRoughnessID]  DEFAULT (newid()) FOR [SurfaceRoughnessID]
;
ALTER TABLE [dbo].[X_DictionarySurveyAccuracy] ADD  CONSTRAINT [DF_X_DictionarySurveyAccuracy_SurveyAccuracyID]  DEFAULT (newid()) FOR [SurveyAccuracyID]
;
ALTER TABLE [dbo].[X_DictionaryTexture] ADD  CONSTRAINT [DF_X_DictionaryTexture_TextureID]  DEFAULT (newid()) FOR [TextureID]
;
ALTER TABLE [dbo].[X_DictionaryUnit] ADD  CONSTRAINT [DF_X_DictionaryUnit_UnitID]  DEFAULT (newid()) FOR [UnitID]
;
ALTER TABLE [dbo].[X_DictionaryWeathering] ADD  CONSTRAINT [DF_X_DictionaryWeathering_WeatheringID]  DEFAULT (newid()) FOR [WeatheringID]
;
ALTER TABLE [dbo].[X_DictionaryWorkType] ADD  CONSTRAINT [DF_X_DictionaryWorkType_WorkTypeID]  DEFAULT (newid()) FOR [WorkTypeID]
;
ALTER TABLE [dbo].[X_DictionaryWorkTypeRelation] ADD  CONSTRAINT [DF_X_DictionaryWorkTypeRelation_WorkTypeRelationID]  DEFAULT (newid()) FOR [WorkTypeRelationID]
;
ALTER TABLE [dbo].[X_DrillCompanyContract] ADD  CONSTRAINT [DF_X_DrillCompanyContract_DrillContract]  DEFAULT (newid()) FOR [DrillContractID]
;
ALTER TABLE [dbo].[X_Drilling] ADD  CONSTRAINT [DF_X_Drilling_Drilling]  DEFAULT (newid()) FOR [DrillingID]
;
ALTER TABLE [dbo].[X_DrillingCompany] ADD  CONSTRAINT [DF_X_DrillingCompany_DrillingCompanyID]  DEFAULT (newid()) FOR [DrillingCompanyID]
;
ALTER TABLE [dbo].[X_Experience] ADD  CONSTRAINT [DF_X_Experience_ExperienceID]  DEFAULT (newid()) FOR [ExperienceID]
;
ALTER TABLE [dbo].[X_Experience] ADD  CONSTRAINT [DF_X_Experience_DateStart]  DEFAULT (getdate()) FOR [DateStart]
;
ALTER TABLE [dbo].[X_FileData] ADD  CONSTRAINT [DF_X_FileData_FileDataID]  DEFAULT (newid()) FOR [FileDataID]
;
ALTER TABLE [dbo].[X_Geology] ADD  CONSTRAINT [DF_X_Geology_Geology]  DEFAULT (newid()) FOR [GeologyID]
;
ALTER TABLE [dbo].[X_GeologyCompany] ADD  CONSTRAINT [DF_X_GeologyCompany_GeologyCompanyID]  DEFAULT (newid()) FOR [GeologyCompanyID]
;
ALTER TABLE [dbo].[X_Geophysics] ADD  CONSTRAINT [DF_X_Geophysics_DimensionUnit]  DEFAULT ('m') FOR [DimensionUnit]
;
ALTER TABLE [dbo].[X_GeophysicsCompany] ADD  CONSTRAINT [DF_X_GeophysicalCompany_GeophysicalCompanyID]  DEFAULT (newid()) FOR [GeophysicsCompanyID]
;
ALTER TABLE [dbo].[X_Header] ADD  CONSTRAINT [DF_X_Header_HoleID]  DEFAULT (newid()) FOR [HeaderID]
;
ALTER TABLE [dbo].[X_Header] ADD  CONSTRAINT [DF_X_Header_Utm_Zone_Hemisphere]  DEFAULT ('S') FOR [UtmZoneHemisphere]
;
ALTER TABLE [dbo].[X_HeaderRelation] ADD  CONSTRAINT [DF_X_HeaderRelation_Related]  DEFAULT (getdate()) FOR [Related]
;
ALTER TABLE [dbo].[X_LabCompany] ADD  CONSTRAINT [DF_X_LabCompany_LabCompanyID]  DEFAULT (newid()) FOR [LabCompanyID]
;
ALTER TABLE [dbo].[X_Lease] ADD  CONSTRAINT [DF_X_Lease_Lease]  DEFAULT (newid()) FOR [LeaseID]
;
ALTER TABLE [dbo].[X_LeaseApplication] ADD  CONSTRAINT [DF_X_LeaseApplication_LeaseApplication]  DEFAULT (newid()) FOR [LeaseApplicationID]
;
ALTER TABLE [dbo].[X_Lithology] ADD  CONSTRAINT [DF_X_Lithology_Lithology]  DEFAULT (newid()) FOR [LithologyID]
;
ALTER TABLE [dbo].[X_Location] ADD  CONSTRAINT [DF_X_Location_LocationType]  DEFAULT (N'Unclassified') FOR [LocationType]
;
ALTER TABLE [dbo].[X_Location] ADD  CONSTRAINT [DF_X_Location_DefaultCulture]  DEFAULT (N'en-AU') FOR [DefaultCulture]
;
ALTER TABLE [dbo].[X_LocationAlias] ADD  CONSTRAINT [DF_X_LocationAlias_Culture]  DEFAULT (N'en-AU') FOR [Culture]
;
ALTER TABLE [dbo].[X_LocationAlias] ADD  CONSTRAINT [DF_X_LocationAlias_Priority]  DEFAULT ((0)) FOR [Priority]
;
ALTER TABLE [dbo].[X_Mineralogy] ADD  CONSTRAINT [DF_X_Mineralogy_Mineralogy]  DEFAULT (newid()) FOR [MineralogyID]
;
ALTER TABLE [dbo].[X_Parameter] ADD  CONSTRAINT [DF_X_Parameter_ParameterID]  DEFAULT (newid()) FOR [ParameterID]
;
ALTER TABLE [dbo].[X_Parameter] ADD  CONSTRAINT [DF_X_Parameter_Locale]  DEFAULT (N'en-AU') FOR [Locale]
;
ALTER TABLE [dbo].[X_ParameterGroup] ADD  CONSTRAINT [DF_X_ParameterGroup_ParameterGroupID]  DEFAULT (newid()) FOR [ParameterGroupID]
;
ALTER TABLE [dbo].[X_PointLoad] ADD  CONSTRAINT [DF_X_PointLoad_PointLoad]  DEFAULT (newid()) FOR [PointLoadID]
;
ALTER TABLE [dbo].[X_PrivateData] ADD  CONSTRAINT [DF_Table_1_UserDataID]  DEFAULT (newid()) FOR [PrivateDataID]
;
ALTER TABLE [dbo].[X_PrivateData] ADD  CONSTRAINT [DF_X_PrivateData_SystemDataType]  DEFAULT (N'System.String') FOR [SystemDataType]
;
ALTER TABLE [dbo].[X_Project] ADD  CONSTRAINT [DF_X_Project_Project]  DEFAULT (newid()) FOR [ProjectID]
;
ALTER TABLE [dbo].[X_ProjectPlan] ADD  CONSTRAINT [DF_X_ProjectPlan_ProjectPlanID]  DEFAULT (newid()) FOR [ProjectPlanID]
;
ALTER TABLE [dbo].[X_ProjectPlanTask] ADD  CONSTRAINT [DF_X_ProjectPlanTask_ProjectPlanTaskID]  DEFAULT (newid()) FOR [ProjectPlanTaskID]
;
ALTER TABLE [dbo].[X_ProjectPlanTask] ADD  CONSTRAINT [DF_X_ProjectPlanTask_Priority]  DEFAULT ((0)) FOR [Priority]
;
ALTER TABLE [dbo].[X_ProjectPlanTask] ADD  CONSTRAINT [DF_X_ProjectPlanTask_IsMilestone]  DEFAULT ((0)) FOR [IsMilestone]
;
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse] ADD  CONSTRAINT [DF_X_ProjectPlanTaskResponse_Completed]  DEFAULT (getdate()) FOR [Completed]
;
ALTER TABLE [dbo].[X_Recovery] ADD  CONSTRAINT [DF_X_Recovery_Recovery]  DEFAULT (newid()) FOR [RecoveryID]
;
ALTER TABLE [dbo].[X_Recovery] ADD  CONSTRAINT [DF_X_RecoveryData_Confident]  DEFAULT ((0)) FOR [Confident]
;
ALTER TABLE [dbo].[X_SecurityBlacklist] ADD  CONSTRAINT [DF_X_SecurityBlacklist_CanCreate]  DEFAULT ((0)) FOR [CanCreate]
;
ALTER TABLE [dbo].[X_SecurityBlacklist] ADD  CONSTRAINT [DF_X_SecurityBlacklist_CanRead]  DEFAULT ((0)) FOR [CanRead]
;
ALTER TABLE [dbo].[X_SecurityBlacklist] ADD  CONSTRAINT [DF_X_SecurityBlacklist_CanUpdate]  DEFAULT ((0)) FOR [CanUpdate]
;
ALTER TABLE [dbo].[X_SecurityBlacklist] ADD  CONSTRAINT [DF_X_SecurityBlacklist_CanDelete]  DEFAULT ((0)) FOR [CanDelete]
;
ALTER TABLE [dbo].[X_SecurityBlacklist] ADD  CONSTRAINT [DF_X_SecurityBlacklist_IsField]  DEFAULT ((0)) FOR [IsField]
;
ALTER TABLE [dbo].[X_SecurityWhitelist] ADD  CONSTRAINT [DF_X_SecurityWhitelist_CanCreate]  DEFAULT ((1)) FOR [CanCreate]
;
ALTER TABLE [dbo].[X_SecurityWhitelist] ADD  CONSTRAINT [DF_X_SecurityWhitelist_CanRead]  DEFAULT ((1)) FOR [CanRead]
;
ALTER TABLE [dbo].[X_SecurityWhitelist] ADD  CONSTRAINT [DF_X_SecurityWhitelist_CanUpdate]  DEFAULT ((1)) FOR [CanUpdate]
;
ALTER TABLE [dbo].[X_SecurityWhitelist] ADD  CONSTRAINT [DF_X_SecurityWhitelist_CanDelete]  DEFAULT ((1)) FOR [CanDelete]
;
ALTER TABLE [dbo].[X_SecurityWhitelist] ADD  CONSTRAINT [DF_X_SecurityWhitelist_IsField]  DEFAULT ((1)) FOR [IsField]
;
ALTER TABLE [dbo].[X_Survey] ADD  CONSTRAINT [DF_X_Survey_Survey]  DEFAULT (newid()) FOR [SurveyID]
;
ALTER TABLE [dbo].[X_SurveyCompany] ADD  CONSTRAINT [DF_X_SurveyCompany_SurveyCompanyID]  DEFAULT (newid()) FOR [SurveyCompanyID]
;
ALTER TABLE [dbo].[X_UsageAudit] ADD  CONSTRAINT [DF_X_UsageAudit_AuditID]  DEFAULT (newid()) FOR [AuditID]
;
ALTER TABLE [dbo].[X_UserData] ADD  CONSTRAINT [DF_X_UserData_UserDataID]  DEFAULT (newid()) FOR [UserDataID]
;
ALTER TABLE [dbo].[X_UserData] ADD  CONSTRAINT [DF_X_UserData_SystemDataType]  DEFAULT (N'System.String') FOR [SystemDataType]
;
ALTER TABLE [dbo].[X_WaterFlow] ADD  CONSTRAINT [DF_X_WaterFlow_WaterFlow]  DEFAULT (newid()) FOR [WaterFlowID]
;
ALTER TABLE [dbo].[X_Worker] ADD  CONSTRAINT [DF_X_Worker_Worker]  DEFAULT (newid()) FOR [WorkerID]
;
ALTER TABLE [dbo].[X_Address]  WITH CHECK ADD  CONSTRAINT [FK_X_Address_X_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[X_Location] ([LocationID])
;
ALTER TABLE [dbo].[X_Address] CHECK CONSTRAINT [FK_X_Address_X_Location]
;
ALTER TABLE [dbo].[X_AssayGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroup_X_Lab_Company] FOREIGN KEY([LabCompanyID])
REFERENCES [dbo].[X_LabCompany] ([LabCompanyID])
;
ALTER TABLE [dbo].[X_AssayGroup] CHECK CONSTRAINT [FK_X_AssayGroup_X_Lab_Company]
;
ALTER TABLE [dbo].[X_AssayGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroup_X_Person] FOREIGN KEY([SubmittedContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_AssayGroup] CHECK CONSTRAINT [FK_X_AssayGroup_X_Person]
;
ALTER TABLE [dbo].[X_AssayGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroup_X_Person1] FOREIGN KEY([ReceivedContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_AssayGroup] CHECK CONSTRAINT [FK_X_AssayGroup_X_Person1]
;
ALTER TABLE [dbo].[X_AssayGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroup_X_Person2] FOREIGN KEY([EnteredContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_AssayGroup] CHECK CONSTRAINT [FK_X_AssayGroup_X_Person2]
;
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_AssayGroupTest] FOREIGN KEY([AssayGroupTestID])
REFERENCES [dbo].[X_AssayGroupTest] ([AssayGroupTestID])
;
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] CHECK CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_AssayGroupTest]
;
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_AssayGroupTestSample] FOREIGN KEY([AssayGroupTestSampleID])
REFERENCES [dbo].[X_AssayGroupTestSample] ([AssayGroupTestSampleID])
;
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] CHECK CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_AssayGroupTestSample]
;
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_DictionaryAssayStandard] FOREIGN KEY([AssayStandardID])
REFERENCES [dbo].[X_DictionaryAssayStandard] ([AssayStandardID])
;
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] CHECK CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_DictionaryAssayStandard]
;
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_DictionarySample_Category] FOREIGN KEY([SampleCategoryID])
REFERENCES [dbo].[X_DictionarySampleCategory] ([SampleCategoryID])
;
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] CHECK CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_DictionarySample_Category]
;
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_DictionarySampleState] FOREIGN KEY([SampleStateID])
REFERENCES [dbo].[X_DictionarySampleState] ([SampleStateID])
;
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] CHECK CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_DictionarySampleState]
;
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_DictionarySampleType] FOREIGN KEY([SampleTypeID])
REFERENCES [dbo].[X_DictionarySampleType] ([SampleTypeID])
;
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] CHECK CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_DictionarySampleType]
;
ALTER TABLE [dbo].[X_AssayGroupTest]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTest_X_AssayGroup] FOREIGN KEY([AssayGroupID])
REFERENCES [dbo].[X_AssayGroup] ([AssayGroupID])
;
ALTER TABLE [dbo].[X_AssayGroupTest] CHECK CONSTRAINT [FK_X_AssayGroupTest_X_AssayGroup]
;
ALTER TABLE [dbo].[X_AssayGroupTest]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTest_X_DictionaryAssayMethod] FOREIGN KEY([AssayMethodID])
REFERENCES [dbo].[X_DictionaryAssayMethod] ([AssayMethodID])
;
ALTER TABLE [dbo].[X_AssayGroupTest] CHECK CONSTRAINT [FK_X_AssayGroupTest_X_DictionaryAssayMethod]
;
ALTER TABLE [dbo].[X_AssayGroupTest]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTest_X_DictionaryAssayType] FOREIGN KEY([AssayTypeID])
REFERENCES [dbo].[X_DictionaryAssayType] ([AssayTypeID])
;
ALTER TABLE [dbo].[X_AssayGroupTest] CHECK CONSTRAINT [FK_X_AssayGroupTest_X_DictionaryAssayType]
;
ALTER TABLE [dbo].[X_AssayGroupTest]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTest_X_Parameter] FOREIGN KEY([ParameterID])
REFERENCES [dbo].[X_Parameter] ([ParameterID])
;
ALTER TABLE [dbo].[X_AssayGroupTest] CHECK CONSTRAINT [FK_X_AssayGroupTest_X_Parameter]
;
ALTER TABLE [dbo].[X_AssayGroupTestResult]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTestResult_X_AssayGroupTest] FOREIGN KEY([AssayGroupTestID])
REFERENCES [dbo].[X_AssayGroupTest] ([AssayGroupTestID])
;
ALTER TABLE [dbo].[X_AssayGroupTestResult] CHECK CONSTRAINT [FK_X_AssayGroupTestResult_X_AssayGroupTest]
;
ALTER TABLE [dbo].[X_AssayGroupTestResult]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTestResult_X_AssayGroupTestSample] FOREIGN KEY([AssayGroupTestSampleID])
REFERENCES [dbo].[X_AssayGroupTestSample] ([AssayGroupTestSampleID])
;
ALTER TABLE [dbo].[X_AssayGroupTestResult] CHECK CONSTRAINT [FK_X_AssayGroupTestResult_X_AssayGroupTestSample]
;
ALTER TABLE [dbo].[X_AssayGroupTestResultComment]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTestResultComment_X_AssayGroupTestResult] FOREIGN KEY([AssayGroupTestResultID])
REFERENCES [dbo].[X_AssayGroupTestResult] ([AssayGroupTestResultID])
;
ALTER TABLE [dbo].[X_AssayGroupTestResultComment] CHECK CONSTRAINT [FK_X_AssayGroupTestResultComment_X_AssayGroupTestResult]
;
ALTER TABLE [dbo].[X_AssayGroupTestResultDuplicate]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTestResultDuplicate_X_AssayGroupTestResult] FOREIGN KEY([AssayGroupTestResultID])
REFERENCES [dbo].[X_AssayGroupTestResult] ([AssayGroupTestResultID])
;
ALTER TABLE [dbo].[X_AssayGroupTestResultDuplicate] CHECK CONSTRAINT [FK_X_AssayGroupTestResultDuplicate_X_AssayGroupTestResult]
;
ALTER TABLE [dbo].[X_AssayGroupTestSample]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTestSample_X_DictionarySampleCategory] FOREIGN KEY([SampleCategoryID])
REFERENCES [dbo].[X_DictionarySampleCategory] ([SampleCategoryID])
;
ALTER TABLE [dbo].[X_AssayGroupTestSample] CHECK CONSTRAINT [FK_X_AssayGroupTestSample_X_DictionarySampleCategory]
;
ALTER TABLE [dbo].[X_AssayGroupTestSample]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTestSample_X_DictionarySampleState] FOREIGN KEY([SampleStateID])
REFERENCES [dbo].[X_DictionarySampleState] ([SampleStateID])
;
ALTER TABLE [dbo].[X_AssayGroupTestSample] CHECK CONSTRAINT [FK_X_AssayGroupTestSample_X_DictionarySampleState]
;
ALTER TABLE [dbo].[X_AssayGroupTestSample]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTestSample_X_DictionarySampleType] FOREIGN KEY([SampleTypeID])
REFERENCES [dbo].[X_DictionarySampleType] ([SampleTypeID])
;
ALTER TABLE [dbo].[X_AssayGroupTestSample] CHECK CONSTRAINT [FK_X_AssayGroupTestSample_X_DictionarySampleType]
;
ALTER TABLE [dbo].[X_AssayGroupTestSample]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTestSample_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
;
ALTER TABLE [dbo].[X_AssayGroupTestSample] CHECK CONSTRAINT [FK_X_AssayGroupTestSample_X_Header]
;
ALTER TABLE [dbo].[X_BlockModel]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModel_X_Contact] FOREIGN KEY([AuthorContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_BlockModel] CHECK CONSTRAINT [FK_X_BlockModel_X_Contact]
;
ALTER TABLE [dbo].[X_BlockModel]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModel_X_Contact2] FOREIGN KEY([ResponsibleContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_BlockModel] CHECK CONSTRAINT [FK_X_BlockModel_X_Contact2]
;
ALTER TABLE [dbo].[X_BlockModel]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModel_X_Contact3] FOREIGN KEY([ApproverContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_BlockModel] CHECK CONSTRAINT [FK_X_BlockModel_X_Contact3]
;
ALTER TABLE [dbo].[X_BlockModel]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModel_X_Contact4] FOREIGN KEY([ExternalReviewerContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_BlockModel] CHECK CONSTRAINT [FK_X_BlockModel_X_Contact4]
;
ALTER TABLE [dbo].[X_BlockModel]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModel_X_DictionaryDimension] FOREIGN KEY([DimensionEasting])
REFERENCES [dbo].[X_DictionaryDimension] ([DimensionID])
;
ALTER TABLE [dbo].[X_BlockModel] CHECK CONSTRAINT [FK_X_BlockModel_X_DictionaryDimension]
;
ALTER TABLE [dbo].[X_BlockModel]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModel_X_DictionaryDimension1] FOREIGN KEY([DimensionElevation])
REFERENCES [dbo].[X_DictionaryDimension] ([DimensionID])
;
ALTER TABLE [dbo].[X_BlockModel] CHECK CONSTRAINT [FK_X_BlockModel_X_DictionaryDimension1]
;
ALTER TABLE [dbo].[X_BlockModel]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModel_X_DictionaryDimension2] FOREIGN KEY([DimensionNorthing])
REFERENCES [dbo].[X_DictionaryDimension] ([DimensionID])
;
ALTER TABLE [dbo].[X_BlockModel] CHECK CONSTRAINT [FK_X_BlockModel_X_DictionaryDimension2]
;
ALTER TABLE [dbo].[X_BlockModel]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModel_X_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
;
ALTER TABLE [dbo].[X_BlockModel] CHECK CONSTRAINT [FK_X_BlockModel_X_Project]
;
ALTER TABLE [dbo].[X_BlockModelBlock]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModelBlock_X_BlockModel] FOREIGN KEY([BlockModelID])
REFERENCES [dbo].[X_BlockModel] ([BlockModelID])
;
ALTER TABLE [dbo].[X_BlockModelBlock] CHECK CONSTRAINT [FK_X_BlockModelBlock_X_BlockModel]
;
ALTER TABLE [dbo].[X_BlockModelBlockData]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModelBlockData_X_BlockModelBlock] FOREIGN KEY([BlockModelBlockID])
REFERENCES [dbo].[X_BlockModelBlock] ([BlockModelBlockID])
;
ALTER TABLE [dbo].[X_BlockModelBlockData] CHECK CONSTRAINT [FK_X_BlockModelBlockData_X_BlockModelBlock]
;
ALTER TABLE [dbo].[X_BlockModelBlockData]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModelBlockData_X_Parameter] FOREIGN KEY([ParameterID])
REFERENCES [dbo].[X_Parameter] ([ParameterID])
;
ALTER TABLE [dbo].[X_BlockModelBlockData] CHECK CONSTRAINT [FK_X_BlockModelBlockData_X_Parameter]
;
ALTER TABLE [dbo].[X_BlockModelMetadata]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModelMetadata_X_BlockModel] FOREIGN KEY([BlockModelID])
REFERENCES [dbo].[X_BlockModel] ([BlockModelID])
;
ALTER TABLE [dbo].[X_BlockModelMetadata] CHECK CONSTRAINT [FK_X_BlockModelMetadata_X_BlockModel]
;
ALTER TABLE [dbo].[X_BlockModelMetadata]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModelMetadata_X_Parameter] FOREIGN KEY([ParameterID])
REFERENCES [dbo].[X_Parameter] ([ParameterID])
;
ALTER TABLE [dbo].[X_BlockModelMetadata] CHECK CONSTRAINT [FK_X_BlockModelMetadata_X_Parameter]
;
ALTER TABLE [dbo].[X_Casing]  WITH CHECK ADD  CONSTRAINT [FK_X_CasingData_X_DictionaryCasing_Type] FOREIGN KEY([CasingTypeID])
REFERENCES [dbo].[X_DictionaryDrillCasingType] ([DrillCasingTypeID])
;
ALTER TABLE [dbo].[X_Casing] CHECK CONSTRAINT [FK_X_CasingData_X_DictionaryCasing_Type]
;
ALTER TABLE [dbo].[X_Casing]  WITH CHECK ADD  CONSTRAINT [FK_X_CasingData_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
;
ALTER TABLE [dbo].[X_Casing] CHECK CONSTRAINT [FK_X_CasingData_X_Header]
;
ALTER TABLE [dbo].[X_Cementing]  WITH CHECK ADD  CONSTRAINT [FK_X_CementingData_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
;
ALTER TABLE [dbo].[X_Cementing] CHECK CONSTRAINT [FK_X_CementingData_X_Header]
;
ALTER TABLE [dbo].[X_Company]  WITH CHECK ADD  CONSTRAINT [FK_X_Company_X_DictionaryCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
;
ALTER TABLE [dbo].[X_Company] CHECK CONSTRAINT [FK_X_Company_X_DictionaryCountry]
;
ALTER TABLE [dbo].[X_Company]  WITH CHECK ADD  CONSTRAINT [FK_X_Company_X_Person] FOREIGN KEY([PrimaryContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_Company] CHECK CONSTRAINT [FK_X_Company_X_Person]
;
ALTER TABLE [dbo].[X_CompanyAddress]  WITH CHECK ADD  CONSTRAINT [FK_X_CompanyAddress_X_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[X_Address] ([AddressID])
;
ALTER TABLE [dbo].[X_CompanyAddress] CHECK CONSTRAINT [FK_X_CompanyAddress_X_Address]
;
ALTER TABLE [dbo].[X_CompanyAddress]  WITH CHECK ADD  CONSTRAINT [FK_X_CompanyAddress_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_CompanyAddress] CHECK CONSTRAINT [FK_X_CompanyAddress_X_Company]
;
ALTER TABLE [dbo].[X_CompanyRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_CompanyRelation_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_CompanyRelation] CHECK CONSTRAINT [FK_X_CompanyRelation_X_Company]
;
ALTER TABLE [dbo].[X_CompanyRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_CompanyRelation_X_Company1] FOREIGN KEY([ParentCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_CompanyRelation] CHECK CONSTRAINT [FK_X_CompanyRelation_X_Company1]
;
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_Composite_X_BlockModel] FOREIGN KEY([BlockModelBlockID])
REFERENCES [dbo].[X_BlockModelBlock] ([BlockModelBlockID])
;
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_Composite_X_BlockModel]
;
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_AssayGroupTestSample] FOREIGN KEY([AssayGroupTestSampleID])
REFERENCES [dbo].[X_AssayGroupTestSample] ([AssayGroupTestSampleID])
;
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_AssayGroupTestSample]
;
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Casing] FOREIGN KEY([CasingID])
REFERENCES [dbo].[X_Casing] ([CasingID])
;
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Casing]
;
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Cementing] FOREIGN KEY([CementingID])
REFERENCES [dbo].[X_Cementing] ([CementingID])
;
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Cementing]
;
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Defect] FOREIGN KEY([DefectID])
REFERENCES [dbo].[X_Defect] ([DefectID])
;
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Defect]
;
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Desurvey] FOREIGN KEY([DesurveyID])
REFERENCES [dbo].[X_Desurvey] ([DesurveyID])
;
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Desurvey]
;
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Drilling] FOREIGN KEY([DrillingID])
REFERENCES [dbo].[X_Drilling] ([DrillingID])
;
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Drilling]
;
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Geology] FOREIGN KEY([GeologyID])
REFERENCES [dbo].[X_Geology] ([GeologyID])
;
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Geology]
;
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_GeophyicsData] FOREIGN KEY([GeophysicsDataID])
REFERENCES [dbo].[X_GeophyicsData] ([GeophysicsDataID])
;
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_GeophyicsData]
;
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
;
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Header]
;
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Lithology] FOREIGN KEY([LithologyID])
REFERENCES [dbo].[X_Lithology] ([LithologyID])
;
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Lithology]
;
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Mineralogy] FOREIGN KEY([MineralogyID])
REFERENCES [dbo].[X_Mineralogy] ([MineralogyID])
;
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Mineralogy]
;
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_PointLoad] FOREIGN KEY([PointLoadID])
REFERENCES [dbo].[X_PointLoad] ([PointLoadID])
;
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_PointLoad]
;
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Recovery] FOREIGN KEY([RecoveryID])
REFERENCES [dbo].[X_Recovery] ([RecoveryID])
;
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Recovery]
;
ALTER TABLE [dbo].[X_CompositeData]  WITH CHECK ADD  CONSTRAINT [FK_X_CompositeCustomData_X_Parameter] FOREIGN KEY([ParameterID])
REFERENCES [dbo].[X_Parameter] ([ParameterID])
;
ALTER TABLE [dbo].[X_CompositeData] CHECK CONSTRAINT [FK_X_CompositeCustomData_X_Parameter]
;
ALTER TABLE [dbo].[X_Contact]  WITH CHECK ADD  CONSTRAINT [FK_X_Person_X_DictionaryCountry] FOREIGN KEY([BirthCountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
;
ALTER TABLE [dbo].[X_Contact] CHECK CONSTRAINT [FK_X_Person_X_DictionaryCountry]
;
ALTER TABLE [dbo].[X_ContactAddress]  WITH CHECK ADD  CONSTRAINT [FK_X_ContactAddress_X_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[X_Address] ([AddressID])
;
ALTER TABLE [dbo].[X_ContactAddress] CHECK CONSTRAINT [FK_X_ContactAddress_X_Address]
;
ALTER TABLE [dbo].[X_ContactAddress]  WITH CHECK ADD  CONSTRAINT [FK_X_ContactAddress_X_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_ContactAddress] CHECK CONSTRAINT [FK_X_ContactAddress_X_Contact]
;
ALTER TABLE [dbo].[X_ContactCompany]  WITH CHECK ADD  CONSTRAINT [FK_X_ContactCompany_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_ContactCompany] CHECK CONSTRAINT [FK_X_ContactCompany_X_Company]
;
ALTER TABLE [dbo].[X_ContactCompany]  WITH CHECK ADD  CONSTRAINT [FK_X_ContactCompany_X_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_ContactCompany] CHECK CONSTRAINT [FK_X_ContactCompany_X_Contact]
;
ALTER TABLE [dbo].[X_ContactCompany]  WITH CHECK ADD  CONSTRAINT [FK_X_ContactCompany_X_DictionaryProfession] FOREIGN KEY([ProfessionID])
REFERENCES [dbo].[X_DictionaryProfession] ([ProfessionID])
;
ALTER TABLE [dbo].[X_ContactCompany] CHECK CONSTRAINT [FK_X_ContactCompany_X_DictionaryProfession]
;
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_Defect_X_DictionaryRockMassUnitType] FOREIGN KEY([RockMassUnitTypeID])
REFERENCES [dbo].[X_DictionaryRockMassUnitType] ([RockMassUnitTypeID])
;
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_Defect_X_DictionaryRockMassUnitType]
;
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryAlteration] FOREIGN KEY([AlterationID])
REFERENCES [dbo].[X_DictionaryAlteration] ([AlterationID])
;
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryAlteration]
;
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryDip_Orient_Meth] FOREIGN KEY([DipOrientationMethodID])
REFERENCES [dbo].[X_DictionaryDipOrientationMethod] ([DipOrientationMethodID])
;
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryDip_Orient_Meth]
;
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryEst_Strength] FOREIGN KEY([EstimatedStrengthID])
REFERENCES [dbo].[X_DictionaryEstimatedStrength] ([EstimatedStrengthID])
;
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryEst_Strength]
;
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryEst_Strength1] FOREIGN KEY([InfillEstimatedStrengthID])
REFERENCES [dbo].[X_DictionaryEstimatedStrength] ([EstimatedStrengthID])
;
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryEst_Strength1]
;
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryInfill_Mode] FOREIGN KEY([InfillModeID])
REFERENCES [dbo].[X_DictionaryInfillMode] ([InfillModeID])
;
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryInfill_Mode]
;
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryInfill_Type] FOREIGN KEY([PrimaryInfillTypeID])
REFERENCES [dbo].[X_DictionaryInfillType] ([InfillTypeID])
;
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryInfill_Type]
;
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryInfill_Type1] FOREIGN KEY([SecondaryInfillTypeID])
REFERENCES [dbo].[X_DictionaryInfillType] ([InfillTypeID])
;
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryInfill_Type1]
;
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryMoist_Sensitive] FOREIGN KEY([MoistureSensitivityID])
REFERENCES [dbo].[X_DictionaryMoistureSensitivity] ([MoistureSensitivityID])
;
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryMoist_Sensitive]
;
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryPlasticity] FOREIGN KEY([PlasticityID])
REFERENCES [dbo].[X_DictionaryPlasticity] ([PlasticityID])
;
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryPlasticity]
;
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryPlasticity1] FOREIGN KEY([InfillPlasticityID])
REFERENCES [dbo].[X_DictionaryPlasticity] ([PlasticityID])
;
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryPlasticity1]
;
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryRoughness] FOREIGN KEY([RoughnessID])
REFERENCES [dbo].[X_DictionarySurfaceRoughness] ([SurfaceRoughnessID])
;
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryRoughness]
;
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryShape] FOREIGN KEY([ShapeID])
REFERENCES [dbo].[X_DictionaryShape] ([ShapeID])
;
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryShape]
;
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryWeathering] FOREIGN KEY([WeatheringID])
REFERENCES [dbo].[X_DictionaryWeathering] ([WeatheringID])
;
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryWeathering]
;
ALTER TABLE [dbo].[X_Desurvey]  WITH CHECK ADD  CONSTRAINT [FK_X_Desurvey_X_DictionaryDesurveyAlgorithmType] FOREIGN KEY([DesurveyAlgorithmTypeID])
REFERENCES [dbo].[X_DictionaryDesurveyAlgorithmType] ([DesurveyAlgorithmTypeID])
;
ALTER TABLE [dbo].[X_Desurvey] CHECK CONSTRAINT [FK_X_Desurvey_X_DictionaryDesurveyAlgorithmType]
;
ALTER TABLE [dbo].[X_Desurvey]  WITH CHECK ADD  CONSTRAINT [FK_X_Desurvey_X_Survey] FOREIGN KEY([SurveyID])
REFERENCES [dbo].[X_Survey] ([SurveyID])
;
ALTER TABLE [dbo].[X_Desurvey] CHECK CONSTRAINT [FK_X_Desurvey_X_Survey]
;
ALTER TABLE [dbo].[X_DictionaryCountryState]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryCountryState_X_DictionaryCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
;
ALTER TABLE [dbo].[X_DictionaryCountryState] CHECK CONSTRAINT [FK_X_DictionaryCountryState_X_DictionaryCountry]
;
ALTER TABLE [dbo].[X_DictionaryDomainAlias]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryDomainRelations_X_DictionaryDomainRelations] FOREIGN KEY([DomainID])
REFERENCES [dbo].[X_DictionaryDomain] ([DomainID])
;
ALTER TABLE [dbo].[X_DictionaryDomainAlias] CHECK CONSTRAINT [FK_X_DictionaryDomainRelations_X_DictionaryDomainRelations]
;
ALTER TABLE [dbo].[X_DictionaryGroupMembership]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryGroupMembership_X_DictionaryGroup] FOREIGN KEY([ChildGroupID])
REFERENCES [dbo].[X_DictionaryGroup] ([GroupID])
;
ALTER TABLE [dbo].[X_DictionaryGroupMembership] CHECK CONSTRAINT [FK_X_DictionaryGroupMembership_X_DictionaryGroup]
;
ALTER TABLE [dbo].[X_DictionaryGroupMembership]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryGroupMembership_X_DictionaryGroupMembership] FOREIGN KEY([ParentGroupID])
REFERENCES [dbo].[X_DictionaryGroup] ([GroupID])
;
ALTER TABLE [dbo].[X_DictionaryGroupMembership] CHECK CONSTRAINT [FK_X_DictionaryGroupMembership_X_DictionaryGroupMembership]
;
ALTER TABLE [dbo].[X_DictionaryPlyAlias]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryPlyAlias_X_DictionaryPlyAlias] FOREIGN KEY([PlyID])
REFERENCES [dbo].[X_DictionaryPly] ([PlyID])
;
ALTER TABLE [dbo].[X_DictionaryPlyAlias] CHECK CONSTRAINT [FK_X_DictionaryPlyAlias_X_DictionaryPlyAlias]
;
ALTER TABLE [dbo].[X_DictionaryProvinceGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryProvinceGroup_X_DictionaryProvinceType] FOREIGN KEY([ParentProvinceTypeID])
REFERENCES [dbo].[X_DictionaryProvinceType] ([ProvinceTypeID])
;
ALTER TABLE [dbo].[X_DictionaryProvinceGroup] CHECK CONSTRAINT [FK_X_DictionaryProvinceGroup_X_DictionaryProvinceType]
;
ALTER TABLE [dbo].[X_DictionarySeamAlias]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionarySeamAlias_X_DictionarySeam] FOREIGN KEY([SeamID])
REFERENCES [dbo].[X_DictionarySeam] ([SeamID])
;
ALTER TABLE [dbo].[X_DictionarySeamAlias] CHECK CONSTRAINT [FK_X_DictionarySeamAlias_X_DictionarySeam]
;
ALTER TABLE [dbo].[X_DictionaryWorkType]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryWorkType_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_DictionaryWorkType] CHECK CONSTRAINT [FK_X_DictionaryWorkType_X_Company]
;
ALTER TABLE [dbo].[X_DictionaryWorkType]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryWorkType_X_DictionaryProfession] FOREIGN KEY([ProfessionID])
REFERENCES [dbo].[X_DictionaryProfession] ([ProfessionID])
;
ALTER TABLE [dbo].[X_DictionaryWorkType] CHECK CONSTRAINT [FK_X_DictionaryWorkType_X_DictionaryProfession]
;
ALTER TABLE [dbo].[X_DictionaryWorkType]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryWorkType_X_DictionaryWorkType1] FOREIGN KEY([WorkTypeID])
REFERENCES [dbo].[X_DictionaryWorkType] ([WorkTypeID])
;
ALTER TABLE [dbo].[X_DictionaryWorkType] CHECK CONSTRAINT [FK_X_DictionaryWorkType_X_DictionaryWorkType1]
;
ALTER TABLE [dbo].[X_DictionaryWorkTypeRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryWorkTypeRelation_X_DictionaryWorkType] FOREIGN KEY([WorkTypeID])
REFERENCES [dbo].[X_DictionaryWorkType] ([WorkTypeID])
;
ALTER TABLE [dbo].[X_DictionaryWorkTypeRelation] CHECK CONSTRAINT [FK_X_DictionaryWorkTypeRelation_X_DictionaryWorkType]
;
ALTER TABLE [dbo].[X_DictionaryWorkTypeRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryWorkTypeRelation_X_DictionaryWorkType1] FOREIGN KEY([ParentWorkTypeID])
REFERENCES [dbo].[X_DictionaryWorkType] ([WorkTypeID])
;
ALTER TABLE [dbo].[X_DictionaryWorkTypeRelation] CHECK CONSTRAINT [FK_X_DictionaryWorkTypeRelation_X_DictionaryWorkType1]
;
ALTER TABLE [dbo].[X_DrillCompanyContract]  WITH CHECK ADD  CONSTRAINT [FK_X_Drill_Company_Contract_X_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
;
ALTER TABLE [dbo].[X_DrillCompanyContract] CHECK CONSTRAINT [FK_X_Drill_Company_Contract_X_Project]
;
ALTER TABLE [dbo].[X_DrillCompanyContract]  WITH CHECK ADD  CONSTRAINT [FK_X_DrillCompanyContract_X_DrillCompany] FOREIGN KEY([DrillingCompanyID])
REFERENCES [dbo].[X_DrillingCompany] ([DrillingCompanyID])
;
ALTER TABLE [dbo].[X_DrillCompanyContract] CHECK CONSTRAINT [FK_X_DrillCompanyContract_X_DrillCompany]
;
ALTER TABLE [dbo].[X_Drilling]  WITH CHECK ADD  CONSTRAINT [FK_X_DrillingData_X_Contact] FOREIGN KEY([DrillerID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_Drilling] CHECK CONSTRAINT [FK_X_DrillingData_X_Contact]
;
ALTER TABLE [dbo].[X_Drilling]  WITH CHECK ADD  CONSTRAINT [FK_X_DrillingData_X_DictionaryDrill_Fluid] FOREIGN KEY([DrillFluidID])
REFERENCES [dbo].[X_DictionaryDrillFluid] ([DrillFluidID])
;
ALTER TABLE [dbo].[X_Drilling] CHECK CONSTRAINT [FK_X_DrillingData_X_DictionaryDrill_Fluid]
;
ALTER TABLE [dbo].[X_Drilling]  WITH CHECK ADD  CONSTRAINT [FK_X_DrillingData_X_DictionaryDrill_Size_Name] FOREIGN KEY([DrillSizeID])
REFERENCES [dbo].[X_DictionaryDrillSize] ([DrillSizeID])
;
ALTER TABLE [dbo].[X_Drilling] CHECK CONSTRAINT [FK_X_DrillingData_X_DictionaryDrill_Size_Name]
;
ALTER TABLE [dbo].[X_Drilling]  WITH CHECK ADD  CONSTRAINT [FK_X_DrillingData_X_DictionaryDrillBitType] FOREIGN KEY([DrillBitTypeID])
REFERENCES [dbo].[X_DictionaryDrillBitType] ([DrillBitTypeID])
;
ALTER TABLE [dbo].[X_Drilling] CHECK CONSTRAINT [FK_X_DrillingData_X_DictionaryDrillBitType]
;
ALTER TABLE [dbo].[X_Drilling]  WITH CHECK ADD  CONSTRAINT [FK_X_DrillingData_X_DictionaryRig_Type] FOREIGN KEY([DrillRigTypeID])
REFERENCES [dbo].[X_DictionaryDrillRigType] ([DrillRigTypeID])
;
ALTER TABLE [dbo].[X_Drilling] CHECK CONSTRAINT [FK_X_DrillingData_X_DictionaryRig_Type]
;
ALTER TABLE [dbo].[X_Drilling]  WITH CHECK ADD  CONSTRAINT [FK_X_DrillingData_X_DrillCompany] FOREIGN KEY([DrillingCompanyID])
REFERENCES [dbo].[X_DrillingCompany] ([DrillingCompanyID])
;
ALTER TABLE [dbo].[X_Drilling] CHECK CONSTRAINT [FK_X_DrillingData_X_DrillCompany]
;
ALTER TABLE [dbo].[X_Drilling]  WITH CHECK ADD  CONSTRAINT [FK_X_DrillingData_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
;
ALTER TABLE [dbo].[X_Drilling] CHECK CONSTRAINT [FK_X_DrillingData_X_Header]
;
ALTER TABLE [dbo].[X_DrillingCompany]  WITH CHECK ADD  CONSTRAINT [FK_X_Drill_Company_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_DrillingCompany] CHECK CONSTRAINT [FK_X_Drill_Company_X_Company]
;
ALTER TABLE [dbo].[X_Experience]  WITH CHECK ADD  CONSTRAINT [FK_X_Experience_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_Experience] CHECK CONSTRAINT [FK_X_Experience_X_Company]
;
ALTER TABLE [dbo].[X_Experience]  WITH CHECK ADD  CONSTRAINT [FK_X_Experience_X_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_Experience] CHECK CONSTRAINT [FK_X_Experience_X_Contact]
;
ALTER TABLE [dbo].[X_Experience]  WITH CHECK ADD  CONSTRAINT [FK_X_Experience_X_DictionaryWorkType] FOREIGN KEY([WorkTypeID])
REFERENCES [dbo].[X_DictionaryWorkType] ([WorkTypeID])
;
ALTER TABLE [dbo].[X_Experience] CHECK CONSTRAINT [FK_X_Experience_X_DictionaryWorkType]
;
ALTER TABLE [dbo].[X_Experience]  WITH CHECK ADD  CONSTRAINT [FK_X_Experience_X_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[X_Location] ([LocationID])
;
ALTER TABLE [dbo].[X_Experience] CHECK CONSTRAINT [FK_X_Experience_X_Location]
;
ALTER TABLE [dbo].[X_Experience]  WITH CHECK ADD  CONSTRAINT [FK_X_Experience_X_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
;
ALTER TABLE [dbo].[X_Experience] CHECK CONSTRAINT [FK_X_Experience_X_Project]
;
ALTER TABLE [dbo].[X_FileData]  WITH CHECK ADD  CONSTRAINT [FK_X_FileID_X_FileID] FOREIGN KEY([ParentFileID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
;
ALTER TABLE [dbo].[X_FileData] CHECK CONSTRAINT [FK_X_FileID_X_FileID]
;
ALTER TABLE [dbo].[X_Geology]  WITH CHECK ADD  CONSTRAINT [FK_X_GeologistData_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
;
ALTER TABLE [dbo].[X_Geology] CHECK CONSTRAINT [FK_X_GeologistData_X_Header]
;
ALTER TABLE [dbo].[X_Geology]  WITH CHECK ADD  CONSTRAINT [FK_X_GeologistData_X_Person] FOREIGN KEY([GeologyContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_Geology] CHECK CONSTRAINT [FK_X_GeologistData_X_Person]
;
ALTER TABLE [dbo].[X_GeologyCompany]  WITH CHECK ADD  CONSTRAINT [FK_X_Geolog_Organiz_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_GeologyCompany] CHECK CONSTRAINT [FK_X_Geolog_Organiz_X_Company]
;
ALTER TABLE [dbo].[X_GeophyicsData]  WITH CHECK ADD  CONSTRAINT [FK_X_GeophyicsData_X_GeophysicsMetadata] FOREIGN KEY([GeophysicsMetadataID])
REFERENCES [dbo].[X_GeophysicsMetadata] ([GeophysicsMetadataID])
;
ALTER TABLE [dbo].[X_GeophyicsData] CHECK CONSTRAINT [FK_X_GeophyicsData_X_GeophysicsMetadata]
;
ALTER TABLE [dbo].[X_Geophysics]  WITH CHECK ADD  CONSTRAINT [FK_X_Geophysics_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
;
ALTER TABLE [dbo].[X_Geophysics] CHECK CONSTRAINT [FK_X_Geophysics_X_Header]
;
ALTER TABLE [dbo].[X_GeophysicsCompany]  WITH CHECK ADD  CONSTRAINT [FK_X_Geophys_Company_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_GeophysicsCompany] CHECK CONSTRAINT [FK_X_Geophys_Company_X_Company]
;
ALTER TABLE [dbo].[X_GeophysicsMetadata]  WITH CHECK ADD  CONSTRAINT [FK_X_GeophysicsMetadata_X_Geophysics] FOREIGN KEY([GeophysicsID])
REFERENCES [dbo].[X_Geophysics] ([GeophysicsID])
;
ALTER TABLE [dbo].[X_GeophysicsMetadata] CHECK CONSTRAINT [FK_X_GeophysicsMetadata_X_Geophysics]
;
ALTER TABLE [dbo].[X_GeophysicsMetadata]  WITH CHECK ADD  CONSTRAINT [FK_X_GeophysicsMetadata_X_Parameter] FOREIGN KEY([ParameterID])
REFERENCES [dbo].[X_Parameter] ([ParameterID])
;
ALTER TABLE [dbo].[X_GeophysicsMetadata] CHECK CONSTRAINT [FK_X_GeophysicsMetadata_X_Parameter]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryData_Status] FOREIGN KEY([DataStatusID])
REFERENCES [dbo].[X_DictionaryDataStatus] ([DataStatusID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryData_Status]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeodetic_Datum] FOREIGN KEY([GeodeticDatumID])
REFERENCES [dbo].[X_DictionaryGeodeticDatum] ([GeodeticDatumID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeodetic_Datum]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log] FOREIGN KEY([GeophysicalLogTypeID1])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log1] FOREIGN KEY([GeophysicalLogTypeID10])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log1]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log10] FOREIGN KEY([GeophysicalLogTypeID8])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log10]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log11] FOREIGN KEY([GeophysicalLogTypeID9])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log11]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log2] FOREIGN KEY([GeophysicalLogTypeID11])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log2]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log3] FOREIGN KEY([GeophysicalLogTypeID12])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log3]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log4] FOREIGN KEY([GeophysicalLogTypeID2])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log4]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log5] FOREIGN KEY([GeophysicalLogTypeID3])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log5]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log6] FOREIGN KEY([GeophysicalLogTypeID4])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log6]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log7] FOREIGN KEY([GeophysicalLogTypeID5])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log7]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log8] FOREIGN KEY([GeophysicalLogTypeID6])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log8]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log9] FOREIGN KEY([GeophysicalLogTypeID7])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log9]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryHeight_Datum] FOREIGN KEY([HeightDatumID])
REFERENCES [dbo].[X_DictionaryHeightDatum] ([HeightDatumID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryHeight_Datum]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryHole_Purpose] FOREIGN KEY([PrimaryHolePurposeID])
REFERENCES [dbo].[X_DictionaryHolePurpose] ([HolePurposeID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryHole_Purpose]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryHole_Purpose1] FOREIGN KEY([SecondaryHolePurposeID])
REFERENCES [dbo].[X_DictionaryHolePurpose] ([HolePurposeID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryHole_Purpose1]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryHole_Status] FOREIGN KEY([HoleStatusID])
REFERENCES [dbo].[X_DictionaryHoleStatus] ([HoleStatusID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryHole_Status]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryHole_Type] FOREIGN KEY([HoleTypeID])
REFERENCES [dbo].[X_DictionaryHoleType] ([HoleTypeID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryHole_Type]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionarySurvey_Accuracy] FOREIGN KEY([SurveyAccuracyID])
REFERENCES [dbo].[X_DictionarySurveyAccuracy] ([SurveyAccuracyID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionarySurvey_Accuracy]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_Geolog_Organiz] FOREIGN KEY([GeologyCompanyID])
REFERENCES [dbo].[X_GeologyCompany] ([GeologyCompanyID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_Geolog_Organiz]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_Geophys_Company] FOREIGN KEY([GeophysicalLoggingCompanyID])
REFERENCES [dbo].[X_GeophysicsCompany] ([GeophysicsCompanyID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_Geophys_Company]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_Person] FOREIGN KEY([GeophysicalLoggerID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_Person]
;
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
;
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_Project]
;
ALTER TABLE [dbo].[X_HeaderRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_HeaderRelation_X_DictionaryRelationType] FOREIGN KEY([RelationTypeID])
REFERENCES [dbo].[X_DictionaryRelationType] ([RelationTypeID])
;
ALTER TABLE [dbo].[X_HeaderRelation] CHECK CONSTRAINT [FK_X_HeaderRelation_X_DictionaryRelationType]
;
ALTER TABLE [dbo].[X_HeaderRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_HeaderRelation_X_Header] FOREIGN KEY([OriginalHeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
;
ALTER TABLE [dbo].[X_HeaderRelation] CHECK CONSTRAINT [FK_X_HeaderRelation_X_Header]
;
ALTER TABLE [dbo].[X_HeaderRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_HeaderRelation_X_Header1] FOREIGN KEY([RelatedHeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
;
ALTER TABLE [dbo].[X_HeaderRelation] CHECK CONSTRAINT [FK_X_HeaderRelation_X_Header1]
;
ALTER TABLE [dbo].[X_LabCompany]  WITH CHECK ADD  CONSTRAINT [FK_X_Assay_Company_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_LabCompany] CHECK CONSTRAINT [FK_X_Assay_Company_X_Company]
;
ALTER TABLE [dbo].[X_Lease]  WITH CHECK ADD  CONSTRAINT [FK_X_Lease_X_Company] FOREIGN KEY([OwnerCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_Lease] CHECK CONSTRAINT [FK_X_Lease_X_Company]
;
ALTER TABLE [dbo].[X_Lease]  WITH CHECK ADD  CONSTRAINT [FK_X_Lease_X_Contact] FOREIGN KEY([ApprovedByContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_Lease] CHECK CONSTRAINT [FK_X_Lease_X_Contact]
;
ALTER TABLE [dbo].[X_Lease]  WITH CHECK ADD  CONSTRAINT [FK_X_Lease_X_Tenement] FOREIGN KEY([TenementID])
REFERENCES [dbo].[X_Tenement] ([TenementID])
;
ALTER TABLE [dbo].[X_Lease] CHECK CONSTRAINT [FK_X_Lease_X_Tenement]
;
ALTER TABLE [dbo].[X_LeaseApplication]  WITH CHECK ADD  CONSTRAINT [FK_X_LeaseApplication_X_Company] FOREIGN KEY([OwnerCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_LeaseApplication] CHECK CONSTRAINT [FK_X_LeaseApplication_X_Company]
;
ALTER TABLE [dbo].[X_LeaseApplication]  WITH CHECK ADD  CONSTRAINT [FK_X_LeaseApplication_X_Contact] FOREIGN KEY([ApprovedByContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_LeaseApplication] CHECK CONSTRAINT [FK_X_LeaseApplication_X_Contact]
;
ALTER TABLE [dbo].[X_LeaseApplication]  WITH CHECK ADD  CONSTRAINT [FK_X_LeaseApplication_X_DictionaryLeaseApplicationType] FOREIGN KEY([LeaseApplicationTypeID])
REFERENCES [dbo].[X_DictionaryLeaseApplicationType] ([LeaseApplicationTypeID])
;
ALTER TABLE [dbo].[X_LeaseApplication] CHECK CONSTRAINT [FK_X_LeaseApplication_X_DictionaryLeaseApplicationType]
;
ALTER TABLE [dbo].[X_LeaseApplication]  WITH CHECK ADD  CONSTRAINT [FK_X_LeaseApplication_X_Tenement] FOREIGN KEY([TenementID])
REFERENCES [dbo].[X_Tenement] ([TenementID])
;
ALTER TABLE [dbo].[X_LeaseApplication] CHECK CONSTRAINT [FK_X_LeaseApplication_X_Tenement]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_Lithology_X_DictionaryAdjective] FOREIGN KEY([AdjectiveID1])
REFERENCES [dbo].[X_DictionaryAdjective] ([AdjectiveID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_Lithology_X_DictionaryAdjective]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_Lithology_X_DictionaryDomain] FOREIGN KEY([DomainID])
REFERENCES [dbo].[X_DictionaryDomain] ([DomainID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_Lithology_X_DictionaryDomain]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_Lithology_X_DictionaryHorizon] FOREIGN KEY([HorizonID])
REFERENCES [dbo].[X_DictionaryHorizon] ([HorizonID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_Lithology_X_DictionaryHorizon]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_Lithology_X_DictionaryPly] FOREIGN KEY([PlyID])
REFERENCES [dbo].[X_DictionaryPly] ([PlyID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_Lithology_X_DictionaryPly]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_Lithology_X_DictionarySeam] FOREIGN KEY([SeamID])
REFERENCES [dbo].[X_DictionarySeam] ([SeamID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_Lithology_X_DictionarySeam]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_Lithology_X_DictionaryStratigraphy] FOREIGN KEY([StratigraphyID])
REFERENCES [dbo].[X_DictionaryStratigraphy] ([StratigraphyID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_Lithology_X_DictionaryStratigraphy]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryAdjective1] FOREIGN KEY([AdjectiveID2])
REFERENCES [dbo].[X_DictionaryAdjective] ([AdjectiveID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryAdjective1]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryAdjective2] FOREIGN KEY([AdjectiveID3])
REFERENCES [dbo].[X_DictionaryAdjective] ([AdjectiveID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryAdjective2]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryAdjective3] FOREIGN KEY([AdjectiveID4])
REFERENCES [dbo].[X_DictionaryAdjective] ([AdjectiveID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryAdjective3]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryBasal_Contact] FOREIGN KEY([BasalContactID])
REFERENCES [dbo].[X_DictionaryBasalContact] ([BasalContactID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryBasal_Contact]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryBed_Spacing] FOREIGN KEY([BedSpacingID])
REFERENCES [dbo].[X_DictionaryBedSpacing] ([BedSpacingID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryBed_Spacing]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryColour] FOREIGN KEY([ColourID])
REFERENCES [dbo].[X_DictionaryColour] ([ColourID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryColour]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryCore_State] FOREIGN KEY([CoreStateID])
REFERENCES [dbo].[X_DictionaryCoreState] ([CoreStateID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryCore_State]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryDefect_Intact] FOREIGN KEY([DefectCompletenessID])
REFERENCES [dbo].[X_DictionaryDefectCompleteness] ([DefectCompletenessID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryDefect_Intact]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryDefect_Spacing] FOREIGN KEY([DefectSpacingID])
REFERENCES [dbo].[X_DictionaryDefectSpacing] ([DefectSpacingID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryDefect_Spacing]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryDefect_Type] FOREIGN KEY([DefectTypeID])
REFERENCES [dbo].[X_DictionaryDefectType] ([DefectTypeID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryDefect_Type]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryEst_Strength] FOREIGN KEY([EstimatedStrengthID])
REFERENCES [dbo].[X_DictionaryEstimatedStrength] ([EstimatedStrengthID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryEst_Strength]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryGas] FOREIGN KEY([GasDetectedID])
REFERENCES [dbo].[X_DictionaryGasDetected] ([GasDetectedID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryGas]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryHue] FOREIGN KEY([HueID])
REFERENCES [dbo].[X_DictionaryHue] ([HueID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryHue]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryInterval_Status] FOREIGN KEY([IntervalStatusID])
REFERENCES [dbo].[X_DictionaryIntervalStatus] ([IntervalStatusID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryInterval_Status]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryLitho_Interrel] FOREIGN KEY([LithologyInterrelationID])
REFERENCES [dbo].[X_DictionaryLithologyInterrelation] ([LithologyInterralationID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryLitho_Interrel]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryLitho_Qual] FOREIGN KEY([LithologyQualifierID])
REFERENCES [dbo].[X_DictionaryLithologyQualifier] ([LithologyQualifierID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryLitho_Qual]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryLitho_Type] FOREIGN KEY([LithologyTypeID])
REFERENCES [dbo].[X_DictionaryLithologyType] ([LithologyTypeID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryLitho_Type]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryMech_State] FOREIGN KEY([MechanicalStateID])
REFERENCES [dbo].[X_DictionaryMechanicalState] ([MechanicalStateID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryMech_State]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryMin_Fos_Abund] FOREIGN KEY([MineralAndFossilAbundanceID])
REFERENCES [dbo].[X_DictionaryMineralAndFossilAbundance] ([MineralAndFossilAbundanceID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryMin_Fos_Abund]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryMin_Fos_Assoc] FOREIGN KEY([MineralAndFossilAssociationID])
REFERENCES [dbo].[X_DictionaryMineralAndFossilAssociation] ([MineralAndFossilAssociationID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryMin_Fos_Assoc]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryMin_Fos_Type] FOREIGN KEY([MineralAndFossilTypeID])
REFERENCES [dbo].[X_DictionaryMineralAndFossilType] ([MineralAndFossilTypeID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryMin_Fos_Type]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionarySample_Type] FOREIGN KEY([SampleTypeID])
REFERENCES [dbo].[X_DictionarySampleType] ([SampleTypeID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionarySample_Type]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionarySed_Feature] FOREIGN KEY([SedimentaryFeature1ID])
REFERENCES [dbo].[X_DictionarySedimentaryFeature] ([SedimentaryFeatureID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionarySed_Feature]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionarySed_Feature1] FOREIGN KEY([SedimentaryFeature2ID])
REFERENCES [dbo].[X_DictionarySedimentaryFeature] ([SedimentaryFeatureID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionarySed_Feature1]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryShade] FOREIGN KEY([ShadeID])
REFERENCES [dbo].[X_DictionaryShade] ([ShadeID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryShade]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryTexture] FOREIGN KEY([TextureID])
REFERENCES [dbo].[X_DictionaryTexture] ([TextureID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryTexture]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryWeathering] FOREIGN KEY([WeatheringID])
REFERENCES [dbo].[X_DictionaryWeathering] ([WeatheringID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryWeathering]
;
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
;
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_Header]
;
ALTER TABLE [dbo].[X_Location]  WITH CHECK ADD  CONSTRAINT [FK_X_Location_X_Company] FOREIGN KEY([OwnerCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_Location] CHECK CONSTRAINT [FK_X_Location_X_Company]
;
ALTER TABLE [dbo].[X_Location]  WITH CHECK ADD  CONSTRAINT [FK_X_Location_X_Contact] FOREIGN KEY([ResponsibleContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_Location] CHECK CONSTRAINT [FK_X_Location_X_Contact]
;
ALTER TABLE [dbo].[X_Location]  WITH CHECK ADD  CONSTRAINT [FK_X_Location_X_DictionaryCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
;
ALTER TABLE [dbo].[X_Location] CHECK CONSTRAINT [FK_X_Location_X_DictionaryCountry]
;
ALTER TABLE [dbo].[X_Location]  WITH CHECK ADD  CONSTRAINT [FK_X_Location_X_DictionaryCountryState] FOREIGN KEY([CountryStateID])
REFERENCES [dbo].[X_DictionaryCountryState] ([CountryStateID])
;
ALTER TABLE [dbo].[X_Location] CHECK CONSTRAINT [FK_X_Location_X_DictionaryCountryState]
;
ALTER TABLE [dbo].[X_Location]  WITH CHECK ADD  CONSTRAINT [FK_X_Location_X_DictionaryLocationType] FOREIGN KEY([LocationType])
REFERENCES [dbo].[X_DictionaryLocationType] ([LocationTypeID])
;
ALTER TABLE [dbo].[X_Location] CHECK CONSTRAINT [FK_X_Location_X_DictionaryLocationType]
;
ALTER TABLE [dbo].[X_LocationAlias]  WITH CHECK ADD  CONSTRAINT [FK_X_LocationAlias_X_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[X_Location] ([LocationID])
;
ALTER TABLE [dbo].[X_LocationAlias] CHECK CONSTRAINT [FK_X_LocationAlias_X_Location]
;
ALTER TABLE [dbo].[X_MetaDataRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_MetaDataRelation_X_MetaData] FOREIGN KEY([MetaDataID])
REFERENCES [dbo].[X_MetaData] ([MetaDataID])
;
ALTER TABLE [dbo].[X_MetaDataRelation] CHECK CONSTRAINT [FK_X_MetaDataRelation_X_MetaData]
;
ALTER TABLE [dbo].[X_Mineralogy]  WITH CHECK ADD  CONSTRAINT [FK_X_Mineralogy_X_DictionaryMin_Abundance] FOREIGN KEY([MineralAbundanceID])
REFERENCES [dbo].[X_DictionaryMineralAbundance] ([MineralAbundanceID])
;
ALTER TABLE [dbo].[X_Mineralogy] CHECK CONSTRAINT [FK_X_Mineralogy_X_DictionaryMin_Abundance]
;
ALTER TABLE [dbo].[X_Mineralogy]  WITH CHECK ADD  CONSTRAINT [FK_X_Mineralogy_X_DictionaryMin_Form] FOREIGN KEY([MineralFormID])
REFERENCES [dbo].[X_DictionaryMineralForm] ([MineralFormID])
;
ALTER TABLE [dbo].[X_Mineralogy] CHECK CONSTRAINT [FK_X_Mineralogy_X_DictionaryMin_Form]
;
ALTER TABLE [dbo].[X_Mineralogy]  WITH CHECK ADD  CONSTRAINT [FK_X_Mineralogy_X_DictionaryMin_Style] FOREIGN KEY([MineralStyleID])
REFERENCES [dbo].[X_DictionaryMineralStyle] ([MineralStyleID])
;
ALTER TABLE [dbo].[X_Mineralogy] CHECK CONSTRAINT [FK_X_Mineralogy_X_DictionaryMin_Style]
;
ALTER TABLE [dbo].[X_Mineralogy]  WITH CHECK ADD  CONSTRAINT [FK_X_Mineralogy_X_DictionaryMin_Type] FOREIGN KEY([MineralTypeID])
REFERENCES [dbo].[X_DictionaryMineralType] ([MineralTypeID])
;
ALTER TABLE [dbo].[X_Mineralogy] CHECK CONSTRAINT [FK_X_Mineralogy_X_DictionaryMin_Type]
;
ALTER TABLE [dbo].[X_Mineralogy]  WITH CHECK ADD  CONSTRAINT [FK_X_Mineralogy_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
;
ALTER TABLE [dbo].[X_Mineralogy] CHECK CONSTRAINT [FK_X_Mineralogy_X_Header]
;
ALTER TABLE [dbo].[X_Parameter]  WITH CHECK ADD  CONSTRAINT [FK_X_CompositeData_X_DictionaryUnit] FOREIGN KEY([UnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
;
ALTER TABLE [dbo].[X_Parameter] CHECK CONSTRAINT [FK_X_CompositeData_X_DictionaryUnit]
;
ALTER TABLE [dbo].[X_ParameterDuplicate]  WITH CHECK ADD  CONSTRAINT [FK_X_ParameterDuplicate_X_Parameter] FOREIGN KEY([Parameter1ID])
REFERENCES [dbo].[X_Parameter] ([ParameterID])
;
ALTER TABLE [dbo].[X_ParameterDuplicate] CHECK CONSTRAINT [FK_X_ParameterDuplicate_X_Parameter]
;
ALTER TABLE [dbo].[X_ParameterDuplicate]  WITH CHECK ADD  CONSTRAINT [FK_X_ParameterDuplicate_X_Parameter1] FOREIGN KEY([Parameter2ID])
REFERENCES [dbo].[X_Parameter] ([ParameterID])
;
ALTER TABLE [dbo].[X_ParameterDuplicate] CHECK CONSTRAINT [FK_X_ParameterDuplicate_X_Parameter1]
;
ALTER TABLE [dbo].[X_ParameterGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_ParameterGroup_X_DictionaryGroup] FOREIGN KEY([GroupID])
REFERENCES [dbo].[X_DictionaryGroup] ([GroupID])
;
ALTER TABLE [dbo].[X_ParameterGroup] CHECK CONSTRAINT [FK_X_ParameterGroup_X_DictionaryGroup]
;
ALTER TABLE [dbo].[X_ParameterGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_ParameterGroup_X_ParameterGroup] FOREIGN KEY([ParameterID])
REFERENCES [dbo].[X_Parameter] ([ParameterID])
;
ALTER TABLE [dbo].[X_ParameterGroup] CHECK CONSTRAINT [FK_X_ParameterGroup_X_ParameterGroup]
;
ALTER TABLE [dbo].[X_PointLoad]  WITH CHECK ADD  CONSTRAINT [FK_X_PointLoadData_X_DictionaryFailure_Mode] FOREIGN KEY([FailureModeID])
REFERENCES [dbo].[X_DictionaryFailureMode] ([FailureModeID])
;
ALTER TABLE [dbo].[X_PointLoad] CHECK CONSTRAINT [FK_X_PointLoadData_X_DictionaryFailure_Mode]
;
ALTER TABLE [dbo].[X_PointLoad]  WITH CHECK ADD  CONSTRAINT [FK_X_PointLoadData_X_DictionaryPL_Test_Type] FOREIGN KEY([PointLoadTestTypeID])
REFERENCES [dbo].[X_DictionaryPointLoadTestType] ([PointLoadTestTypeID])
;
ALTER TABLE [dbo].[X_PointLoad] CHECK CONSTRAINT [FK_X_PointLoadData_X_DictionaryPL_Test_Type]
;
ALTER TABLE [dbo].[X_PointLoad]  WITH CHECK ADD  CONSTRAINT [FK_X_PointLoadData_X_DictionarySample_State] FOREIGN KEY([SampleStateID])
REFERENCES [dbo].[X_DictionarySampleState] ([SampleStateID])
;
ALTER TABLE [dbo].[X_PointLoad] CHECK CONSTRAINT [FK_X_PointLoadData_X_DictionarySample_State]
;
ALTER TABLE [dbo].[X_PointLoad]  WITH CHECK ADD  CONSTRAINT [FK_X_PointLoadData_X_DictionarySample_Type] FOREIGN KEY([SampleTypeID])
REFERENCES [dbo].[X_DictionarySampleType] ([SampleTypeID])
;
ALTER TABLE [dbo].[X_PointLoad] CHECK CONSTRAINT [FK_X_PointLoadData_X_DictionarySample_Type]
;
ALTER TABLE [dbo].[X_PointLoad]  WITH CHECK ADD  CONSTRAINT [FK_X_PointLoadData_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
;
ALTER TABLE [dbo].[X_PointLoad] CHECK CONSTRAINT [FK_X_PointLoadData_X_Header]
;
ALTER TABLE [dbo].[X_Project]  WITH CHECK ADD  CONSTRAINT [FK_X_Project_X_Company] FOREIGN KEY([ClientCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_Project] CHECK CONSTRAINT [FK_X_Project_X_Company]
;
ALTER TABLE [dbo].[X_Project]  WITH CHECK ADD  CONSTRAINT [FK_X_Project_X_Tenement] FOREIGN KEY([TenementID])
REFERENCES [dbo].[X_Tenement] ([TenementID])
;
ALTER TABLE [dbo].[X_Project] CHECK CONSTRAINT [FK_X_Project_X_Tenement]
;
ALTER TABLE [dbo].[X_ProjectPlan]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlan_X_Contact] FOREIGN KEY([ResponsibleContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_ProjectPlan] CHECK CONSTRAINT [FK_X_ProjectPlan_X_Contact]
;
ALTER TABLE [dbo].[X_ProjectPlan]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlan_X_ProjectPlan] FOREIGN KEY([ParentProjectPlanID])
REFERENCES [dbo].[X_ProjectPlan] ([ProjectPlanID])
;
ALTER TABLE [dbo].[X_ProjectPlan] CHECK CONSTRAINT [FK_X_ProjectPlan_X_ProjectPlan]
;
ALTER TABLE [dbo].[X_ProjectPlanTask]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTask_X_ProjectPlan] FOREIGN KEY([ProjectPlanID])
REFERENCES [dbo].[X_ProjectPlan] ([ProjectPlanID])
;
ALTER TABLE [dbo].[X_ProjectPlanTask] CHECK CONSTRAINT [FK_X_ProjectPlanTask_X_ProjectPlan]
;
ALTER TABLE [dbo].[X_ProjectPlanTask]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTask_X_ProjectPlanTask] FOREIGN KEY([ParentProjectTaskID])
REFERENCES [dbo].[X_ProjectPlanTask] ([ProjectPlanTaskID])
;
ALTER TABLE [dbo].[X_ProjectPlanTask] CHECK CONSTRAINT [FK_X_ProjectPlanTask_X_ProjectPlanTask]
;
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTaskResponse_X_Contact] FOREIGN KEY([ResponsibleContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse] CHECK CONSTRAINT [FK_X_ProjectPlanTaskResponse_X_Contact]
;
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTaskResponse_X_ProjectPlanTask] FOREIGN KEY([ProjectPlanTaskID])
REFERENCES [dbo].[X_ProjectPlanTask] ([ProjectPlanTaskID])
;
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse] CHECK CONSTRAINT [FK_X_ProjectPlanTaskResponse_X_ProjectPlanTask]
;
ALTER TABLE [dbo].[X_ProjectPlanTaskWorker]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTaskWorker_X_ProjectPlanTask] FOREIGN KEY([ProjectPlanTaskID])
REFERENCES [dbo].[X_ProjectPlanTask] ([ProjectPlanTaskID])
;
ALTER TABLE [dbo].[X_ProjectPlanTaskWorker] CHECK CONSTRAINT [FK_X_ProjectPlanTaskWorker_X_ProjectPlanTask]
;
ALTER TABLE [dbo].[X_ProjectPlanTaskWorker]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTaskWorker_X_Worker] FOREIGN KEY([WorkerID])
REFERENCES [dbo].[X_Worker] ([WorkerID])
;
ALTER TABLE [dbo].[X_ProjectPlanTaskWorker] CHECK CONSTRAINT [FK_X_ProjectPlanTaskWorker_X_Worker]
;
ALTER TABLE [dbo].[X_Prospectus]  WITH CHECK ADD  CONSTRAINT [FK_X_Prospectus_X_Tenement] FOREIGN KEY([TenementID])
REFERENCES [dbo].[X_Tenement] ([TenementID])
;
ALTER TABLE [dbo].[X_Prospectus] CHECK CONSTRAINT [FK_X_Prospectus_X_Tenement]
;
ALTER TABLE [dbo].[X_ProspectusProject]  WITH CHECK ADD  CONSTRAINT [FK_X_ProspectusProject_X_DictionaryCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
;
ALTER TABLE [dbo].[X_ProspectusProject] CHECK CONSTRAINT [FK_X_ProspectusProject_X_DictionaryCountry]
;
ALTER TABLE [dbo].[X_ProspectusProject]  WITH CHECK ADD  CONSTRAINT [FK_X_ProspectusProject_X_Prospectus] FOREIGN KEY([ProspectusID])
REFERENCES [dbo].[X_Prospectus] ([ProspectusID])
;
ALTER TABLE [dbo].[X_ProspectusProject] CHECK CONSTRAINT [FK_X_ProspectusProject_X_Prospectus]
;
ALTER TABLE [dbo].[X_ProspectusProjectCommodity]  WITH CHECK ADD  CONSTRAINT [FK_X_ProspectusProjectCommodityID_X_DictionaryCommodity] FOREIGN KEY([CommodityID])
REFERENCES [dbo].[X_DictionaryCommodity] ([CommodityID])
;
ALTER TABLE [dbo].[X_ProspectusProjectCommodity] CHECK CONSTRAINT [FK_X_ProspectusProjectCommodityID_X_DictionaryCommodity]
;
ALTER TABLE [dbo].[X_ProspectusProjectCommodity]  WITH CHECK ADD  CONSTRAINT [FK_X_ProspectusProjectCommodityID_X_ProspectusProject] FOREIGN KEY([ProspectusProjectID])
REFERENCES [dbo].[X_ProspectusProject] ([ProspectusProjectID])
;
ALTER TABLE [dbo].[X_ProspectusProjectCommodity] CHECK CONSTRAINT [FK_X_ProspectusProjectCommodityID_X_ProspectusProject]
;
ALTER TABLE [dbo].[X_ProspectusProjectProvince]  WITH CHECK ADD  CONSTRAINT [FK_X_ProspectusProjectProvince_X_ProspectusProject] FOREIGN KEY([ProspectusProjectID])
REFERENCES [dbo].[X_ProspectusProject] ([ProspectusProjectID])
;
ALTER TABLE [dbo].[X_ProspectusProjectProvince] CHECK CONSTRAINT [FK_X_ProspectusProjectProvince_X_ProspectusProject]
;
ALTER TABLE [dbo].[X_ProspectusProjectProvince]  WITH CHECK ADD  CONSTRAINT [FK_X_ProspectusProjectProvince_X_Province] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[X_Province] ([ProvinceID])
;
ALTER TABLE [dbo].[X_ProspectusProjectProvince] CHECK CONSTRAINT [FK_X_ProspectusProjectProvince_X_Province]
;
ALTER TABLE [dbo].[X_Province]  WITH CHECK ADD  CONSTRAINT [FK_X_Province_X_Company] FOREIGN KEY([OwnerCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_Province] CHECK CONSTRAINT [FK_X_Province_X_Company]
;
ALTER TABLE [dbo].[X_Province]  WITH CHECK ADD  CONSTRAINT [FK_X_Province_X_Contact] FOREIGN KEY([ApprovedByContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_Province] CHECK CONSTRAINT [FK_X_Province_X_Contact]
;
ALTER TABLE [dbo].[X_Province]  WITH CHECK ADD  CONSTRAINT [FK_X_Province_X_DictionaryCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
;
ALTER TABLE [dbo].[X_Province] CHECK CONSTRAINT [FK_X_Province_X_DictionaryCountry]
;
ALTER TABLE [dbo].[X_Province]  WITH CHECK ADD  CONSTRAINT [FK_X_Province_X_DictionaryCountryState] FOREIGN KEY([CountryStateID])
REFERENCES [dbo].[X_DictionaryCountryState] ([CountryStateID])
;
ALTER TABLE [dbo].[X_Province] CHECK CONSTRAINT [FK_X_Province_X_DictionaryCountryState]
;
ALTER TABLE [dbo].[X_Province]  WITH CHECK ADD  CONSTRAINT [FK_X_Province_X_DictionaryProvinceGroup] FOREIGN KEY([ProvinceGroupID])
REFERENCES [dbo].[X_DictionaryProvinceGroup] ([ProvinceGroupID])
;
ALTER TABLE [dbo].[X_Province] CHECK CONSTRAINT [FK_X_Province_X_DictionaryProvinceGroup]
;
ALTER TABLE [dbo].[X_Province]  WITH CHECK ADD  CONSTRAINT [FK_X_Province_X_DictionaryProvinceType] FOREIGN KEY([ProvinceTypeID])
REFERENCES [dbo].[X_DictionaryProvinceType] ([ProvinceTypeID])
;
ALTER TABLE [dbo].[X_Province] CHECK CONSTRAINT [FK_X_Province_X_DictionaryProvinceType]
;
ALTER TABLE [dbo].[X_Recovery]  WITH CHECK ADD  CONSTRAINT [FK_X_RecoveryData_X_DictionaryDrill_Size_Name] FOREIGN KEY([DrillSizeID])
REFERENCES [dbo].[X_DictionaryDrillSize] ([DrillSizeID])
;
ALTER TABLE [dbo].[X_Recovery] CHECK CONSTRAINT [FK_X_RecoveryData_X_DictionaryDrill_Size_Name]
;
ALTER TABLE [dbo].[X_Recovery]  WITH CHECK ADD  CONSTRAINT [FK_X_RecoveryData_X_Header1] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
;
ALTER TABLE [dbo].[X_Recovery] CHECK CONSTRAINT [FK_X_RecoveryData_X_Header1]
;
ALTER TABLE [dbo].[X_SecurityBlacklist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityBlacklist_X_Company] FOREIGN KEY([OwnerCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_SecurityBlacklist] CHECK CONSTRAINT [FK_X_SecurityBlacklist_X_Company]
;
ALTER TABLE [dbo].[X_SecurityBlacklist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityBlacklist_X_Company1] FOREIGN KEY([AccessorCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_SecurityBlacklist] CHECK CONSTRAINT [FK_X_SecurityBlacklist_X_Company1]
;
ALTER TABLE [dbo].[X_SecurityBlacklist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityBlacklist_X_Contact] FOREIGN KEY([AccessorContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_SecurityBlacklist] CHECK CONSTRAINT [FK_X_SecurityBlacklist_X_Contact]
;
ALTER TABLE [dbo].[X_SecurityBlacklist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityBlacklist_X_Project] FOREIGN KEY([OwnerProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
;
ALTER TABLE [dbo].[X_SecurityBlacklist] CHECK CONSTRAINT [FK_X_SecurityBlacklist_X_Project]
;
ALTER TABLE [dbo].[X_SecurityBlacklist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityBlacklist_X_Project1] FOREIGN KEY([AccessorProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
;
ALTER TABLE [dbo].[X_SecurityBlacklist] CHECK CONSTRAINT [FK_X_SecurityBlacklist_X_Project1]
;
ALTER TABLE [dbo].[X_SecurityWhitelist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityWhitelist_X_Company] FOREIGN KEY([OwnerCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_SecurityWhitelist] CHECK CONSTRAINT [FK_X_SecurityWhitelist_X_Company]
;
ALTER TABLE [dbo].[X_SecurityWhitelist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityWhitelist_X_Company1] FOREIGN KEY([AccessorCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_SecurityWhitelist] CHECK CONSTRAINT [FK_X_SecurityWhitelist_X_Company1]
;
ALTER TABLE [dbo].[X_SecurityWhitelist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityWhitelist_X_Contact] FOREIGN KEY([AccessorContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_SecurityWhitelist] CHECK CONSTRAINT [FK_X_SecurityWhitelist_X_Contact]
;
ALTER TABLE [dbo].[X_SecurityWhitelist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityWhitelist_X_Contact1] FOREIGN KEY([AccessorContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_SecurityWhitelist] CHECK CONSTRAINT [FK_X_SecurityWhitelist_X_Contact1]
;
ALTER TABLE [dbo].[X_SecurityWhitelist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityWhitelist_X_Project] FOREIGN KEY([OwnerProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
;
ALTER TABLE [dbo].[X_SecurityWhitelist] CHECK CONSTRAINT [FK_X_SecurityWhitelist_X_Project]
;
ALTER TABLE [dbo].[X_SecurityWhitelist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityWhitelist_X_Project1] FOREIGN KEY([AccessorProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
;
ALTER TABLE [dbo].[X_SecurityWhitelist] CHECK CONSTRAINT [FK_X_SecurityWhitelist_X_Project1]
;
ALTER TABLE [dbo].[X_Survey]  WITH CHECK ADD  CONSTRAINT [FK_X_Survey_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
;
ALTER TABLE [dbo].[X_Survey] CHECK CONSTRAINT [FK_X_Survey_X_Header]
;
ALTER TABLE [dbo].[X_Survey]  WITH CHECK ADD  CONSTRAINT [FK_X_Survey_X_Person] FOREIGN KEY([SurveyContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_Survey] CHECK CONSTRAINT [FK_X_Survey_X_Person]
;
ALTER TABLE [dbo].[X_Survey]  WITH CHECK ADD  CONSTRAINT [FK_X_Survey_X_SurveyCompany] FOREIGN KEY([SurveyCompanyID])
REFERENCES [dbo].[X_SurveyCompany] ([SurveyCompanyID])
;
ALTER TABLE [dbo].[X_Survey] CHECK CONSTRAINT [FK_X_Survey_X_SurveyCompany]
;
ALTER TABLE [dbo].[X_SurveyCompany]  WITH CHECK ADD  CONSTRAINT [FK_X_Survey_Company_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_SurveyCompany] CHECK CONSTRAINT [FK_X_Survey_Company_X_Company]
;
ALTER TABLE [dbo].[X_Tenement]  WITH CHECK ADD  CONSTRAINT [FK_X_Tenement_X_Company] FOREIGN KEY([OwnerCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_Tenement] CHECK CONSTRAINT [FK_X_Tenement_X_Company]
;
ALTER TABLE [dbo].[X_Tenement]  WITH CHECK ADD  CONSTRAINT [FK_X_Tenement_X_Contact] FOREIGN KEY([ApprovedByContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_Tenement] CHECK CONSTRAINT [FK_X_Tenement_X_Contact]
;
ALTER TABLE [dbo].[X_Tenement]  WITH CHECK ADD  CONSTRAINT [FK_X_Tenement_X_DictionaryCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
;
ALTER TABLE [dbo].[X_Tenement] CHECK CONSTRAINT [FK_X_Tenement_X_DictionaryCountry]
;
ALTER TABLE [dbo].[X_TenementCommodity]  WITH CHECK ADD  CONSTRAINT [FK_X_TenementCommodityID_X_Commodity] FOREIGN KEY([CommodityID])
REFERENCES [dbo].[X_DictionaryCommodity] ([CommodityID])
;
ALTER TABLE [dbo].[X_TenementCommodity] CHECK CONSTRAINT [FK_X_TenementCommodityID_X_Commodity]
;
ALTER TABLE [dbo].[X_TenementCommodity]  WITH CHECK ADD  CONSTRAINT [FK_X_TenementCommodityID_X_Tenement] FOREIGN KEY([TenementID])
REFERENCES [dbo].[X_Tenement] ([TenementID])
;
ALTER TABLE [dbo].[X_TenementCommodity] CHECK CONSTRAINT [FK_X_TenementCommodityID_X_Tenement]
;
ALTER TABLE [dbo].[X_TenementProvince]  WITH CHECK ADD  CONSTRAINT [FK_X_TenementProvince_X_Province] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[X_Province] ([ProvinceID])
;
ALTER TABLE [dbo].[X_TenementProvince] CHECK CONSTRAINT [FK_X_TenementProvince_X_Province]
;
ALTER TABLE [dbo].[X_TenementProvince]  WITH CHECK ADD  CONSTRAINT [FK_X_TenementProvince_X_Tenement] FOREIGN KEY([TenementID])
REFERENCES [dbo].[X_Tenement] ([TenementID])
;
ALTER TABLE [dbo].[X_TenementProvince] CHECK CONSTRAINT [FK_X_TenementProvince_X_Tenement]
;
ALTER TABLE [dbo].[X_TenementRelation]  WITH CHECK ADD  CONSTRAINT [FK_x_TenementRelation_X_Tenement] FOREIGN KEY([TenementID])
REFERENCES [dbo].[X_Tenement] ([TenementID])
;
ALTER TABLE [dbo].[X_TenementRelation] CHECK CONSTRAINT [FK_x_TenementRelation_X_Tenement]
;
ALTER TABLE [dbo].[X_TenementRelation]  WITH CHECK ADD  CONSTRAINT [FK_x_TenementRelation_X_Tenement1] FOREIGN KEY([ParentTenementID])
REFERENCES [dbo].[X_Tenement] ([TenementID])
;
ALTER TABLE [dbo].[X_TenementRelation] CHECK CONSTRAINT [FK_x_TenementRelation_X_Tenement1]
;
ALTER TABLE [dbo].[X_UsageAudit]  WITH CHECK ADD  CONSTRAINT [FK_X_UsageAudit_X_DictionaryUsageAuditType] FOREIGN KEY([UsageAuditTypeID])
REFERENCES [dbo].[X_DictionaryUsageAuditType] ([UsageAuditTypeID])
;
ALTER TABLE [dbo].[X_UsageAudit] CHECK CONSTRAINT [FK_X_UsageAudit_X_DictionaryUsageAuditType]
;
ALTER TABLE [dbo].[X_WaterFlow]  WITH CHECK ADD  CONSTRAINT [FK_X_WaterFlowData_X_DictionaryFlow_Test_Type] FOREIGN KEY([FlowTestTypeID])
REFERENCES [dbo].[X_DictionaryFlowTestType] ([FlowTestTypeID])
;
ALTER TABLE [dbo].[X_WaterFlow] CHECK CONSTRAINT [FK_X_WaterFlowData_X_DictionaryFlow_Test_Type]
;
ALTER TABLE [dbo].[X_WaterFlow]  WITH CHECK ADD  CONSTRAINT [FK_X_WaterFlowData_X_DictionarySample_Type] FOREIGN KEY([SampleTypeID])
REFERENCES [dbo].[X_DictionarySampleType] ([SampleTypeID])
;
ALTER TABLE [dbo].[X_WaterFlow] CHECK CONSTRAINT [FK_X_WaterFlowData_X_DictionarySample_Type]
;
ALTER TABLE [dbo].[X_WaterFlow]  WITH CHECK ADD  CONSTRAINT [FK_X_WaterFlowData_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
;
ALTER TABLE [dbo].[X_WaterFlow] CHECK CONSTRAINT [FK_X_WaterFlowData_X_Header]
;
ALTER TABLE [dbo].[X_Worker]  WITH CHECK ADD  CONSTRAINT [FK_X_PersonWorked_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
;
ALTER TABLE [dbo].[X_Worker] CHECK CONSTRAINT [FK_X_PersonWorked_X_Company]
;
ALTER TABLE [dbo].[X_Worker]  WITH CHECK ADD  CONSTRAINT [FK_X_PersonWorked_X_Person] FOREIGN KEY([ContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
;
ALTER TABLE [dbo].[X_Worker] CHECK CONSTRAINT [FK_X_PersonWorked_X_Person]
;
ALTER TABLE [dbo].[X_Worker]  WITH CHECK ADD  CONSTRAINT [FK_X_PersonWorked_X_RoleType] FOREIGN KEY([ProfessionID])
REFERENCES [dbo].[X_DictionaryProfession] ([ProfessionID])
;
ALTER TABLE [dbo].[X_Worker] CHECK CONSTRAINT [FK_X_PersonWorked_X_RoleType]
;

USE [master]
GO
/****** Object:  Database [XODB]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE DATABASE [XODB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'XODB', FILENAME = N'c:\temp\XODB.mdf' , SIZE = 136640KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'XODB_log', FILENAME = N'c:\temp\XODB_log.ldf' , SIZE = 9216KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [XODB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [XODB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [XODB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [XODB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [XODB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [XODB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [XODB] SET ARITHABORT OFF 
GO
ALTER DATABASE [XODB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [XODB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [XODB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [XODB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [XODB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [XODB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [XODB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [XODB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [XODB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [XODB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [XODB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [XODB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [XODB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [XODB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [XODB] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [XODB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [XODB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [XODB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [XODB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [XODB] SET  MULTI_USER 
GO
ALTER DATABASE [XODB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [XODB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [XODB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [XODB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'XODB', N'ON'
GO
USE [XODB]
GO
/****** Object:  User [xodb_user1]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE USER [xodb_user1] FOR LOGIN [xodb_user1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [System.Activities.DurableInstancing.WorkflowActivationUsers]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE ROLE [System.Activities.DurableInstancing.WorkflowActivationUsers]
GO
/****** Object:  DatabaseRole [System.Activities.DurableInstancing.InstanceStoreUsers]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE ROLE [System.Activities.DurableInstancing.InstanceStoreUsers]
GO
/****** Object:  DatabaseRole [System.Activities.DurableInstancing.InstanceStoreObservers]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE ROLE [System.Activities.DurableInstancing.InstanceStoreObservers]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 27/05/2013 5:48:12 PM ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
ALTER ROLE [db_owner] ADD MEMBER [xodb_user1]
GO
ALTER ROLE [aspnet_Roles_ReportingAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Roles_BasicAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Profile_ReportingAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Profile_BasicAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_ReportingAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_BasicAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Membership_ReportingAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Membership_BasicAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [DataSync]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE SCHEMA [DataSync]
GO
/****** Object:  Schema [System.Activities.DurableInstancing]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE SCHEMA [System.Activities.DurableInstancing]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  StoredProcedure [dbo].[X_SP_CreateDependentForeignKeys]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_CreateDependentForeignKeys] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	ALTER TABLE [dbo].[X_SecurityWhitelist] ADD CONSTRAINT [FK_X_SecurityWhitelist_aspnet_Applications] FOREIGN KEY ([OwnerApplicationID]) REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
	ALTER TABLE [dbo].[X_SecurityWhitelist] ADD CONSTRAINT [FK_X_SecurityWhitelist_aspnet_Applications1] FOREIGN KEY ([AccessorApplicationID]) REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
	ALTER TABLE [dbo].[X_SecurityWhitelist] ADD CONSTRAINT [FK_X_SecurityWhitelist_aspnet_Roles] FOREIGN KEY ([AccessorRoleID]) REFERENCES [dbo].[aspnet_Roles] ([RoleId])
	ALTER TABLE [dbo].[X_SecurityBlacklist] ADD CONSTRAINT [FK_X_SecurityBlacklist_aspnet_Applications] FOREIGN KEY ([OwnerApplicationID]) REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
	ALTER TABLE [dbo].[X_SecurityBlacklist] ADD CONSTRAINT [FK_X_SecurityBlacklist_aspnet_Applications1] FOREIGN KEY ([AccessorApplicationID]) REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
	ALTER TABLE [dbo].[X_SecurityBlacklist] ADD CONSTRAINT [FK_X_SecurityBlacklist_aspnet_Roles] FOREIGN KEY ([AccessorRoleID]) REFERENCES [dbo].[aspnet_Roles] ([RoleId])
	ALTER TABLE [dbo].[X_Contact] ADD CONSTRAINT [FK_X_Contact_aspnet_Users] FOREIGN KEY ([AspNetUserID]) REFERENCES [dbo].[aspnet_Users] ([UserId])
	ALTER TABLE [dbo].[X_Contact] ADD CONSTRAINT [FK_X_Contact_SecurityUserBase] FOREIGN KEY ([XafUserID]) REFERENCES [dbo].[SecurityUserBase] ([Oid])

END

GO
/****** Object:  StoredProcedure [dbo].[X_SP_CreateDictionaryViews]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_CreateDictionaryViews]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @category nvarchar(15);


	DECLARE dict_cursor CURSOR FOR 
	SELECT category from X_Dictionary group by Category

	OPEN dict_cursor

	FETCH NEXT FROM dict_cursor 
	INTO @category

	WHILE @@FETCH_STATUS = 0
	BEGIN
	
		declare @sql nvarchar(max)
		set @sql = 'CREATE TABLE [dbo].[X_Dictionary' + @category + ']([Code] [nvarchar](16) NOT NULL,[Description] [nvarchar](255) NULL,CONSTRAINT [PK_Dictionary' + @category + '] PRIMARY KEY CLUSTERED ([Code] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]'
		execute sp_executesql @sql
		FETCH NEXT FROM dict_cursor 
		INTO @category
	END 
	CLOSE dict_cursor;
	DEALLOCATE dict_cursor;

END


GO
/****** Object:  StoredProcedure [dbo].[X_SP_CreateDomainFilter]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_CreateDomainFilter] 
@Str NVARCHAR(MAX) --Example (check for no spaces)'Domain,2000;Domain,1000;'
,@Out NVARCHAR(MAX) OUTPUT
AS
BEGIN

	SET NOCOUNT ON;
	--declare @str  NVARCHAR(MAX)
	--set @str='Domain,2000;Domain,1000;'
	DECLARE @Filter NVARCHAR(MAX)
	set @Filter = ''
	
	DECLARE @IND INT
 
	SET @IND = CHARINDEX(';',@Str)
	
	IF @IND < 1 
	BEGIN
		set @out = ''
		return
	END

	WHILE(@IND > 0)
	BEGIN
		set @Filter = @Filter + ' OR '
		DECLARE @cStr NVARCHAR(MAX)
		SET @cStr = SUBSTRING(@Str, 1,  @IND-1)
		DECLARE @cIND    INT
 		SET @cIND = CHARINDEX(',',@cStr)
		set @Filter = @Filter + SUBSTRING(@cStr, 1,  @cIND-1) + '='
 		SET @cStr = SUBSTRING(@cStr, @cIND+1,  LEN(@cStr))
 		SET @cIND = CHARINDEX(',',@cStr)
		set @Filter = @Filter + '''' +  @cStr+ ''''
 		SET @Str = SUBSTRING(@Str, @IND+1,  LEN(@Str))
 		SET @IND = CHARINDEX(';',@Str)
	END
 
	select @Out = ' AND (1=0 ' + @filter + ') '
	--print @out
END





GO
/****** Object:  StoredProcedure [dbo].[X_SP_CreateModelFilter]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_CreateModelFilter] 
@Str NVARCHAR(MAX)
--Example (check for no spaces)'AND,D74F131B-2604-417C-B563-5DEB2B41816F,>,value;OR,D74F131B-2604-417C-B563-5DEB2B41816F,<,value2;'
,@Out NVARCHAR(MAX) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Filter NVARCHAR(MAX)
	set @Filter = ''
	
	DECLARE @IND INT
 
	SET @IND = CHARINDEX(';',@Str)
 
	WHILE(@IND > 0)
	BEGIN
		DECLARE @cStr NVARCHAR(MAX)
		SET @cStr = SUBSTRING(@Str, 1,  @IND-1)
		DECLARE @cIND    INT
 		SET @cIND = CHARINDEX(',',@cStr)
		set @Filter = @Filter + SUBSTRING(@cStr, 1,  @cIND-1) + ' '
 		SET @cStr = SUBSTRING(@cStr, @cIND+1,  LEN(@cStr))
 		SET @cIND = CHARINDEX(',',@cStr)
		declare @bmm as uniqueidentifier		
		set @bmm = CAST(SUBSTRING(@cStr, 1,  @cIND-1) as uniqueidentifier)
		select @Filter = @Filter + BlockModelMetadataText + ' ' from X_BlockModelMetadata where BlockModelMetadataID=@bmm
 		SET @cStr = SUBSTRING(@cStr, @cIND+1,  LEN(@cStr))
 		SET @cIND = CHARINDEX(',',@cStr)
		set @Filter = @Filter + SUBSTRING(@cStr, 1,  @cIND-1)+ ' '
 		SET @cStr = SUBSTRING(@cStr, @cIND+1,  LEN(@cStr))
 		SET @cIND = CHARINDEX(',',@cStr)
		set @Filter = @Filter + @cStr+ ' '
 		SET @Str = SUBSTRING(@Str, @IND+1,  LEN(@Str))
 		SET @IND = CHARINDEX(';',@Str)
	END
 
	select @Out = ' ' + @filter + ' '
END





GO
/****** Object:  StoredProcedure [dbo].[X_SP_CreateVersioning]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_CreateVersioning]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	exec sp_MSforeachtable 
		@command1 = 'declare @sql nvarchar(max); select @sql =  concat(''ALTER TABLE '', substring(''?'',8, len(''?'')-8), '' ADD [Version] int NOT NULL CONSTRAINT DF_'', substring(''?'',8, len(''?'')-8), ''_X1 DEFAULT ((0)), [VersionAntecedentID] uniqueidentifier NULL,[VersionCertainty] int NULL CONSTRAINT DF_'', substring(''?'',8, len(''?'')-8), ''_X2 DEFAULT ((0)),[VersionWorkflowInstanceID] uniqueidentifier NULL,[VersionUpdatedBy] uniqueidentifier NULL,[VersionDeletedBy] uniqueidentifier NULL,[VersionOwnerContactID] uniqueidentifier NULL,[VersionOwnerCompanyID] uniqueidentifier NULL,[VersionUpdated] datetime NULL CONSTRAINT DF_'', substring(''?'',8, len(''?'')-8), ''_X3 DEFAULT (getdate())'');exec(@sql);'
		,@whereand = 'and o.[name] not like ''x_dictionary%'' and o.[name] like N''X_%'' and o.[name] not like N''XP%'''
END

GO
/****** Object:  StoredProcedure [dbo].[X_SP_CreateVersioningTrigger]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_CreateVersioningTrigger]
@table nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	declare @tsql nvarchar(max)
	--set @tsql = 'CREATE TRIGGER [dbo].[X_TRG_'+@table+'_Versioning] ON [dbo].[X_'+@table+'] INSTEAD OF INSERT,UPDATE,DELETE AS BEGIN;declare @family uniqueidentifier;select @family=VersionAntecedentID from deleted;declare @version as int = 0;select @version=max([Version])+1 from X_'+@table+' where VersionAntecedentID=@family;declare @isDeleted as int = 0;declare @isInserted as int = 0;select @isDeleted=count(*) from deleted;select @isInserted=count(*) from inserted;declare @id uniqueidentifier;IF @isDeleted = 0 AND @isInserted = 1 BEGIN;select @id='+@table+'ID from inserted;declare @isSame as int = 0;select @isSame=Count(*) from X_'+@table+' where '+@table+'ID=@id OR VersionAntecedentID=@id;IF @isSame > 0 BEGIN;raiserror(''Can not Insert Duplicate Record - Use Update'', 16, 1);END;ELSE BEGIN;SELECT * INTO #X_temp_INSERTED FROM INSERTED;IF @id IS NULL BEGIN set @id = newid() END;UPDATE #X_temp_INSERTED SET [Version] = 0;UPDATE #X_temp_INSERTED SET ['+@table+'ID] = @id;UPDATE #X_temp_INSERTED SET [VersionAntecedentID] = @id;UPDATE #X_temp_INSERTED SET [VersionUpdated] = GetDate();INSERT INTO X_'+@table+' SELECT * FROM #X_temp_INSERTED;DROP TABLE #X_temp_INSERTED;END;END;IF @isDeleted = 1 AND @isInserted = 0 BEGIN;declare @oldVersion as int = -1;declare @deletedBy as uniqueidentifier;select @oldVersion=[Version], @deletedBy=[VersionDeletedBy] from deleted;IF @oldVersion <> 0 OR @oldVersion IS NULL OR @deletedBy IS NOT NULL BEGIN;raiserror(''Can not delete deleted record or record other than latest version.'', 16, 1);END;ELSE BEGIN;select @id='+@table+'ID from deleted;print @id;print @version;SELECT * INTO #X_temp_DELETED FROM DELETED;delete from X_'+@table+' where '+@table+'ID=@id AND [Version]=0;UPDATE #X_temp_DELETED SET [Version] = @version;INSERT INTO X_'+@table+' SELECT * FROM #X_temp_DELETED;UPDATE #X_temp_DELETED SET '+@table+'ID = newid(); UPDATE #X_temp_DELETED SET [Version] = 0;UPDATE #X_temp_DELETED SET [VersionAntecedentID] = @family;UPDATE #X_temp_DELETED SET [VersionUpdated] = GetDate();UPDATE #X_temp_DELETED SET [VersionDeletedBy] = ''00000000-0000-0000-0000-000000000000'';INSERT INTO X_'+@table+' SELECT * FROM #X_temp_DELETED;DROP TABLE #X_temp_DELETED;END;END;IF @isDeleted = 1 AND @isInserted = 1 BEGIN;declare @oldVersionU as int = -1;declare @deletedByU as uniqueidentifier;select @oldVersionU=[Version], @deletedByU=[VersionDeletedBy] from deleted;IF @oldVersionU <> 0 OR @oldVersionU IS NULL OR @deletedByU IS NOT NULL BEGIN;raiserror(''Can not update deleted record or record other than latest version.'', 16, 1);END;ELSE BEGIN;select @id='+@table+'ID from deleted;SELECT * INTO #X_tempU_INSERTED FROM INSERTED;SELECT * INTO #X_tempU_DELETED FROM DELETED;delete from X_'+@table+' where '+@table+'ID=@id AND [Version]=0;UPDATE #X_tempU_DELETED SET [Version] = @version;UPDATE #X_tempU_DELETED SET '+@table+'ID = newid();INSERT INTO X_'+@table+' SELECT * FROM #X_tempU_DELETED;UPDATE #X_tempU_INSERTED SET [Version] = 0;UPDATE #X_tempU_INSERTED SET [VersionAntecedentID] = @family;UPDATE #X_tempU_INSERTED SET [VersionUpdated] = GetDate();INSERT INTO X_'+@table+' SELECT * FROM #X_tempU_INSERTED;DROP TABLE #X_tempU_INSERTED;DROP TABLE #X_tempU_DELETED;END;END;END;'
	--let's add the update trigger first
	set @tsql = 'CREATE TRIGGER [dbo].[X_TRG_'+@table+'_VersioningU] ON [dbo].[X_'+@table+'] AFTER UPDATE AS BEGIN;DECLARE @Cinfo VARBINARY(128);SELECT @Cinfo = Context_Info();IF @Cinfo = 0x55555 BEGIN RETURN END;SET NOCOUNT ON;declare @id uniqueidentifier;declare @oldversion as int;declare @version as int;declare @newVersion as int;declare @deletedBy as uniqueidentifier;declare @family as uniqueidentifier;select @oldversion=[Version], @deletedBy=[VersionDeletedBy] from deleted;select @id='+@table+'ID, @version=[Version], @family=[VersionAntecedentID] from inserted;select @newversion=coalesce(max([Version])+1,1) from X_'+@table+' where VersionAntecedentID=@family OR '+@table+'ID=@id;IF @version <> 0 OR @version IS NULL OR @deletedBy>''00000000-0000-0000-0000-000000000000''  OR @version<>@oldversion BEGIN;raiserror(''Can not update deleted record or record other than latest version.'', 16, 1);return;END;ELSE BEGIN;select @id='+@table+'ID from deleted;SELECT * INTO #X_tempU_DELETED FROM DELETED;UPDATE #X_tempU_DELETED SET [Version] = @newVersion;UPDATE #X_tempU_DELETED SET '+@table+'ID = newid();INSERT INTO X_'+@table+' SELECT * FROM #X_tempU_DELETED;UPDATE X_'+@table+'  SET [VersionUpdated] = GetDate() WHERE '+@table+'ID=@id;DROP TABLE #X_tempU_DELETED;END;END;'
	exec sp_executesql @tsql
	--now the insert/delete triggers
	set @tsql = 'CREATE TRIGGER [dbo].[X_TRG_'+@table+'_Versioning] ON [dbo].[X_'+@table+'] INSTEAD OF INSERT,DELETE AS BEGIN;DECLARE @Cinfo VARBINARY(128);SELECT @Cinfo = Context_Info();IF @Cinfo = 0x55555 BEGIN RETURN END;SET NOCOUNT ON;declare @isInserted as int = 0;select @isInserted=count(*) from inserted;declare @family uniqueidentifier;declare @id uniqueidentifier;declare @version as int;declare @newversion as int;IF @isInserted = 1 BEGIN;select @id='+@table+'ID, @version=[Version], @family=[VersionAntecedentID] from inserted;select @newversion=max([Version])+1 from X_'+@table+' where VersionAntecedentID=@family OR '+@table+'ID=@id;IF @version <> -1 BEGIN;IF @newversion IS NOT NULL BEGIN;raiserror(''Can not Insert Duplicate Record - Use Update'', 16, 1);return;END;IF @id IS NULL BEGIN set @id = newid() END;SET @newversion = 0;SET @family = @id;END; ELSE BEGIN;IF @id IS NULL BEGIN;raiserror(''Can not Update orphan record.'', 16, 1);return;END;IF @family IS NULL BEGIN set @family = @id END;set @id=newid();END;SELECT * INTO #X_temp_INSERTED FROM INSERTED;UPDATE #X_temp_INSERTED SET [Version] = @newversion;UPDATE #X_temp_INSERTED SET ['+@table+'ID] = @id;UPDATE #X_temp_INSERTED SET [VersionAntecedentID] = @family;UPDATE #X_temp_INSERTED SET [VersionUpdated] = GetDate();INSERT INTO X_'+@table+' SELECT * FROM #X_temp_INSERTED;DROP TABLE #X_temp_INSERTED;END;IF @isInserted = 0 BEGIN;select @id='+@table+'ID, @version=[Version], @family=[VersionAntecedentID] from deleted;select @newversion=max([Version])+1 from X_'+@table+' where VersionAntecedentID=@family OR '+@table+'ID=@id;declare @deletedBy as uniqueidentifier;select @id='+@table+'ID, @version=[Version], @deletedBy=[VersionDeletedBy] from deleted;IF @version <> 0 OR @version IS NULL OR @deletedBy > ''00000000-0000-0000-0000-000000000000'' BEGIN;raiserror(''Can not delete deleted record or record other than latest version.'', 16, 1);END;ELSE BEGIN;UPDATE X_'+@table+' SET [VersionDeletedBy] = ''00000000-0000-0000-0000-000000000001'' where '+@table+'ID=@id;END;END;END;'
	--print @tsql
	exec sp_executesql @tsql
END



GO
/****** Object:  StoredProcedure [dbo].[X_SP_CreateVersioningTriggers]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_CreateVersioningTriggers]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @tsql nvarchar(max) = ''
	set @tsql = 'declare @table nvarchar(max); set @table=substring(''?'',10, len(''?'')-10); exec [dbo].[X_SP_CreateVersioningTrigger] @table;'
	--print @tsql			
	exec sp_MSforeachtable 
		@command1 = @tsql
		,@whereand = 'and o.[name] not like ''x_dictionary%'' and o.[name] like N''X_%'' and o.[name] not like N''XP%'''
END


GO
/****** Object:  StoredProcedure [dbo].[X_SP_DisableVersioning]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_DisableVersioning]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET Context_Info 0x55555 
END


GO
/****** Object:  StoredProcedure [dbo].[X_SP_DropAllAssays]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_DropAllAssays]
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @ag uniqueidentifier
	DECLARE c CURSOR FOR 
	select AssayGroupID from X_AssayGroup
	OPEN c
	FETCH NEXT FROM c INTO @ag
	WHILE @@FETCH_STATUS = 0
	BEGIN
		exec X_SP_DropAssays @ag
		--print @ag
		FETCH NEXT FROM c INTO @ag
    END
	CLOSE c
	DEALLOCATE c	
END




GO
/****** Object:  StoredProcedure [dbo].[X_SP_DropAllModels]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_DropAllModels]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DELETE FROM X_BlockModelBlockData
	UPDATE X_Composite set BlockModelBlockID=null
	DELETE FROM X_BlockModelBlock 
	DELETE FROM X_BlockModelMetadata 
	DELETE FROM X_BlockModel 
	
END




GO
/****** Object:  StoredProcedure [dbo].[X_SP_DropAllProjects]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_DropAllProjects]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DELETE FROM X_ProjectPlanTaskComplianceResponse
	DELETE FROM X_ProjectPlanTaskResponse
	DELETE FROM X_ProjectPlanTaskWorker
	DELETE FROM X_ProjectDeliverable
	delete from X_ProjectPlanTask where ProjectPlanID not in (select ProjectPlanID from X_ProjectPlan where projectid='31b4ccec-a72c-4f30-a13a-32b48762fdd9')
	delete from X_ProjectPlan where ProjectID<>'31b4ccec-a72c-4f30-a13a-32b48762fdd9'
	delete from X_Project where ProjectID<>'31b4ccec-a72c-4f30-a13a-32b48762fdd9'
	
END






GO
/****** Object:  StoredProcedure [dbo].[X_SP_DropAssays]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_DropAssays]
@assay_groupid uniqueidentifier = null
AS
BEGIN
	SET NOCOUNT ON
	IF @assay_groupid IS NULL 
		BEGIN
			raiserror('Must Provide An AssayGroup GUID', 16, 1)
		END
	ELSE
		BEGIN
			declare @id as uniqueidentifier = @assay_groupid --'C28BDE7B-15BB-43ED-B359-8A32A5B2150E'
			CREATE TABLE #samples(smp uniqueidentifier) 
			INSERT #samples select SampleID from X_AssayGroupTestResult where AssayGroupTestID in (select AssayGroupTestID from X_AssayGroupTest where AssayGroupID=@id)
			delete from X_AssayGroupTestResult where AssayGroupTestID in (select AssayGroupTestID from X_AssayGroupTest where AssayGroupID=@id)
			delete from X_Sample where SampleID in (select smp from #samples)
			DROP TABLE #samples
			delete from X_AssayGroupTest where AssayGroupID=@id
			delete from X_AssayGroup where AssayGroupID=@id
		END
	
END



GO
/****** Object:  StoredProcedure [dbo].[X_SP_DropDependentForeignKeys]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_DropDependentForeignKeys] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	ALTER TABLE [dbo].[X_SecurityWhitelist] DROP CONSTRAINT [FK_X_SecurityWhitelist_aspnet_Applications] 
	ALTER TABLE [dbo].[X_SecurityWhitelist] DROP CONSTRAINT [FK_X_SecurityWhitelist_aspnet_Applications1] 
	ALTER TABLE [dbo].[X_SecurityWhitelist] DROP CONSTRAINT [FK_X_SecurityWhitelist_aspnet_Roles] 
	ALTER TABLE [dbo].[X_SecurityBlacklist] DROP CONSTRAINT [FK_X_SecurityBlacklist_aspnet_Applications] 
	ALTER TABLE [dbo].[X_SecurityBlacklist] DROP CONSTRAINT [FK_X_SecurityBlacklist_aspnet_Applications1]
	ALTER TABLE [dbo].[X_SecurityBlacklist] DROP CONSTRAINT [FK_X_SecurityBlacklist_aspnet_Roles] 
	ALTER TABLE [dbo].[X_Contact] DROP CONSTRAINT [FK_X_Contact_aspnet_Users] 
	ALTER TABLE [dbo].[X_Contact] DROP CONSTRAINT [FK_X_Contact_SecurityUserBase]

END

GO
/****** Object:  StoredProcedure [dbo].[X_SP_DropDirtyDictionaryItems]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_DropDirtyDictionaryItems]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		exec sp_MSforeachtable 
		@command1 = 'declare @sql nvarchar(max); select @sql =  concat(''DELETE FROM ?  WHERE CUSTOM'', substring(''?'',20, len(''?'')-20), ''Name IS NOT NULL'');exec(@sql);'
		,@whereand = 'and o.[name] like ''x_dictionary%'''

END

GO
/****** Object:  StoredProcedure [dbo].[X_SP_DropEverythingForDeploy]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_DropEverythingForDeploy]
@droptriggers as bit = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF @droptriggers = 1 BEGIN EXEC [dbo].[X_SP_DropVersioningTriggers]; END
	delete from X_Desurvey
	delete from X_Survey
	DELETE FROM X_Geology
	DELETE FROM X_Cementing
	DELETE FROM X_GeophysicsData
	DELeTE FROM X_GeophysicsMetadata
	DELETE FROM X_Geophysics
	DELETE FROM X_Casing
	DELETE FROM X_Cementing
	DELETE FROM X_ComplianceWorkType
	DELeTE FROM X_Compliance
	DELETE FROM X_LeaseApplication
	DELETE FROM X_Lease
	DELETE FROM X_Experience WHERE ExperienceID <> '13D815A0-B0D1-475E-AD4E-2C1F3E077887' AND ExperienceID <> '1546DCE3-614F-4C21-A2F5-70B45148DE2F' AND ExperienceID <> '0CE87600-9696-4E60-9161-DC6F909BC071' AND EXPERIENCEid <> 'CDE90B8A-9727-4FD4-8F72-E729CFB31A20' AND ExperienceID<> '13C0BEB4-0787-4BEE-A8C2-FC4A5132789C'
	EXEC X_SP_DropAllModels
	EXEC X_SP_DropAllAssays
	DELETE FROM X_CompositeData
	DELETE FROM X_Composite
	DELETE FROM X_Contract
	DELETE FROM X_Defect
	DELETE FROM X_Drilling
	DELETE FROM X_FileData
	DELETE FROM X_Lithology
	DELETE FROM X_LocationHistory
	DELETE FROM X_MetaDataRelation
	DELETE FROM X_MetaData
	DELETE FROM X_Mineralogy
	DELETE FROM X_Opportunity
	DELETE FROM X_ParameterDuplicate
	DELETE FROM X_ParameterGroup
	DELETE FROM X_Parameter
	DELETE FROM X_HeaderRelation
	delete from X_Header
	DELETE FROM X_PointLoad
	DELETE FROM X_ProspectusProjectProvince
	DELETE FROM X_ProspectusProjectCommodity
	DELETE FROM X_ProspectusProject
	DELETE FROM X_Prospectus
	DELETE FROM X_Recovery
	DELETE FROM X_Sample
	DELETE FROM X_SecurityBlacklist
	DELETE FROM X_SecurityWhitelist
	DELETE FROM X_TenementRelation
	DELETE FROM X_TenementProvince WHERE TenementID<>'ED23F1FD-7051-4D11-9A6A-8C2974FAC5B3'
	DELETE FROM X_TenementCommodity WHERE TenementID<>'ED23F1FD-7051-4D11-9A6A-8C2974FAC5B3'
	DELETE FROM X_Tenement WHERE TenementID<>'ED23F1FD-7051-4D11-9A6A-8C2974FAC5B3'
	DELETE FROM X_UsageAudit
	DELETE FROM X_UserData
	DELETE FROM X_WaterFlow
	EXEC X_SP_DropAllProjects
	DELETE FROM X_Company WHERE CompanyID <> '6887ABC9-E2D8-4A2D-B143-6C3E5245C565'
	DELETE FROM X_ContactAddress
	DELETE FROM X_CompanyAddress
	DELETE FROM X_CompanyRelation
	DELETE FROM X_Address
	DELETE FROM X_Contact WHERE Username LIKE 'XSTRACT%'
	EXEC X_SP_DropDirtyDictionaryItems
END






GO
/****** Object:  StoredProcedure [dbo].[X_SP_DropModel]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_DropModel]
@guid uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DELETE FROM X_BlockModelBlockData where BlockModelID=@guid
	UPDATE X_Composite set BlockModelBlockID=null
	DELETE FROM X_BlockModelBlock where BlockModelID=@guid
	DELETE FROM X_BlockModelMetadata where BlockModelID=@guid
	DELETE FROM X_BlockModel where BlockModelID=@guid
	
END




GO
/****** Object:  StoredProcedure [dbo].[X_SP_DropOldModels]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_DropOldModels]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DELETE from X_BlockModelBlockData where BlockModelBlockId in (select BlockModelBlockID from X_BlockModelBlock where BlockModelID in (select BlockModelID from X_BlockModel where dateadd(month,3,VersionUpdated) < getdate() and [ApproverContactID] is null))
	UPDATE X_Composite set BlockModelBlockID=null where BlockModelBlockID in (select BlockModelBlockID from X_BlockModelBlock where BlockModelID in (select BlockModelID from X_BlockModel where dateadd(month,3,VersionUpdated) < getdate() and [ApproverContactID] is null))
	DELETE from X_BlockModelBlock where BlockModelID in (select BlockModelID from X_BlockModel where dateadd(month,3,VersionUpdated) < getdate() and [ApproverContactID] is null)
	DELETE from X_BlockModelMetadata where BlockModelID in (select BlockModelID from X_BlockModel where dateadd(month,3,VersionUpdated) < getdate() and [ApproverContactID] is null)
	DELETE from X_BlockModel where dateadd(month,3,VersionUpdated) < getdate() and [ApproverContactID] is null
	
END



GO
/****** Object:  StoredProcedure [dbo].[X_SP_DropVersioning]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_DropVersioning]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	exec sp_MSforeachtable 
		@command1 = 'declare @sql nvarchar(max); select @sql =  concat(''ALTER TABLE '', substring(''?'',8, len(''?'')-8), '' DROP CONSTRAINT DF_'', substring(''?'',8, len(''?'')-8), ''_X1'');exec(@sql);select @sql =  concat(''ALTER TABLE '', substring(''?'',8, len(''?'')-8), '' DROP CONSTRAINT DF_'', substring(''?'',8, len(''?'')-8), ''_X2'');exec(@sql);select @sql =  concat(''ALTER TABLE '', substring(''?'',8, len(''?'')-8), '' DROP CONSTRAINT DF_'', substring(''?'',8, len(''?'')-8), ''_X3'');exec(@sql);select @sql =  concat(''ALTER TABLE '', substring(''?'',8, len(''?'')-8), '' DROP COLUMN Version, VersionAntecedentID, VersionCertainty, VersionWorkflowInstanceID, VersionUpdatedBy, VersionDeletedBy, VersionOwnerContactID, VersionOwnerCompanyID, VersionUpdated'');exec(@sql);'
		,@whereand = 'and o.[name] not like ''x_dictionary%'' and o.[name] like N''X_%'' and o.[name] not like N''XP%'''
END

GO
/****** Object:  StoredProcedure [dbo].[X_SP_DropVersioningTriggers]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_DropVersioningTriggers]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		exec sp_MSforeachtable 
		@command1 = 'declare @sql nvarchar(max); select @sql =  concat(''DROP TRIGGER [dbo].[X_TRG_'', substring(''?'',10, len(''?'')-10), ''_Versioning]'');exec(@sql);'
		,@whereand = 'and o.[name] not like ''x_dictionary%'' and o.[name] like N''X_%'' and o.[name] not like N''XP%'''

		exec sp_MSforeachtable 
		@command1 = 'declare @sql nvarchar(max); select @sql =  concat(''DROP TRIGGER [dbo].[X_TRG_'', substring(''?'',10, len(''?'')-10), ''_VersioningU]'');exec(@sql);'
		,@whereand = 'and o.[name] not like ''x_dictionary%'' and o.[name] like N''X_%'' and o.[name] not like N''XP%'''

END

GO
/****** Object:  StoredProcedure [dbo].[X_SP_GetAllGeophysics]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_GetAllGeophysics]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select * from X_Geophysics g1 inner join X_GeophysicsMetadata g2 on g1.GeophysicsID=g2.GeophysicsID inner join X_GeophyicsData g3 on g2.GeophysicsMetadataID=g3.GeophysicsMetadataID
END

GO
/****** Object:  StoredProcedure [dbo].[X_SP_GetAssays]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_GetAssays]
@assay_group_projectid uniqueidentifier = null,
@assay_groupid uniqueidentifier = null
AS
BEGIN


	--declare @assay_groupid as uniqueidentifier = 'CE6AEA2C-9C35-48C1-A6EE-0D404DC417C0'
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @filter as bit 
	IF (@assay_groupid IS NOT NULL) OR (@assay_group_projectid IS NOT NULL) set @filter = 1 ELSE set @filter = 0;
	declare @cols as nvarchar(max)
	declare @colsd as nvarchar(max) = ''
	DECLARE XSPGA_Cursor CURSOR FOR
	select distinct agt.AssayGroupTestID, agt.AssayTestName from X_AssayGroup ag 
	inner join X_AssayGroupTest agt on ag.AssayGroupID=agt.AssayGroupID
	where @filter=0 OR ag.AssayGroupID=@assay_groupid OR ag.ProjectID=@assay_group_projectid;
	declare @agtid as uniqueidentifier
	declare @agtname as nvarchar(max)
	OPEN XSPGA_Cursor;
	FETCH NEXT FROM XSPGA_Cursor into @agtid, @agtname;
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @cols = COALESCE(@cols + ',[' + cast(@agtid as nvarchar(max)) + ']','[' + cast(@agtid as nvarchar(max)) + ']')
		SELECT @colsd = @colsd + ' ,labResults.['+ cast(@agtid as nvarchar(max)) +'] as [' + @agtname + '_' + replace(cast(@agtid as nvarchar(max)) + ']','-','_')
		FETCH NEXT FROM XSPGA_Cursor into @agtid, @agtname;
	END;
	CLOSE XSPGA_Cursor;
	DEALLOCATE XSPGA_Cursor;
	
	--print @cols
	--print @colsd

	declare @tsql as nvarchar(max)

	set @tsql='
	select
	h.HoleName,
	s.FromDepth, 
	s.ToDepth, 
	s.SampleNumber, 
	labResults.LabSampleNumber, 
	labResults.LabBatchNumber, 
	labResults.Sampled' 
	+ @colsd 
	+ ',
	s.SampleTaken, 
	s.SampleMassKg, 
	s.DryMassKg,	
	labResults.AssayGroupName, 	
	h.HeaderID,
	labResults.AssayGroupID,
	labResults.SampleID
	--,labResults.AssayGroupTestResultID
	from ( 
	select *
	from 
	(
		select 
		ag.AssayGroupID,
		ag.AssayGroupName,
		agt.AssayGroupTestID, 
		--agtr.AssayGroupTestResultID, 
		agtr.LabSampleNumber,
		agtr.LabBatchNumber,
		agtr.Sampled,
		agtr.SampleID,
		agtr.LabResult
		from X_AssayGroup ag
		inner join X_AssayGroupTest agt on agt.AssayGroupID=ag.AssayGroupID AND (@f=0 OR ag.AssayGroupID=@agid OR ag.ProjectID=@pjid)
		inner join X_AssayGroupTestResult agtr on agt.AssayGroupTestID=agtr.AssayGroupTestID
		
	) x
	PIVOT
	(
		max(LabResult)
		FOR AssayGroupTestID IN('+ @cols +')
	) as p
	) labResults
	left outer join X_Sample s on s.SampleID=labResults.SampleID
	left outer join X_Header h on h.HeaderID=s.HeaderID';
	--print @tsql
	exec sp_executesql @tsql , N'@agid uniqueidentifier,@pjid uniqueidentifier, @f bit', @pjid=@assay_group_projectid, @agid=@assay_groupid, @f=@filter --, @bm=@bm1_guid OUTPUT, 

	
END


GO
/****** Object:  StoredProcedure [dbo].[X_SP_GetAssaysByParamaters]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_GetAssaysByParamaters]
@assay_group_projectid uniqueidentifier = null,
@assay_groupid uniqueidentifier = null
AS
BEGIN


	--declare @assay_groupid as uniqueidentifier = 'CE6AEA2C-9C35-48C1-A6EE-0D404DC417C0'
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @filter as bit 
	IF (@assay_groupid IS NOT NULL) OR (@assay_group_projectid IS NOT NULL) set @filter = 1 ELSE set @filter = 0;
	declare @cols as nvarchar(max) 
	declare @colsd as nvarchar(max) = ''
	DECLARE XSPGA_Cursor CURSOR FOR
	select distinct agt.ParameterID, p.ParameterName from X_AssayGroup ag 
	inner join X_AssayGroupTest agt on ag.AssayGroupID=agt.AssayGroupID
	inner join X_Parameter p on agt.ParameterID=p.ParameterID
	where @filter=0 OR ag.AssayGroupID=@assay_groupid OR ag.ProjectID=@assay_group_projectid;
	declare @id as uniqueidentifier
	declare @name as nvarchar(max)
	OPEN XSPGA_Cursor;
	FETCH NEXT FROM XSPGA_Cursor into @id, @name;
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @cols = COALESCE(@cols + ',[' + cast(@id as nvarchar(max)) + ']','[' + cast(@id as nvarchar(max)) + ']')
		SELECT @colsd = @colsd + ' ,labResults.['+ cast(@id as nvarchar(max)) +'] as [' + @name + '_' + replace(cast(@id as nvarchar(max)) + ']','-','_')
		FETCH NEXT FROM XSPGA_Cursor into @id, @name;
	END;
	CLOSE XSPGA_Cursor;
	DEALLOCATE XSPGA_Cursor;
	
	--print @cols
	--print @colsd

	declare @tsql as nvarchar(max)

	set @tsql='
	select
	h.HoleName,
	s.FromDepth, 
	s.ToDepth, 
	s.SampleNumber, 
	labResults.LabSampleNumber, 
	labResults.LabBatchNumber, 
	labResults.Sampled' 
	+ @colsd 
	+ ',
	s.SampleTaken, 
	s.SampleMassKg, 
	s.DryMassKg,	
	labResults.AssayGroupName, 	
	h.HeaderID,
	labResults.AssayGroupID,
	labResults.SampleID
	--,labResults.AssayGroupTestResultID
	from ( 
	select *
	from 
	(
		select 
		ag.AssayGroupID,
		ag.AssayGroupName,
		agt.ParameterID,
		--agt.AssayGroupTestID, 
		--agtr.AssayGroupTestResultID, 
		agtr.LabSampleNumber,
		agtr.LabBatchNumber,
		agtr.Sampled,
		agtr.SampleID,
		agtr.LabResult
		from X_AssayGroup ag
		inner join X_AssayGroupTest agt on agt.AssayGroupID=ag.AssayGroupID AND (@f=0 OR ag.AssayGroupID=@agid OR ag.ProjectID=@pjid)
		inner join X_AssayGroupTestResult agtr on agt.AssayGroupTestID=agtr.AssayGroupTestID
		
	) x
	PIVOT
	(
		max(LabResult)
		FOR ParameterID IN('+ @cols +')
	) as p
	) labResults
	left outer join X_Sample s on s.SampleID=labResults.SampleID
	left outer join X_Header h on h.HeaderID=s.HeaderID';
	--print @tsql
	exec sp_executesql @tsql , N'@agid uniqueidentifier,@pjid uniqueidentifier, @f bit', @pjid=@assay_group_projectid, @agid=@assay_groupid, @f=@filter --, @bm=@bm1_guid OUTPUT, 

	
END



GO
/****** Object:  StoredProcedure [dbo].[X_SP_GetAssaysInterpreted]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_GetAssaysInterpreted]
@assay_group_projectid uniqueidentifier = null,
@assay_groupid uniqueidentifier = null
AS
BEGIN


	--declare @assay_groupid as uniqueidentifier = 'CE6AEA2C-9C35-48C1-A6EE-0D404DC417C0'
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @filter as bit 
	IF (@assay_groupid IS NOT NULL) OR (@assay_group_projectid IS NOT NULL) set @filter = 1 ELSE set @filter = 0;
	declare @cols as nvarchar(max) 
	declare @colsd as nvarchar(max) = ''
	DECLARE XSPGA_Cursor CURSOR FOR
	select distinct agt.ParameterID, p.ParameterName from X_AssayGroup ag 
	inner join X_AssayGroupTest agt on ag.AssayGroupID=agt.AssayGroupID
	inner join X_Parameter p on agt.ParameterID=p.ParameterID
	where @filter=0 OR ag.AssayGroupID=@assay_groupid OR ag.ProjectID=@assay_group_projectid;
	declare @id as uniqueidentifier
	declare @name as nvarchar(max)
	OPEN XSPGA_Cursor;
	FETCH NEXT FROM XSPGA_Cursor into @id, @name;
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @cols = COALESCE(@cols + ',[' + cast(@id as nvarchar(max)) + ']','[' + cast(@id as nvarchar(max)) + ']')
		SELECT @colsd = @colsd + ' ,labResults.['+ cast(@id as nvarchar(max)) +'] as [' + @name + '_' + replace(cast(@id as nvarchar(max)) + ']','-','_')
		FETCH NEXT FROM XSPGA_Cursor into @id, @name;
	END;
	CLOSE XSPGA_Cursor;
	DEALLOCATE XSPGA_Cursor;
	
	--print @cols
	--print @colsd

	declare @tsql as nvarchar(max)

	set @tsql='
	SELECT  q.*
FROM    (
        SELECT  *, ROW_NUMBER() OVER (PARTITION BY holename, fromdepth, todepth ORDER BY versionupdated desc) rn
        FROM    
	(select
	h.HoleName,
	s.FromDepth, 
	s.ToDepth, 
	s.SampleNumber, 
	labResults.LabSampleNumber, 
	labResults.LabBatchNumber, 
	labResults.Sampled' 
	+ @colsd 
	+ ',
	s.SampleTaken, 
	s.SampleMassKg, 
	s.DryMassKg,	
	labResults.AssayGroupName, 	
	h.HeaderID,
	labResults.AssayGroupID,
	labResults.SampleID,
	labResults.VersionUpdated
	--,labResults.AssayGroupTestResultID
	from ( 
	select *
	from 
	(
		select 
		ag.AssayGroupID,
		ag.AssayGroupName,
		agt.ParameterID,
		--agt.AssayGroupTestID, 
		--agtr.AssayGroupTestResultID, 
		agtr.LabSampleNumber,
		agtr.LabBatchNumber,
		agtr.Sampled,
		agtr.SampleID,
		agtr.LabResult,
		agtr.VersionUpdated
		from X_AssayGroup ag
		inner join X_AssayGroupTest agt on agt.AssayGroupID=ag.AssayGroupID AND (@f=0 OR ag.AssayGroupID=@agid OR ag.ProjectID=@pjid)
		inner join X_AssayGroupTestResult agtr on agt.AssayGroupTestID=agtr.AssayGroupTestID
		
	) x
	PIVOT
	(
		max(LabResult)
		FOR ParameterID IN('+ @cols +')
	) as p
	) labResults
	left outer join X_Sample s on s.SampleID=labResults.SampleID
	left outer join X_Header h on h.HeaderID=s.HeaderID) r
	) q
	WHERE   rn = 1
	ORDER BY HOLENAME, FromDepth, ToDepth ASC';
	--print @tsql
	exec sp_executesql @tsql , N'@agid uniqueidentifier,@pjid uniqueidentifier, @f bit', @pjid=@assay_group_projectid, @agid=@assay_groupid, @f=@filter --, @bm=@bm1_guid OUTPUT, 

	
END




GO
/****** Object:  StoredProcedure [dbo].[X_SP_GetAssayTexts]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_GetAssayTexts]
@guid uniqueidentifier = null
AS
BEGIN


	--declare @guid as uniqueidentifier = 'CE6AEA2C-9C35-48C1-A6EE-0D404DC417C0'
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @filter as bit 
	IF (@guid IS NOT NULL) set @filter = 1 ELSE set @filter = 0;
	declare @cols as nvarchar(max)
	declare @colsd as nvarchar(max) = ''
	DECLARE XSPGA_Cursor CURSOR FOR
	select distinct agt.AssayGroupTestID, agt.AssayTestName from X_AssayGroup ag 
	inner join X_AssayGroupTest agt on ag.AssayGroupID=agt.AssayGroupID
	where ag.AssayGroupID=@guid OR @filter=0;
	declare @agtid as uniqueidentifier
	declare @agtname as nvarchar(max)
	OPEN XSPGA_Cursor;
	FETCH NEXT FROM XSPGA_Cursor into @agtid, @agtname;
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @cols = COALESCE(@cols + ',[' + cast(@agtid as nvarchar(max)) + ']','[' + cast(@agtid as nvarchar(max)) + ']')
		SELECT @colsd = @colsd + ' ,labResults.['+ cast(@agtid as nvarchar(max)) +'] as [' + @agtname + '_' + replace(cast(@agtid as nvarchar(max)) + ']','-','_')
		FETCH NEXT FROM XSPGA_Cursor into @agtid, @agtname;
	END;
	CLOSE XSPGA_Cursor;
	DEALLOCATE XSPGA_Cursor;
	
	--print @cols
	--print @colsd

	declare @tsql as nvarchar(max)

	set @tsql='
	select labResults.AssayGroupName, 
	labResults.AssayGroupTestResultID, 
	labResults.LabSampleNumber, 
	labResults.LabBatchNumber, 
	labResults.Sampled, 
	labResults.SampleID' 
	+ @colsd 
	+ ',s.SampleNumber, 
	s.FromDepth, 
	s.ToDepth, 
	s.SampleTaken, 
	s.SampleMassKg, 
	s.DryMassKg from ( 
	select *
	from 
	(
		select 
		ag.AssayGroupName,
		agt.AssayGroupTestID, 
		agtr.AssayGroupTestResultID, 
		agtr.LabSampleNumber,
		agtr.LabBatchNumber,
		agtr.Sampled,
		agtr.SampleID,
		agtr.LabResultText
		from X_AssayGroup ag
		inner join X_AssayGroupTest agt on agt.AssayGroupID=ag.AssayGroupID AND (ag.AssayGroupID=@agid OR @f=0)
		inner join X_AssayGroupTestResult agtr on agt.AssayGroupTestID=agtr.AssayGroupTestID
		
	) x
	PIVOT
	(
		max(LabResultText)
		FOR AssayGroupTestID IN('+ @cols +')
	) as p
	) labResults
	left outer join X_Sample s on s.SampleID=labResults.SampleID';
	--print @tsql
	exec sp_executesql @tsql , N'@agid uniqueidentifier, @f bit', @agid=@guid, @f=@filter --, @bm=@bm1_guid OUTPUT, 

	
END

GO
/****** Object:  StoredProcedure [dbo].[X_SP_GetConversionFactor]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_GetConversionFactor]
	@unit_guid uniqueidentifier = null,
	@target nvarchar(max) = null,
	@multiplier decimal(38,20) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select @multiplier = 0
	declare @temp1 decimal(38,20) = 0
	select @temp1 = Max(d1.EquivalentMultiplier) from X_DictionaryUnit d1 inner join X_DictionaryUnit d2 
		on d2.StandardUnitName='u' AND d1.EquivalentUnit = d2.UnitID --check its a unary type
		where d1.UnitID=@unit_guid --get the conversion
	declare @temp2 decimal(38,20) = 0
	select @temp2 = Max(d1.EquivalentMultiplier) from X_DictionaryUnit d1 inner join X_DictionaryUnit d2 
		on d2.StandardUnitName='u' AND d1.EquivalentUnit = d2.UnitID --check its a unary type
		where d1.StandardUnitName=@target --get the conversion

	if NOT (@temp1 is null or @temp2 is null or @temp1 = 0 or @temp2 = 0) select @multiplier = @temp1/@temp2
END

GO
/****** Object:  StoredProcedure [dbo].[X_SP_GetConversionFactorForField]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_GetConversionFactorForField]
	@field_guid uniqueidentifier = null,
	@target nvarchar(max) = null,
	@multiplier decimal(38,20) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select @multiplier = 0
	declare @unit_guid uniqueidentifier = null
	declare @parameter_guid uniqueidentifier = null
	select @parameter_guid = parameterID from X_BlockModelMetadata where BlockModelMetadataID=@field_guid
	select @unit_guid = unitID from X_Parameter where ParameterID=@parameter_guid
	exec X_SP_GetConversionFactor @unit_guid, @target, @multiplier OUTPUT
END

GO
/****** Object:  StoredProcedure [dbo].[X_SP_GetTasks]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_GetTasks]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF OBJECT_ID('tempdb..#TaskList') IS NOT NULL
	DROP TABLE #TaskList;
	;WITH RecursiveCTE
	As 
	( SELECT  p.ProjectTaskName 
	 , p.ProjectPlanTaskID 
	 , cast(p.ProjectTaskName 
		+ char(31) + CAST(p.ProjectPlanTaskID as nvarchar(max))
		as nvarchar(max)) AS TreePath
	 , ParentProjectTaskID  
	 FROM dbo.X_ProjectPlanTask p  
	 WHERE p.ParentProjectTaskID IS NULL
	 UNION ALL
	 SELECT p.ProjectTaskName
	  , p.ProjectPlanTaskID
	  , CAST(H.TreePath + char(30)
	   + p.ProjectTaskName + char(31) + CAST(p.ProjectPlanTaskID as nvarchar(max))  AS NVARCHAR(MAX))
	   AS TreePath
	  , p.ParentProjectTaskID  
	 FROM dbo.X_ProjectPlanTask p  
	 INNER JOIN RecursiveCTE H
	 ON H.ProjectPlanTaskID = p.ParentProjectTaskID
	)  
	SELECT ProjectTaskName
	 , ProjectPlanTaskID
	 , ParentProjectTaskID 
	 , TreePath
	INTO #TaskList
	FROM RecursiveCTE


	--select * from #TaskList
	declare @levels int 
	select @levels = max( Len(TreePath) - Len(Replace(TreePath, char(30), ''))) + 1 from #TaskList
	--print @levels

	
	declare @tsqlh as nvarchar(max) = ''
	declare @tsqlc as nvarchar(max) = ''
	declare @level as nvarchar(50)
	WHILE (@levels>1)
	BEGIN
		set @level = cast(@levels as nvarchar(50))
		set @tsqlh = ' ,Hierarchy.value(''/item[1]/l[' + @level + ']'',''varchar(50)'') AS [L'+ @level +'] , Hierarchy.value(''/item[1]/i[' + @level + ']'',''uniqueidentifier'') AS [L' + @level + '_ID]' + @tsqlh
		set  @tsqlc = ' ,COALESCE(' + REPLACE(REPLACE([dbo].[X_FN_ParentCoalesce] (@levels), '<', 'L'), '>', '') + ') AS L' + @level +
					  ' ,COALESCE(' + REPLACE(REPLACE([dbo].[X_FN_ParentCoalesce] (@levels), '<', 'L'), '>', '_ID') + ') AS L' + @level + '_ID'
						 + @tsqlc
		SET @levels = @levels - 1
	END
	print @tsqlh
	print @tsqlc

	declare @tsql as nvarchar(max)
	set @tsql = ';WITH CTE AS (
	SELECT ProjectPlanTaskID, ProjectTaskName
		,CONVERT(XML,
		''<item><l>'' + REPLACE(REPLACE([TreePath], char(31), ''</l><i>''), char(30), ''</i><l>'') + ''</i></item>'')
	 AS Hierarchy
	FROM #TaskList t1
	WHERE NOT EXISTS (SELECT 1
	  FROM #TaskList t2
	  WHERE t1.ProjectPlanTaskID = t2.ParentProjectTaskID)
	)
	--select * from CTE;
	, LevelBreakdown AS (
	SELECT    ProjectPlanTaskID
	 , ProjectTaskName
	 , Hierarchy.value(''/item[1]/l[1]'',''varchar(50)'') AS [L1]
	 , Hierarchy.value(''/item[1]/i[1]'',''uniqueidentifier'') AS [L1_ID]
	 ' + @tsqlh + '
	 FROM cte)
	SELECT
	ProjectTaskName 
	, ProjectPlanTaskID 
	, L1
	, L1_ID
	' + @tsqlc + '
	FROM LevelBreakdown';
	print @tsql
	exec sp_executesql @tsql --, N'@agid uniqueidentifier, @f bit', @agid=@guid, @f=@filter --, @bm=@bm1_guid OUTPUT, 
END


GO
/****** Object:  StoredProcedure [dbo].[X_SP_GetUniqueDomains]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_GetUniqueDomains]
	-- Add the parameters for the stored procedure here
	@model uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select distinct  m.Domain from X_BlockModelBlock m where BlockModelID=@model
END

GO
/****** Object:  StoredProcedure [dbo].[X_SP_GradeTonnage]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_GradeTonnage]
	@gt_guid uniqueidentifier,
	@bm1_guid uniqueidentifier,
	@bm2_guid uniqueidentifier,
	@gt_increment numeric(38,20),
	@filter1 nvarchar(max),
	@filter2 nvarchar(max),
	@domains1 nvarchar(max),
	@domains2 nvarchar(max),
	@filterString nvarchar(max) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	--declare @gt_guid as uniqueidentifier
	--declare @bm1_guid as uniqueidentifier
	--declare @bm2_guid as uniqueidentifier
	--declare @gt_increment as numeric(38,20)
	--declare @filter1 as nvarchar(max)
	--declare @filter2 as nvarchar(max)
	--declare @domains1 as nvarchar(max)
	--declare @domains2 as nvarchar(max)


	--set @bm1_guid = '9462CEB7-06A9-443A-83D8-02B585CBEB4A' -- Block Model1 ID
	--set @bm2_guid = '756EB838-1740-49D8-9AE4-7CC9B1234927' -- Block Model2 ID
	--set @gt_increment = 0.1 --gt increment
	--set @gt_guid = 'D74F131B-2604-417C-B563-5DEB2B41816F' --Model1 Field ID
	--set @filter1 = 'AND,D74F131B-2604-417C-B563-5DEB2B41816F,>,10;OR,D74F131B-2604-417C-B563-5DEB2B41816F,<,10;' --Filter Block Model 1
	--set @filter2 = 'AND,D74F131B-2604-417C-B563-5DEB2B41816F,>,10;OR,D74F131B-2604-417C-B563-5DEB2B41816F,<,10;' --Filter Block Model 2
	--set @domains1 = 'Domain,2000;Domain,1000;'
	--set @domains2 = 'Domain,2000;Domain,1000;'

	exec X_SP_CreateDomainFilter  @domains1, @domains1 OUTPUT
	exec X_SP_CreateDomainFilter  @domains2, @domains2 OUTPUT
	exec X_SP_CreateModelFilter  @filter1, @filter1 OUTPUT
	exec X_SP_CreateModelFilter  @filter2, @filter2 OUTPUT
	set @filter1 = @domains1 + @filter1
	set @filter2 = @domains2 + @filter2

	declare @gt_fieldname1 as nvarchar(255)
	declare @gt_fieldname2 as nvarchar(255)
	select @gt_fieldname1 = Min(BlockModelMetadataText) from X_BlockModelMetaData where BlockModelMetadataID=@gt_guid
	select @gt_fieldname2 = Min(md2.BlockModelMetadataText) from X_BlockModelMetaData md2 inner join X_Parameter p2 on md2.ParameterID=p2.ParameterID inner join X_BlockModelMetadata m1 on m1.BlockModelMetadataID=@gt_guid inner join X_Parameter p1 on p1.ParameterID=m1.ParameterID AND p1.Description = p2.Description where md2.BlockModelID=@bm2_guid
	declare @gt1sql as nvarchar(max)

	declare @gtmin1 as numeric(38,20)
	set @gt1sql='select @gtminOut=min(' + @gt_fieldname1 + ') from X_BlockModelBlock where BlockModelID=@bm'
	exec sp_executesql @gt1sql, N'@gtminOut numeric(38,20) output, @bm uniqueidentifier', @gtminOut=@gtmin1 OUTPUT, @bm=@bm1_guid
	declare @gtmin2 as numeric(38,20)
	set @gt1sql='select @gtminOut=min(' + @gt_fieldname2 + ') from X_BlockModelBlock where BlockModelID=@bm'
	exec sp_executesql @gt1sql, N'@gtminOut numeric(38,20) output, @bm uniqueidentifier', @gtminOut=@gtmin2 OUTPUT, @bm=@bm2_guid
	declare @gtmin as numeric(38,20)
	if (@gtmin1 < @gtmin2) set @gtmin=@gtmin1 ELSE set @gtmin=@gtmin2

	declare @gtmax1 as numeric(38,20)
	set @gt1sql='select @gtmaxOut=max(' + @gt_fieldname1 + ') from X_BlockModelBlock where BlockModelID=@bm'
	exec sp_executesql @gt1sql, N'@gtmaxOut numeric(38,20) output, @bm uniqueidentifier', @gtmaxOut=@gtmax1 OUTPUT, @bm=@bm1_guid
	declare @gtmax2 as numeric(38,20)
	set @gt1sql='select @gtmaxOut=max(' + @gt_fieldname1 + ') from X_BlockModelBlock where BlockModelID=@bm'
	exec sp_executesql @gt1sql, N'@gtmaxOut numeric(38,20) output, @bm uniqueidentifier', @gtmaxOut=@gtmax2 OUTPUT, @bm=@bm1_guid
	declare @gtmax as numeric(38,20)
	if (@gtmax1 > @gtmax2) set @gtmax=@gtmax1 ELSE set @gtmax=@gtmax2
	
	declare @gt1factor as numeric(38,20)
	declare @gt1denom as numeric(38,20)
	set @gt1factor = (@gtmax + @gtmin)/@gt_increment
	set @gt1denom = floor(@gt1factor/@gt_increment)*@gt_increment

	--set @gt1sql = 'select sum(vol) tonnage, grade from (select LengthX*LengthY*LengthZ vol, floor(@gt1f*' + @gt_fieldname1 +')/@gt1d grade from X_BlockModelBlock where BlockModelID=@bm ' + @filter1 + ') gt group by gt.grade order by grade desc'
	--exec sp_executesql @gt1sql, N'@bm uniqueidentifier, @gt1f numeric(38,20), @gt1d numeric(38,20)', @gt1f=@gt1factor, @gt1d=@gt1denom, @bm=@bm1_guid
	--set @gt1sql = 'select sum(vol) tonnage, grade from (select LengthX*LengthY*LengthZ vol, floor(@gt1f*' + @gt_fieldname2 +')/@gt1d grade from X_BlockModelBlock where BlockModelID=@bm ' + @filter2 + ') gt group by gt.grade order by grade desc'
	--exec sp_executesql @gt1sql, N'@bm uniqueidentifier, @gt1f numeric(38,20), @gt1d numeric(38,20)', @gt1f=@gt1factor, @gt1d=@gt1denom, @bm=@bm2_guid

	set @gt1sql = 'select gg.m, gg.tonnes, gg.grade from (select ''1'' m, sum(vol*density) tonnes, grade from (select density, LengthX*LengthY*LengthZ vol, floor(@gt1f*' + @gt_fieldname1 +')/@gt1d grade from X_BlockModelBlock where BlockModelID=@bm1 ' + @filter1 + ') gt group by gt.grade union select ''2'' m, sum(vol*density) tonnes, grade from (select density, LengthX*LengthY*LengthZ vol, floor(@gt1f*' + @gt_fieldname2 +')/@gt1d grade from X_BlockModelBlock where BlockModelID=@bm2 ' + @filter2 + ') gt group by gt.grade) gg order by gg.grade desc'
	exec sp_executesql @gt1sql, N'@bm1 uniqueidentifier, @bm2 uniqueidentifier, @gt1f numeric(38,20), @gt1d numeric(38,20)', @gt1f=@gt1factor, @gt1d=@gt1denom, @bm1=@bm1_guid, @bm2=@bm2_guid
	select @filterString = REPLACE('[Model (*) ' + @filter1 + '] [Model (**) ' + @filter2 + ']', '1=0  OR ', '') 
END





GO
/****** Object:  StoredProcedure [dbo].[X_SP_GradeTonnageComparison]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_GradeTonnageComparison]
	@gt_guid uniqueidentifier,
	@bm1_guid uniqueidentifier,
	@bm2_guid uniqueidentifier,
	@filter1 nvarchar(max),
	@filter2 nvarchar(max),
	@domains1 nvarchar(max),
	@domains2 nvarchar(max),
	@filterString nvarchar(max) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	--declare @gt_guid as uniqueidentifier
	--declare @bm1_guid as uniqueidentifier
	--declare @bm2_guid as uniqueidentifier
	--declare @gt_increment as numeric(38,20)
	--declare @filter1 as nvarchar(max)
	--declare @filter2 as nvarchar(max)
	--declare @domains1 as nvarchar(max)
	--declare @domains2 as nvarchar(max)
	--declare @filterString nvarchar(max)

	--set @bm1_guid = '9462CEB7-06A9-443A-83D8-02B585CBEB4A' -- Block Model1 ID
	--set @bm2_guid = '756EB838-1740-49D8-9AE4-7CC9B1234927' -- Block Model2 ID
	--set @gt_increment = 0.1 --gt increment
	--set @gt_guid = 'D74F131B-2604-417C-B563-5DEB2B41816F' --Model1 Field ID
	--set @filter1 = 'AND,D74F131B-2604-417C-B563-5DEB2B41816F,>,10;OR,D74F131B-2604-417C-B563-5DEB2B41816F,<,10;' --Filter Block Model 1
	--set @filter2 = 'AND,D74F131B-2604-417C-B563-5DEB2B41816F,>,10;OR,D74F131B-2604-417C-B563-5DEB2B41816F,<,10;' --Filter Block Model 2
	--set @domains1 = 'Domain,2000;Domain,1000;'
	--set @domains2 = 'Domain,2000;Domain,1000;'

	exec X_SP_CreateDomainFilter  @domains1, @domains1 OUTPUT
	exec X_SP_CreateDomainFilter  @domains2, @domains2 OUTPUT
	exec X_SP_CreateModelFilter  @filter1, @filter1 OUTPUT
	exec X_SP_CreateModelFilter  @filter2, @filter2 OUTPUT
	set @filter1 = @domains1 + @filter1
	set @filter2 = @domains2 + @filter2

	declare @gt_fieldname1 as nvarchar(255)
	declare @gt_fieldname2 as nvarchar(255)
	select @gt_fieldname1 = Min(BlockModelMetadataText) from X_BlockModelMetaData where BlockModelMetadataID=@gt_guid
	select @gt_fieldname2 = Min(md2.BlockModelMetadataText) from X_BlockModelMetaData md2 inner join X_Parameter p2 on md2.ParameterID=p2.ParameterID inner join X_BlockModelMetadata m1 on m1.BlockModelMetadataID=@gt_guid inner join X_Parameter p1 on p1.ParameterID=m1.ParameterID AND p1.Description = p2.Description where md2.BlockModelID=@bm2_guid
	declare @gt1sql as nvarchar(max)


	set @gt1sql = 'SELECT r1.ResourceCategory [Resource Category], r1.vol [Model 1 Tonnes], r1.volgrade/r1.vol [Model 1 Grade], r2.vol [Model 2 Tonnes], r2.volgrade/r2.vol [Model 2 Grade], abs(r2.volgrade-r1.volgrade) [Absolute Difference] from (select sum([LengthX]*[LengthY]*[LengthZ]) vol, sum([LengthX]*[LengthY]*[LengthZ]*' + @gt_fieldname1 +') volgrade, ResourceCategory FROM [XODB].[dbo].[X_BlockModelBlock] where BlockModelID=@bm1 ' + @filter1 + ' group by ResourceCategory) r1 LEFT OUTER JOIN (select sum([LengthX]*[LengthY]*[LengthZ]) vol, sum([LengthX]*[LengthY]*[LengthZ]*' + @gt_fieldname2 +') volgrade, ResourceCategory FROM [XODB].[dbo].[X_BlockModelBlock] where BlockModelID=@bm2 ' + @filter2 + ' group by ResourceCategory) r2 ON r1.ResourceCategory=r2.ResourceCategory'
	exec sp_executesql @gt1sql, N'@bm1 uniqueidentifier, @bm2 uniqueidentifier', @bm1=@bm1_guid, @bm2=@bm2_guid	
	select @filterString = REPLACE('[Model (*) ' + @filter1 + '] [Model (**) ' + @filter2 + ']', '1=0  OR ', '') 
END




GO
/****** Object:  StoredProcedure [dbo].[X_SP_PruneParameters]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_PruneParameters]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		--conditions so far...
		delete
		  FROM [XODB].[dbo].[X_Parameter] where ParameterID not in ((select ParameterID from X_ParameterGroup) union (select ParameterID from X_BlockModelMetadata) union (select ParameterID from X_AssayGroupTest))
  
  END


GO
/****** Object:  StoredProcedure [dbo].[X_SP_SlicingTool]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_SlicingTool]
	@st_guid uniqueidentifier,
	@bm1_guid uniqueidentifier,
	@bm2_guid uniqueidentifier,	
	@filter1 nvarchar(max),
	@filter2 nvarchar(max),
	@domains1 nvarchar(max),
	@domains2 nvarchar(max),
	@filterString nvarchar(max) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	--declare @st_guid as uniqueidentifier
	--declare @bm1_guid as uniqueidentifier
	--declare @bm2_guid as uniqueidentifier
	--declare @st_increment as numeric(38,20)
	--declare @filter1 as nvarchar(max)
	--declare @filter2 as nvarchar(max)
	--declare @domains1 as nvarchar(max)
	--declare @domains2 as nvarchar(max)
	--declare @filterString nvarchar(max) 
	declare @maxlengthx decimal(38,20)
	declare @maxlengthy decimal(38,20)
	declare @maxlengthz decimal(38,20)
	declare @maxx decimal(38,20)
	declare @maxy decimal(38,20)
	declare @maxz decimal(38,20)
	declare @minx decimal(38,20)
	declare @miny decimal(38,20)
	declare @minz decimal(38,20)
	declare @vol decimal(38,20)
	declare @same bit = 0

	--set @bm1_guid = '9462CEB7-06A9-443A-83D8-02B585CBEB4A' -- Block Model1 ID
	--set @bm2_guid = '756EB838-1740-49D8-9AE4-7CC9B1234927' -- Block Model2 ID
	--set @st_increment = 0.1 --gt increment
	--set @st_guid = 'D74F131B-2604-417C-B563-5DEB2B41816F' --Model1 Field ID
	--set @filter1 = 'AND,D74F131B-2604-417C-B563-5DEB2B41816F,>,10;OR,D74F131B-2604-417C-B563-5DEB2B41816F,<,10;' --Filter Block Model 1
	--set @filter2 = 'AND,D74F131B-2604-417C-B563-5DEB2B41816F,>,10;OR,D74F131B-2604-417C-B563-5DEB2B41816F,<,10;' --Filter Block Model 2
	--set @domains1 = 'Domain,2000;Domain,1000;'
	--set @domains2 = 'Domain,2000;Domain,1000;'

	--1. compare the models to check
	select @maxx=max(centroidx),@maxy=max(centroidy),@maxz=max(centroidz), @minx=min(centroidx),@miny=min(centroidy),@minz=min(centroidz), @maxlengthx = max(lengthx), @maxlengthy = max(lengthy), @maxlengthz = max(lengthz) from X_BlockModelBlock where BlockModelID=@bm1_guid
	--TODO:if sub-blocks occur (especially on the 3d perimeter), this could damage the following check, maybe need to change long term?
	select @same = 1 from X_BlockModelBlock where BlockModelID=@bm2_guid HAVING max(lengthx)=@maxlengthx AND max(lengthy)=@maxlengthy AND max(lengthz)=@maxlengthz AND @maxx=max(centroidx) AND @maxy=max(centroidy) AND @maxz=max(centroidz) AND @minx=min(centroidx) AND @miny=min(centroidy) AND @minz=min(centroidz)
	IF @same = 0 RAISERROR ('Could not slice models due to variance in block sizes between models.',  16, 1)
	--get the volume of the slice block
	set @vol = (@maxlengthx * @maxlengthy * @maxlengthz)

	exec X_SP_CreateDomainFilter  @domains1, @domains1 OUTPUT
	exec X_SP_CreateDomainFilter  @domains2, @domains2 OUTPUT
	exec X_SP_CreateModelFilter  @filter1, @filter1 OUTPUT
	exec X_SP_CreateModelFilter  @filter2, @filter2 OUTPUT
	set @filter1 = @domains1 + @filter1
	set @filter2 = @domains2 + @filter2

	declare @st_fieldname1 as nvarchar(255)
	declare @st_fieldname2 as nvarchar(255)
	select @st_fieldname1 = Min(BlockModelMetadataText) from X_BlockModelMetaData where BlockModelMetadataID=@st_guid
	select @st_fieldname2 = Min(md2.BlockModelMetadataText) from X_BlockModelMetaData md2 inner join X_Parameter p2 on md2.ParameterID=p2.ParameterID inner join X_BlockModelMetadata m1 on m1.BlockModelMetadataID=@st_guid inner join X_Parameter p1 on p1.ParameterID=m1.ParameterID AND p1.Description = p2.Description where md2.BlockModelID=@bm2_guid
	declare @st1sql as nvarchar(max)

	--select xyz,m,slice,samples,grade from (
	--select 1 xyz, m,slicex slice,samples,grade from (
	--	select 1 m, @minx + (@maxlengthx*floor(((CentroidX-@minx)/@maxlengthx)+0.5)) slicex, count(*) samples, sum(@vol*numeric5)/count(*) grade from X_BlockModelBlock where BlockModelID=@bm1_guid group by floor(((CentroidX-@minx)/@maxlengthx)+0.5) --represents xslices (blocks are grouped into a bulk slice)
	--	union
	--	select 2 m, @minx + (@maxlengthx*floor(((CentroidX-@minx)/@maxlengthx)+0.5)) slicex, count(*) samples, sum(@vol*numeric5)/count(*) grade from X_BlockModelBlock where BlockModelID=@bm2_guid group by floor(((CentroidX-@minx)/@maxlengthx)+0.5) --represents xslices (blocks are grouped into a bulk slice)
	--) slicesx 
	--union
	--select 2 xyz, m,slicey slice,samples,grade from (
	--	select 1 m, @miny + (@maxlengthy*floor(((CentroidY-@miny)/@maxlengthy)+0.5)) slicey, count(*) samples, sum(@vol*numeric5)/count(*) grade from X_BlockModelBlock where BlockModelID=@bm1_guid group by floor(((CentroidY-@miny)/@maxlengthy)+0.5) --represents xslices (blocks are grouped into a bulk slice)
	--	union
	--	select 2 m, @miny + (@maxlengthy*floor(((CentroidY-@miny)/@maxlengthy)+0.5)) slicey, count(*) samples, sum(@vol*numeric5)/count(*) grade from X_BlockModelBlock where BlockModelID=@bm2_guid group by floor(((CentroidY-@miny)/@maxlengthy)+0.5) --represents xslices (blocks are grouped into a bulk slice)
	--) slicesy
	--union
	--select 3 xyz, m,slicez slice,samples,grade from (
	--	select 1 m, @minz + (@maxlengthz*floor(((CentroidZ-@minz)/@maxlengthz)+0.5)) slicez, count(*) samples, sum(@vol*numeric5)/count(*) grade from X_BlockModelBlock where BlockModelID=@bm1_guid group by floor(((CentroidZ-@minz)/@maxlengthz)+0.5) --represents xslices (blocks are grouped into a bulk slice)
	--	union
	--	select 2 m, @minz + (@maxlengthz*floor(((CentroidZ-@minz)/@maxlengthz)+0.5)) slicez, count(*) samples, sum(@vol*numeric5)/count(*) grade from X_BlockModelBlock where BlockModelID=@bm2_guid group by floor(((CentroidZ-@minz)/@maxlengthz)+0.5) --represents xslices (blocks are grouped into a bulk slice)
	--) slicesz
	--) slices order by xyz,m,slice

	--3. return result
	set @st1sql = 'select xyz,m,slice,samples,grade from (select 1 xyz, m,slicex slice,samples,grade from (select 1 m, @pminx + (@pmaxlengthx*floor(((CentroidX-@pminx)/@pmaxlengthx)+0.5)) slicex, count(*) samples, sum(@pvol*' + @st_fieldname1 + ')/count(*) grade from X_BlockModelBlock where BlockModelID=@pbm1_guid ' + @filter1 + ' group by floor(((CentroidX-@pminx)/@pmaxlengthx)+0.5) union select 2 m, @pminx + (@pmaxlengthx*floor(((CentroidX-@pminx)/@pmaxlengthx)+0.5)) slicex, count(*) samples, sum(@pvol*' + @st_fieldname2 + ')/count(*) grade from X_BlockModelBlock where BlockModelID=@pbm2_guid ' + @filter2 + '  group by floor(((CentroidX-@pminx)/@pmaxlengthx)+0.5) ) slicesx union select 2 xyz, m,slicey slice,samples,grade from (select 1 m, @pminy + (@pmaxlengthy*floor(((CentroidY-@pminy)/@pmaxlengthy)+0.5)) slicey, count(*) samples, sum(@pvol*' + @st_fieldname1 + ')/count(*) grade from X_BlockModelBlock where BlockModelID=@pbm1_guid ' + @filter1 + '  group by floor(((CentroidY-@pminy)/@pmaxlengthy)+0.5) union select 2 m, @pminy + (@pmaxlengthy*floor(((CentroidY-@pminy)/@pmaxlengthy)+0.5)) slicey, count(*) samples, sum(@pvol*' + @st_fieldname2 + ')/count(*) grade from X_BlockModelBlock where BlockModelID=@pbm2_guid ' + @filter2 + '  group by floor(((CentroidY-@pminy)/@pmaxlengthy)+0.5) ) slicesy union	select 3 xyz, m,slicez slice,samples,grade from (select 1 m, @pminz + (@pmaxlengthz*floor(((CentroidZ-@pminz)/@pmaxlengthz)+0.5)) slicez, count(*) samples, sum(@pvol*' + @st_fieldname1 + ')/count(*) grade from X_BlockModelBlock where BlockModelID=@pbm1_guid ' + @filter1 + ' group by floor(((CentroidZ-@pminz)/@pmaxlengthz)+0.5) union	select 2 m, @pminz + (@pmaxlengthz*floor(((CentroidZ-@pminz)/@pmaxlengthz)+0.5)) slicez, count(*) samples, sum(@pvol*' + @st_fieldname2 + ')/count(*) grade from X_BlockModelBlock where BlockModelID=@pbm2_guid ' + @filter2 + '  group by floor(((CentroidZ-@pminz)/@pmaxlengthz)+0.5) ) slicesz ) slices order by xyz,m,slice'
	exec sp_executesql @st1sql, N'@pminx numeric(38,20), @pminy decimal(38,20), @pminz decimal(38,20), @pmaxlengthx decimal(38,20), @pmaxlengthy decimal(38,20), @pmaxlengthz decimal(38,20), @pvol decimal(38,20), @pbm1_guid uniqueidentifier, @pbm2_guid uniqueidentifier', @pminx=@minx, @pminy=@miny, @pminz=@minz, @pmaxlengthx=@maxlengthx, @pmaxlengthy=@maxlengthy, @pmaxlengthz=@maxlengthz, @pvol=@vol, @pbm1_guid=@bm1_guid, @pbm2_guid=@bm2_guid
	select @filterString = '[Model (*) ' + @filter1 + '] [Model (**) ' + @filter2 + ']' 
END






GO
/****** Object:  StoredProcedure [dbo].[X_SP_UpdateDictionaryViews]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_UpdateDictionaryViews]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @category nvarchar(15);


	DECLARE dict_cursor CURSOR FOR 
	SELECT category from X_Dictionary group by Category

	OPEN dict_cursor

	FETCH NEXT FROM dict_cursor 
	INTO @category

	WHILE @@FETCH_STATUS = 0
	BEGIN
		declare @sql nvarchar(max)
		set @sql = 'delete from [dbo].[X_Dictionary' + @category + ']'
		execute sp_executesql @sql
		set @sql = 'insert into [dbo].[X_Dictionary' + @category + '] ([code],[description]) (select [code],[description] from X_Dictionary where [Category]='''+ @category +''')'
		execute sp_executesql @sql
		FETCH NEXT FROM dict_cursor 
		INTO @category
	END 
	CLOSE dict_cursor;
	DEALLOCATE dict_cursor;


END



GO
/****** Object:  StoredProcedure [dbo].[X_SP_UpdateXstractWorkTypes]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[X_SP_UpdateXstractWorkTypes] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		insert into  X_DictionaryWorkType (worktypeid,parentworktypeid,companyid,professionid,worktypeclass,worktypename,worktypedescription) select newid(),null,'6B00946C-98D4-4D0C-91BC-943C55A35CA7', null,'Commodity',commodityid,description from X_DictionaryCommodity c where c.CommodityID not in (select Worktypename from X_DictionaryWorkType where companyid='6B00946C-98D4-4D0C-91BC-943C55A35CA7' and worktypeclass='Commodity')  
END


GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[AssociateKeys]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [System.Activities.DurableInstancing].[AssociateKeys]
	@surrogateInstanceId bigint,
	@keysToAssociate xml = null,
	@concatenatedKeyProperties varbinary(max) = null,
	@encodingOption tinyint,
	@singleKeyId uniqueidentifier
as
begin	
	set nocount on
	set transaction isolation level read committed
	set xact_abort on;	
	
	declare @badKeyId uniqueidentifier
	declare @numberOfKeys int
	declare @result int
	declare @keys table([KeyId] uniqueidentifier, [Properties] varbinary(max))
	
	set @result = 0
	
	if (@keysToAssociate is not null)
	begin
		insert into @keys
		select T.Item.value('@KeyId', 'uniqueidentifier') as [KeyId],
			   [System.Activities.DurableInstancing].[ParseBinaryPropertyValue](T.Item.value('@StartPosition', 'int'), T.Item.value('@BinaryLength', 'int'), @concatenatedKeyProperties) as [Properties]
	    from @keysToAssociate.nodes('/CorrelationKeys/CorrelationKey') as T(Item)
		option (maxdop 1)

		select @numberOfKeys = count(1) from @keys
		
		insert into [KeysTable] ([Id], [SurrogateInstanceId], [IsAssociated])
		select [KeyId], @surrogateInstanceId, 1
		from @keys as [Keys]
		
		if (@@rowcount != @numberOfKeys)
		begin
			select top 1 @badKeyId = [Keys].[KeyId] 
			from @keys as [Keys]
			join [KeysTable] on [Keys].[KeyId] = [KeysTable].[Id]
			where [KeysTable].[SurrogateInstanceId] != @surrogateInstanceId
			
			if (@@rowcount != 0)
			begin
				select 3 as 'Result', @badKeyId
				return 3
			end
		end
		
		update [KeysTable]
		set [Properties] = [Keys].[Properties],
			[EncodingOption] = @encodingOption
		from @keys as [Keys]
		join [KeysTable] on [Keys].[KeyId] = [KeysTable].[Id]
		where [KeysTable].[EncodingOption] is null
	end
	
	if (@singleKeyId is not null)
	begin
InsertSingleKey:
		update [KeysTable]
		set [Properties] = @concatenatedKeyProperties,
			[EncodingOption] = @encodingOption
		where ([Id] = @singleKeyId) and ([SurrogateInstanceId] = @surrogateInstanceId)
			  
		if (@@rowcount != 1)
		begin
			if exists (select [Id] from [KeysTable] where [Id] = @singleKeyId)
			begin
				select 3 as 'Result', @singleKeyId
				return 3
			end
			
			insert into [KeysTable] ([Id], [SurrogateInstanceId], [IsAssociated], [Properties], [EncodingOption])
			values (@singleKeyId, @surrogateInstanceId, 1, @concatenatedKeyProperties, @encodingOption)
			
			if (@@rowcount = 0)
				goto InsertSingleKey
		end
	end
end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[CompleteKeys]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [System.Activities.DurableInstancing].[CompleteKeys]
	@surrogateInstanceId bigint,
	@keysToComplete xml = null
as
begin	
	set nocount on
	set transaction isolation level read committed
	set xact_abort on;	
	
	declare @badKeyId uniqueidentifier
	declare @numberOfKeys int
	declare @result int
	declare @keyIds table([KeyId] uniqueidentifier)
	
	set @result = 0
	
	if (@keysToComplete is not null)
	begin
		insert into @keyIds
		select T.Item.value('@KeyId', 'uniqueidentifier')
		from @keysToComplete.nodes('//CorrelationKey') as T(Item)
		option(maxdop 1)
		
		select @numberOfKeys = count(1) from @keyIds
		
		update [KeysTable]
		set [IsAssociated] = 0
		from @keyIds as [KeyIds]
		join [KeysTable] on [KeyIds].[KeyId] = [KeysTable].[Id]
		where [SurrogateInstanceId] = @surrogateInstanceId
		
		if (@@rowcount != @numberOfKeys)
		begin
			select top 1 @badKeyId = [MissingKeys].[MissingKeyId]
			from
				(select [KeyIds].[KeyId] as [MissingKeyId] 
				 from @keyIds as [KeyIds]
				 except
				 select [Id] from [KeysTable] where [SurrogateInstanceId] = @surrogateInstanceId) as MissingKeys
		
			select 4 as 'Result', @badKeyId
			return 4
		end
	end
end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[CreateInstance]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [System.Activities.DurableInstancing].[CreateInstance]
	@instanceId uniqueidentifier,
	@surrogateLockOwnerId bigint,
	@workflowHostType uniqueidentifier,
	@serviceDeploymentId bigint,
	@surrogateInstanceId bigint output,
	@result int output
as
begin
	set nocount on
	set transaction isolation level read committed
	set xact_abort on;	
	
	set @surrogateInstanceId = 0
	set @result = 0
	declare	@surrogateIdentityId bigint
	
	select	@surrogateIdentityId = [SurrogateIdentityId]
	from	[System.Activities.DurableInstancing].[DefinitionIdentityTable]
	where	[DefinitionIdentityHash] = '00000000-0000-0000-0000-000000000000'
	and		[DefinitionIdentityAnyRevisionHash] = '00000000-0000-0000-0000-000000000000'
	and		[Name] is null
	and		[Package] is null
	and		[Build] is null
	and		[Major] is null
	and		[Minor] is null
	and		[Revision] is null

	if @surrogateIdentityId is null
	 begin
		goto Error
	 end
	else
	 begin
		begin try
			insert into [InstancesTable] ([Id], [SurrogateLockOwnerId], [CreationTime], [WorkflowHostType], [ServiceDeploymentId], [Version], [SurrogateIdentityId])
			values (@instanceId, @surrogateLockOwnerId, getutcdate(), @workflowHostType, @serviceDeploymentId, 1, @surrogateIdentityId)
			
			set @surrogateInstanceId = scope_identity()		
		end try
		begin catch
			if (error_number() != 2601)
			begin
				goto Error
			end
		end catch
	 end
	 
	 goto Done

Error:
	set @result = 99
	select @result as 'Result'
	
Done:

end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[CreateLockOwner]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [System.Activities.DurableInstancing].[CreateLockOwner]
	@lockOwnerId uniqueidentifier,
	@lockTimeout int,
	@workflowHostType uniqueidentifier,
	@enqueueCommand bit,
	@deleteInstanceOnCompletion bit,	
	@primitiveLockOwnerData varbinary(max),
	@complexLockOwnerData varbinary(max),
	@writeOnlyPrimitiveLockOwnerData varbinary(max),
	@writeOnlyComplexLockOwnerData varbinary(max),
	@encodingOption tinyint,
	@machineName nvarchar(128),
	@identityMetadata xml = null
as
begin
	set nocount on
	set transaction isolation level read committed
	set xact_abort on;	
	
	begin transaction
	
	declare @lockAcquired bigint
	declare @lockExpiration datetime
	declare @now datetime
	declare @result int
	declare @surrogateLockOwnerId bigint
	declare @workflowIdentityFilter tinyint

	set @result = 0
	
	exec @lockAcquired = sp_getapplock @Resource = 'InstanceStoreLock', @LockMode = 'Shared', @LockTimeout = 10000
		
	if (@lockAcquired < 0)
	begin
		select @result as 'Result'
		set @result = 13
	end
	
	if (@result = 0)
	begin
		-- insert the list of identity to the DefinitionIdentityTable
		exec [System.Activities.DurableInstancing].[InsertDefinitionIdentity] @identityMetadata
		
		if (@identityMetadata is not null)
		 begin
			select @workflowIdentityFilter = T.Item.value('WorkflowIdentityFilter[1]', 'tinyint')
			from @identityMetadata.nodes('/IdentityMetadata') as T(Item)
		 end
		
		if @workflowIdentityFilter is null
			set @workflowIdentityFilter = 0

		--Create Lock Owner entry 
		set @now = getutcdate()
		
		if (@lockTimeout = 0)
			set @lockExpiration = '9999-12-31T23:59:59';
		else 
			set @lockExpiration = dateadd(second, @lockTimeout, getutcdate());
		
		insert into [LockOwnersTable] ([Id], [LockExpiration], [MachineName], [WorkflowHostType], [EnqueueCommand], [DeletesInstanceOnCompletion], [PrimitiveLockOwnerData], [ComplexLockOwnerData], [WriteOnlyPrimitiveLockOwnerData], [WriteOnlyComplexLockOwnerData], [EncodingOption], [WorkflowIdentityFilter])
		values (@lockOwnerId, @lockExpiration, @machineName, @workflowHostType, @enqueueCommand, @deleteInstanceOnCompletion, @primitiveLockOwnerData, @complexLockOwnerData, @writeOnlyPrimitiveLockOwnerData, @writeOnlyComplexLockOwnerData, @encodingOption, @workflowIdentityFilter)
		
		set @surrogateLockOwnerId = scope_identity()
		
		-- insert identity collection with its lock owner.
		if (@identityMetadata is not null)
		 begin
			insert into [System.Activities.DurableInstancing].[IdentityOwnerTable] 
			(
						[SurrogateIdentityId], 
						[SurrogateLockOwnerId]
			)
			select		[System.Activities.DurableInstancing].[DefinitionIdentityTable].[SurrogateIdentityId], 
						@surrogateLockOwnerId
			from		[System.Activities.DurableInstancing].[DefinitionIdentityTable]
			where		[System.Activities.DurableInstancing].[DefinitionIdentityTable].[DefinitionIdentityHash] in
						(
							select	T.Item.value('DefinitionIdentityHash[1]', 'uniqueidentifier') 
							from	@identityMetadata.nodes('/IdentityMetadata/IdentityCollection/Identity') as T(Item)
						)
		 end
		else
		 begin
			insert into [System.Activities.DurableInstancing].[IdentityOwnerTable] 
			(
				[SurrogateIdentityId], 
				[SurrogateLockOwnerId]
			)
			select  [SurrogateIdentityId], @surrogateLockOwnerId
			from	[System.Activities.DurableInstancing].[DefinitionIdentityTable]
			where	[DefinitionIdentityHash] = '00000000-0000-0000-0000-000000000000'
		 end 
	end
	
	if (@result != 13)
		exec sp_releaseapplock @Resource = 'InstanceStoreLock'
	
	if (@result = 0)
	begin
		commit transaction
		select 0 as 'Result', @surrogateLockOwnerId
	end
	else
		rollback transaction
end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[CreateServiceDeployment]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [System.Activities.DurableInstancing].[CreateServiceDeployment]	
	@serviceDeploymentHash uniqueIdentifier,
	@siteName nvarchar(max),
	@relativeServicePath nvarchar(max),
	@relativeApplicationPath nvarchar(max),
	@serviceName nvarchar(max),
    @serviceNamespace nvarchar(max),
    @serviceDeploymentId bigint output
as
begin
	set nocount on
	set transaction isolation level read committed		
	set xact_abort on;	
	
		--Create or select the service deployment id
		insert into [ServiceDeploymentsTable]
			([ServiceDeploymentHash], [SiteName], [RelativeServicePath], [RelativeApplicationPath], [ServiceName], [ServiceNamespace])
			values (@serviceDeploymentHash, @siteName, @relativeServicePath, @relativeApplicationPath, @serviceName, @serviceNamespace)
			
		if (@@rowcount = 0)
		begin		
			select @serviceDeploymentId = [Id]
			from [ServiceDeploymentsTable]
			where [ServiceDeploymentHash] = @serviceDeploymentHash		
		end
		else			
		begin
			set @serviceDeploymentId = scope_identity()		
		end	
		
		select 0 as 'Result', @serviceDeploymentId		
end	

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[DeleteInstance]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [System.Activities.DurableInstancing].[DeleteInstance]
	@surrogateInstanceId bigint = null
as
begin	
	set nocount on
	set transaction isolation level read committed		
	set xact_abort on;	
	
	delete [InstancePromotedPropertiesTable]
	where [SurrogateInstanceId] = @surrogateInstanceId
		
	delete [KeysTable]
	where [SurrogateInstanceId] = @surrogateInstanceId
		
	delete [InstanceMetadataChangesTable]
	where [SurrogateInstanceId] = @surrogateInstanceId

	delete [RunnableInstancesTable] 
	where [SurrogateInstanceId] = @surrogateInstanceId

	delete [InstancesTable] 
	where [SurrogateInstanceId] = @surrogateInstanceId

end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[DeleteLockOwner]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [System.Activities.DurableInstancing].[DeleteLockOwner]
	@surrogateLockOwnerId bigint
as
begin
	set nocount on
	set transaction isolation level read committed
	set deadlock_priority low
	set xact_abort on;	
	
	begin transaction
	
	declare @lockAcquired bigint
	declare @result int
	set @result = 0
	
	exec @lockAcquired = sp_getapplock @Resource = 'InstanceStoreLock', @LockMode = 'Shared', @LockTimeout = 10000
		
	if (@lockAcquired < 0)
	begin
		select @result as 'Result'
		set @result = 13
	end
	
	if (@result = 0)
	begin
		update [LockOwnersTable]
		set [LockExpiration] = '2000-01-01T00:00:00'
		where [SurrogateLockOwnerId] = @surrogateLockOwnerId
	end
	
	if (@result != 13)
		exec sp_releaseapplock @Resource = 'InstanceStoreLock' 
	
	if (@result = 0)
	begin
		commit transaction
		select 0 as 'Result'
	end
	else
		rollback transaction
end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[DetectRunnableInstances]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [System.Activities.DurableInstancing].[DetectRunnableInstances]
	@workflowHostType uniqueidentifier,
	@surrogateLockOwnerId bigint = null
as
begin
	set nocount on
	set transaction isolation level read committed	
	set xact_abort on;	
	set deadlock_priority low
	
	declare @nextRunnableTime datetime
	declare @workflowIdentityFilter tinyint
	
	if (@surrogateLockOwnerId is not null)
	 begin
		select @workflowIdentityFilter = [WorkflowIdentityFilter]
		from [LockOwnersTable]
		where [LockOwnersTable].SurrogateLockOwnerId = @surrogateLockOwnerId
	 end
	
	if (@workflowIdentityFilter is null)
		set @workflowIdentityFilter = 0
				
	if (@workflowIdentityFilter = 1)
	begin
		-- Any Identity
		select top 1 @nextRunnableTime = [RunnableInstancesTable].[RunnableTime]
				  from [RunnableInstancesTable] with (readpast)
				  where [WorkflowHostType] = @workflowHostType
				  order by [WorkflowHostType], [RunnableTime]
	end
	else if (@workflowIdentityFilter = 2)
	begin
		--AnyRevision
		declare @AnyRevisionFilter table
		(
			DefinitionIdentityAnyRevisionHash uniqueidentifier
			UNIQUE (DefinitionIdentityAnyRevisionHash)
		)

		insert into @AnyRevisionFilter 
		select distinct [DefinitionIdentityAnyRevisionHash]
		from [DefinitionIdentityTable] as IdentityTable, [IdentityOwnerTable] as IdentityOwnerTable
		where IdentityOwnerTable.[SurrogateLockOwnerId] = @surrogateLockOwnerId 
			and 
			IdentityTable.[SurrogateIdentityId] = IdentityOwnerTable.[SurrogateIdentityId]
		
		select top 1 @nextRunnableTime = RunnableInstance.[RunnableTime]
				  from [RunnableInstancesTable] as RunnableInstance with (readpast) 
					inner loop join (
						select IdentityTable.[SurrogateIdentityId] as IdentityId
						from [System.Activities.DurableInstancing].[DefinitionIdentityTable] as IdentityTable, @AnyRevisionFilter as AnyRevision
						where IdentityTable.[DefinitionIdentityAnyRevisionHash] = AnyRevision.DefinitionIdentityAnyRevisionHash
					) as FilteredIdentities
					on RunnableInstance.[SurrogateIdentityId] =  FilteredIdentities.IdentityId
				  where RunnableInstance.[WorkflowHostType] = @workflowHostType
				  order by [WorkflowHostType], [RunnableTime]	
	end 
	else
		begin
			-- default to Exact
			if (@surrogateLockOwnerId is null)
			 begin
				declare	@surrogateIdentityId bigint
	
				select		@surrogateIdentityId = [SurrogateIdentityId]
				from		[System.Activities.DurableInstancing].[DefinitionIdentityTable]
				where		[DefinitionIdentityHash] = '00000000-0000-0000-0000-000000000000'
				and			[DefinitionIdentityAnyRevisionHash] = '00000000-0000-0000-0000-000000000000'
				and			[Name] is null
				and			[Package] is null
				and			[Build] is null
				and			[Major] is null
				and			[Minor] is null
				and			[Revision] is null
				
				select		top 1 @nextRunnableTime = RunnableInstances.[RunnableTime]
				from		[RunnableInstancesTable] as RunnableInstances with (readpast)
				where		[WorkflowHostType] = @workflowHostType
				and			[SurrogateIdentityId] = @surrogateIdentityId
				order by	[WorkflowHostType], [RunnableTime]	
			 end
			else
			 begin
				select top 1 @nextRunnableTime = RunnableInstances.[RunnableTime]
						  from [RunnableInstancesTable] as RunnableInstances with (readpast)
							inner loop join (
								select [SurrogateIdentityId] as IdentityId
								from [IdentityOwnerTable] 
								where [SurrogateLockOwnerId] = @surrogateLockOwnerId
							) as FilteredIdentities
							on RunnableInstances.[SurrogateIdentityId] = FilteredIdentities.IdentityId 
						  where [WorkflowHostType] = @workflowHostType
						  order by [WorkflowHostType], [RunnableTime]	
			 end
		end
	
	
	select 0 as 'Result', @nextRunnableTime, getutcdate()
end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[ExtendLock]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [System.Activities.DurableInstancing].[ExtendLock]
	@surrogateLockOwnerId bigint,
	@lockTimeout int	
as
begin
	set nocount on
	set transaction isolation level read committed
	set xact_abort on;	
	
	begin transaction	
	
	declare @now datetime
	declare @newLockExpiration datetime
	declare @result int
	
	set @now = getutcdate()
	set @result = 0
	
	if (@lockTimeout = 0)
		set @newLockExpiration = '9999-12-31T23:59:59'
	else
		set @newLockExpiration = dateadd(second, @lockTimeout, @now)
	
	update [LockOwnersTable]
	set [LockExpiration] = @newLockExpiration
	where ([SurrogateLockOwnerId] = @surrogateLockOwnerId) and
		  ([LockExpiration] > @now)
	
	if (@@rowcount = 0) 
	begin
		if exists (select * from [LockOwnersTable] where ([SurrogateLockOwnerId] = @surrogateLockOwnerId))
		begin
			exec [System.Activities.DurableInstancing].[DeleteLockOwner] @surrogateLockOwnerId
			set @result = 11
		end
		else
			set @result = 12
	end
	
	select @result as 'Result'
	commit transaction
end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[FreeKeys]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [System.Activities.DurableInstancing].[FreeKeys]
	@surrogateInstanceId bigint,
	@keysToFree xml = null
as
begin	
	set nocount on
	set transaction isolation level read committed
	set xact_abort on;	
	
	declare @badKeyId uniqueidentifier
	declare @numberOfKeys int
	declare @result int
	declare @keyIds table([KeyId] uniqueidentifier)
	
	set @result = 0
	
	if (@keysToFree is not null)
	begin
		insert into @keyIds
		select T.Item.value('@KeyId', 'uniqueidentifier')
		from @keysToFree.nodes('//CorrelationKey') as T(Item)
		option(maxdop 1)
		
		select @numberOfKeys = count(1) from @keyIds
		
		delete [KeysTable]
		from @keyIds as [KeyIds]
		join [KeysTable] on [KeyIds].[KeyId] = [KeysTable].[Id]
		where [SurrogateInstanceId] = @surrogateInstanceId

		if (@@rowcount != @numberOfKeys)
		begin
			select top 1 @badKeyId = [MissingKeys].[MissingKeyId] from
				(select [KeyIds].[KeyId] as [MissingKeyId]
				 from @keyIds as [KeyIds]
				 except
				 select [Id] from [KeysTable] where [SurrogateInstanceId] = @surrogateInstanceId) as MissingKeys
		
			select 4 as 'Result', @badKeyId
			return 4
		end
	end
end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[GetActivatableWorkflowsActivationParameters]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [System.Activities.DurableInstancing].[GetActivatableWorkflowsActivationParameters]
	@machineName nvarchar(128)
as
begin
	set nocount on
	set transaction isolation level read committed	
	set xact_abort on;	
	set deadlock_priority low
	
	declare @now datetime
	set @now = getutcdate()
	
	select 0 as 'Result'
	
	select top(1000) serviceDeployments.[SiteName], serviceDeployments.[RelativeApplicationPath], serviceDeployments.[RelativeServicePath]
	from (
		select distinct [ServiceDeploymentId], [WorkflowHostType]
		from [RunnableInstancesTable] with (readpast)
		where [RunnableTime] <= @now
		) runnableWorkflows inner join [ServiceDeploymentsTable] serviceDeployments
		on runnableWorkflows.[ServiceDeploymentId] = serviceDeployments.[Id]
	where not exists (
						select top (1) 1
						from [LockOwnersTable] lockOwners
						where lockOwners.[LockExpiration] > @now
						and lockOwners.[MachineName] = @machineName
						and lockOwners.[WorkflowHostType] = runnableWorkflows.[WorkflowHostType]
					  )
end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[GetWorkflowInstanceStoreVersion]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [System.Activities.DurableInstancing].[GetWorkflowInstanceStoreVersion]
as
begin
	set nocount on
	set transaction isolation level read committed		
	set xact_abort on;	
		
	select		Major
				,Minor
				,Build
				,Revision
	from		[System.Activities.DurableInstancing].[SqlWorkflowInstanceStoreVersionTable]
	
end	

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[InsertDefinitionIdentity]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [System.Activities.DurableInstancing].[InsertDefinitionIdentity]	
	@identityMetadata xml = null
as
begin
	set nocount on
	set transaction isolation level read committed		
	set xact_abort on;
	
	if (@identityMetadata is not null)
	 begin
		insert into [System.Activities.DurableInstancing].[DefinitionIdentityTable]
		(
				[DefinitionIdentityHash],
				[DefinitionIdentityAnyRevisionHash],
				[Name],
				[Package],
				[Build],
				[Major],
				[Minor],
				[Revision]
		)
		select 	T.Item.value('DefinitionIdentityHash[1]', 'uniqueidentifier'),
				T.Item.value('DefinitionIdentityAnyRevisionHash[1]', 'uniqueidentifier'),
				T.Item.value('Name[1]', 'nvarchar(max)'),
				T.Item.value('Package[1]', 'nvarchar(max)'),
				T.Item.value('Build[1]', 'bigint'),
				T.Item.value('Major[1]', 'bigint'),
				T.Item.value('Minor[1]', 'bigint'),
				T.Item.value('Revision[1]', 'bigint')
		from	@identityMetadata.nodes('/IdentityMetadata/IdentityCollection/Identity') as T(Item)
	 end	
end	

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[InsertPromotedProperties]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [System.Activities.DurableInstancing].[InsertPromotedProperties]
	@instanceId uniqueidentifier,
	@promotionName nvarchar(400),
	@value1 sql_variant = null,
	@value2 sql_variant = null,
	@value3 sql_variant = null,
	@value4 sql_variant = null,
	@value5 sql_variant = null,
	@value6 sql_variant = null,
	@value7 sql_variant = null,
	@value8 sql_variant = null,
	@value9 sql_variant = null,
	@value10 sql_variant = null,
	@value11 sql_variant = null,
	@value12 sql_variant = null,
	@value13 sql_variant = null,
	@value14 sql_variant = null,
	@value15 sql_variant = null,
	@value16 sql_variant = null,
	@value17 sql_variant = null,
	@value18 sql_variant = null,
	@value19 sql_variant = null,
	@value20 sql_variant = null,
	@value21 sql_variant = null,
	@value22 sql_variant = null,
	@value23 sql_variant = null,
	@value24 sql_variant = null,
	@value25 sql_variant = null,
	@value26 sql_variant = null,
	@value27 sql_variant = null,
	@value28 sql_variant = null,
	@value29 sql_variant = null,
	@value30 sql_variant = null,
	@value31 sql_variant = null,
	@value32 sql_variant = null,
	@value33 varbinary(max) = null,
	@value34 varbinary(max) = null,
	@value35 varbinary(max) = null,
	@value36 varbinary(max) = null,
	@value37 varbinary(max) = null,
	@value38 varbinary(max) = null,
	@value39 varbinary(max) = null,
	@value40 varbinary(max) = null,
	@value41 varbinary(max) = null,
	@value42 varbinary(max) = null,
	@value43 varbinary(max) = null,
	@value44 varbinary(max) = null,
	@value45 varbinary(max) = null,
	@value46 varbinary(max) = null,
	@value47 varbinary(max) = null,
	@value48 varbinary(max) = null,
	@value49 varbinary(max) = null,
	@value50 varbinary(max) = null,
	@value51 varbinary(max) = null,
	@value52 varbinary(max) = null,
	@value53 varbinary(max) = null,
	@value54 varbinary(max) = null,
	@value55 varbinary(max) = null,
	@value56 varbinary(max) = null,
	@value57 varbinary(max) = null,
	@value58 varbinary(max) = null,
	@value59 varbinary(max) = null,
	@value60 varbinary(max) = null,
	@value61 varbinary(max) = null,
	@value62 varbinary(max) = null,
	@value63 varbinary(max) = null,
	@value64 varbinary(max) = null
as
begin
	set nocount on
	set transaction isolation level read committed		
	set xact_abort on;	

	declare @surrogateInstanceId bigint

	select @surrogateInstanceId = [SurrogateInstanceId]
	from [InstancesTable]
	where [Id] = @instanceId

	insert into [System.Activities.DurableInstancing].[InstancePromotedPropertiesTable]
	values (@surrogateInstanceId, @promotionName, @value1, @value2, @value3, @value4, @value5, @value6, @value7, @value8,
			@value9, @value10, @value11, @value12, @value13, @value14, @value15, @value16, @value17, @value18, @value19,
			@value20, @value21, @value22, @value23, @value24, @value25, @value26, @value27, @value28, @value29, @value30,
			@value31, @value32, @value33, @value34, @value35, @value36, @value37, @value38, @value39, @value40, @value41,
			@value42, @value43, @value44, @value45, @value46, @value47, @value48, @value49, @value50, @value51, @value52,
			@value53, @value54, @value55, @value56, @value57, @value58, @value59, @value60, @value61, @value62, @value63,
			@value64)
end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[InsertRunnableInstanceEntry]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [System.Activities.DurableInstancing].[InsertRunnableInstanceEntry]
	@surrogateInstanceId bigint,
	@workflowHostType uniqueidentifier,
	@serviceDeploymentId bigint, 
	@isSuspended bit,
	@isReadyToRun bit,
	@pendingTimer datetime,
	@surrogateIdentityId bigint
AS
begin    
	set nocount on;
	set transaction isolation level read committed;
	set xact_abort on;	
	
	declare @runnableTime datetime
	
	if (@isSuspended  = 0)
	begin
		if (@isReadyToRun = 1)
		begin
			set @runnableTime = getutcdate()					
		end
		else if (@pendingTimer is not null)
		begin
			set @runnableTime = @pendingTimer
		end
	end
		
	if (@runnableTime is not null and @workflowHostType is not null)
	begin	
		insert into [RunnableInstancesTable]
			([SurrogateInstanceId], [WorkflowHostType], [ServiceDeploymentId], [RunnableTime], [SurrogateIdentityId])
			values( @surrogateInstanceId, @workflowHostType, @serviceDeploymentId, @runnableTime, @surrogateIdentityId)
	end
end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[LoadInstance]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [System.Activities.DurableInstancing].[LoadInstance]
	@surrogateLockOwnerId bigint,
	@operationType tinyint,
	@handleInstanceVersion bigint,
	@handleIsBoundToLock bit,
	@keyToLoadBy uniqueidentifier = null,
	@instanceId uniqueidentifier = null,
	@keysToAssociate xml = null,
	@encodingOption tinyint,
	@concatenatedKeyProperties varbinary(max) = null,
	@singleKeyId uniqueidentifier,
	@operationTimeout int
as
begin
	set nocount on
	set transaction isolation level read committed	
	set xact_abort on;		
	set deadlock_priority low
	begin transaction
	
	declare @result int
	declare @lockAcquired bigint
	declare @isInitialized bit
	declare @createKey bit
	declare @createdInstance bit
	declare @keyIsAssociated bit
	declare @loadedByKey bit
	declare @now datetime
	declare @surrogateInstanceId bigint

	set @createdInstance = 0
	set @isInitialized = 0
	set @keyIsAssociated = 0
	set @result = 0
	set @surrogateInstanceId = null
	
	exec @lockAcquired = sp_getapplock @Resource = 'InstanceStoreLock', @LockMode = 'Shared', @LockTimeout = @operationTimeout
	
	if (@lockAcquired < 0)
	begin
		set @result = 13
		select @result as 'Result'
	end
	
	if (@result = 0)
	begin
		set @now = getutcdate()

		if (@operationType = 0) or (@operationType = 2)
		begin
MapKeyToInstanceId:
			set @loadedByKey = 0
			set @createKey = 0
			
			select @surrogateInstanceId = [SurrogateInstanceId],
				   @keyIsAssociated = [IsAssociated]
			from [KeysTable]
			where [Id] = @keyToLoadBy
			
			if (@@rowcount = 0)
			begin
				if (@operationType = 2)
				begin
					set @result = 4
					select @result as 'Result', @keyToLoadBy 
				end
					set @createKey = 1
			end
			else if (@keyIsAssociated = 0)
			begin
				set @result = 8
				select @result as 'Result', @keyToLoadBy
			end
			else
			begin
				select @instanceId = [Id]
				from [InstancesTable]
				where [SurrogateInstanceId] = @surrogateInstanceId

				if (@@rowcount = 0)
					goto MapKeyToInstanceId

				set @loadedByKey = 1
			end
		end
	end

	if (@result = 0)
	begin
LockOrCreateInstance:
		exec [System.Activities.DurableInstancing].[LockInstance] @instanceId, @surrogateLockOwnerId, @handleInstanceVersion, @handleIsBoundToLock, @surrogateInstanceId output, null, @result output
														  
		if (@result = 0 and @surrogateInstanceId = 0)
		begin
			if (@loadedByKey = 1)
				goto MapKeyToInstanceId
			
			if (@operationType > 1)
			begin
				set @result = 1
				select @result as 'Result', @instanceId as 'InstanceId'
			end
			else
			begin				
				exec [System.Activities.DurableInstancing].[CreateInstance] @instanceId, @surrogateLockOwnerId, null, null, @surrogateInstanceId output, @result output
			
				if (@result = 0 and @surrogateInstanceId = 0)
					goto LockOrCreateInstance
				else if (@surrogateInstanceId > 0)
					set @createdInstance = 1
			end
		end
		else if (@result = 0)
		begin
			delete from [RunnableInstancesTable]
			where [SurrogateInstanceId] = @surrogateInstanceId
		end
	end
		
	if (@result = 0)
	begin
		if (@createKey = 1) 
		begin
			select @isInitialized = [IsInitialized]
			from [InstancesTable]
			where [SurrogateInstanceId] = @surrogateInstanceId
			
			if (@isInitialized = 1)
			begin
				set @result = 5
				select @result as 'Result', @instanceId
			end
			else
			begin													
				insert into [KeysTable] ([Id], [SurrogateInstanceId], [IsAssociated])
				values (@keyToLoadBy, @surrogateInstanceId, 1)
				
				if (@@rowcount = 0)
				begin
					if (@createdInstance = 1)
					begin
						delete [InstancesTable]
						where [SurrogateInstanceId] = @surrogateInstanceId
					end
					else
					begin
						update [InstancesTable]
						set [SurrogateLockOwnerId] = null
						where [SurrogateInstanceId] = @surrogateInstanceId
					end
					
					goto MapKeyToInstanceId
				end
			end
		end
		else if (@loadedByKey = 1 and not exists(select [Id] from [KeysTable] where ([Id] = @keyToLoadBy) and ([IsAssociated] = 1)))
		begin
			set @result = 8
			select @result as 'Result', @keyToLoadBy
		end
		
		if (@operationType > 1 and not exists(select [Id] from [InstancesTable] where ([Id] = @instanceId) and ([IsInitialized] = 1)))
		begin
			set @result = 1
			select @result as 'Result', @instanceId as 'InstanceId'
		end
		
		if (@result = 0)
			exec @result = [System.Activities.DurableInstancing].[AssociateKeys] @surrogateInstanceId, @keysToAssociate, @concatenatedKeyProperties, @encodingOption, @singleKeyId
		
		-- Ensure that this key's data will never be overwritten.
		if (@result = 0 and @createKey = 1)
		begin
			update [KeysTable]
			set [EncodingOption] = @encodingOption
			where [Id] = @keyToLoadBy
		end
	end
	
	if (@result != 13)
		exec sp_releaseapplock @Resource = 'InstanceStoreLock'
		
	if (@result = 0)
	begin
		select @result as 'Result',
			   [Id],
			   [SurrogateInstanceId],
			   [PrimitiveDataProperties],
			   [ComplexDataProperties],
			   [MetadataProperties],
			   [DataEncodingOption],
			   [MetadataEncodingOption],
			   [Version],
			   [IsInitialized],
			   @createdInstance
		from [InstancesTable]
		where [SurrogateInstanceId] = @surrogateInstanceId
		
		if (@createdInstance = 0)
		begin
			select @result as 'Result',
				   [EncodingOption],
				   [Change]
			from [InstanceMetadataChangesTable]
			where [SurrogateInstanceId] = @surrogateInstanceId
			order by([ChangeTime])
			
			if (@@rowcount = 0)
			select @result as 'Result', null, null
				
			select @result as 'Result',
				   [Id],
				   [IsAssociated],
				   [EncodingOption],
				   [Properties]
			from [KeysTable] with (index(NCIX_KeysTable_SurrogateInstanceId))
			where ([KeysTable].[SurrogateInstanceId] = @surrogateInstanceId)
			
			if (@@rowcount = 0)
				select @result as 'Result', null, null, null, null
		end

		commit transaction
	end
	else if (@result = 2 or @result = 14)
		commit transaction
	else
		rollback transaction
end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[LockInstance]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [System.Activities.DurableInstancing].[LockInstance]
	@instanceId uniqueidentifier,
	@surrogateLockOwnerId bigint,
	@handleInstanceVersion bigint,
	@handleIsBoundToLock bit,
	@surrogateInstanceId bigint output,
	@lockVersion bigint output,
	@result int output
as
begin
	set nocount on
	set transaction isolation level read committed
	set xact_abort on;	
	
	declare @isCompleted bit
	declare @currentLockOwnerId bigint
	declare @currentVersion bigint

TryLockInstance:
	set @currentLockOwnerId = 0
	set @surrogateInstanceId = 0
	set @result = 0
	
	update [InstancesTable]
	set [SurrogateLockOwnerId] = @surrogateLockOwnerId,
		@lockVersion = [Version] = case when ([InstancesTable].[SurrogateLockOwnerId] is null or 
											  [InstancesTable].[SurrogateLockOwnerId] != @surrogateLockOwnerId)
									then [Version] + 1
									else [Version]
								  end,
		@surrogateInstanceId = [SurrogateInstanceId]
	from [InstancesTable]
	left outer join [LockOwnersTable] on [InstancesTable].[SurrogateLockOwnerId] = [LockOwnersTable].[SurrogateLockOwnerId]
	where ([InstancesTable].[Id] = @instanceId) and
		  ([InstancesTable].[IsCompleted] = 0) and
		  (
		   (@handleIsBoundToLock = 0 and
		    (
		     ([InstancesTable].[SurrogateLockOwnerId] is null) or
		     ([LockOwnersTable].[SurrogateLockOwnerId] is null) or
			  (
		       ([LockOwnersTable].[LockExpiration] < getutcdate()) and
               ([LockOwnersTable].[SurrogateLockOwnerId] != @surrogateLockOwnerId)
			  )
		    )
		   ) or 
		   (
			(@handleIsBoundToLock = 1) and
		    ([LockOwnersTable].[SurrogateLockOwnerId] = @surrogateLockOwnerId) and
		    ([LockOwnersTable].[LockExpiration] > getutcdate()) and
		    ([InstancesTable].[Version] = @handleInstanceVersion)
		   )
		  )
	
	if (@@rowcount = 0)
	begin
		if not exists (select * from [LockOwnersTable] where ([SurrogateLockOwnerId] = @surrogateLockOwnerId) and ([LockExpiration] > getutcdate()))
		begin
			if exists (select * from [LockOwnersTable] where [SurrogateLockOwnerId] = @surrogateLockOwnerId)
				set @result = 11
			else
				set @result = 12
			
			select @result as 'Result'
			return 0
		end
		
		select @currentLockOwnerId = [SurrogateLockOwnerId],
			   @isCompleted = [IsCompleted],
			   @currentVersion = [Version]
		from [InstancesTable]
		where [Id] = @instanceId
	
		if (@@rowcount = 1)
		begin
			if (@isCompleted = 1)
				set @result = 7
			else if (@currentLockOwnerId = @surrogateLockOwnerId)
			begin
				if (@handleIsBoundToLock = 1)
					set @result = 10
				else
					set @result = 14
			end
			else if (@handleIsBoundToLock = 0)
				set @result = 2
			else
				set @result = 6
		end
		else if (@handleIsBoundToLock = 1)
			set @result = 6
	end

	if (@result != 0 and @result != 2)
		select @result as 'Result', @instanceId, @currentVersion
	else if (@result = 2)
	begin
		select @result as 'Result', @instanceId, [LockOwnersTable].[Id], [LockOwnersTable].[EncodingOption], [PrimitiveLockOwnerData], [ComplexLockOwnerData]
		from [LockOwnersTable]
		join [InstancesTable] on [InstancesTable].[SurrogateLockOwnerId] = [LockOwnersTable].[SurrogateLockOwnerId]
		where [InstancesTable].[SurrogateLockOwnerId] = @currentLockOwnerId and
			  [InstancesTable].[Id] = @instanceId
		
		if (@@rowcount = 0)
			goto TryLockInstance
	end
end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[RecoverInstanceLocks]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [System.Activities.DurableInstancing].[RecoverInstanceLocks]
as
begin
	set nocount on;
	set transaction isolation level read committed;
	set xact_abort on;
	set deadlock_priority low;
    
	declare @now as datetime
	set @now = getutcdate()	
	
	insert into [RunnableInstancesTable] ([SurrogateInstanceId], [WorkflowHostType], [ServiceDeploymentId], [RunnableTime], [SurrogateIdentityId])
		select top (1000) instances.[SurrogateInstanceId], instances.[WorkflowHostType], instances.[ServiceDeploymentId], @now, instances.[SurrogateIdentityId]
		from [LockOwnersTable] lockOwners with (readpast) inner loop join
			 [InstancesTable] instances with (readpast)
				on instances.[SurrogateLockOwnerId] = lockOwners.[SurrogateLockOwnerId]
			where 
				lockOwners.[LockExpiration] <= @now and
				instances.[IsInitialized] = 1 and
				instances.[IsSuspended] = 0
	
	delete from [IdentityOwnerTable] with (readpast)
	where [IdentityOwnerTable].[SurrogateLockOwnerId] in
	(
		select [SurrogateLockOwnerId]
		from [System.Activities.DurableInstancing].[LockOwnersTable] lockOwners
		where [LockExpiration] <= @now
		and not exists
		(
			select top (1) 1
			from [System.Activities.DurableInstancing].[InstancesTable] instances with (nolock)
			where instances.[SurrogateLockOwnerId] = lockOwners.[SurrogateLockOwnerId]
		)
	)

	delete from [LockOwnersTable] with (readpast)
	from [LockOwnersTable] lockOwners
	where [LockExpiration] <= @now
	and not exists
	(
		select top (1) 1
		from [InstancesTable] instances with (nolock)
		where instances.[SurrogateLockOwnerId] = lockOwners.[SurrogateLockOwnerId]
	)
end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[SaveInstance]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [System.Activities.DurableInstancing].[SaveInstance]
	@instanceId uniqueidentifier,
	@surrogateLockOwnerId bigint,
	@handleInstanceVersion bigint,
	@handleIsBoundToLock bit,
	@primitiveDataProperties varbinary(max),
	@complexDataProperties varbinary(max),
	@writeOnlyPrimitiveDataProperties varbinary(max),
	@writeOnlyComplexDataProperties varbinary(max),
	@metadataProperties varbinary(max),
	@metadataIsConsistent bit,
	@encodingOption tinyint,
	@timerDurationMilliseconds bigint,
	@suspensionStateChange tinyint,
	@suspensionReason nvarchar(max),
	@suspensionExceptionName nvarchar(450),
	@keysToAssociate xml,
	@keysToComplete xml,
	@keysToFree xml,
	@concatenatedKeyProperties varbinary(max),
	@unlockInstance bit,
	@isReadyToRun bit,
	@isCompleted bit,
	@singleKeyId uniqueidentifier,
	@lastMachineRunOn nvarchar(450),
	@executionStatus nvarchar(450),
	@blockingBookmarks nvarchar(max),
	@workflowHostType uniqueidentifier,
	@serviceDeploymentId bigint,
	@operationTimeout int,
	@identityMetadata xml = null
as
begin
	set nocount on
	set transaction isolation level read committed		
	set xact_abort on;	

	declare @currentInstanceVersion bigint
	declare @deleteInstanceOnCompletion bit
	declare @enqueueCommand bit
	declare @isSuspended bit
	declare @lockAcquired bigint
	declare @metadataUpdateOnly bit
	declare @now datetime
	declare @result int
	declare @surrogateInstanceId bigint
	declare @pendingTimer datetime
	declare @definitionIdentityHash uniqueidentifier
	declare @surrogateIdentityId bigint

	set @result = 0
	set @metadataUpdateOnly = 0
	
	exec @lockAcquired = sp_getapplock @Resource = 'InstanceStoreLock', @LockMode = 'Shared', @LockTimeout = @operationTimeout
		
	if (@lockAcquired < 0)
	begin
		select @result as 'Result'
		set @result = 13
	end
	
	set @now = getutcdate()
	
	if (@primitiveDataProperties is null and @complexDataProperties is null and @writeOnlyPrimitiveDataProperties is null and @writeOnlyComplexDataProperties is null)
		set @metadataUpdateOnly = 1

LockOrCreateInstance:
	if (@result = 0)
	begin
		exec [System.Activities.DurableInstancing].[LockInstance] @instanceId, @surrogateLockOwnerId, @handleInstanceVersion, @handleIsBoundToLock, @surrogateInstanceId output, @currentInstanceVersion output, @result output
															  
		if (@result = 0 and @surrogateInstanceId = 0)
		begin
			exec [System.Activities.DurableInstancing].[CreateInstance] @instanceId, @surrogateLockOwnerId, @workflowHostType, @serviceDeploymentId, @surrogateInstanceId output, @result output
			
			if (@result = 0 and @surrogateInstanceId = 0)
				goto LockOrCreateInstance
			
			set @currentInstanceVersion = 1
		end
	end
	
	if (@result = 0)
	begin
		select @enqueueCommand = [EnqueueCommand],
			   @deleteInstanceOnCompletion = [DeletesInstanceOnCompletion]
		from [LockOwnersTable]
		where ([SurrogateLockOwnerId] = @surrogateLockOwnerId)
		
		if (@isCompleted = 1 and @deleteInstanceOnCompletion = 1)
		begin
			exec [System.Activities.DurableInstancing].[DeleteInstance] @surrogateInstanceId
			goto Finally
		end
		
		if @identityMetadata is not null
		begin
			select @definitionIdentityHash = T.Item.value('DefinitionIdentityHash[1]', 'uniqueidentifier') 
			from @identityMetadata.nodes('/IdentityMetadata/IdentityCollection/Identity') as T(Item)
			
			if (@definitionIdentityHash is null)
			begin
				set @result = 15
				goto Finally 
			end
			else
			begin
				if not exists (
					select 1
					from [DefinitionIdentityTable]
					where [DefinitionIdentityHash] = @definitionIdentityHash
					)
				begin
					--insert the new identity
					exec [System.Activities.DurableInstancing].[InsertDefinitionIdentity] @identityMetadata
				end

                select @surrogateIdentityId = [SurrogateIdentityId]
                from [DefinitionIdentityTable]
                where ([DefinitionIdentityHash] = @definitionIdentityHash)
			end
		end
		
		update [InstancesTable] 
		set @instanceId = [InstancesTable].[Id],
			@workflowHostType = [WorkflowHostType] = 
					case when (@workflowHostType is null)
						then [WorkflowHostType]
						else @workflowHostType 
					end,
			@serviceDeploymentId = [ServiceDeploymentId] = 
					case when (@serviceDeploymentId is null)
						then [ServiceDeploymentId]
						else @serviceDeploymentId 
					end,
			@pendingTimer = [PendingTimer] = 
					case when (@metadataUpdateOnly = 1)
						then [PendingTimer]
						else [System.Activities.DurableInstancing].[GetExpirationTime](@timerDurationMilliseconds)
					end,
			@isReadyToRun = [IsReadyToRun] = 
					case when (@metadataUpdateOnly = 1)
						then [IsReadyToRun]
						else @isReadyToRun
					end,
			@isSuspended = [IsSuspended] = 
					case when (@suspensionStateChange = 0) then [IsSuspended]
						 when (@suspensionStateChange = 1) then 1
						 else 0
					end,
			[SurrogateLockOwnerId] = case when (@unlockInstance = 1 or @isCompleted = 1)
										then null
										else @surrogateLockOwnerId
									 end,
			[PrimitiveDataProperties] = case when (@metadataUpdateOnly = 1)
										then [PrimitiveDataProperties]
										else @primitiveDataProperties
									   end,
			[ComplexDataProperties] = case when (@metadataUpdateOnly = 1)
										then [ComplexDataProperties]
										else @complexDataProperties
									   end,
			[WriteOnlyPrimitiveDataProperties] = case when (@metadataUpdateOnly = 1)
										then [WriteOnlyPrimitiveDataProperties]
										else @writeOnlyPrimitiveDataProperties
									   end,
			[WriteOnlyComplexDataProperties] = case when (@metadataUpdateOnly = 1)
										then [WriteOnlyComplexDataProperties]
										else @writeOnlyComplexDataProperties
									   end,
			[MetadataProperties] = case
									 when (@metadataIsConsistent = 1) then @metadataProperties
									 else [MetadataProperties]
								   end,
			[SuspensionReason] = case
									when (@suspensionStateChange = 0) then [SuspensionReason]
									when (@suspensionStateChange = 1) then @suspensionReason
									else null
								 end,
			[SuspensionExceptionName] = case
									when (@suspensionStateChange = 0) then [SuspensionExceptionName]
									when (@suspensionStateChange = 1) then @suspensionExceptionName
									else null
								 end,
			[IsCompleted] = @isCompleted,
			[IsInitialized] = case
								when (@metadataUpdateOnly = 0) then 1
								else [IsInitialized]
							  end,
			[DataEncodingOption] = case
									when (@metadataUpdateOnly = 0) then @encodingOption
									else [DataEncodingOption]
								   end,
			[MetadataEncodingOption] = case
									when (@metadataIsConsistent = 1) then @encodingOption
									else [MetadataEncodingOption]
								   end,
			[BlockingBookmarks] = case
									when (@metadataUpdateOnly = 0) then @blockingBookmarks
									else [BlockingBookmarks]
								  end,
			[LastUpdated] = @now,
			[LastMachineRunOn] = case
									when (@metadataUpdateOnly = 0) then @lastMachineRunOn
									else [LastMachineRunOn]
								 end,
			[ExecutionStatus] = case
									when (@metadataUpdateOnly = 0) then @executionStatus
									else [ExecutionStatus]
								end,
			@surrogateIdentityId = [SurrogateIdentityId] = 
								case
									when (@identityMetadata is null) then [SurrogateIdentityId]
									else @surrogateIdentityId
								end
		from [InstancesTable]		
		where ([InstancesTable].[SurrogateInstanceId] = @surrogateInstanceId)
	
		if (@@rowcount = 0)
		begin
			set @result = 99
			select @result as 'Result' 
		end
		else
		begin
			if (@keysToAssociate is not null or @singleKeyId is not null)
				exec @result = [System.Activities.DurableInstancing].[AssociateKeys] @surrogateInstanceId, @keysToAssociate, @concatenatedKeyProperties, @encodingOption, @singleKeyId
			
			if (@result = 0 and @keysToComplete is not null)
				exec @result = [System.Activities.DurableInstancing].[CompleteKeys] @surrogateInstanceId, @keysToComplete
			
			if (@result = 0 and @keysToFree is not null)
				exec @result = [System.Activities.DurableInstancing].[FreeKeys] @surrogateInstanceId, @keysToFree
			
			if (@result = 0) and (@metadataUpdateOnly = 0)
			begin
				delete from [InstancePromotedPropertiesTable]
				where [SurrogateInstanceId] = @surrogateInstanceId
			end
			
			if (@result = 0)
			begin
				if (@metadataIsConsistent = 1)
				begin
					delete from [InstanceMetadataChangesTable]
					where [SurrogateInstanceId] = @surrogateInstanceId
				end
				else if (@metadataProperties is not null)
				begin
					insert into [InstanceMetadataChangesTable] ([SurrogateInstanceId], [EncodingOption], [Change])
					values (@surrogateInstanceId, @encodingOption, @metadataProperties)
				end
			end
			
			if (@result = 0 and @unlockInstance = 1 and @isCompleted = 0)
				exec [System.Activities.DurableInstancing].[InsertRunnableInstanceEntry] @surrogateInstanceId, @workflowHostType, @serviceDeploymentId, @isSuspended, @isReadyToRun, @pendingTimer, @surrogateIdentityId	
		end
	end

Finally:
	if (@result != 13)
		exec sp_releaseapplock @Resource = 'InstanceStoreLock'
	
	if (@result = 0)
		select @result as 'Result', @currentInstanceVersion

	return @result
end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[TryLoadRunnableInstance]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [System.Activities.DurableInstancing].[TryLoadRunnableInstance]
	@surrogateLockOwnerId bigint,
	@workflowHostType uniqueidentifier,
	@operationType tinyint,
	@handleInstanceVersion bigint,
	@handleIsBoundToLock bit,
	@encodingOption tinyint,	
	@operationTimeout int
as
begin
	set nocount on
	set transaction isolation level read committed	
	set xact_abort on;	
	set deadlock_priority -6
	begin tran
	
	declare @instanceId uniqueIdentifier
	declare @now datetime
	set @now = getutcdate()
	
	declare @workflowIdentityFilter tinyint
	
	select @workflowIdentityFilter = [WorkflowIdentityFilter]
	from [LockOwnersTable]
	where [LockOwnersTable].SurrogateLockOwnerId = @surrogateLockOwnerId
	
	if (@workflowIdentityFilter = null)
		set @workflowIdentityFilter = 0
		
	if (@workflowIdentityFilter = 1)
	begin
		-- Load any Runnable instances of specified WorkflowHostType
		select top (1) @instanceId = instances.[Id]
		from [RunnableInstancesTable] runnableInstances with (readpast, updlock)
			inner loop join [InstancesTable] instances with (readpast, updlock)
			on runnableInstances.[SurrogateInstanceId] = instances.[SurrogateInstanceId]
		where runnableInstances.[WorkflowHostType] = @workflowHostType
			  and 
			  runnableInstances.[RunnableTime] <= @now	
	end
	else if (@workflowIdentityFilter = 2)
	begin
		declare @AnyRevisionFilter table
		(
			DefinitionIdentityAnyRevisionHash uniqueidentifier
			UNIQUE (DefinitionIdentityAnyRevisionHash)
		)

		insert into @AnyRevisionFilter 
		select distinct [DefinitionIdentityAnyRevisionHash]
		from [DefinitionIdentityTable] as IdentityTable, [IdentityOwnerTable] as IdentityOwnerTable
		where IdentityOwnerTable.[SurrogateLockOwnerId] = @surrogateLockOwnerId 
			and 
			IdentityTable.[SurrogateIdentityId] = IdentityOwnerTable.[SurrogateIdentityId]
	
		-- Load Runnables instances of specified WorkflowHostType and ignore revision field on supported identities. 
		select top (1) @instanceId = instances.[Id]
		from [RunnableInstancesTable] runnableInstances with (readpast, updlock)
			inner loop join [InstancesTable] instances with (readpast, updlock)
			on runnableInstances.[SurrogateInstanceId] = instances.[SurrogateInstanceId]
			inner loop join (
						select IdentityTable.[SurrogateIdentityId] as IdentityId
						from [System.Activities.DurableInstancing].[DefinitionIdentityTable] as IdentityTable, @AnyRevisionFilter as AnyRevision
						where IdentityTable.[DefinitionIdentityAnyRevisionHash] = AnyRevision.DefinitionIdentityAnyRevisionHash
					) as FilteredIdentities 
			on runnableInstances.SurrogateIdentityId = FilteredIdentities.IdentityId
		where runnableInstances.[WorkflowHostType] = @workflowHostType
			  and 
			  runnableInstances.[RunnableTime] <= @now	  			
	end
	else
	begin
		-- Load Runnable instances of specified WorkflowHostType and the supported identities
		select top (1) @instanceId = instances.[Id]
		from [RunnableInstancesTable] runnableInstances with (readpast, updlock)
			inner loop join [InstancesTable] instances with (readpast, updlock)
			on runnableInstances.[SurrogateInstanceId] = instances.[SurrogateInstanceId]
			inner loop join (
				select [SurrogateIdentityId] as IdentityId 
				from [IdentityOwnerTable] 
				where [SurrogateLockOwnerId] = @surrogateLockOwnerId
			) as FilteredIdentities  
			on runnableInstances.[SurrogateIdentityId] = FilteredIdentities.IdentityId
		where runnableInstances.[WorkflowHostType] = @workflowHostType
			  and 
			  runnableInstances.[RunnableTime] <= @now
	end	       

    if (@@rowcount = 1)
    begin
		select 0 as 'Result', cast(1 as bit)				
		exec [System.Activities.DurableInstancing].[LoadInstance] @surrogateLockOwnerId, @operationType, @handleInstanceVersion, @handleIsBoundToLock, null, @instanceId, null, @encodingOption, null, null, @operationTimeout
    end	
    else
    begin
		select 0 as 'Result', cast(0 as bit)
    end
    
    if (@@trancount > 0)
    begin
		commit tran
    end
end

GO
/****** Object:  StoredProcedure [System.Activities.DurableInstancing].[UnlockInstance]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [System.Activities.DurableInstancing].[UnlockInstance]
	@surrogateLockOwnerId bigint,
	@instanceId uniqueidentifier,
	@handleInstanceVersion bigint
as
begin
	set nocount on
	set transaction isolation level read committed		
	set xact_abort on;	
	begin transaction
	
	declare @pendingTimer datetime
	declare @surrogateInstanceId bigint
	declare @workflowHostType uniqueidentifier
	declare @serviceDeploymentId bigint
	declare @enqueueCommand bit	
	declare @isReadyToRun bit	
	declare @isSuspended bit
	declare @now datetime
	declare @surrogateIdentityId bigint
	
	set @now = getutcdate()
		
	update [InstancesTable]
	set [SurrogateLockOwnerId] = null,
	    @surrogateInstanceId = [SurrogateInstanceId],
	    @workflowHostType = [WorkflowHostType],
   	    @serviceDeploymentId = [ServiceDeploymentId],
	    @pendingTimer = [PendingTimer],
	    @isReadyToRun =  [IsReadyToRun],
	    @isSuspended = [IsSuspended],
	    @surrogateIdentityId = [SurrogateIdentityId]
	where [Id] = @instanceId and
		  [SurrogateLockOwnerId] = @surrogateLockOwnerId and
		  [Version] = @handleInstanceVersion
	
	exec [System.Activities.DurableInstancing].[InsertRunnableInstanceEntry] @surrogateInstanceId, @workflowHostType, @serviceDeploymentId, @isSuspended, @isReadyToRun, @pendingTimer, @surrogateIdentityId    
	
	commit transaction
end

GO
/****** Object:  UserDefinedFunction [dbo].[X_FN_ParentCoalesce]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[X_FN_ParentCoalesce]
(
	@iterations int
)
RETURNS nvarchar(max)
AS
BEGIN
	declare @it as int = @iterations --5 -- @iterations
	declare @txt as nvarchar(max) = ''
	WHILE (@it > 1)
	BEGIN
		set @txt =  @txt + ' <' + cast(@it as nvarchar(max)) + '>,' 
		set @it = @it - 1
	END
	IF @it = 1 set @txt = @txt + ' <1>'
	--Recursion in SQL capped at 32x ....Removed.....
	--print @txt
	--if @iterations < 2 return ''
	--if @iterations = 2 return ' <2>, <1>'
	--RETURN ' <' + cast(@iterations as nvarchar(max)) + '>,'  + dbo.X_FN_ParentCoalesce(@iterations - 1)
	RETURN @txt
END

GO
/****** Object:  UserDefinedFunction [System.Activities.DurableInstancing].[GetExpirationTime]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [System.Activities.DurableInstancing].[GetExpirationTime] (@offsetInMilliseconds bigint)
returns datetime
as
begin

	if (@offsetInMilliseconds is null)
	begin
		return null
	end

	declare @hourInMillisecond bigint
	declare @offsetInHours bigint
	declare @remainingOffsetInMilliseconds bigint
	declare @expirationTimer datetime

	set @hourInMillisecond = 60*60*1000
	set @offsetInHours = @offsetInMilliseconds / @hourInMillisecond
	set @remainingOffsetInMilliseconds = @offsetInMilliseconds % @hourInMillisecond

	set @expirationTimer = getutcdate()
	set @expirationTimer = dateadd (hour, @offsetInHours, @expirationTimer)
	set @expirationTimer = dateadd (millisecond,@remainingOffsetInMilliseconds, @expirationTimer)

	return @expirationTimer

end

GO
/****** Object:  UserDefinedFunction [System.Activities.DurableInstancing].[ParseBinaryPropertyValue]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [System.Activities.DurableInstancing].[ParseBinaryPropertyValue] (@startPosition int, @length int, @concatenatedKeyProperties varbinary(max))
returns varbinary(max)
as
begin
	if (@length > 0)
		return substring(@concatenatedKeyProperties, @startPosition + 1, @length)
	return null
end

GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[E_Credit]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Credit](
	[CreditID] [uniqueidentifier] NOT NULL,
	[SupplyID] [uniqueidentifier] NOT NULL,
	[InvoiceID] [uniqueidentifier] NOT NULL,
	[InvoiceLineID] [uniqueidentifier] NULL,
	[IsCreditNote] [bit] NOT NULL,
	[IsRefund] [bit] NOT NULL,
	[OriginalCredit] [money] NULL,
	[CurrencyID] [uniqueidentifier] NULL,
	[CreditAmount] [money] NOT NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_E_Credit] PRIMARY KEY CLUSTERED 
(
	[CreditID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Currency]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Currency](
	[CurrencyID] [uniqueidentifier] NOT NULL,
	[CountryID] [nvarchar](2) NOT NULL,
	[EquivalentMultiplier] [numeric](38, 20) NULL,
	[BuyMultiplier] [numeric](38, 20) NULL,
	[SellMultiplier] [numeric](38, 20) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_E_Currency] PRIMARY KEY CLUSTERED 
(
	[CurrencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_DictionaryTax]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_DictionaryTax](
	[TaxID] [uniqueidentifier] NOT NULL,
	[TaxName] [nvarchar](60) NULL,
	[TaxRate] [numeric](38, 20) NULL,
	[TaxRateUnitID] [uniqueidentifier] NULL,
	[CountryID] [nvarchar](2) NULL,
	[CountryStateID] [uniqueidentifier] NULL,
	[ProvinceID] [uniqueidentifier] NULL,
	[ApplicableFrom] [datetime] NULL,
	[ApplicableUntil] [datetime] NULL,
	[BracketMinimum] [money] NULL,
	[BracketMaximum] [money] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_E_Tax] PRIMARY KEY CLUSTERED 
(
	[TaxID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Invoice]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Invoice](
	[InvoiceID] [uniqueidentifier] NOT NULL,
	[Sequence] [int] NULL,
	[SupplierCompanyID] [uniqueidentifier] NULL,
	[SupplierCompanyAddressID] [uniqueidentifier] NULL,
	[SupplierAccountID] [uniqueidentifier] NULL,
	[SupplierReferenceNumber] [nvarchar](60) NULL,
	[CustomerCompanyID] [uniqueidentifier] NULL,
	[CustomerCompanyAddressID] [uniqueidentifier] NULL,
	[CustomerAccountID] [uniqueidentifier] NULL,
	[CustomerReferenceNumber] [nvarchar](60) NULL,
	[FreightTax] [money] NULL,
	[FreightAmount] [money] NULL,
	[DiscountIncludesFreight] [bit] NULL,
	[DiscountAllFreight] [bit] NULL,
	[DiscountAmount] [money] NULL,
	[TaxAmount] [money] NULL,
	[OriginalTotal] [money] NULL,
	[CurrencyID] [uniqueidentifier] NULL,
	[Total] [money] NULL,
	[Dated] [date] NULL,
	[Communicated] [date] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_E_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_InvoiceLine]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_InvoiceLine](
	[InvoiceLineID] [uniqueidentifier] NOT NULL,
	[InvoiceID] [uniqueidentifier] NOT NULL,
	[SupplyItemID] [uniqueidentifier] NULL,
	[ReferenceType] [nvarchar](60) NULL,
	[ReferenceID] [uniqueidentifier] NULL,
	[Description] [nvarchar](60) NULL,
	[Quantity] [numeric](38, 20) NULL,
	[TaxID] [uniqueidentifier] NULL,
	[Tax] [money] NULL,
	[OriginalSubtotal] [money] NULL,
	[CurrencyID] [uniqueidentifier] NULL,
	[Subtotal] [money] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_E_InvoiceLine] PRIMARY KEY CLUSTERED 
(
	[InvoiceLineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Journal]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Journal](
	[JournalID] [uniqueidentifier] NOT NULL,
	[ReferenceType] [nvarchar](60) NULL,
	[ReferenceID] [uniqueidentifier] NULL,
	[ReferenceDate] [datetime] NULL,
	[AccountID] [uniqueidentifier] NULL,
	[OriginalAmount] [money] NULL,
	[CurrencyID] [uniqueidentifier] NULL,
	[Amount] [money] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_E_Journal] PRIMARY KEY CLUSTERED 
(
	[JournalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Payment]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Payment](
	[PaymentID] [uniqueidentifier] NOT NULL,
	[SupplierAccountID] [uniqueidentifier] NULL,
	[CustomerAccountID] [uniqueidentifier] NULL,
	[OriginalAmount] [money] NULL,
	[CurrencyID] [uniqueidentifier] NULL,
	[Amount] [money] NULL,
	[Paid] [datetime] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_E_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_PurchaseOrder]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_PurchaseOrder](
	[PurchaseOrderID] [uniqueidentifier] NOT NULL,
	[PurchaseName] [nvarchar](60) NULL,
	[ReferenceCode] [nvarchar](60) NULL,
	[ReferenceSystem] [nvarchar](60) NULL,
	[OriginalSubtotal] [money] NULL,
	[CurrencyID] [uniqueidentifier] NULL,
	[Subtotal] [money] NULL,
	[Ordered] [date] NULL,
	[ProjectID] [uniqueidentifier] NULL,
	[CustomerCompanyID] [uniqueidentifier] NULL,
	[CustomerContactID] [uniqueidentifier] NULL,
	[CustomerAccountID] [uniqueidentifier] NULL,
	[SupplierCompanyID] [uniqueidentifier] NULL,
	[SupplierContactID] [uniqueidentifier] NULL,
	[SupplierAccountID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_E_PurchaseOrder] PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Supply]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Supply](
	[SupplyID] [uniqueidentifier] NOT NULL,
	[ParentSupplyID] [uniqueidentifier] NULL,
	[ProjectID] [uniqueidentifier] NULL,
	[CustomerInvoiceID] [uniqueidentifier] NULL,
	[SupplierInvoiceID] [uniqueidentifier] NULL,
	[Sequence] [int] NOT NULL,
	[CustomerPurchaseOrderID] [uniqueidentifier] NULL,
	[CustomerApprovedBy] [uniqueidentifier] NULL,
	[SupplierPurchaseOrderID] [uniqueidentifier] NULL,
	[SupplierApprovedBy] [uniqueidentifier] NULL,
	[IsDraft] [bit] NULL,
	[IsUnapproved] [bit] NULL,
	[IsDenied] [bit] NULL,
	[IsSupplied] [bit] NULL,
	[IsReorderSent] [bit] NULL,
	[IsPaid] [bit] NULL,
	[IsFinalised] [bit] NULL,
	[CurrentProjectDeliverableID] [uniqueidentifier] NULL,
	[FinalProjectDeliverableID] [uniqueidentifier] NULL,
	[DateOrdered] [datetime] NULL,
	[PurchasingNotes] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_E_Supply] PRIMARY KEY CLUSTERED 
(
	[SupplyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_SupplyItem]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_SupplyItem](
	[SupplyItemID] [uniqueidentifier] NOT NULL,
	[SupplyID] [uniqueidentifier] NOT NULL,
	[ProjectPlanTaskModelID] [uniqueidentifier] NULL,
	[ProjectPlanTaskPartID] [uniqueidentifier] NULL,
	[ProjectPlanTaskResponseID] [uniqueidentifier] NULL,
	[CustomerAccountID] [uniqueidentifier] NULL,
	[ModelUnitID] [uniqueidentifier] NULL,
	[LabourUnitID] [uniqueidentifier] NULL,
	[PartUnitID] [uniqueidentifier] NULL,
	[CostPerUnitModel] [money] NULL,
	[CostPerUnitLabour] [money] NULL,
	[CostPerUnitPart] [money] NULL,
	[QuantityModel] [numeric](38, 20) NULL,
	[QuantityLabour] [numeric](38, 20) NULL,
	[QuantityPart] [numeric](38, 20) NULL,
	[CostModel] [money] NULL,
	[CostLabour] [money] NULL,
	[CostPart] [money] NULL,
	[SubtotalModel] [money] NULL,
	[SubtotalLabour] [money] NULL,
	[SubtotalPart] [money] NULL,
	[TaxModel] [money] NULL,
	[TaxLabour] [money] NULL,
	[TaxPart] [money] NULL,
	[Tax] [money] NULL,
	[OriginalSubtotal] [money] NULL,
	[CurrencyID] [uniqueidentifier] NULL,
	[Subtotal] [money] NULL,
	[Notes] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_E_SupplyItem] PRIMARY KEY CLUSTERED 
(
	[SupplyItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_SupplyItemTax]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_SupplyItemTax](
	[SupplyItemTaxID] [uniqueidentifier] NOT NULL,
	[SupplyItemID] [uniqueidentifier] NULL,
	[TaxID] [uniqueidentifier] NULL,
	[Tax] [money] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_E_SupplyItemTax] PRIMARY KEY CLUSTERED 
(
	[SupplyItemTaxID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Account]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Account](
	[AccountID] [uniqueidentifier] NOT NULL,
	[ParentAccountID] [uniqueidentifier] NULL,
	[AcountCode] [nvarchar](60) NULL,
	[AccountName] [nvarchar](60) NULL,
	[PrimaryCompanyID] [uniqueidentifier] NULL,
	[DefaultLocationID] [uniqueidentifier] NULL,
	[Description] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_ACCOUNTS] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Q_Accoun__D80F99A726CFC035] UNIQUE NONCLUSTERED 
(
	[AcountCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_AccountDiscount]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_AccountDiscount](
	[AccountProductDiscountID] [uniqueidentifier] NOT NULL,
	[SourceAccountID] [uniqueidentifier] NULL,
	[ClientCompanyID] [uniqueidentifier] NULL,
	[ProviderExperienceID] [uniqueidentifier] NULL,
	[DeviceTypeID] [uniqueidentifier] NULL,
	[LevelUnitID] [uniqueidentifier] NULL,
	[LevelQuantity] [numeric](38, 20) NULL,
	[Rate] [numeric](38, 20) NULL,
	[ValidFrom] [datetime] NULL,
	[ValidUntil] [datetime] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_AccountProductDiscount] PRIMARY KEY CLUSTERED 
(
	[AccountProductDiscountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Asset]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Asset](
	[AssetID] [uniqueidentifier] NOT NULL,
	[ParentAssetID] [uniqueidentifier] NULL,
	[AssetName] [nvarchar](60) NOT NULL,
	[Cost] [money] NULL,
	[Purchased] [datetime] NULL,
	[PurchaseOrderID] [uniqueidentifier] NULL,
	[ExpenseNotToExceedLifeTimeCost] [money] NULL,
	[OwnerAccountID] [uniqueidentifier] NULL,
	[BorrowerAccountID] [uniqueidentifier] NULL,
	[MaintenanceAccountID] [uniqueidentifier] NULL,
	[ModelID] [uniqueidentifier] NULL,
	[LocationID] [uniqueidentifier] NULL,
	[AssetStatusID] [uniqueidentifier] NULL,
	[ExperienceID] [uniqueidentifier] NULL,
	[Description] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_ASSETS] PRIMARY KEY CLUSTERED 
(
	[AssetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__ASSET__688B8C3B53D770D6] UNIQUE NONCLUSTERED 
(
	[AssetName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_AssetAlias]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Q_AssetAlias](
	[AssetAliasID] [uniqueidentifier] NOT NULL,
	[AssetID] [uniqueidentifier] NOT NULL,
	[AssetAliasName] [nvarchar](60) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_DictionaryAssetAlias] PRIMARY KEY CLUSTERED 
(
	[AssetAliasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Q_AssetMaintenance]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_AssetMaintenance](
	[AssetMaintenanceID] [uniqueidentifier] NOT NULL,
	[AssetID] [uniqueidentifier] NULL,
	[ModelProcedureID] [uniqueidentifier] NULL,
	[TargetNextDueDate] [datetime] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_ASSET_SCHEDULE_MNTNC] PRIMARY KEY CLUSTERED 
(
	[AssetMaintenanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_AssetWarranty]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_AssetWarranty](
	[AssetyWarrantyID] [uniqueidentifier] NOT NULL,
	[AssetID] [uniqueidentifier] NULL,
	[ModelWarrantyID] [uniqueidentifier] NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Frequency] [numeric](38, 20) NOT NULL,
	[FrequencyUnitID] [uniqueidentifier] NOT NULL,
	[WarrantyTypeID] [uniqueidentifier] NOT NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_AssetWarranty] PRIMARY KEY CLUSTERED 
(
	[AssetyWarrantyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_CompanyAccount]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_CompanyAccount](
	[CompanyAccountID] [uniqueidentifier] NOT NULL,
	[CompanyID] [uniqueidentifier] NULL,
	[AccountID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_CompanyAccount] PRIMARY KEY CLUSTERED 
(
	[CompanyAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_ContractAsset]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_ContractAsset](
	[ContractAssetID] [uniqueidentifier] NOT NULL,
	[ContractID] [uniqueidentifier] NOT NULL,
	[AssetID] [uniqueidentifier] NOT NULL,
	[OverrideCoverageStart] [datetime] NULL,
	[OverrideCoverageEnd] [datetime] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_ContractAsset] PRIMARY KEY CLUSTERED 
(
	[ContractAssetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_DeliveryAdvice]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_DeliveryAdvice](
	[DeliveryAdviceID] [uniqueidentifier] NOT NULL,
	[DeliveryAdviceName] [nvarchar](60) NOT NULL,
	[Sequence] [int] NULL,
	[ShippingCompanyID] [uniqueidentifier] NULL,
	[FreightCharge] [money] NULL,
	[FreightTax] [money] NULL,
	[ConsignmentNote] [nvarchar](100) NULL,
	[AccessoriesSent] [nvarchar](500) NULL,
	[DeliveryAdviceNotes] [nvarchar](500) NULL,
	[IsEditable] [bit] NOT NULL,
	[SourceCompanyAddressID] [uniqueidentifier] NULL,
	[DestinationCompanyAddressID] [uniqueidentifier] NULL,
	[DeliveryAdviceReasonID] [uniqueidentifier] NULL,
	[DeliveryAdviceReasonNote] [nvarchar](255) NULL,
	[BillingAccountID] [uniqueidentifier] NULL,
	[ProjectDeliverableID] [uniqueidentifier] NULL,
	[ProjectID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_DELIVERYADVICE] PRIMARY KEY CLUSTERED 
(
	[DeliveryAdviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__DELIVERY__8F63B2CF5A846E65] UNIQUE NONCLUSTERED 
(
	[DeliveryAdviceName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_DeliveryAdviceItem]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_DeliveryAdviceItem](
	[DeliveryAdviceItemID] [uniqueidentifier] NOT NULL,
	[DeliveryAdviceID] [uniqueidentifier] NOT NULL,
	[AssetID] [uniqueidentifier] NULL,
	[ItemDescription] [nvarchar](100) NULL,
	[PartID] [uniqueidentifier] NULL,
	[QuantitySent] [numeric](38, 20) NULL,
	[QuantityReceived] [numeric](38, 20) NULL,
	[ReturnReferenceNumber] [nvarchar](60) NULL,
	[ItemInstruction] [nvarchar](max) NULL,
	[DecontaminationStatusID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_DELIVERYADVICE_LINEITEM] PRIMARY KEY CLUSTERED 
(
	[DeliveryAdviceItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_DicitonaryAssetStatus]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_DicitonaryAssetStatus](
	[AssetStatusID] [uniqueidentifier] NOT NULL,
	[StandardAssetStatusName] [nvarchar](60) NOT NULL,
	[CustomAssetStatusName] [nvarchar](60) NULL,
	[Description] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_DicitonaryAssetStatus] PRIMARY KEY CLUSTERED 
(
	[AssetStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_DictionaryDecontaminationStatus]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_DictionaryDecontaminationStatus](
	[DecontaminationStatusID] [uniqueidentifier] NOT NULL,
	[StandardDecontaminationStatusName] [nvarchar](60) NOT NULL,
	[CustomDecontaminationStatusName] [nvarchar](60) NULL,
	[IsSafeForHandling] [bit] NOT NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_Q_DictionaryDecontaminationStatus] PRIMARY KEY CLUSTERED 
(
	[DecontaminationStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_DictionaryDeliveryAdviceReason]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_DictionaryDeliveryAdviceReason](
	[DeliveryAdviceReasonID] [uniqueidentifier] NOT NULL,
	[StandardDeliveryAdviceReasonName] [nvarchar](60) NOT NULL,
	[CustomDeliveryAdviceReasonName] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_Q_DictionaryDeliveryAdviceReason] PRIMARY KEY CLUSTERED 
(
	[DeliveryAdviceReasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_DictionaryDeviceType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_DictionaryDeviceType](
	[DeviceTypeID] [uniqueidentifier] NOT NULL,
	[ParentDeviceTypeID] [uniqueidentifier] NULL,
	[StandardDeviceTypeName] [nvarchar](60) NULL,
	[EcriDeviceTypeName] [nvarchar](60) NULL,
	[CustomDeviceTypeName] [nvarchar](60) NULL,
	[PrimaryWorkTypeID] [uniqueidentifier] NULL,
	[IsAttributable] [bit] NULL,
	[IsDevice] [bit] NULL,
	[IsPart] [bit] NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_Q_DictionaryDeviceType] PRIMARY KEY CLUSTERED 
(
	[DeviceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_DictionaryEventType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_DictionaryEventType](
	[EventTypeID] [uniqueidentifier] NOT NULL,
	[StandardEventTypeName] [nvarchar](60) NULL,
	[CustomEventTypeName] [nvarchar](60) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_Q_DictionaryEventType] PRIMARY KEY CLUSTERED 
(
	[EventTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_DictionaryPart]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Q_DictionaryPart](
	[PartID] [uniqueidentifier] NOT NULL,
	[ParentPartID] [uniqueidentifier] NULL,
	[StandardPartName] [nvarchar](60) NOT NULL,
	[EcriPartName] [nvarchar](60) NULL,
	[CustomPartName] [nvarchar](60) NULL,
	[CompanyID] [uniqueidentifier] NULL,
	[OriginalManufacturerName] [nvarchar](255) NULL,
	[PartStatusID] [uniqueidentifier] NULL,
	[DeviceTypeID] [uniqueidentifier] NULL,
	[ManufacturedFrom] [date] NULL,
	[ManufacturedUntil] [date] NULL,
	[SupportedUntil] [date] NULL,
	[EstimatedLifetimeUnitID] [uniqueidentifier] NULL,
	[EstimatedLifetime] [numeric](38, 20) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Part] PRIMARY KEY CLUSTERED 
(
	[PartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Q_DictionaryPartCategory]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_DictionaryPartCategory](
	[PartCategoryID] [uniqueidentifier] NOT NULL,
	[PartID] [uniqueidentifier] NULL,
	[CategoryDeviceTypeID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Part_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[PartCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_DictionaryPartKit]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_DictionaryPartKit](
	[PartKitID] [uniqueidentifier] NOT NULL,
	[StandardPartKitName] [nvarchar](60) NULL,
	[CustomPartKitName] [nvarchar](60) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_Q_PartKit] PRIMARY KEY CLUSTERED 
(
	[PartKitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_DictionaryPartKitItem]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_DictionaryPartKitItem](
	[PartKitItemID] [uniqueidentifier] NOT NULL,
	[PartKitID] [uniqueidentifier] NOT NULL,
	[PartID] [uniqueidentifier] NOT NULL,
	[UnitID] [uniqueidentifier] NULL,
	[Quantity] [numeric](38, 20) NULL,
 CONSTRAINT [PK_Q_PartKitItems] PRIMARY KEY CLUSTERED 
(
	[PartKitItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_DictionaryProcedure]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_DictionaryProcedure](
	[ProcedureID] [uniqueidentifier] NOT NULL,
	[StandardProcedureName] [nvarchar](60) NOT NULL,
	[CustomProcedureName] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Q_Procedure] PRIMARY KEY CLUSTERED 
(
	[ProcedureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_DictionaryWarrantyType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_DictionaryWarrantyType](
	[WarrantyTypeID] [uniqueidentifier] NOT NULL,
	[StandardWarrantyTypeName] [nvarchar](60) NOT NULL,
	[CustomWarrantyTypeName] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Q_DictionaryWarrantyType] PRIMARY KEY CLUSTERED 
(
	[WarrantyTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_ModelPart]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_ModelPart](
	[ModelPartID] [uniqueidentifier] NOT NULL,
	[ModelID] [uniqueidentifier] NOT NULL,
	[PartID] [uniqueidentifier] NOT NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_MODEL_Part] PRIMARY KEY CLUSTERED 
(
	[ModelPartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_ModelPartKit]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_ModelPartKit](
	[ModelPartKitID] [uniqueidentifier] NOT NULL,
	[PartKitID] [uniqueidentifier] NOT NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Part_KIT_MODEL] PRIMARY KEY CLUSTERED 
(
	[ModelPartKitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_ModelProcedure]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_ModelProcedure](
	[ModelProcedureID] [uniqueidentifier] NOT NULL,
	[ModelID] [uniqueidentifier] NOT NULL,
	[ProcedureID] [uniqueidentifier] NULL,
	[Sequence] [int] NOT NULL,
	[Frequency] [numeric](18, 10) NULL,
	[FrequencyUnitID] [uniqueidentifier] NULL,
	[RiskFactor] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_ModelProcedure] PRIMARY KEY CLUSTERED 
(
	[ModelProcedureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_ModelProcedureTask]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_ModelProcedureTask](
	[ModelProcedureTaskID] [uniqueidentifier] NOT NULL,
	[ModelProcedureID] [uniqueidentifier] NOT NULL,
	[TaskID] [uniqueidentifier] NULL,
	[Sequence] [int] NULL,
	[FileDataID] [uniqueidentifier] NULL,
	[StatedRevisionNumber] [nvarchar](40) NULL,
	[StatedRevisionPublishDate] [datetime] NULL,
	[EstimatedDuration] [numeric](38, 20) NULL,
	[EstimatedDurationUnitID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_ModelProcedureTask] PRIMARY KEY CLUSTERED 
(
	[ModelProcedureTaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_ModelProcedureTaskPart]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_ModelProcedureTaskPart](
	[ModelProcedureTaskPartID] [uniqueidentifier] NOT NULL,
	[ModelProcedureTaskID] [uniqueidentifier] NOT NULL,
	[PartID] [uniqueidentifier] NOT NULL,
	[PartQuantity] [numeric](38, 20) NOT NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_ModelProcedureTaskPart] PRIMARY KEY CLUSTERED 
(
	[ModelProcedureTaskPartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_ModelScheduleCycle]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_ModelScheduleCycle](
	[ModelScheduleCycleID] [uniqueidentifier] NOT NULL,
	[ModelID] [uniqueidentifier] NOT NULL,
	[ModelProcedureID] [uniqueidentifier] NOT NULL,
	[Sequence] [int] NOT NULL,
	[ScheduleFrequencyUnitID] [uniqueidentifier] NOT NULL,
	[ScheduleFrequency] [numeric](38, 20) NOT NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_ModelScheduleCycle] PRIMARY KEY CLUSTERED 
(
	[ModelScheduleCycleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_ModelWarranty]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_ModelWarranty](
	[ModelWarrantyID] [uniqueidentifier] NOT NULL,
	[ModelID] [uniqueidentifier] NOT NULL,
	[WarrantyTypeID] [uniqueidentifier] NOT NULL,
	[WarrantyPeriodUnitID] [uniqueidentifier] NULL,
	[WarrantyPeriod] [numeric](38, 20) NULL,
	[WarrantyExpires] [date] NULL,
	[WarrantyRenewal] [date] NULL,
	[SupplierContractID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_MODEL_WARRANTY] PRIMARY KEY CLUSTERED 
(
	[ModelWarrantyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_ProjectPlanTaskModel]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_ProjectPlanTaskModel](
	[ProjectPlanTaskModelID] [uniqueidentifier] NOT NULL,
	[ProjectPlanTaskID] [uniqueidentifier] NULL,
	[ModelID] [uniqueidentifier] NULL,
	[WarehouseModelID] [uniqueidentifier] NULL,
	[SupplierModelID] [uniqueidentifier] NULL,
	[QuantityUnitID] [uniqueidentifier] NULL,
	[QuantityOrdered] [numeric](38, 20) NULL,
	[QuantityDespatched] [numeric](38, 20) NULL,
	[QuantityReceived] [numeric](38, 20) NULL,
	[QuantityUsed] [numeric](38, 20) NULL,
	[Used] [datetime] NULL,
	[Note] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_ProjectPlanTaskModel] PRIMARY KEY CLUSTERED 
(
	[ProjectPlanTaskModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_ProjectPlanTaskPart]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_ProjectPlanTaskPart](
	[ProjectPlanTaskPartID] [uniqueidentifier] NOT NULL,
	[ProjectPlanTaskID] [uniqueidentifier] NULL,
	[PartID] [uniqueidentifier] NULL,
	[WarehousePartID] [uniqueidentifier] NULL,
	[SupplierPartID] [uniqueidentifier] NULL,
	[QuantityUnitID] [uniqueidentifier] NULL,
	[QuantityOrdered] [numeric](38, 20) NULL,
	[QuantityDespatched] [numeric](38, 20) NULL,
	[QuantityReceived] [numeric](38, 20) NULL,
	[QuantityUsed] [numeric](38, 20) NULL,
	[Used] [datetime] NULL,
	[Note] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_ProjectPlanTaskPart] PRIMARY KEY CLUSTERED 
(
	[ProjectPlanTaskPartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Recall]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Recall](
	[RecallID] [uniqueidentifier] NOT NULL,
	[GlobalRecallCode] [nvarchar](60) NULL,
	[GlobalRecallOrigin] [nvarchar](100) NULL,
	[ProjectID] [uniqueidentifier] NULL,
	[Issued] [datetime] NULL,
	[IssuedBy] [uniqueidentifier] NULL,
	[Received] [datetime] NULL,
	[ReceivedBy] [uniqueidentifier] NULL,
	[Actioned] [datetime] NULL,
	[ActionedBy] [uniqueidentifier] NULL,
	[ResponsibleContactID] [uniqueidentifier] NULL,
	[Description] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_Recalls] PRIMARY KEY CLUSTERED 
(
	[RecallID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_RecallModel]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_RecallModel](
	[RecallModelID] [uniqueidentifier] NOT NULL,
	[RecallID] [uniqueidentifier] NULL,
	[ModelID] [uniqueidentifier] NULL,
	[Description] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_RECALL_MODEL] PRIMARY KEY CLUSTERED 
(
	[RecallModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_RecallModelAsset]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_RecallModelAsset](
	[RecallModelAssetID] [uniqueidentifier] NOT NULL,
	[RecallModelID] [uniqueidentifier] NULL,
	[AssetID] [uniqueidentifier] NULL,
	[ProjectPlanID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_RecallModelAssets] PRIMARY KEY CLUSTERED 
(
	[RecallModelAssetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_SupplierModel]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_SupplierModel](
	[SupplierModelID] [uniqueidentifier] NOT NULL,
	[SupplierID] [uniqueidentifier] NOT NULL,
	[ModelID] [uniqueidentifier] NOT NULL,
	[Seqeunce] [int] NOT NULL,
	[SupplierContractID] [uniqueidentifier] NULL,
	[IsOEM] [bit] NULL,
	[OrderQuantityMinimum] [numeric](38, 20) NULL,
	[PricePerUnit] [money] NULL,
	[PriceUnitID] [uniqueidentifier] NULL,
	[SupplierModelNumber] [nvarchar](60) NULL,
	[SupplierModelDescription] [nvarchar](max) NULL,
	[SupplierFileDataID] [uniqueidentifier] NULL,
	[LeadTimeUnitID] [uniqueidentifier] NULL,
	[LeadTime] [numeric](38, 20) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_ModelSupplier] PRIMARY KEY CLUSTERED 
(
	[SupplierModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_SupplierPart]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_SupplierPart](
	[SupplierPartID] [uniqueidentifier] NOT NULL,
	[SupplierID] [uniqueidentifier] NOT NULL,
	[PartID] [uniqueidentifier] NOT NULL,
	[Seqeunce] [int] NOT NULL,
	[SupplierContractID] [uniqueidentifier] NULL,
	[IsOEM] [bit] NULL,
	[OrderQuantityMinimum] [numeric](38, 20) NULL,
	[PricePerUnit] [money] NULL,
	[PriceUnitID] [uniqueidentifier] NULL,
	[SupplierPartNumber] [nvarchar](60) NULL,
	[SupplierPartDescription] [nvarchar](max) NULL,
	[SupplierFileDataID] [uniqueidentifier] NULL,
	[LeadTimeUnitID] [uniqueidentifier] NULL,
	[LeadTime] [numeric](38, 20) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_PartSupplier] PRIMARY KEY CLUSTERED 
(
	[SupplierPartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Warehouse]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Warehouse](
	[WarehouseID] [uniqueidentifier] NOT NULL,
	[WarehouseName] [nvarchar](60) NULL,
	[CompanyID] [uniqueidentifier] NOT NULL,
	[PrimaryLocationID] [uniqueidentifier] NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_PartWarehouse] PRIMARY KEY CLUSTERED 
(
	[WarehouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_WarehouseModel]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_WarehouseModel](
	[WarehouseModelID] [uniqueidentifier] NOT NULL,
	[ModelID] [uniqueidentifier] NULL,
	[WarehouseID] [uniqueidentifier] NULL,
	[IssueCost] [money] NULL,
	[QuantityOnOrder] [numeric](38, 20) NULL,
	[QuantityInStock] [numeric](38, 20) NULL,
	[QuantityOnHold] [numeric](38, 20) NULL,
	[QuantityReOrderLevel] [numeric](38, 20) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_ModelWarehouseStockControl] PRIMARY KEY CLUSTERED 
(
	[WarehouseModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_WarehouseModelSupplier]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_WarehouseModelSupplier](
	[WarehouseModelSupplierID] [uniqueidentifier] NOT NULL,
	[WarehouseModelID] [uniqueidentifier] NULL,
	[SupplierModelID] [uniqueidentifier] NULL,
	[QuantityUnitID] [uniqueidentifier] NULL,
	[QuantityOrdered] [numeric](38, 20) NULL,
	[Ordered] [datetime] NULL,
	[Received] [datetime] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_WarehouseModelSupplier] PRIMARY KEY CLUSTERED 
(
	[WarehouseModelSupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_WarehousePart]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_WarehousePart](
	[WarehousePartID] [uniqueidentifier] NOT NULL,
	[PartID] [uniqueidentifier] NULL,
	[WarehouseID] [uniqueidentifier] NULL,
	[IssueCost] [money] NULL,
	[QuantityOnOrder] [numeric](38, 20) NULL,
	[QuantityInStock] [numeric](38, 20) NULL,
	[QuantityOnHold] [numeric](38, 20) NULL,
	[QuantityReOrderLevel] [numeric](38, 20) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_PartWarehouseStockControl] PRIMARY KEY CLUSTERED 
(
	[WarehousePartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_WarehousePartSupplier]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_WarehousePartSupplier](
	[WarehousePartSupplierID] [uniqueidentifier] NOT NULL,
	[WarehousePartID] [uniqueidentifier] NULL,
	[SupplierPartID] [uniqueidentifier] NULL,
	[QuantityUnitID] [uniqueidentifier] NULL,
	[QuantityOrdered] [numeric](38, 20) NULL,
	[Ordered] [datetime] NULL,
	[Received] [datetime] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_WarehousePartSupplier] PRIMARY KEY CLUSTERED 
(
	[WarehousePartSupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_WorkflowSchedule]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_WorkflowSchedule](
	[WorkflowScheduleID] [uniqueidentifier] NOT NULL,
	[EventTypeID] [uniqueidentifier] NULL,
	[TableType] [nvarchar](50) NULL,
	[ReferenceID] [uniqueidentifier] NULL,
	[WorkerID] [uniqueidentifier] NULL,
	[WorkflowInstanceID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Q_WorkflowSchedule] PRIMARY KEY CLUSTERED 
(
	[WorkflowScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Address]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_AssayGroup]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_AssayGroup](
	[AssayGroupID] [uniqueidentifier] NOT NULL,
	[ProjectID] [uniqueidentifier] NULL,
	[AssayGroupName] [nvarchar](50) NULL,
	[LabCompanyID] [uniqueidentifier] NULL,
	[Submitted] [date] NULL,
	[SubmittedContactID] [uniqueidentifier] NULL,
	[Received] [date] NULL,
	[ReceivedContactID] [uniqueidentifier] NULL,
	[Entered] [date] NULL,
	[EnteredContactID] [uniqueidentifier] NULL,
	[Comment] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Assay] PRIMARY KEY CLUSTERED 
(
	[AssayGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_AssayGroupStandardTestResult]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_AssayGroupStandardTestResult] PRIMARY KEY CLUSTERED 
(
	[AssayGroupStandardTestResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_AssayGroupTest]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_AssayGroupTest](
	[AssayGroupTestID] [uniqueidentifier] NOT NULL,
	[AssayGroupID] [uniqueidentifier] NULL,
	[AssayTypeName] [nvarchar](16) NULL,
	[AssayTestName] [nvarchar](16) NULL,
	[ParameterID] [uniqueidentifier] NULL,
	[AssayTestPriority] [int] NULL,
	[AssayMethodID] [uniqueidentifier] NULL,
	[AssayTypeID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_AssayTest] PRIMARY KEY CLUSTERED 
(
	[AssayGroupTestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_AssayGroupTestResult]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_AssayGroupTestResult](
	[AssayGroupTestResultID] [uniqueidentifier] NOT NULL,
	[SampleID] [uniqueidentifier] NULL,
	[AssayGroupTestID] [uniqueidentifier] NOT NULL,
	[LabResultText] [nvarchar](58) NULL,
	[LabResult] [numeric](38, 20) NULL,
	[LabSampleNumber] [nvarchar](16) NULL,
	[LabBatchNumber] [nvarchar](16) NULL,
	[Sampled] [date] NULL,
	[SampledBy] [nvarchar](50) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_AssayGroupTestResult] PRIMARY KEY CLUSTERED 
(
	[AssayGroupTestResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_AssayGroupTestResultComment]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_AssayGroupTestResultComment](
	[AssayGroupTestResultCommentID] [uniqueidentifier] NOT NULL,
	[AssayGroupTestResultID] [uniqueidentifier] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_AssayGroupTestResultComment] PRIMARY KEY CLUSTERED 
(
	[AssayGroupTestResultCommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_AssayGroupTestResultDuplicate]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_AssayGroupTestResultDuplicate](
	[AssayGroupTestResultDuplicateID] [uniqueidentifier] NOT NULL,
	[AssayGroupTestResultID] [uniqueidentifier] NOT NULL,
	[LabResultText] [nvarchar](58) NULL,
	[LabResult] [numeric](38, 20) NULL,
	[LabSampleNumber] [nvarchar](16) NULL,
	[LabBatchNumber] [nvarchar](16) NULL,
	[Sampled] [date] NULL,
	[SampledBy] [nvarchar](50) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_AssayGroupTestResultDuplicate] PRIMARY KEY CLUSTERED 
(
	[AssayGroupTestResultDuplicateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_BlockModel]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_BlockModel](
	[BlockModelID] [uniqueidentifier] NOT NULL,
	[ProjectID] [uniqueidentifier] NOT NULL,
	[Alias] [nvarchar](58) NULL,
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
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_BlockModel] PRIMARY KEY CLUSTERED 
(
	[BlockModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_BlockModelBlock]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	[LengthX] [numeric](38, 20) NULL,
	[LengthY] [numeric](38, 20) NULL,
	[LengthZ] [numeric](38, 20) NULL,
	[MinimumSamples] [int] NULL,
	[MaximumSamples] [int] NULL,
	[EstimationTechnique] [nvarchar](50) NULL,
	[KrigingEfficiency] [numeric](38, 20) NULL,
	[KrigingError] [numeric](38, 20) NULL,
	[KrigingVariance] [numeric](38, 20) NULL,
	[SlopeOfRegression] [numeric](38, 20) NULL,
	[Density] [numeric](38, 20) NULL,
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
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_BlockModelBlock] PRIMARY KEY CLUSTERED 
(
	[BlockModelBlockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_BlockModelBlockData]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_BlockModelBlockData](
	[BlockModelBlockDataID] [uniqueidentifier] NOT NULL,
	[BlockModelID] [uniqueidentifier] NOT NULL,
	[BlockModelBlockID] [uniqueidentifier] NOT NULL,
	[ParameterID] [uniqueidentifier] NOT NULL,
	[BlockModelBlockDataText] [nvarchar](58) NULL,
	[BlockModelBlockDataValue] [numeric](38, 20) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_BlockModelBlockData] PRIMARY KEY CLUSTERED 
(
	[BlockModelBlockDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_BlockModelMetadata]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_BlockModelMetadata](
	[BlockModelMetadataID] [uniqueidentifier] NOT NULL,
	[BlockModelID] [uniqueidentifier] NOT NULL,
	[ParameterID] [uniqueidentifier] NOT NULL,
	[IsColumnData] [bit] NOT NULL,
	[BlockModelMetadataText] [nvarchar](255) NULL,
	[BlockModelMetadataValue] [numeric](38, 20) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_BlockModelMetadata] PRIMARY KEY CLUSTERED 
(
	[BlockModelMetadataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Casing]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Casing](
	[CasingID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](6, 2) NULL,
	[ToDepth] [numeric](6, 2) NULL,
	[CasingTypeID] [uniqueidentifier] NULL,
	[CasingSize] [int] NULL,
	[LengthRecovered] [numeric](5, 2) NULL,
	[Comment] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_CasingData] PRIMARY KEY CLUSTERED 
(
	[CasingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Cementing]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Cementing](
	[CementingID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](5, 1) NULL,
	[ToDepth] [numeric](5, 1) NULL,
	[CementingDate] [date] NULL,
	[Volume] [numeric](4, 2) NULL,
	[Comment] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_CementingData] PRIMARY KEY CLUSTERED 
(
	[CementingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Company]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Company](
	[CompanyID] [uniqueidentifier] NOT NULL,
	[CompanyName] [nvarchar](255) NULL,
	[CountryID] [nvarchar](2) NULL,
	[PrimaryContactID] [uniqueidentifier] NULL,
	[Comment] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_CompanyAddress]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_CompanyAddress](
	[CompanyAddressID] [uniqueidentifier] NOT NULL,
	[CompanyID] [uniqueidentifier] NOT NULL,
	[AddressID] [uniqueidentifier] NOT NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_CompanyAddress] PRIMARY KEY CLUSTERED 
(
	[CompanyAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_CompanyRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_CompanyRelation](
	[CompanyRelationID] [uniqueidentifier] NOT NULL,
	[CompanyID] [uniqueidentifier] NOT NULL,
	[ParentCompanyID] [uniqueidentifier] NOT NULL,
	[IsChildVisible] [bit] NOT NULL,
	[IsParentVisible] [bit] NOT NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_CompanyRelation] PRIMARY KEY CLUSTERED 
(
	[CompanyRelationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Compliance]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Compliance](
	[ComplianceID] [uniqueidentifier] NOT NULL,
	[ComplianceName] [nvarchar](120) NOT NULL,
	[ComplianceVersion] [nvarchar](16) NULL,
	[CountryID] [nvarchar](2) NULL,
	[ProvinceID] [uniqueidentifier] NULL,
	[ValidFrom] [date] NULL,
	[Expiry] [date] NULL,
	[AuthorityCompanyID] [uniqueidentifier] NULL,
	[MaintainedBy] [uniqueidentifier] NULL,
	[Description] [nvarchar](max) NULL,
	[ComplianceForm] [xml] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Compliance] PRIMARY KEY CLUSTERED 
(
	[ComplianceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ComplianceTask]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ComplianceTask](
	[ComplianceTaskID] [uniqueidentifier] NOT NULL,
	[ComplianceID] [uniqueidentifier] NULL,
	[TaskID] [uniqueidentifier] NULL,
	[ExecutePrior] [bit] NOT NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ComplianceTask] PRIMARY KEY CLUSTERED 
(
	[ComplianceTaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ComplianceWorkType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ComplianceWorkType](
	[ComplianceWorkTypeID] [uniqueidentifier] NOT NULL,
	[ComplianceID] [uniqueidentifier] NOT NULL,
	[WorkTypeID] [uniqueidentifier] NOT NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ComplianceWorkType] PRIMARY KEY CLUSTERED 
(
	[ComplianceWorkTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Composite]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Composite](
	[CompositeID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](6, 2) NULL,
	[ToDepth] [numeric](6, 2) NULL,
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
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_DesurveyResult] PRIMARY KEY CLUSTERED 
(
	[CompositeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_CompositeData]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_CompositeData](
	[CompositeDataID] [uniqueidentifier] NOT NULL,
	[ParameterID] [uniqueidentifier] NOT NULL,
	[CompositeDataText] [nvarchar](58) NULL,
	[CompositeDataValue] [numeric](38, 20) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_CompositeCustomData] PRIMARY KEY CLUSTERED 
(
	[CompositeDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Contact]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_Contact](
	[ContactID] [uniqueidentifier] NOT NULL,
	[ContactName] [nvarchar](120) NOT NULL,
	[Title] [nvarchar](16) NULL,
	[Surname] [nvarchar](60) NOT NULL,
	[Firstname] [nvarchar](60) NOT NULL,
	[Username] [nvarchar](100) NULL,
	[Hash] [nvarchar](255) NULL,
	[DefaultEmail] [nvarchar](255) NULL,
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
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_ContactAddress]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ContactAddress](
	[ContactAddressID] [uniqueidentifier] NOT NULL,
	[ContactID] [uniqueidentifier] NULL,
	[AddressID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ContactAddress] PRIMARY KEY CLUSTERED 
(
	[ContactAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Contract]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Contract](
	[ContractID] [uniqueidentifier] NOT NULL,
	[ParentContractID] [uniqueidentifier] NULL,
	[ContractName] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[ProjectID] [uniqueidentifier] NULL,
	[LastDeliverableID] [uniqueidentifier] NULL,
	[ObligeeID] [uniqueidentifier] NULL,
	[ObligeeCompanyID] [uniqueidentifier] NULL,
	[ObligorID] [uniqueidentifier] NULL,
	[ObligorCompanyID] [uniqueidentifier] NULL,
	[AssigneeID] [uniqueidentifier] NULL,
	[AssigneeCompanyID] [uniqueidentifier] NULL,
	[SolicitorID] [uniqueidentifier] NULL,
	[SolicitorCompanyID] [uniqueidentifier] NULL,
	[Risk] [money] NULL,
	[RiskStarts] [datetime] NULL,
	[RiskEnds] [datetime] NULL,
	[RiskCriticality] [numeric](38, 20) NULL,
	[RiskLikelihood] [numeric](38, 20) NULL,
	[Value] [money] NULL,
	[Tax] [money] NULL,
	[Started] [date] NULL,
	[Ended] [date] NULL,
	[Completed] [date] NULL,
	[Comment] [nvarchar](max) NULL,
	[FileDataID] [uniqueidentifier] NULL,
	[RespondWithinHours] [decimal](10, 3) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Drill_Company_Contract] PRIMARY KEY CLUSTERED 
(
	[ContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ContractCondition]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ContractCondition](
	[ContractConditionID] [uniqueidentifier] NOT NULL,
	[ContractID] [uniqueidentifier] NULL,
	[ContractConditionTypeID] [uniqueidentifier] NULL,
	[IsIncluded] [bit] NULL,
	[IsExluded] [bit] NULL,
	[UnitID] [uniqueidentifier] NULL,
	[Maximum] [numeric](38, 20) NULL,
	[Minimum] [numeric](38, 20) NULL,
	[EstimatedValueUpfront] [money] NULL,
	[EstimatedValueOngoingUnitID] [uniqueidentifier] NULL,
	[EstimatedValueOngoing] [money] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ContractCondition_1] PRIMARY KEY CLUSTERED 
(
	[ContractConditionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ContractConditionModel]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ContractConditionModel](
	[ContractConditionModelID] [uniqueidentifier] NOT NULL,
	[ContractConditionID] [uniqueidentifier] NULL,
	[ModelID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ContractConditionModel] PRIMARY KEY CLUSTERED 
(
	[ContractConditionModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ContractConditionPart]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ContractConditionPart](
	[ContractConditionPartID] [uniqueidentifier] NOT NULL,
	[ContractConditionID] [uniqueidentifier] NULL,
	[PartID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ContractConditionPart] PRIMARY KEY CLUSTERED 
(
	[ContractConditionPartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_CostEstimateModel]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_CostEstimateModel](
	[CostEstimateModelID] [uniqueidentifier] NOT NULL,
	[ParentCostEstimateModelID] [uniqueidentifier] NULL,
	[ContractID] [uniqueidentifier] NULL,
	[ModelID] [uniqueidentifier] NULL,
	[CostTypeID] [uniqueidentifier] NULL,
	[ProRataUnitID] [uniqueidentifier] NULL,
	[ProRataUnits] [numeric](38, 20) NULL,
	[ProRataCost] [money] NULL,
	[IsAccruableWithParentCost] [bit] NULL,
	[AccruedQuantumSIUnitID] [uniqueidentifier] NULL,
	[Accrued] [money] NULL,
	[Source] [nvarchar](255) NULL,
	[Note] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_CO] PRIMARY KEY CLUSTERED 
(
	[CostEstimateModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Defect]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Defect](
	[DefectID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](7, 3) NULL,
	[ToDepth] [numeric](7, 3) NULL,
	[WeatheringID] [uniqueidentifier] NULL,
	[RockMassUnitTypeID] [uniqueidentifier] NULL,
	[AlterationID] [uniqueidentifier] NULL,
	[EstimatedStrengthID] [uniqueidentifier] NULL,
	[BedSpacingID] [uniqueidentifier] NULL,
	[BedDip] [int] NULL,
	[MoistureSensitivityID] [uniqueidentifier] NULL,
	[PlasticityID] [uniqueidentifier] NULL,
	[DefectDepth] [numeric](7, 3) NULL,
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
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_DefectData] PRIMARY KEY CLUSTERED 
(
	[DefectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Desurvey]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Desurvey](
	[DesurveyID] [uniqueidentifier] NOT NULL,
	[SurveyID] [uniqueidentifier] NULL,
	[DesurveyAlgorithmTypeID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Desurvey] PRIMARY KEY CLUSTERED 
(
	[DesurveyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Dictionary]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[X_DictionaryAdjective]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryAdjective](
	[AdjectiveID] [uniqueidentifier] NOT NULL,
	[StandardAdjectiveName] [nvarchar](16) NOT NULL,
	[CoalAdjectiveName] [nvarchar](16) NULL,
	[GoldAdjectiveName] [nvarchar](16) NULL,
	[CustomAdjectiveName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryAdjective] PRIMARY KEY CLUSTERED 
(
	[AdjectiveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryAlteration]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryAlteration](
	[AlterationID] [uniqueidentifier] NOT NULL,
	[StandardAlterationName] [nvarchar](16) NOT NULL,
	[CoalAlterationName] [nvarchar](16) NULL,
	[GoldAlterationName] [nvarchar](16) NULL,
	[CustomAlterationName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryAlteration] PRIMARY KEY CLUSTERED 
(
	[AlterationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryAssayMethod]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryAssayMethod](
	[AssayMethodID] [uniqueidentifier] NOT NULL,
	[StandardAssayMethodName] [nvarchar](16) NOT NULL,
	[CoalAssayMethodName] [nvarchar](16) NULL,
	[GoldAssayMethodName] [nvarchar](16) NULL,
	[CustomAssayMethodName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryAssayMethod] PRIMARY KEY CLUSTERED 
(
	[AssayMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryAssayStandard]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryAssayStandard](
	[AssayStandardID] [uniqueidentifier] NOT NULL,
	[StandardAssayStandardName] [nvarchar](16) NOT NULL,
	[CoalAssayStandardName] [nvarchar](16) NULL,
	[GoldAssayStandardName] [nvarchar](16) NULL,
	[CustomAssayStandardName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryAssayStandard] PRIMARY KEY CLUSTERED 
(
	[AssayStandardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryAssayTest]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryAssayTest](
	[AssayTestID] [uniqueidentifier] NOT NULL,
	[StandardAssayTestName] [nvarchar](16) NOT NULL,
	[CoalAssayTestName] [nvarchar](16) NULL,
	[GoldAssayTestName] [nvarchar](16) NULL,
	[CustomAssayTestName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryAssayTest] PRIMARY KEY CLUSTERED 
(
	[AssayTestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryAssayType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryAssayType](
	[AssayTypeID] [uniqueidentifier] NOT NULL,
	[StandardAssayTypeName] [nvarchar](16) NOT NULL,
	[CoalAssayTypeName] [nvarchar](16) NULL,
	[GoldAssayTypeName] [nvarchar](16) NULL,
	[CustomAssayTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryAssayBasisType] PRIMARY KEY CLUSTERED 
(
	[AssayTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryBasalContact]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryBasalContact](
	[BasalContactID] [uniqueidentifier] NOT NULL,
	[StandardBasalContactName] [nvarchar](16) NOT NULL,
	[CoalBasalContactName] [nvarchar](16) NULL,
	[GoldBasalContactName] [nvarchar](16) NULL,
	[CustomBasalContactName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryBasal_Contact] PRIMARY KEY CLUSTERED 
(
	[BasalContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryBedSpacing]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryBedSpacing](
	[BedSpacingID] [uniqueidentifier] NOT NULL,
	[StandardBedSpacingName] [nvarchar](16) NOT NULL,
	[CoalBedSpacingName] [nvarchar](16) NULL,
	[GoldBedSpacingName] [nvarchar](16) NULL,
	[CustomBedSpacingName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryBed_Spacing] PRIMARY KEY CLUSTERED 
(
	[BedSpacingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryCharacteristic]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryCharacteristic](
	[CharacteristicID] [uniqueidentifier] NOT NULL,
	[StandardCharacteristicName] [nvarchar](60) NOT NULL,
	[CustomCharacteristicName] [nvarchar](60) NULL,
	[UnitID] [uniqueidentifier] NULL,
	[CharacteristicTypeID] [uniqueidentifier] NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryCharacteristic] PRIMARY KEY CLUSTERED 
(
	[CharacteristicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryCharacteristicType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryCharacteristicType](
	[CharacteristicTypeID] [uniqueidentifier] NOT NULL,
	[StandardCharacteristicTypeName] [nvarchar](16) NOT NULL,
	[CustomCharacteristicTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryCharacteristicType] PRIMARY KEY CLUSTERED 
(
	[CharacteristicTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryColour]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryColour](
	[ColourID] [uniqueidentifier] NOT NULL,
	[StandardColourName] [nvarchar](16) NOT NULL,
	[CoalColourName] [nvarchar](16) NULL,
	[GoldColourName] [nvarchar](16) NULL,
	[CustomColourName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryColour] PRIMARY KEY CLUSTERED 
(
	[ColourID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryCommodity]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryCommodity](
	[CommodityID] [uniqueidentifier] NOT NULL,
	[StandardCommodityName] [nvarchar](30) NOT NULL,
	[CoalCommodityName] [nvarchar](30) NULL,
	[GoldCommodityName] [nvarchar](30) NULL,
	[CustomCommodityName] [nvarchar](30) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_Commodity] PRIMARY KEY CLUSTERED 
(
	[CommodityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryContractConditionType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryContractConditionType](
	[ContractConditionTypeID] [uniqueidentifier] NOT NULL,
	[StandardContractConditionTypeName] [nvarchar](30) NOT NULL,
	[CustomContractConditionTypeName] [nvarchar](30) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_ContractCondition] PRIMARY KEY CLUSTERED 
(
	[ContractConditionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryCoreState]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryCoreState](
	[CoreStateID] [uniqueidentifier] NOT NULL,
	[StandardCoreStateName] [nvarchar](16) NOT NULL,
	[CoalCoreStateName] [nvarchar](16) NULL,
	[GoldCoreStateName] [nvarchar](16) NULL,
	[CustomCoreStateName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryCore_State] PRIMARY KEY CLUSTERED 
(
	[CoreStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryCostType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryCostType](
	[CostTypeID] [uniqueidentifier] NOT NULL,
	[StandardCostTypeName] [nvarchar](16) NULL,
	[CustomCostTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_CostEstimateModel] PRIMARY KEY CLUSTERED 
(
	[CostTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryCountry]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryCountry](
	[CountryID] [nvarchar](2) NOT NULL,
	[StandardCountryName] [nvarchar](40) NOT NULL,
	[CoalCountryName] [nvarchar](40) NULL,
	[GoldCountryName] [nvarchar](40) NULL,
	[CustomCountryName] [nvarchar](40) NULL,
	[CurrencyCode] [nvarchar](10) NULL,
	[CurrencyFormat] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryCountry] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryCountryState]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryCountryState](
	[CountryStateID] [uniqueidentifier] NOT NULL,
	[CountryID] [nvarchar](2) NULL,
	[StandardCountryStateName] [nvarchar](100) NULL,
	[CoalCountryStateName] [nvarchar](100) NULL,
	[GoldCountryStateName] [nvarchar](100) NULL,
	[CustomCountryStateName] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_CountryState] PRIMARY KEY CLUSTERED 
(
	[CountryStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryDataStatus]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryDataStatus](
	[DataStatusID] [uniqueidentifier] NOT NULL,
	[StandardDataStatusName] [nvarchar](16) NOT NULL,
	[CoalDataStatusName] [nvarchar](16) NULL,
	[GoldDataStatusName] [nvarchar](16) NULL,
	[CustomDataStatusName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryData_Status] PRIMARY KEY CLUSTERED 
(
	[DataStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryDefectCompleteness]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryDefectCompleteness](
	[DefectCompletenessID] [uniqueidentifier] NOT NULL,
	[StandardDefectCompletenessName] [nvarchar](16) NOT NULL,
	[CoalDefectCompletenessName] [nvarchar](16) NULL,
	[GoldDefectCompletenessName] [nvarchar](16) NULL,
	[CustomDefectCompletenessName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryDefect_Intact] PRIMARY KEY CLUSTERED 
(
	[DefectCompletenessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryDefectContinuity]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryDefectContinuity](
	[DefectContinuityID] [uniqueidentifier] NOT NULL,
	[StandardDefectContinuityName] [nvarchar](16) NOT NULL,
	[CoalDefectContinuityName] [nvarchar](16) NULL,
	[GoldDefectContinuityName] [nvarchar](16) NULL,
	[CustomDefectContinuityName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryDefect_Contin] PRIMARY KEY CLUSTERED 
(
	[DefectContinuityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryDefectSpacing]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryDefectSpacing](
	[DefectSpacingID] [uniqueidentifier] NOT NULL,
	[StandardDefectSpacingName] [nvarchar](16) NOT NULL,
	[CoalDefectSpacingName] [nvarchar](16) NULL,
	[GoldDefectSpacingName] [nvarchar](16) NULL,
	[CustomDefectSpacingName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryDefect_Spacing] PRIMARY KEY CLUSTERED 
(
	[DefectSpacingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryDefectType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryDefectType](
	[DefectTypeID] [uniqueidentifier] NOT NULL,
	[StandardDefectTypeName] [nvarchar](16) NOT NULL,
	[CoalDefectTypeName] [nvarchar](16) NULL,
	[GoldDefectTypeName] [nvarchar](16) NULL,
	[CustomDefectTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryDefect_Type] PRIMARY KEY CLUSTERED 
(
	[DefectTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryDesurveyAlgorithmType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryDesurveyAlgorithmType](
	[DesurveyAlgorithmTypeID] [uniqueidentifier] NOT NULL,
	[StandardDesurveyAlgorithmTypeName] [nvarchar](50) NOT NULL,
	[CoalDesurveyAlgorithmTypeName] [nvarchar](50) NULL,
	[GoldDesurveyAlgorithmTypeName] [nvarchar](50) NULL,
	[CustomDesurveyAlgorithmTypeName] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryDesurveyAlgorithmType] PRIMARY KEY CLUSTERED 
(
	[DesurveyAlgorithmTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryDimension]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryDimension](
	[DimensionID] [nvarchar](1) NOT NULL,
	[StandardDimensionName] [nvarchar](16) NULL,
	[CoalDimensionName] [nvarchar](16) NULL,
	[GoldDimensionName] [nvarchar](16) NULL,
	[CustomDimensionName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryDimension] PRIMARY KEY CLUSTERED 
(
	[DimensionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryDipOrientationMethod]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryDipOrientationMethod](
	[DipOrientationMethodID] [uniqueidentifier] NOT NULL,
	[StandardDipOrientationMethodName] [nvarchar](16) NOT NULL,
	[CoalDipOrientationMethodName] [nvarchar](16) NULL,
	[GoldDipOrientationMethodName] [nvarchar](16) NULL,
	[CustomDipOrientationMethodName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryDip_Orient_Meth] PRIMARY KEY CLUSTERED 
(
	[DipOrientationMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryDomain]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryDomain](
	[DomainID] [uniqueidentifier] NOT NULL,
	[StandardDomainName] [nvarchar](30) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryDomain] PRIMARY KEY CLUSTERED 
(
	[DomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryDomainAlias]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryDomainAlias](
	[DomainAliasID] [uniqueidentifier] NOT NULL,
	[DomainID] [uniqueidentifier] NOT NULL,
	[CustomDomainName] [nvarchar](16) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryDomainRelations] PRIMARY KEY CLUSTERED 
(
	[DomainAliasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryDrillBitType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryDrillBitType](
	[DrillBitTypeID] [uniqueidentifier] NOT NULL,
	[StandardDrillBitTypeName] [nvarchar](16) NOT NULL,
	[CoalDrillBitTypeName] [nvarchar](16) NULL,
	[GoldDrillBitTypeName] [nvarchar](16) NULL,
	[CustomDrillBitTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryBit_Type] PRIMARY KEY CLUSTERED 
(
	[DrillBitTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryDrillCasingType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryDrillCasingType](
	[DrillCasingTypeID] [uniqueidentifier] NOT NULL,
	[StandardDrillCasingTypeName] [nvarchar](16) NOT NULL,
	[CoalDrillCasingTypeName] [nvarchar](16) NULL,
	[GoldDrillCasingTypeName] [nvarchar](16) NULL,
	[CustomDrillCasingTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryCasing_Type] PRIMARY KEY CLUSTERED 
(
	[DrillCasingTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryDrillFluid]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryDrillFluid](
	[DrillFluidID] [uniqueidentifier] NOT NULL,
	[StandardDrillFluidName] [nvarchar](16) NOT NULL,
	[CoalDrillFluidName] [nvarchar](16) NULL,
	[GoldDrillFluidName] [nvarchar](16) NULL,
	[CustomDrillFluidName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryDrill_Fluid] PRIMARY KEY CLUSTERED 
(
	[DrillFluidID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryDrillRigType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryDrillRigType](
	[DrillRigTypeID] [uniqueidentifier] NOT NULL,
	[StandardDrillRigTypeName] [nvarchar](16) NOT NULL,
	[CoalDrillRigTypeName] [nvarchar](16) NULL,
	[GoldDrillRigTypeName] [nvarchar](16) NULL,
	[CustomDrillRigTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryRig_Type] PRIMARY KEY CLUSTERED 
(
	[DrillRigTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryDrillSize]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryDrillSize](
	[DrillSizeID] [uniqueidentifier] NOT NULL,
	[StandardDrillSizeName] [nvarchar](16) NOT NULL,
	[CoalDrillSizeName] [nvarchar](16) NULL,
	[GoldDrillSizeName] [nvarchar](16) NULL,
	[CustomDrillSizeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryDrill_Size_Name] PRIMARY KEY CLUSTERED 
(
	[DrillSizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryEstimatedStrength]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryEstimatedStrength](
	[EstimatedStrengthID] [uniqueidentifier] NOT NULL,
	[StandardEstimatedStrengthName] [nvarchar](16) NOT NULL,
	[CoalEstimatedStrengthName] [nvarchar](16) NULL,
	[GoldEstimatedStrengthName] [nvarchar](16) NULL,
	[CustomEstimatedStrengthName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryEst_Strength] PRIMARY KEY CLUSTERED 
(
	[EstimatedStrengthID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryFailureMode]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryFailureMode](
	[FailureModeID] [uniqueidentifier] NOT NULL,
	[StandardFailureModeName] [nvarchar](16) NOT NULL,
	[CoalFailureModeName] [nvarchar](16) NULL,
	[GoldFailureModeName] [nvarchar](16) NULL,
	[CustomFailureModeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryFailure_Mode] PRIMARY KEY CLUSTERED 
(
	[FailureModeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryFlowTestType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryFlowTestType](
	[FlowTestTypeID] [uniqueidentifier] NOT NULL,
	[StandardFlowTestTypeName] [nvarchar](16) NOT NULL,
	[CoalFlowTestTypeName] [nvarchar](16) NULL,
	[GoldFlowTestTypeName] [nvarchar](16) NULL,
	[CustomFlowTestTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryFlow_Test_Type] PRIMARY KEY CLUSTERED 
(
	[FlowTestTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryGasDetected]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryGasDetected](
	[GasDetectedID] [uniqueidentifier] NOT NULL,
	[StandardGasDetectedName] [nvarchar](16) NOT NULL,
	[CoalGasDetectedName] [nvarchar](16) NULL,
	[GoldGasDetectedName] [nvarchar](16) NULL,
	[CustomGasDetectedName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryGas] PRIMARY KEY CLUSTERED 
(
	[GasDetectedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryGeodeticDatum]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryGeodeticDatum](
	[GeodeticDatumID] [uniqueidentifier] NOT NULL,
	[StandardGeodeticDatumName] [nvarchar](16) NOT NULL,
	[CoalGeodeticDatumName] [nvarchar](16) NULL,
	[GoldGeodeticDatumName] [nvarchar](16) NULL,
	[CustomGeodeticDatumName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryGeodetic_Datum] PRIMARY KEY CLUSTERED 
(
	[GeodeticDatumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryGeophysicalLogType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryGeophysicalLogType](
	[GeophysicalLogTypeID] [uniqueidentifier] NOT NULL,
	[StandardGeophysicalLogTypeName] [nvarchar](16) NOT NULL,
	[CoalGeophysicalLogTypeName] [nvarchar](16) NULL,
	[GoldGeophysicalLogTypeName] [nvarchar](16) NULL,
	[CustomGeophysicalLogTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryGeophys_Log] PRIMARY KEY CLUSTERED 
(
	[GeophysicalLogTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryGroup]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryGroup](
	[GroupID] [uniqueidentifier] NOT NULL,
	[StandardGroupName] [nvarchar](50) NOT NULL,
	[CoalGroupName] [nvarchar](50) NULL,
	[GoldGroupName] [nvarchar](50) NULL,
	[CustomGroupName] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryGroup] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryGroupMembership]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryGroupMembership](
	[GroupMembershipID] [uniqueidentifier] NOT NULL,
	[ParentGroupID] [uniqueidentifier] NOT NULL,
	[ChildGroupID] [uniqueidentifier] NOT NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryGroupMembership] PRIMARY KEY CLUSTERED 
(
	[GroupMembershipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryHeightDatum]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryHeightDatum](
	[HeightDatumID] [uniqueidentifier] NOT NULL,
	[StandardHeightDatumName] [nvarchar](16) NOT NULL,
	[CoalHeightDatumName] [nvarchar](16) NULL,
	[GoldHeightDatumName] [nvarchar](16) NULL,
	[CustomHeightDatumName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryHeight_Datum] PRIMARY KEY CLUSTERED 
(
	[HeightDatumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryHolePurpose]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryHolePurpose](
	[HolePurposeID] [uniqueidentifier] NOT NULL,
	[StandardHolePurposeName] [nvarchar](16) NOT NULL,
	[CoalHolePurposeName] [nvarchar](16) NULL,
	[GoldHolePurposeName] [nvarchar](16) NULL,
	[CustomHolePurposeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryHole_Purpose] PRIMARY KEY CLUSTERED 
(
	[HolePurposeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryHoleStatus]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryHoleStatus](
	[HoleStatusID] [uniqueidentifier] NOT NULL,
	[StandardHoleStatusName] [nvarchar](16) NOT NULL,
	[CoalHoleStatusName] [nvarchar](16) NULL,
	[GoldHoleStatusName] [nvarchar](16) NULL,
	[CustomHoleStatusName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryHole_Status] PRIMARY KEY CLUSTERED 
(
	[HoleStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryHoleType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryHoleType](
	[HoleTypeID] [uniqueidentifier] NOT NULL,
	[StandardHoleTypeName] [nvarchar](16) NOT NULL,
	[CoalHoleTypeName] [nvarchar](16) NULL,
	[GoldHoleTypeName] [nvarchar](16) NULL,
	[CustomHoleTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryHole_Type] PRIMARY KEY CLUSTERED 
(
	[HoleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryHorizon]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryHorizon](
	[HorizonID] [uniqueidentifier] NOT NULL,
	[StandardHorizonName] [nvarchar](16) NOT NULL,
	[CoalHorizonName] [nvarchar](16) NULL,
	[GoldHorizonName] [nvarchar](16) NULL,
	[CustomHorizonName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryHorizon] PRIMARY KEY CLUSTERED 
(
	[HorizonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryHue]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryHue](
	[HueID] [uniqueidentifier] NOT NULL,
	[StandardHueName] [nvarchar](16) NOT NULL,
	[CoalHueName] [nvarchar](16) NULL,
	[GoldHueName] [nvarchar](16) NULL,
	[CustomHueName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryHue] PRIMARY KEY CLUSTERED 
(
	[HueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryInfillMode]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryInfillMode](
	[InfillModeID] [uniqueidentifier] NOT NULL,
	[StandardInfillModeName] [nvarchar](16) NOT NULL,
	[CoalInfillModeName] [nvarchar](16) NULL,
	[GoldInfillModeName] [nvarchar](16) NULL,
	[CustomInfillModeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryInfill_Mode] PRIMARY KEY CLUSTERED 
(
	[InfillModeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryInfillType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryInfillType](
	[InfillTypeID] [uniqueidentifier] NOT NULL,
	[StandardInfillTypeName] [nvarchar](16) NOT NULL,
	[CoalInfillTypeName] [nvarchar](16) NULL,
	[GoldInfillTypeName] [nvarchar](16) NULL,
	[CustomInfillTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryInfill_Type] PRIMARY KEY CLUSTERED 
(
	[InfillTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryIntervalStatus]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryIntervalStatus](
	[IntervalStatusID] [uniqueidentifier] NOT NULL,
	[StandardIntervalStatusName] [nvarchar](16) NOT NULL,
	[CoalIntervalStatusName] [nvarchar](16) NULL,
	[GoldIntervalStatusName] [nvarchar](16) NULL,
	[CustomIntervalStatusName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryInterval_Status] PRIMARY KEY CLUSTERED 
(
	[IntervalStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryLeaseApplicationType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryLeaseApplicationType](
	[LeaseApplicationTypeID] [uniqueidentifier] NOT NULL,
	[StandardLeaseApplicationTypeName] [nvarchar](16) NOT NULL,
	[CoalLeaseApplicationTypeName] [nvarchar](16) NULL,
	[GoldLeaseApplicationTypeName] [nvarchar](16) NULL,
	[CustomLeaseApplicationTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryLeaseApplicationType] PRIMARY KEY CLUSTERED 
(
	[LeaseApplicationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryLithologyInterrelation]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryLithologyInterrelation](
	[LithologyInterralationID] [uniqueidentifier] NOT NULL,
	[StandardLithologyInterrelationName] [nvarchar](16) NOT NULL,
	[CoalLithologyInterrelationName] [nvarchar](16) NULL,
	[GoldLithologyInterrelationName] [nvarchar](16) NULL,
	[CustomLithologyInterrelationName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryLitho_Interrel] PRIMARY KEY CLUSTERED 
(
	[LithologyInterralationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryLithologyQualifier]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryLithologyQualifier](
	[LithologyQualifierID] [uniqueidentifier] NOT NULL,
	[StandardLithologyQualifierName] [nvarchar](16) NOT NULL,
	[CoalLithologyQualifierName] [nvarchar](16) NULL,
	[GoldLithologyQualifierName] [nvarchar](16) NULL,
	[CustomLithologyQualifierName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryLitho_Qual] PRIMARY KEY CLUSTERED 
(
	[LithologyQualifierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryLithologyType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryLithologyType](
	[LithologyTypeID] [uniqueidentifier] NOT NULL,
	[StandardLithologyTypeName] [nvarchar](16) NOT NULL,
	[CoalLithologyTypeName] [nvarchar](16) NULL,
	[GoldLithologyTypeName] [nvarchar](16) NULL,
	[CustomLithologyTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryLitho_Type] PRIMARY KEY CLUSTERED 
(
	[LithologyTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryLocationType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryLocationType](
	[LocationTypeID] [uniqueidentifier] NOT NULL,
	[StandardLocationTypeName] [nvarchar](16) NOT NULL,
	[CoalLocationTypeName] [nvarchar](16) NULL,
	[GoldLocationTypeName] [nvarchar](16) NULL,
	[CustomLocationTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryLocationType] PRIMARY KEY CLUSTERED 
(
	[LocationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryMechanicalState]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryMechanicalState](
	[MechanicalStateID] [uniqueidentifier] NOT NULL,
	[StandardMechanicalStateName] [nvarchar](16) NOT NULL,
	[CoalMechanicalStateName] [nvarchar](16) NULL,
	[GoldMechanicalStateName] [nvarchar](16) NULL,
	[CustomMechanicalStateName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryMech_State] PRIMARY KEY CLUSTERED 
(
	[MechanicalStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryMineralAbundance]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryMineralAbundance](
	[MineralAbundanceID] [uniqueidentifier] NOT NULL,
	[StandardMineralAbundanceName] [nvarchar](16) NOT NULL,
	[CoalMineralAbundanceName] [nvarchar](16) NULL,
	[GoldMineralAbundanceName] [nvarchar](16) NULL,
	[CustomMineralAbundanceName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryMin_Abundance] PRIMARY KEY CLUSTERED 
(
	[MineralAbundanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryMineralAndFossilAbundance]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryMineralAndFossilAbundance](
	[MineralAndFossilAbundanceID] [uniqueidentifier] NOT NULL,
	[StandardMineralAndFossilAbundanceName] [nvarchar](16) NOT NULL,
	[CoalMineralAndFossilAbundanceName] [nvarchar](16) NULL,
	[GoldMineralAndFossilAbundanceName] [nvarchar](16) NULL,
	[CustomMineralAndFossilAbundanceName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryMin_Fos_Abund] PRIMARY KEY CLUSTERED 
(
	[MineralAndFossilAbundanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryMineralAndFossilAssociation]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryMineralAndFossilAssociation](
	[MineralAndFossilAssociationID] [uniqueidentifier] NOT NULL,
	[StandardMineralAndFossilAssociationName] [nvarchar](16) NOT NULL,
	[CoalMineralAndFossilAssociationName] [nvarchar](16) NULL,
	[GoldMineralAndFossilAssociationName] [nvarchar](16) NULL,
	[CustomMineralAndFossilAssociationName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryMin_Fos_Assoc] PRIMARY KEY CLUSTERED 
(
	[MineralAndFossilAssociationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryMineralAndFossilType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryMineralAndFossilType](
	[MineralAndFossilTypeID] [uniqueidentifier] NOT NULL,
	[StandardMineralAndFossilTypeName] [nvarchar](16) NOT NULL,
	[CoalMineralAndFossilTypeName] [nvarchar](16) NULL,
	[GoldMineralAndFossilTypeName] [nvarchar](16) NULL,
	[CustomMineralAndFossilTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryMin_Fos_Type] PRIMARY KEY CLUSTERED 
(
	[MineralAndFossilTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryMineralForm]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryMineralForm](
	[MineralFormID] [uniqueidentifier] NOT NULL,
	[StandardMineralFormName] [nvarchar](16) NOT NULL,
	[CoalMineralFormName] [nvarchar](16) NULL,
	[GoldMineralFormName] [nvarchar](16) NULL,
	[CustomMineralFormName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryMin_Form] PRIMARY KEY CLUSTERED 
(
	[MineralFormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryMineralStyle]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryMineralStyle](
	[MineralStyleID] [uniqueidentifier] NOT NULL,
	[StandardMineralStyleName] [nvarchar](16) NOT NULL,
	[CoalMineralStyleName] [nvarchar](16) NULL,
	[GoldMineralStyleName] [nvarchar](16) NULL,
	[CustomMineralStyleName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryMin_Style] PRIMARY KEY CLUSTERED 
(
	[MineralStyleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryMineralType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryMineralType](
	[MineralTypeID] [uniqueidentifier] NOT NULL,
	[StandardMineralTypeName] [nvarchar](16) NOT NULL,
	[CoalMineralTypeName] [nvarchar](16) NULL,
	[GoldMineralTypeName] [nvarchar](16) NULL,
	[CustomMineralTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryMin_Type] PRIMARY KEY CLUSTERED 
(
	[MineralTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryModel]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryModel](
	[ModelID] [uniqueidentifier] NOT NULL,
	[ParentModelID] [uniqueidentifier] NULL,
	[StandardModelName] [nvarchar](60) NOT NULL,
	[EcriModelName] [nvarchar](60) NULL,
	[CustomModelName] [nvarchar](60) NULL,
	[CompanyID] [uniqueidentifier] NULL,
	[OriginalManufacturerName] [nvarchar](255) NULL,
	[ModelStatusID] [uniqueidentifier] NULL,
	[DeviceTypeID] [uniqueidentifier] NULL,
	[IsMake] [bit] NULL,
	[ManufacturedFrom] [date] NULL,
	[ManufacturedUntil] [date] NULL,
	[SupportedUntil] [date] NULL,
	[EstimatedLifetimeUnitID] [uniqueidentifier] NULL,
	[EstimatedLifetime] [numeric](38, 20) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_DictionaryModel] PRIMARY KEY CLUSTERED 
(
	[ModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryModelCategory]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_DictionaryModelCategory](
	[ModelCategoryID] [uniqueidentifier] NOT NULL,
	[ModelID] [uniqueidentifier] NULL,
	[CategoryDeviceTypeID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryModelCategory] PRIMARY KEY CLUSTERED 
(
	[ModelCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_DictionaryModelRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_DictionaryModelRelation](
	[ModelRelationID] [uniqueidentifier] NOT NULL,
	[OriginalModelID] [uniqueidentifier] NULL,
	[RelatedModelID] [uniqueidentifier] NULL,
	[RelationTypeID] [uniqueidentifier] NULL,
	[Related] [date] NULL,
 CONSTRAINT [PK_X_DictionaryModelRelation] PRIMARY KEY CLUSTERED 
(
	[ModelRelationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_DictionaryModelStatus]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryModelStatus](
	[ModelStatusID] [uniqueidentifier] NOT NULL,
	[StandardModelStatusName] [nvarchar](16) NOT NULL,
	[CustomModelStatusName] [nvarchar](16) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryModelStatus] PRIMARY KEY CLUSTERED 
(
	[ModelStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryMoistureSensitivity]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryMoistureSensitivity](
	[MoistureSensitivityID] [uniqueidentifier] NOT NULL,
	[StandardMoistureSensitivityName] [nvarchar](16) NOT NULL,
	[CoalMoistureSensitivityName] [nvarchar](16) NULL,
	[GoldMoistureSensitivityName] [nvarchar](16) NULL,
	[CustomMoistureSensitivityName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryMoist_Sensitive] PRIMARY KEY CLUSTERED 
(
	[MoistureSensitivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryPartStatus]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryPartStatus](
	[PartStatusID] [uniqueidentifier] NOT NULL,
	[StandardPartStatusName] [nvarchar](16) NOT NULL,
	[CustomPartStatusName] [nvarchar](16) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryPartStatus] PRIMARY KEY CLUSTERED 
(
	[PartStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryPlasticity]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryPlasticity](
	[PlasticityID] [uniqueidentifier] NOT NULL,
	[StandardPlasticityName] [nvarchar](16) NOT NULL,
	[CoalPlasticityName] [nvarchar](16) NULL,
	[GoldPlasticityName] [nvarchar](16) NULL,
	[CustomPlasticityName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryPlasticity] PRIMARY KEY CLUSTERED 
(
	[PlasticityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryPly]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryPly](
	[PlyID] [uniqueidentifier] NOT NULL,
	[StandardPlyName] [nvarchar](16) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryPly] PRIMARY KEY CLUSTERED 
(
	[PlyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryPlyAlias]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryPlyAlias](
	[PlyAliasID] [uniqueidentifier] NOT NULL,
	[PlyID] [uniqueidentifier] NOT NULL,
	[CustomPlyName] [nvarchar](16) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryPlyAlias] PRIMARY KEY CLUSTERED 
(
	[PlyAliasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryPointLoadTestType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryPointLoadTestType](
	[PointLoadTestTypeID] [uniqueidentifier] NOT NULL,
	[StandardPointLoadTestTypeName] [nvarchar](16) NOT NULL,
	[CoalPointLoadTestTypeName] [nvarchar](16) NULL,
	[GoldPointLoadTestTypeName] [nvarchar](16) NULL,
	[CustomPointLoadTestTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryPL_Test_Type] PRIMARY KEY CLUSTERED 
(
	[PointLoadTestTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryPosition]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryPosition](
	[PositionID] [uniqueidentifier] NOT NULL,
	[StandardPositionName] [nvarchar](16) NOT NULL,
	[CoalPositionName] [nvarchar](16) NULL,
	[GoldPositionName] [nvarchar](16) NULL,
	[CustomPositionName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_Position] PRIMARY KEY CLUSTERED 
(
	[PositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryProfession]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryProfession](
	[ProfessionID] [uniqueidentifier] NOT NULL,
	[StandardProfessionName] [nvarchar](16) NOT NULL,
	[CoalProfessionName] [nvarchar](16) NULL,
	[GoldProfessionName] [nvarchar](16) NULL,
	[CustomProfessionName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_Role] PRIMARY KEY CLUSTERED 
(
	[ProfessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryProvinceGroup]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryProvinceGroup](
	[ProvinceGroupID] [uniqueidentifier] NOT NULL,
	[StandardProvinceGroupName] [nvarchar](50) NOT NULL,
	[CoalProvinceGroupName] [nvarchar](50) NULL,
	[GoldProvinceGroupName] [nvarchar](50) NULL,
	[CustomProvinceGroupName] [nvarchar](50) NULL,
	[ParentProvinceTypeID] [uniqueidentifier] NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_ProvinceGroup] PRIMARY KEY CLUSTERED 
(
	[ProvinceGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryProvinceType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryProvinceType](
	[ProvinceTypeID] [uniqueidentifier] NOT NULL,
	[StandardProvinceTypeName] [nvarchar](16) NOT NULL,
	[CoalProvinceTypeName] [nvarchar](16) NULL,
	[GoldProvinceTypeName] [nvarchar](16) NULL,
	[CustomProvinceTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_ProvinceType] PRIMARY KEY CLUSTERED 
(
	[ProvinceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryRelationType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryRelationType](
	[RelationTypeID] [uniqueidentifier] NOT NULL,
	[StandardRelationTypeName] [nvarchar](16) NOT NULL,
	[CoalRelationTypeName] [nvarchar](16) NULL,
	[GoldRelationTypeName] [nvarchar](16) NULL,
	[CustomRelationTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryRelationType] PRIMARY KEY CLUSTERED 
(
	[RelationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryRockMassUnitType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryRockMassUnitType](
	[RockMassUnitTypeID] [uniqueidentifier] NOT NULL,
	[StandardRockMassUnitTypeName] [nvarchar](16) NOT NULL,
	[CoalRockMassUnitTypeName] [nvarchar](16) NULL,
	[GoldRockMassUnitTypeName] [nvarchar](16) NULL,
	[CustomRockMassUnitTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryRMU_Type] PRIMARY KEY CLUSTERED 
(
	[RockMassUnitTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionarySampleCategory]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionarySampleCategory](
	[SampleCategoryID] [uniqueidentifier] NOT NULL,
	[StandardSampleCategoryName] [nvarchar](16) NOT NULL,
	[CoalSampleCategoryName] [nvarchar](16) NULL,
	[GoldSampleCategoryName] [nvarchar](16) NULL,
	[CustomSampleCategoryName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionarySample_Category] PRIMARY KEY CLUSTERED 
(
	[SampleCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionarySampleState]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionarySampleState](
	[SampleStateID] [uniqueidentifier] NOT NULL,
	[StandardSampleStateName] [nvarchar](16) NOT NULL,
	[CoalSampleStateName] [nvarchar](16) NULL,
	[GoldSampleStateName] [nvarchar](16) NULL,
	[CustomSampleStateName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionarySample_State] PRIMARY KEY CLUSTERED 
(
	[SampleStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionarySampleType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionarySampleType](
	[SampleTypeID] [uniqueidentifier] NOT NULL,
	[StandardSampleTypeName] [nvarchar](16) NOT NULL,
	[CoalSampleTypeName] [nvarchar](16) NULL,
	[GoldSampleTypeName] [nvarchar](16) NULL,
	[CustomSampleTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionarySample_Type] PRIMARY KEY CLUSTERED 
(
	[SampleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionarySeam]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionarySeam](
	[SeamID] [uniqueidentifier] NOT NULL,
	[StandardSeamName] [nvarchar](16) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionarySeam] PRIMARY KEY CLUSTERED 
(
	[SeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionarySeamAlias]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionarySeamAlias](
	[SeamAliasID] [uniqueidentifier] NOT NULL,
	[SeamID] [uniqueidentifier] NOT NULL,
	[CustomSeamName] [nvarchar](16) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionarySeamAlias] PRIMARY KEY CLUSTERED 
(
	[SeamAliasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionarySedimentaryFeature]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionarySedimentaryFeature](
	[SedimentaryFeatureID] [uniqueidentifier] NOT NULL,
	[StandardSedimentaryFeatureName] [nvarchar](16) NOT NULL,
	[CoalSedimentaryFeatureName] [nvarchar](16) NULL,
	[GoldSedimentaryFeatureName] [nvarchar](16) NULL,
	[CustomSedimentaryFeatureName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionarySed_Feature] PRIMARY KEY CLUSTERED 
(
	[SedimentaryFeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryShade]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryShade](
	[ShadeID] [uniqueidentifier] NOT NULL,
	[StandardShadeName] [nvarchar](16) NOT NULL,
	[CoalShadeName] [nvarchar](16) NULL,
	[GoldShadeName] [nvarchar](16) NULL,
	[CustomShadeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryShade] PRIMARY KEY CLUSTERED 
(
	[ShadeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryShape]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryShape](
	[ShapeID] [uniqueidentifier] NOT NULL,
	[StandardShapeName] [nvarchar](16) NOT NULL,
	[CoalShapeName] [nvarchar](16) NULL,
	[GoldShapeName] [nvarchar](16) NULL,
	[CustomShapeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryShape] PRIMARY KEY CLUSTERED 
(
	[ShapeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryStratigraphy]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryStratigraphy](
	[StratigraphyID] [uniqueidentifier] NOT NULL,
	[StandardStratigraphyName] [nvarchar](16) NOT NULL,
	[CoalStratigraphyName] [nvarchar](16) NULL,
	[GoldStratigraphyName] [nvarchar](16) NULL,
	[CustomStratigraphyName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryStratigraphy] PRIMARY KEY CLUSTERED 
(
	[StratigraphyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionarySurfaceRoughness]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionarySurfaceRoughness](
	[SurfaceRoughnessID] [uniqueidentifier] NOT NULL,
	[StandardSurfaceRoughnessName] [nvarchar](16) NOT NULL,
	[CoalSurfaceRoughnessName] [nvarchar](16) NULL,
	[GoldSurfaceRoughnessName] [nvarchar](16) NULL,
	[CustomSurfaceRoughnessName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryRoughness] PRIMARY KEY CLUSTERED 
(
	[SurfaceRoughnessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionarySurveyAccuracy]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionarySurveyAccuracy](
	[SurveyAccuracyID] [uniqueidentifier] NOT NULL,
	[StandardSurveyAccuracyName] [nvarchar](16) NOT NULL,
	[CoalSurveyAccuracyName] [nvarchar](16) NULL,
	[GoldSurveyAccuracyName] [nvarchar](16) NULL,
	[CustomSurveyAccuracyName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionarySurvey_Accuracy] PRIMARY KEY CLUSTERED 
(
	[SurveyAccuracyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryTexture]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryTexture](
	[TextureID] [uniqueidentifier] NOT NULL,
	[StandardTextureName] [nvarchar](16) NOT NULL,
	[CoalTextureName] [nvarchar](16) NULL,
	[GoldTextureName] [nvarchar](16) NULL,
	[CustomTextureName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryTexture] PRIMARY KEY CLUSTERED 
(
	[TextureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryUnit]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryUnit](
	[UnitID] [uniqueidentifier] NOT NULL,
	[UnitTypeID] [uniqueidentifier] NULL,
	[StrictlySI] [bit] NULL,
	[EquivalentUnit] [uniqueidentifier] NULL,
	[EquivalentMultiplier] [numeric](38, 20) NULL,
	[StandardUnitName] [nvarchar](16) NOT NULL,
	[CoalUnitName] [nvarchar](16) NULL,
	[GoldUnitName] [nvarchar](16) NULL,
	[CustomUnitName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryAssayUnit] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryUnitType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryUnitType](
	[UnitTypeID] [uniqueidentifier] NOT NULL,
	[StandardUnitTypeName] [nvarchar](16) NOT NULL,
	[CustomUnitTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryUnitType] PRIMARY KEY CLUSTERED 
(
	[UnitTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryUsageAuditType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryUsageAuditType](
	[UsageAuditTypeID] [int] NOT NULL,
	[UsageAuditTypeName] [nvarchar](16) NULL,
	[Description] [nvarchar](50) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_DictionaryUsageAuditType] PRIMARY KEY CLUSTERED 
(
	[UsageAuditTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryWeathering]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryWeathering](
	[WeatheringID] [uniqueidentifier] NOT NULL,
	[StandardWeatheringName] [nvarchar](16) NOT NULL,
	[CoalWeatheringName] [nvarchar](16) NULL,
	[GoldWeatheringName] [nvarchar](16) NULL,
	[CustomWeatheringName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryWeathering] PRIMARY KEY CLUSTERED 
(
	[WeatheringID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryWorkType]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryWorkType](
	[WorkTypeID] [uniqueidentifier] NOT NULL,
	[ProfessionID] [uniqueidentifier] NULL,
	[WorkTypeClassID] [uniqueidentifier] NULL,
	[WorkTypeName] [nvarchar](50) NOT NULL,
	[WorkTypeDescription] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_DictionaryWorkType] PRIMARY KEY CLUSTERED 
(
	[WorkTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryWorkTypeClass]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_DictionaryWorkTypeClass](
	[WorkTypeClassID] [uniqueidentifier] NOT NULL,
	[StandardWorkTypeClassName] [nvarchar](16) NOT NULL,
	[CoalWorkTypeClassName] [nvarchar](16) NULL,
	[GoldWorkTypeClassName] [nvarchar](16) NULL,
	[CustomWorkTypeClassName] [nvarchar](16) NULL,
	[Description] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Thumbnail] [varbinary](max) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DictionaryWorkTypeClass] PRIMARY KEY CLUSTERED 
(
	[WorkTypeClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_DictionaryWorkTypeRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_DictionaryWorkTypeRelation](
	[WorkTypeRelationID] [uniqueidentifier] NOT NULL,
	[WorkTypeID] [uniqueidentifier] NOT NULL,
	[ParentWorkTypeID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_X_DictionaryWorkTypeRelation] PRIMARY KEY CLUSTERED 
(
	[WorkTypeRelationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Drilling]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Drilling](
	[DrillingID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](7, 3) NULL,
	[ToDepth] [numeric](7, 3) NULL,
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
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_DrillingData] PRIMARY KEY CLUSTERED 
(
	[DrillingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Experience]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Experience](
	[ExperienceID] [uniqueidentifier] NOT NULL,
	[ExperienceName] [nvarchar](120) NULL,
	[CompanyID] [uniqueidentifier] NULL,
	[ProjectID] [uniqueidentifier] NULL,
	[ContactID] [uniqueidentifier] NULL,
	[LocationID] [uniqueidentifier] NULL,
	[WorkTypeID] [uniqueidentifier] NULL,
	[ProfessionID] [uniqueidentifier] NULL,
	[PositionID] [uniqueidentifier] NULL,
	[ClientAlias] [nvarchar](50) NULL,
	[Division] [nvarchar](50) NULL,
	[OfficeLocationAlias] [nvarchar](50) NULL,
	[ExternalProjectCode] [nvarchar](50) NULL,
	[EstimatedDurationDays] [int] NULL,
	[UserExperienceLevel] [int] NULL,
	[AssignedExperienceLevel] [int] NULL,
	[NormalizedExperienceLevel] [int] NULL,
	[DateStart] [date] NOT NULL,
	[DateFinished] [date] NULL,
	[Expiry] [date] NULL,
	[HourlyRate] [money] NULL,
	[DailyRate] [money] NULL,
	[AnnualRate] [money] NULL,
	[BlendedHourlyRate] [money] NULL,
	[BlendedHourlyCost] [money] NULL,
	[Comment] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_X_Experience] PRIMARY KEY CLUSTERED 
(
	[ExperienceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_FileData]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_FileData](
	[FileDataID] [uniqueidentifier] NOT NULL,
	[ParentFileID] [uniqueidentifier] NULL,
	[TableType] [nvarchar](50) NOT NULL,
	[ReferenceID] [uniqueidentifier] NOT NULL,
	[WorkerID] [uniqueidentifier] NULL,
	[FileName] [nvarchar](255) NULL,
	[DocumentType] [nvarchar](50) NULL,
	[MimeType] [nvarchar](50) NULL,
	[Author] [nvarchar](50) NULL,
	[FileBytes] [varbinary](max) NULL,
	[FileContent] [nvarchar](max) NULL,
	[FileChecksum] [nvarchar](50) NULL,
	[Comment] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_FileID] PRIMARY KEY CLUSTERED 
(
	[FileDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_Geology]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Geology](
	[GeologyID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[GeologyContactID] [uniqueidentifier] NULL,
	[FromDepth] [numeric](6, 2) NULL,
	[ToDepth] [numeric](6, 2) NULL,
	[Comment] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_GeologistData] PRIMARY KEY CLUSTERED 
(
	[GeologyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Geophysics]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Geophysics](
	[GeophysicsID] [uniqueidentifier] NOT NULL,
	[FileName] [nvarchar](255) NULL,
	[OriginalFileDataID] [uniqueidentifier] NULL,
	[HeaderID] [uniqueidentifier] NULL,
	[DimensionUnitID] [uniqueidentifier] NULL,
	[LasVersion] [nvarchar](16) NULL,
	[LasFormat] [nvarchar](16) NULL,
	[LasWrap] [nvarchar](16) NULL,
	[LasDelimiter] [nvarchar](16) NULL,
	[LasNullValue] [nvarchar](16) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Geophysics] PRIMARY KEY CLUSTERED 
(
	[GeophysicsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_GeophysicsData]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_GeophysicsData](
	[GeophysicsDataID] [uniqueidentifier] NOT NULL,
	[GeophysicsMetadataID] [uniqueidentifier] NOT NULL,
	[Dimension] [numeric](38, 20) NOT NULL,
	[MeasurementValue] [numeric](38, 20) NULL,
	[MeasurementText] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_GeophyicsData] PRIMARY KEY CLUSTERED 
(
	[GeophysicsDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_GeophysicsMetadata]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_GeophysicsMetadata] PRIMARY KEY CLUSTERED 
(
	[GeophysicsMetadataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	[Elevation] [numeric](8, 2) NULL,
	[Inclination] [int] NULL,
	[Azimuth] [int] NULL,
	[LocationID] [uniqueidentifier] NULL,
	[StartDate] [date] NULL,
	[CompleteDate] [date] NULL,
	[TotalDepth] [numeric](7, 3) NULL,
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
	[StandingWaterLevel] [numeric](6, 2) NULL,
	[StandingWaterLevelDate] [date] NULL,
	[DateRehabilitated] [date] NULL,
	[HoleStatusID] [uniqueidentifier] NULL,
	[Comment] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Header_1] PRIMARY KEY CLUSTERED 
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_HeaderRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_HeaderRelation](
	[HeaderRelationID] [uniqueidentifier] NOT NULL,
	[OriginalHeaderID] [uniqueidentifier] NULL,
	[RelatedHeaderID] [uniqueidentifier] NULL,
	[RelationTypeID] [uniqueidentifier] NULL,
	[Related] [date] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_HeaderRelation] PRIMARY KEY CLUSTERED 
(
	[HeaderRelationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Lease]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Lease](
	[LeaseID] [uniqueidentifier] NOT NULL,
	[TenementID] [uniqueidentifier] NULL,
	[LeaseNumber] [nvarchar](16) NOT NULL,
	[OwnerCompanyID] [uniqueidentifier] NULL,
	[ApprovedByContactID] [uniqueidentifier] NULL,
	[ValidFrom] [date] NULL,
	[Expiry] [date] NULL,
	[Comment] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Lease] PRIMARY KEY CLUSTERED 
(
	[LeaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_LeaseApplication]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_LeaseApplication] PRIMARY KEY CLUSTERED 
(
	[LeaseApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X_Lithology]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Lithology](
	[LithologyID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](7, 3) NULL,
	[ToDepth] [numeric](7, 3) NULL,
	[RecoveredThickness] [numeric](7, 3) NULL,
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
	[Description] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_LithologyData] PRIMARY KEY CLUSTERED 
(
	[LithologyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Location]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Location](
	[LocationID] [uniqueidentifier] NOT NULL,
	[LocationTypeID] [uniqueidentifier] NULL,
	[DefaultLocationName] [nvarchar](255) NULL,
	[LocationCode] [nvarchar](120) NULL,
	[LocationGeography] [geography] NULL,
	[LatitudeWGS84] [numeric](10, 7) NULL,
	[LongitudeWGS84] [numeric](10, 7) NULL,
	[Elevation] [numeric](12, 2) NULL,
	[CountryID] [nvarchar](2) NULL,
	[CountryStateID] [uniqueidentifier] NULL,
	[DefaultCulture] [nvarchar](5) NULL,
	[OwnerCompanyID] [uniqueidentifier] NULL,
	[ResponsibleContactID] [uniqueidentifier] NULL,
	[Comment] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Location] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_LocationAlias]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_LocationAlias](
	[LocationAliasID] [uniqueidentifier] NOT NULL,
	[LocationID] [uniqueidentifier] NULL,
	[Alias] [nvarchar](50) NULL,
	[Culture] [nvarchar](5) NULL,
	[Priority] [int] NOT NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_LocationAlias] PRIMARY KEY CLUSTERED 
(
	[LocationAliasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_LocationHistory]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_LocationHistory](
	[LocationHistoryID] [uniqueidentifier] NOT NULL,
	[LocationHistory] [geography] NOT NULL,
	[LocationTaken] [datetime] NOT NULL,
	[CorrectedLocationID] [uniqueidentifier] NULL,
	[ContactID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_LocationHistory] PRIMARY KEY CLUSTERED 
(
	[LocationHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_MetaData]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_MetaData](
	[MetaDataID] [uniqueidentifier] NOT NULL,
	[MetaDataType] [nvarchar](50) NULL,
	[ContentToIndex] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Metadata] PRIMARY KEY CLUSTERED 
(
	[MetaDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_MetaDataRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_MetaDataRelation](
	[MetaDataRelationID] [uniqueidentifier] NOT NULL,
	[MetaDataID] [uniqueidentifier] NOT NULL,
	[TableType] [nvarchar](50) NOT NULL,
	[ReferenceID] [uniqueidentifier] NOT NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_MetaDataRelation] PRIMARY KEY CLUSTERED 
(
	[MetaDataRelationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Mineralogy]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Mineralogy](
	[MineralogyID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](7, 3) NULL,
	[ToDepth] [numeric](7, 3) NULL,
	[MineralAbundanceID] [uniqueidentifier] NULL,
	[MineralFormID] [uniqueidentifier] NULL,
	[MineralTypeID] [uniqueidentifier] NULL,
	[MineralStyleID] [uniqueidentifier] NULL,
	[Logged] [date] NULL,
	[LoggedBy] [nvarchar](50) NULL,
	[Comment] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Mineralogy] PRIMARY KEY CLUSTERED 
(
	[MineralogyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ModelCharacteristic]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ModelCharacteristic](
	[ModelCharacteristicID] [uniqueidentifier] NOT NULL,
	[ModelID] [uniqueidentifier] NULL,
	[CharacteristicID] [uniqueidentifier] NULL,
	[Value] [numeric](38, 20) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ModelCharacteristic] PRIMARY KEY CLUSTERED 
(
	[ModelCharacteristicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Opportunity]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Opportunity](
	[OpportunityID] [uniqueidentifier] NOT NULL,
	[OpportunityName] [nvarchar](50) NULL,
	[OpportunityContactID] [uniqueidentifier] NULL,
	[OpportunityCompanyID] [uniqueidentifier] NULL,
	[StatusWorkTypeID] [uniqueidentifier] NULL,
	[RegardingWorkTypeID] [uniqueidentifier] NULL,
	[Description] [nvarchar](255) NULL,
	[ProposalContactID] [uniqueidentifier] NULL,
	[ProposalFileDataID] [uniqueidentifier] NULL,
	[ProjectID] [uniqueidentifier] NULL,
	[ExperienceID] [uniqueidentifier] NULL,
	[OpenedBy] [uniqueidentifier] NULL,
	[AssignedBy] [uniqueidentifier] NULL,
	[MaintainedBy] [uniqueidentifier] NULL,
	[ConvertedBy] [uniqueidentifier] NULL,
	[EstimatedConversion] [date] NULL,
	[EstimatedDurationHours] [decimal](16, 2) NULL,
	[EstimatedRevenue] [money] NULL,
	[Probability] [numeric](3, 2) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Opportunity] PRIMARY KEY CLUSTERED 
(
	[OpportunityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Parameter]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_CompositeCustomParamter] PRIMARY KEY CLUSTERED 
(
	[ParameterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ParameterDuplicate]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ParameterDuplicate](
	[ParameterDuplicateID] [uniqueidentifier] NOT NULL,
	[Parameter1ID] [uniqueidentifier] NULL,
	[Parameter2ID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ParameterMatchID] PRIMARY KEY CLUSTERED 
(
	[ParameterDuplicateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ParameterGroup]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ParameterGroup](
	[ParameterGroupID] [uniqueidentifier] NOT NULL,
	[ParameterID] [uniqueidentifier] NOT NULL,
	[GroupID] [uniqueidentifier] NOT NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ParameterGroup] PRIMARY KEY CLUSTERED 
(
	[ParameterGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_PartCharacteristic]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_PartCharacteristic](
	[PartCharacteristicID] [uniqueidentifier] NOT NULL,
	[PartID] [uniqueidentifier] NULL,
	[CharacteristicID] [uniqueidentifier] NULL,
	[Value] [numeric](38, 20) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_PartCharacteristic] PRIMARY KEY CLUSTERED 
(
	[PartCharacteristicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_PointLoad]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_PointLoad](
	[PointLoadID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](7, 3) NULL,
	[ToDepth] [numeric](7, 3) NULL,
	[SampleNumber] [nvarchar](16) NULL,
	[SampleLength] [numeric](5, 3) NULL,
	[SampleStateID] [uniqueidentifier] NULL,
	[SampleTypeID] [uniqueidentifier] NULL,
	[TestSampleCode] [nvarchar](16) NULL,
	[TestSampleDepth] [numeric](7, 3) NULL,
	[PointLoadTestTypeID] [uniqueidentifier] NULL,
	[PlatenSeparation] [int] NULL,
	[Width] [int] NULL,
	[FailureLoad] [numeric](4, 2) NULL,
	[FailureModeID] [uniqueidentifier] NULL,
	[Comment] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_PointLoadData] PRIMARY KEY CLUSTERED 
(
	[PointLoadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_PrivateData]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_PrivateData] PRIMARY KEY CLUSTERED 
(
	[PrivateDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Project]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Project](
	[ProjectID] [uniqueidentifier] NOT NULL,
	[TenementID] [uniqueidentifier] NULL,
	[ProjectName] [nvarchar](16) NULL,
	[ProjectCode] [nvarchar](16) NULL,
	[ClientCompanyID] [uniqueidentifier] NULL,
	[Comment] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ProjectDeliverable]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ProjectDeliverable](
	[ProjectDeliverableID] [uniqueidentifier] NOT NULL,
	[ProjectID] [uniqueidentifier] NOT NULL,
	[Sequence] [bigint] NOT NULL,
	[DeliverableName] [nvarchar](50) NULL,
	[WorkTypeID] [uniqueidentifier] NULL,
	[MilestoneTaskID] [uniqueidentifier] NULL,
	[Description] [nvarchar](255) NULL,
	[InitiatedBy] [uniqueidentifier] NULL,
	[Initiated] [datetime] NULL,
	[ApprovedBy] [uniqueidentifier] NULL,
	[Approved] [datetime] NULL,
	[EvidenceDescription] [nvarchar](255) NULL,
	[EvidenceFileDataID] [uniqueidentifier] NULL,
	[EvidenceContractID] [uniqueidentifier] NULL,
	[EvidenceContactID] [uniqueidentifier] NULL,
	[EvidenceCreated] [datetime] NULL,
	[ExpectedProRataUnits] [numeric](38, 20) NULL,
	[ExpectedProRataPerUnitID] [uniqueidentifier] NULL,
	[ExpectedProRataValue] [money] NULL,
	[EstimatedDurationManHours] [numeric](10, 2) NULL,
	[EstimatedCost] [money] NULL,
	[Due] [datetime] NULL,
	[HourlyPenalties] [money] NULL,
	[TotalValue] [money] NULL,
	[Completed] [datetime] NULL,
	[Comment] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ProjectDeliverable] PRIMARY KEY CLUSTERED 
(
	[ProjectDeliverableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ProjectPlan]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ProjectPlan](
	[ProjectPlanID] [uniqueidentifier] NOT NULL,
	[ProjectID] [uniqueidentifier] NULL,
	[ParentProjectPlanID] [uniqueidentifier] NULL,
	[ProjectPlanName] [nvarchar](50) NULL,
	[ResponsibleContactID] [uniqueidentifier] NULL,
	[Comment] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ProjectPlan] PRIMARY KEY CLUSTERED 
(
	[ProjectPlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ProjectPlanTask]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ProjectPlanTask](
	[ProjectPlanTaskID] [uniqueidentifier] NOT NULL,
	[ProjectPlanID] [uniqueidentifier] NOT NULL,
	[ParentProjectTaskID] [uniqueidentifier] NULL,
	[ProjectTaskName] [nvarchar](50) NULL,
	[WorkTypeID] [uniqueidentifier] NULL,
	[Priority] [int] NOT NULL,
	[Progress] [numeric](3, 2) NULL,
	[StartDate] [date] NULL,
	[StopDate] [date] NULL,
	[AllocatedManHours] [numeric](10, 2) NULL,
	[Comment] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ProjectPlanTask] PRIMARY KEY CLUSTERED 
(
	[ProjectPlanTaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ProjectPlanTaskComplianceResponse]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ProjectPlanTaskComplianceResponse](
	[ProjectPlanTaskComplianceResponseID] [uniqueidentifier] NOT NULL,
	[ProjectPlanTaskID] [uniqueidentifier] NULL,
	[ProjectPlanTaskResponseID] [uniqueidentifier] NULL,
	[ComplianceWorkTypeID] [uniqueidentifier] NULL,
	[ComplianceFormResponse] [xml] NULL,
	[CompletedBy] [uniqueidentifier] NULL,
	[Completed] [datetime] NULL,
	[ApprovedBy] [uniqueidentifier] NULL,
	[Approved] [datetime] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ProjectPlanTaskComplianceResponse] PRIMARY KEY CLUSTERED 
(
	[ProjectPlanTaskComplianceResponseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ProjectPlanTaskResponse]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ProjectPlanTaskResponse](
	[ProjectPlanTaskResponseID] [uniqueidentifier] NOT NULL,
	[ProjectPlanTaskID] [uniqueidentifier] NULL,
	[ResponsibleContactID] [uniqueidentifier] NULL,
	[ActualWorkTypeID] [uniqueidentifier] NULL,
	[Began] [datetime] NULL,
	[Completed] [datetime] NULL,
	[Hours] [numeric](10, 2) NULL,
	[EstimatedProRataUnits] [numeric](38, 20) NULL,
	[EstimatedProRataCost] [money] NULL,
	[EstimatedValue] [money] NULL,
	[ApprovedProRataUnits] [numeric](38, 20) NULL,
	[ApprovedProRataCost] [money] NULL,
	[Approved] [datetime] NULL,
	[ApprovedBy] [uniqueidentifier] NULL,
	[Comments] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ProjectPlanTaskResponse] PRIMARY KEY CLUSTERED 
(
	[ProjectPlanTaskResponseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ProjectPlanTaskWorker]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ProjectPlanTaskWorker](
	[ProjectPlanTaskWorkerID] [uniqueidentifier] NOT NULL,
	[ProjectPlanTaskID] [uniqueidentifier] NOT NULL,
	[WorkerID] [uniqueidentifier] NOT NULL,
	[AvailableFromDate] [date] NULL,
	[AvailableUntilDate] [date] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ProjectPlanTaskWorker] PRIMARY KEY CLUSTERED 
(
	[ProjectPlanTaskWorkerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Prospectus]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Prospectus](
	[ProspectusID] [uniqueidentifier] NOT NULL,
	[ProspectusName] [nvarchar](255) NULL,
	[Author] [nvarchar](255) NULL,
	[ListDate] [date] NULL,
	[ProjectCount] [int] NULL,
	[Cost] [decimal](18, 2) NULL,
	[Pages] [int] NULL,
	[TenementID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Prospectus] PRIMARY KEY CLUSTERED 
(
	[ProspectusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ProspectusProject]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ProspectusProject](
	[ProspectusProjectID] [uniqueidentifier] NOT NULL,
	[ProspectusID] [uniqueidentifier] NOT NULL,
	[ProjectName] [nvarchar](255) NULL,
	[CountryID] [nvarchar](2) NULL,
	[State] [nvarchar](50) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ProspectusProject] PRIMARY KEY CLUSTERED 
(
	[ProspectusProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ProspectusProjectCommodity]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ProspectusProjectCommodity](
	[ProspectusProjectCommodityID] [uniqueidentifier] NOT NULL,
	[ProspectusProjectID] [uniqueidentifier] NULL,
	[CommodityID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ProspectusProjectCommodityID] PRIMARY KEY CLUSTERED 
(
	[ProspectusProjectCommodityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_ProspectusProjectProvince]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_ProspectusProjectProvince](
	[ProspectusProjectProvinceID] [uniqueidentifier] NOT NULL,
	[ProspectusProjectID] [uniqueidentifier] NOT NULL,
	[ProvinceID] [uniqueidentifier] NOT NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_ProspectusProjectProvince] PRIMARY KEY CLUSTERED 
(
	[ProspectusProjectProvinceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Province]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Province] PRIMARY KEY CLUSTERED 
(
	[ProvinceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Recovery]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Recovery](
	[RecoveryID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[FromDepth] [numeric](7, 3) NULL,
	[ToDepth] [numeric](7, 3) NULL,
	[Advance] [numeric](7, 3) NULL,
	[CoreLoss] [numeric](7, 3) NULL,
	[CoreRecovered] [numeric](7, 3) NULL,
	[Solid] [numeric](7, 3) NULL,
	[Total] [numeric](7, 3) NULL,
	[Confident] [bit] NULL,
	[DrillSizeID] [uniqueidentifier] NULL,
	[CoreSize] [int] NULL,
	[Comment] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_RecoveryData] PRIMARY KEY CLUSTERED 
(
	[RecoveryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Sample]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Sample](
	[SampleID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NULL,
	[SampleCategoryID] [uniqueidentifier] NULL,
	[SampleStateID] [uniqueidentifier] NULL,
	[SampleTypeID] [uniqueidentifier] NULL,
	[SampleName] [nvarchar](16) NULL,
	[SampleNumber] [nvarchar](16) NULL,
	[SampleTaken] [datetime] NULL,
	[FromDepth] [numeric](7, 3) NULL,
	[ToDepth] [numeric](7, 3) NULL,
	[SampleMassKg] [numeric](6, 4) NULL,
	[DryMassKg] [numeric](6, 4) NULL,
	[Location] [geography] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_AssayGroupTestSample] PRIMARY KEY CLUSTERED 
(
	[SampleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_SecurityBlacklist]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_SecurityBlacklist] PRIMARY KEY CLUSTERED 
(
	[SecurityBlacklistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_SecurityWhitelist]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_SecurityWhitelist] PRIMARY KEY CLUSTERED 
(
	[SecurityWhitelistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Survey]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Survey](
	[SurveyID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[Depth] [numeric](7, 3) NOT NULL,
	[Dip] [numeric](5, 2) NULL,
	[MagneticDip] [numeric](5, 2) NULL,
	[MagnetAffected] [bit] NULL,
	[OriginalAzimuth] [numeric](5, 2) NULL,
	[CorrectedAzimuth] [numeric](5, 2) NULL,
	[Gravity] [numeric](5, 4) NULL,
	[InstrumentModelID] [uniqueidentifier] NULL,
	[InstrumentAssetID] [nvarchar](16) NULL,
	[Surveyed] [date] NULL,
	[SurveyContactID] [uniqueidentifier] NULL,
	[SurveyCompanyID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Survey] PRIMARY KEY CLUSTERED 
(
	[SurveyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Task]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Task](
	[TaskID] [uniqueidentifier] NOT NULL,
	[ParentTaskID] [uniqueidentifier] NULL,
	[TaskName] [nvarchar](50) NULL,
	[WorkTypeID] [uniqueidentifier] NULL,
	[DefaultPriority] [int] NOT NULL,
	[EstimatedDuration] [numeric](38, 20) NULL,
	[EstimatedDurationUnitID] [uniqueidentifier] NULL,
	[Comment] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Task] PRIMARY KEY CLUSTERED 
(
	[TaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_Tenement]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Tenement](
	[TenementID] [uniqueidentifier] NOT NULL,
	[TenementName] [nvarchar](60) NULL,
	[TenementNumber] [nvarchar](60) NULL,
	[TenementDevelopmentPhase] [nvarchar](50) NULL,
	[CountryID] [nvarchar](2) NULL,
	[TenementBoundaryProvinceID] [uniqueidentifier] NULL,
	[OwnerCompanyID] [uniqueidentifier] NULL,
	[ApprovedByContactID] [uniqueidentifier] NULL,
	[ValidFrom] [date] NULL,
	[Expiry] [date] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Tenement] PRIMARY KEY CLUSTERED 
(
	[TenementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_TenementCommodity]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_TenementCommodity](
	[TenementCommodityID] [uniqueidentifier] NOT NULL,
	[TenementID] [uniqueidentifier] NULL,
	[CommodityID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_TenementCommodityID] PRIMARY KEY CLUSTERED 
(
	[TenementCommodityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_TenementProvince]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_TenementProvince](
	[TenementProvinceID] [uniqueidentifier] NOT NULL,
	[TenementID] [uniqueidentifier] NULL,
	[ProvinceID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_TenementProvince] PRIMARY KEY CLUSTERED 
(
	[TenementProvinceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_TenementRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_TenementRelation](
	[TenementRelationID] [uniqueidentifier] NOT NULL,
	[TenementID] [uniqueidentifier] NULL,
	[ParentTenementID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_x_TenementRelation] PRIMARY KEY CLUSTERED 
(
	[TenementRelationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_UsageAudit]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_UsageAudit](
	[UsageAuditID] [uniqueidentifier] NOT NULL,
	[UsageAuditTypeID] [int] NULL,
	[EntitySystemType] [nvarchar](255) NULL,
	[EntityID] [nvarchar](50) NULL,
	[Action] [nvarchar](max) NULL,
	[Audited] [datetime] NULL,
	[ContactID] [uniqueidentifier] NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_Audit] PRIMARY KEY CLUSTERED 
(
	[UsageAuditID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_UserData]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_UserData](
	[UserDataID] [uniqueidentifier] NOT NULL,
	[TableType] [nvarchar](50) NOT NULL,
	[ReferenceID] [uniqueidentifier] NOT NULL,
	[UserDataType] [nvarchar](50) NULL,
	[SystemDataType] [nvarchar](255) NULL,
	[Value] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_UserData] PRIMARY KEY CLUSTERED 
(
	[UserDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[X_WaterFlow]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_WaterFlow](
	[WaterFlowID] [uniqueidentifier] NOT NULL,
	[HeaderID] [uniqueidentifier] NOT NULL,
	[TestDepth] [numeric](7, 3) NULL,
	[TestDate] [date] NULL,
	[SampleTypeID] [uniqueidentifier] NULL,
	[SampleNumber] [nvarchar](16) NULL,
	[FlowTestTypeID] [uniqueidentifier] NULL,
	[FlowHeight] [int] NULL,
	[FlowRate] [numeric](5, 2) NULL,
	[Ph] [numeric](4, 2) NULL,
	[TotalDissolvedSolids] [numeric](4, 2) NULL,
	[ElectricalConductivity] [numeric](12, 2) NULL,
	[Temperature] [numeric](12, 2) NULL,
	[Pressure] [numeric](12, 2) NULL,
	[Comment] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[VersionAntecedentID] [uniqueidentifier] NULL,
	[VersionCertainty] [int] NULL,
	[VersionWorkflowInstanceID] [uniqueidentifier] NULL,
	[VersionUpdatedBy] [uniqueidentifier] NULL,
	[VersionDeletedBy] [uniqueidentifier] NULL,
	[VersionOwnerContactID] [uniqueidentifier] NULL,
	[VersionOwnerCompanyID] [uniqueidentifier] NULL,
	[VersionUpdated] [datetime] NULL,
 CONSTRAINT [PK_X_WaterFlowData] PRIMARY KEY CLUSTERED 
(
	[WaterFlowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [System.Activities.DurableInstancing].[DefinitionIdentityTable]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [System.Activities.DurableInstancing].[DefinitionIdentityTable](
	[SurrogateIdentityId] [bigint] IDENTITY(1,1) NOT NULL,
	[DefinitionIdentityHash] [uniqueidentifier] NOT NULL,
	[DefinitionIdentityAnyRevisionHash] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Package] [nvarchar](max) NULL,
	[Build] [bigint] NULL,
	[Major] [bigint] NULL,
	[Minor] [bigint] NULL,
	[Revision] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [System.Activities.DurableInstancing].[IdentityOwnerTable]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [System.Activities.DurableInstancing].[IdentityOwnerTable](
	[SurrogateIdentityId] [bigint] NOT NULL,
	[SurrogateLockOwnerId] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [System.Activities.DurableInstancing].[InstanceMetadataChangesTable]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [System.Activities.DurableInstancing].[InstanceMetadataChangesTable](
	[SurrogateInstanceId] [bigint] NOT NULL,
	[ChangeTime] [bigint] IDENTITY(1,1) NOT NULL,
	[EncodingOption] [tinyint] NOT NULL,
	[Change] [varbinary](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [System.Activities.DurableInstancing].[InstancePromotedPropertiesTable]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [System.Activities.DurableInstancing].[InstancePromotedPropertiesTable](
	[SurrogateInstanceId] [bigint] NOT NULL,
	[PromotionName] [nvarchar](400) NOT NULL,
	[Value1] [sql_variant] NULL,
	[Value2] [sql_variant] NULL,
	[Value3] [sql_variant] NULL,
	[Value4] [sql_variant] NULL,
	[Value5] [sql_variant] NULL,
	[Value6] [sql_variant] NULL,
	[Value7] [sql_variant] NULL,
	[Value8] [sql_variant] NULL,
	[Value9] [sql_variant] NULL,
	[Value10] [sql_variant] NULL,
	[Value11] [sql_variant] NULL,
	[Value12] [sql_variant] NULL,
	[Value13] [sql_variant] NULL,
	[Value14] [sql_variant] NULL,
	[Value15] [sql_variant] NULL,
	[Value16] [sql_variant] NULL,
	[Value17] [sql_variant] NULL,
	[Value18] [sql_variant] NULL,
	[Value19] [sql_variant] NULL,
	[Value20] [sql_variant] NULL,
	[Value21] [sql_variant] NULL,
	[Value22] [sql_variant] NULL,
	[Value23] [sql_variant] NULL,
	[Value24] [sql_variant] NULL,
	[Value25] [sql_variant] NULL,
	[Value26] [sql_variant] NULL,
	[Value27] [sql_variant] NULL,
	[Value28] [sql_variant] NULL,
	[Value29] [sql_variant] NULL,
	[Value30] [sql_variant] NULL,
	[Value31] [sql_variant] NULL,
	[Value32] [sql_variant] NULL,
	[Value33] [varbinary](max) NULL,
	[Value34] [varbinary](max) NULL,
	[Value35] [varbinary](max) NULL,
	[Value36] [varbinary](max) NULL,
	[Value37] [varbinary](max) NULL,
	[Value38] [varbinary](max) NULL,
	[Value39] [varbinary](max) NULL,
	[Value40] [varbinary](max) NULL,
	[Value41] [varbinary](max) NULL,
	[Value42] [varbinary](max) NULL,
	[Value43] [varbinary](max) NULL,
	[Value44] [varbinary](max) NULL,
	[Value45] [varbinary](max) NULL,
	[Value46] [varbinary](max) NULL,
	[Value47] [varbinary](max) NULL,
	[Value48] [varbinary](max) NULL,
	[Value49] [varbinary](max) NULL,
	[Value50] [varbinary](max) NULL,
	[Value51] [varbinary](max) NULL,
	[Value52] [varbinary](max) NULL,
	[Value53] [varbinary](max) NULL,
	[Value54] [varbinary](max) NULL,
	[Value55] [varbinary](max) NULL,
	[Value56] [varbinary](max) NULL,
	[Value57] [varbinary](max) NULL,
	[Value58] [varbinary](max) NULL,
	[Value59] [varbinary](max) NULL,
	[Value60] [varbinary](max) NULL,
	[Value61] [varbinary](max) NULL,
	[Value62] [varbinary](max) NULL,
	[Value63] [varbinary](max) NULL,
	[Value64] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [System.Activities.DurableInstancing].[InstancesTable]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [System.Activities.DurableInstancing].[InstancesTable](
	[Id] [uniqueidentifier] NOT NULL,
	[SurrogateInstanceId] [bigint] IDENTITY(1,1) NOT NULL,
	[SurrogateLockOwnerId] [bigint] NULL,
	[PrimitiveDataProperties] [varbinary](max) NULL,
	[ComplexDataProperties] [varbinary](max) NULL,
	[WriteOnlyPrimitiveDataProperties] [varbinary](max) NULL,
	[WriteOnlyComplexDataProperties] [varbinary](max) NULL,
	[MetadataProperties] [varbinary](max) NULL,
	[DataEncodingOption] [tinyint] NULL,
	[MetadataEncodingOption] [tinyint] NULL,
	[Version] [bigint] NOT NULL,
	[PendingTimer] [datetime] NULL,
	[CreationTime] [datetime] NOT NULL,
	[LastUpdated] [datetime] NULL,
	[WorkflowHostType] [uniqueidentifier] NULL,
	[ServiceDeploymentId] [bigint] NULL,
	[SuspensionExceptionName] [nvarchar](450) NULL,
	[SuspensionReason] [nvarchar](max) NULL,
	[BlockingBookmarks] [nvarchar](max) NULL,
	[LastMachineRunOn] [nvarchar](450) NULL,
	[ExecutionStatus] [nvarchar](450) NULL,
	[IsInitialized] [bit] NULL,
	[IsSuspended] [bit] NULL,
	[IsReadyToRun] [bit] NULL,
	[IsCompleted] [bit] NULL,
	[SurrogateIdentityId] [bigint] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [System.Activities.DurableInstancing].[KeysTable]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [System.Activities.DurableInstancing].[KeysTable](
	[Id] [uniqueidentifier] NOT NULL,
	[SurrogateKeyId] [bigint] IDENTITY(1,1) NOT NULL,
	[SurrogateInstanceId] [bigint] NULL,
	[EncodingOption] [tinyint] NULL,
	[Properties] [varbinary](max) NULL,
	[IsAssociated] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [System.Activities.DurableInstancing].[LockOwnersTable]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [System.Activities.DurableInstancing].[LockOwnersTable](
	[Id] [uniqueidentifier] NOT NULL,
	[SurrogateLockOwnerId] [bigint] IDENTITY(1,1) NOT NULL,
	[LockExpiration] [datetime] NOT NULL,
	[WorkflowHostType] [uniqueidentifier] NULL,
	[MachineName] [nvarchar](128) NOT NULL,
	[EnqueueCommand] [bit] NOT NULL,
	[DeletesInstanceOnCompletion] [bit] NOT NULL,
	[PrimitiveLockOwnerData] [varbinary](max) NULL,
	[ComplexLockOwnerData] [varbinary](max) NULL,
	[WriteOnlyPrimitiveLockOwnerData] [varbinary](max) NULL,
	[WriteOnlyComplexLockOwnerData] [varbinary](max) NULL,
	[EncodingOption] [tinyint] NULL,
	[WorkflowIdentityFilter] [tinyint] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [System.Activities.DurableInstancing].[RunnableInstancesTable]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [System.Activities.DurableInstancing].[RunnableInstancesTable](
	[SurrogateInstanceId] [bigint] NOT NULL,
	[WorkflowHostType] [uniqueidentifier] NULL,
	[ServiceDeploymentId] [bigint] NULL,
	[RunnableTime] [datetime] NOT NULL,
	[SurrogateIdentityId] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [System.Activities.DurableInstancing].[ServiceDeploymentsTable]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [System.Activities.DurableInstancing].[ServiceDeploymentsTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ServiceDeploymentHash] [uniqueidentifier] NOT NULL,
	[SiteName] [nvarchar](max) NOT NULL,
	[RelativeServicePath] [nvarchar](max) NOT NULL,
	[RelativeApplicationPath] [nvarchar](max) NOT NULL,
	[ServiceName] [nvarchar](max) NOT NULL,
	[ServiceNamespace] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [System.Activities.DurableInstancing].[SqlWorkflowInstanceStoreVersionTable]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [System.Activities.DurableInstancing].[SqlWorkflowInstanceStoreVersionTable](
	[Major] [bigint] NULL,
	[Minor] [bigint] NULL,
	[Build] [bigint] NULL,
	[Revision] [bigint] NULL,
	[LastUpdated] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  

GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  

GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  

GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  

GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  

GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  

GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  

GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  

GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  

GO
/****** Object:  View [dbo].[X_VW_ALLPARAMSTEST]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[X_VW_ALLPARAMSTEST]
AS
SELECT dbo.X_BlockModel.ProjectID, dbo.X_BlockModelBlock.Domain, dbo.X_BlockModelBlock.I, dbo.X_BlockModelBlock.J, 
               dbo.X_BlockModelBlock.K, dbo.X_BlockModelBlock.CentroidX, dbo.X_BlockModelBlock.CentroidY, dbo.X_BlockModelBlock.CentroidZ, 
               dbo.X_BlockModelBlockData.BlockModelBlockDataText, dbo.X_BlockModelBlockData.BlockModelBlockDataValue, dbo.X_Parameter.DefaultParameterText
FROM  dbo.X_BlockModelBlock INNER JOIN
               dbo.X_BlockModel ON dbo.X_BlockModelBlock.BlockModelID = dbo.X_BlockModel.BlockModelID INNER JOIN
               dbo.X_BlockModelBlockData ON dbo.X_BlockModelBlock.BlockModelBlockID = dbo.X_BlockModelBlockData.BlockModelBlockID INNER JOIN
               dbo.X_Parameter ON dbo.X_BlockModelBlockData.ParameterID = dbo.X_Parameter.ParameterID


GO
/****** Object:  View [dbo].[X_VW_DictionaryHeader]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[X_VW_DictionaryHeader]
AS
SELECT        HeaderID, MIN(HoleName) AS HoleName
FROM            dbo.X_Header
WHERE [VERSION]=0
GROUP BY HeaderID


GO
/****** Object:  View [dbo].[X_VW_ModelsCurrent]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[X_VW_ModelsCurrent]
AS
SELECT       p.ProjectID, p.ProjectName, o.BlockModelID, o.Alias,  v.ModelStage, w.HasSubcells, x.[Filename], y.Comment, z.Uploaded, c1.ContactID Author, c1.ContactName AuthorName , c2.ContactID Approver, c2.ContactName ApproverName, c3.ContactID ExternalReviewer, c3.ContactName ExternalReviewerName
FROM            dbo.X_BlockModel o
inner join  dbo.X_Project p
			on o.ProjectID = p.ProjectID
left outer join dbo.X_Contact c1
			on o.AuthorContactID = c1.ContactID
left outer join dbo.X_Contact c2
			on o.ApproverContactID = c2.ContactID
left outer join dbo.X_Contact c3
			on o.ExternalReviewerContactID = c3.ContactID
LEFT OUTER JOIN
(
			select top(1)
			m.BlockModelID,
			BlockModelMetadataText ModelStage
			from 
			dbo.X_BlockModelMetadata m 
	INNER JOIN 
			dbo.X_Parameter t on
			m.ParameterID = t.ParameterID and t.ParameterName='Stage' and t.ParameterType='Metadata'
	WHERE
				m.Version = 0
	order by m.VersionUpdated desc
) v
on o.BlockModelID = v.BlockModelID
LEFT OUTER JOIN
(
			select top(1)
			m.BlockModelID,
			BlockModelMetadataText HasSubcells
			from 
			dbo.X_BlockModelMetadata m 
	INNER JOIN 
			dbo.X_Parameter t on
			m.ParameterID = t.ParameterID and t.ParameterName='HasSubcells' and t.ParameterType='Metadata'
	WHERE
				m.Version = 0
	order by m.VersionUpdated desc
) w
on o.BlockModelID = w.BlockModelID
LEFT OUTER JOIN
(
			select top(1)
			m.BlockModelID,
			BlockModelMetadataText [Filename]
			from 
			dbo.X_BlockModelMetadata m 
	INNER JOIN 
			dbo.X_Parameter t on
			m.ParameterID = t.ParameterID and t.ParameterName='Filename' and t.ParameterType='Metadata'
	WHERE
				m.Version = 0
	order by m.VersionUpdated desc
) x
on o.BlockModelID = x.BlockModelID
LEFT OUTER JOIN
(
			select top(1)
			m.BlockModelID,
			BlockModelMetadataText [Comment]
			from 
			dbo.X_BlockModelMetadata m 
	INNER JOIN 
			dbo.X_Parameter t on
			m.ParameterID = t.ParameterID and t.ParameterName='Comment' and t.ParameterType='Metadata'
	WHERE
				m.Version = 0
	order by m.VersionUpdated desc
) y
on o.BlockModelID = y.BlockModelID
LEFT OUTER JOIN
(
			select top(1)
			m.BlockModelID,
			BlockModelMetadataText [Uploaded]
			from 
			dbo.X_BlockModelMetadata m 
	INNER JOIN 
			dbo.X_Parameter t on
			m.ParameterID = t.ParameterID and t.ParameterName='Uploaded' and t.ParameterType='Metadata'
	WHERE
				m.Version = 0
	order by m.VersionUpdated desc
) z
on o.BlockModelID = z.BlockModelID
where o.VersionDeletedBy IS NULL and p.VersionDeletedBy IS NULL

GO
/****** Object:  View [dbo].[X_VW_ModelStatus]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[X_VW_ModelStatus]
AS
SELECT       p.ProjectID, p.ProjectName, o.BlockModelID, o.Alias,  v.ModelStage, w.HasSubcells, x.[Filename], y.Comment, z.Uploaded, c1.ContactID Author, c1.ContactName AuthorName , c2.ContactID Approver, c2.ContactName ApproverName, c3.ContactID ExternalReviewer, c3.ContactName ExternalReviewerName
FROM            dbo.X_BlockModel o
inner join  dbo.X_Project p
			on o.ProjectID = p.ProjectID
left outer join dbo.X_Contact c1
			on o.AuthorContactID = c1.ContactID
left outer join dbo.X_Contact c2
			on o.ApproverContactID = c2.ContactID
left outer join dbo.X_Contact c3
			on o.ExternalReviewerContactID = c3.ContactID
LEFT OUTER JOIN
(
			select top(1)
			m.BlockModelID,
			BlockModelMetadataText ModelStage
			from 
			dbo.X_BlockModelMetadata m 
	INNER JOIN 
			dbo.X_Parameter t on
			m.ParameterID = t.ParameterID and t.ParameterName='Stage' and t.ParameterType='Metadata'
	WHERE
				m.Version = 0
	order by m.VersionUpdated desc
) v
on o.BlockModelID = v.BlockModelID
LEFT OUTER JOIN
(
			select top(1)
			m.BlockModelID,
			BlockModelMetadataText HasSubcells
			from 
			dbo.X_BlockModelMetadata m 
	INNER JOIN 
			dbo.X_Parameter t on
			m.ParameterID = t.ParameterID and t.ParameterName='HasSubcells' and t.ParameterType='Metadata'
	WHERE
				m.Version = 0
	order by m.VersionUpdated desc
) w
on o.BlockModelID = w.BlockModelID
LEFT OUTER JOIN
(
			select top(1)
			m.BlockModelID,
			BlockModelMetadataText [Filename]
			from 
			dbo.X_BlockModelMetadata m 
	INNER JOIN 
			dbo.X_Parameter t on
			m.ParameterID = t.ParameterID and t.ParameterName='Filename' and t.ParameterType='Metadata'
	WHERE
				m.Version = 0
	order by m.VersionUpdated desc
) x
on o.BlockModelID = x.BlockModelID
LEFT OUTER JOIN
(
			select top(1)
			m.BlockModelID,
			BlockModelMetadataText [Comment]
			from 
			dbo.X_BlockModelMetadata m 
	INNER JOIN 
			dbo.X_Parameter t on
			m.ParameterID = t.ParameterID and t.ParameterName='Comment' and t.ParameterType='Metadata'
	WHERE
				m.Version = 0
	order by m.VersionUpdated desc
) y
on o.BlockModelID = y.BlockModelID
LEFT OUTER JOIN
(
			select top(1)
			m.BlockModelID,
			BlockModelMetadataText [Uploaded]
			from 
			dbo.X_BlockModelMetadata m 
	INNER JOIN 
			dbo.X_Parameter t on
			m.ParameterID = t.ParameterID and t.ParameterName='Uploaded' and t.ParameterType='Metadata'
	WHERE
				m.Version = 0
	order by m.VersionUpdated desc
) z
on o.BlockModelID = z.BlockModelID
where o.VersionDeletedBy IS NULL and p.VersionDeletedBy IS NULL

GO
/****** Object:  View [dbo].[X_VW_ProjectModelsAwaitingAuthorisation]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[X_VW_ProjectModelsAwaitingAuthorisation]
AS
SELECT        p.ProjectID, p.ProjectName,m.BlockModelID, m.Alias, x.ProjectTaskName, c1.ContactID Creator, c1.ContactName CreatorName , x.ContactID Reviewer, x.ContactName ReviewerName, p.Comment, x.VersionUpdated
FROM            dbo.X_Project p
inner join X_BlockModel m on p.ProjectID = m.ProjectID
LEFT JOIN 
			dbo.X_Contact c1 on
			p.VersionOwnerContactID=c1.ContactID
CROSS APPLY
(
			select top(1)
			t.ProjectTaskName,
			c2.ContactID,
			c2.ContactName,
			t.VersionUpdated
			from 
			dbo.X_ProjectPlan pp 
	INNER JOIN 
			dbo.X_ProjectPlanTask t on
			pp.ProjectPlanID = t.ProjectPlanID and t.ProjectTaskName = 'Review'			
	LEFT JOIN 
			dbo.X_Contact c2 on
			t.VersionOwnerContactID = c2.ContactID
	WHERE
				p.ProjectID=pp.ProjectID AND p.Version=0 AND c1.Version=0 AND m.Version=0 AND pp.Version=0 AND t.Version=0 AND c2.Version = 0
	order by t.VersionUpdated desc

) x

where p.VersionDeletedBy IS NULL  and m.ApproverContactID is null AND p.Version=0 AND c1.Version=0 AND m.Version=0






GO
/****** Object:  View [dbo].[X_VW_ProjectStatus]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[X_VW_ProjectStatus]
AS
SELECT        p.ProjectID, p.ProjectName, x.ProjectTaskName, c1.ContactID Creator, c1.ContactName CreatorName , x.ContactID Reviewer, x.ContactName ReviewerName, p.Comment, x.VersionUpdated
FROM            dbo.X_Project p
LEFT JOIN 
			dbo.X_Contact c1 on
			p.VersionOwnerContactID=c1.ContactID
CROSS APPLY
(
			select top(1)
			t.ProjectTaskName,
			c2.ContactID,
			c2.ContactName,
			t.VersionUpdated
			from 
			dbo.X_ProjectPlan pp 
	INNER JOIN 
			dbo.X_ProjectPlanTask t on
			pp.ProjectPlanID = t.ProjectPlanID			
	LEFT JOIN 
			dbo.X_Contact c2 on
			t.VersionOwnerContactID = c2.ContactID
	WHERE
				p.ProjectID=pp.ProjectID AND pp.Version=0 AND p.Version=0 AND t.Version=0 AND c2.Version=0 AND c1.Version=0
	order by t.VersionUpdated desc

) x
where p.VersionDeletedBy IS NULL AND p.Version = 0





GO
/****** Object:  View [dbo].[X_VW_SurveyViews]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[X_VW_SurveyViews]
AS
SELECT        dbo.X_Header.HoleName, dbo.X_Project.ProjectName, dbo.X_Project.ProjectCode, dbo.X_Survey.Depth, dbo.X_Survey.Dip, dbo.X_Survey.MagnetAffected, 
                         dbo.X_Survey.MagneticDip, dbo.X_Survey.OriginalAzimuth, dbo.X_Survey.CorrectedAzimuth, dbo.X_Survey.Gravity, dbo.X_Survey.Surveyed
FROM            dbo.X_Header INNER JOIN
                         dbo.X_Survey ON dbo.X_Header.HeaderID = dbo.X_Survey.HeaderID INNER JOIN
                         dbo.X_Project ON dbo.X_Header.ProjectID = dbo.X_Project.ProjectID
WHERE [X_Header].[Version]=0 AND X_Survey.Version =0 AND X_Project.Version=0

GO
/****** Object:  View [System.Activities.DurableInstancing].[InstancePromotedProperties]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [System.Activities.DurableInstancing].[InstancePromotedProperties] with schemabinding as
      select [InstancesTable].[Id] as [InstanceId],
			 [InstancesTable].[DataEncodingOption] as [EncodingOption],
			 [PromotionName],
			 [Value1],
			 [Value2],
			 [Value3],
			 [Value4],
			 [Value5],
			 [Value6],
			 [Value7],
			 [Value8],
			 [Value9],
			 [Value10],
			 [Value11],
			 [Value12],
			 [Value13],
			 [Value14],
			 [Value15],
			 [Value16],
			 [Value17],
			 [Value18],
			 [Value19],
			 [Value20],
			 [Value21],
			 [Value22],
			 [Value23],
			 [Value24],
			 [Value25],
			 [Value26],
			 [Value27],
			 [Value28],
			 [Value29],
			 [Value30],
			 [Value31],
			 [Value32],
			 [Value33],
			 [Value34],
			 [Value35],
			 [Value36],
			 [Value37],
			 [Value38],
			 [Value39],
			 [Value40],
			 [Value41],
			 [Value42],
			 [Value43],
			 [Value44],
			 [Value45],
			 [Value46],
			 [Value47],
			 [Value48],
			 [Value49],
			 [Value50],
			 [Value51],
			 [Value52],
			 [Value53],
			 [Value54],
			 [Value55],
			 [Value56],
			 [Value57],
			 [Value58],
			 [Value59],
			 [Value60],
			 [Value61],
			 [Value62],
			 [Value63],
			 [Value64]
    from [System.Activities.DurableInstancing].[InstancePromotedPropertiesTable]
    join [System.Activities.DurableInstancing].[InstancesTable]
    on [InstancePromotedPropertiesTable].[SurrogateInstanceId] = [InstancesTable].[SurrogateInstanceId]

GO
/****** Object:  View [System.Activities.DurableInstancing].[Instances]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [System.Activities.DurableInstancing].[Instances] as
      select [InstancesTable].[Id] as [InstanceId],
             [PendingTimer],
             [CreationTime],
             [LastUpdated] as [LastUpdatedTime],
             [InstancesTable].[ServiceDeploymentId],
             [SuspensionExceptionName],
             [SuspensionReason],
             [BlockingBookmarks] as [ActiveBookmarks],
             case when [LockOwnersTable].[LockExpiration] > getutcdate()
				then [LockOwnersTable].[MachineName]
				else null
				end as [CurrentMachine],
             [LastMachineRunOn] as [LastMachine],
             [ExecutionStatus],
             [IsInitialized],
             [IsSuspended],
             [IsCompleted],
             [InstancesTable].[DataEncodingOption] as [EncodingOption],
             [PrimitiveDataProperties] as [ReadWritePrimitiveDataProperties],
             [WriteOnlyPrimitiveDataProperties],
             [ComplexDataProperties] as [ReadWriteComplexDataProperties],
             [WriteOnlyComplexDataProperties],
             [Name] as [IdentityName],
             [Package] as [IdentityPackage],
             [Build],
             [Major],
             [Minor],
             [Revision]
      from [System.Activities.DurableInstancing].[InstancesTable]
      left outer join [System.Activities.DurableInstancing].[LockOwnersTable]
      on [InstancesTable].[SurrogateLockOwnerId] = [LockOwnersTable].[SurrogateLockOwnerId]
      join [System.Activities.DurableInstancing].[DefinitionIdentityTable]
      on [InstancesTable].[SurrogateIdentityId] = [DefinitionIdentityTable].[SurrogateIdentityId]

GO
/****** Object:  View [System.Activities.DurableInstancing].[ServiceDeployments]    Script Date: 27/05/2013 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [System.Activities.DurableInstancing].[ServiceDeployments] as
      select [Id] as [ServiceDeploymentId],
             [SiteName],
             [RelativeServicePath],
             [RelativeApplicationPath],
             [ServiceName],
             [ServiceNamespace]
      from [System.Activities.DurableInstancing].[ServiceDeploymentsTable]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Applications_Index]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications]
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Membership_index]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership]
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Paths_index]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths]
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_PersonalizationPerUser_index1]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Roles_index1]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles]
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Users_Index]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CIX_DefinitionIdentityTable]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE CLUSTERED INDEX [CIX_DefinitionIdentityTable] ON [System.Activities.DurableInstancing].[DefinitionIdentityTable]
(
	[SurrogateIdentityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_IdentityOwnerTable_IdentityOwner]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE CLUSTERED INDEX [NCIX_IdentityOwnerTable_IdentityOwner] ON [System.Activities.DurableInstancing].[IdentityOwnerTable]
(
	[SurrogateLockOwnerId] ASC,
	[SurrogateIdentityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [CIX_InstanceMetadataChangesTable]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE CLUSTERED INDEX [CIX_InstanceMetadataChangesTable] ON [System.Activities.DurableInstancing].[InstanceMetadataChangesTable]
(
	[SurrogateInstanceId] ASC,
	[ChangeTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CIX_InstancePromotedPropertiesTable]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE CLUSTERED INDEX [CIX_InstancePromotedPropertiesTable] ON [System.Activities.DurableInstancing].[InstancePromotedPropertiesTable]
(
	[SurrogateInstanceId] ASC,
	[PromotionName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [CIX_InstancesTable]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE CLUSTERED INDEX [CIX_InstancesTable] ON [System.Activities.DurableInstancing].[InstancesTable]
(
	[SurrogateInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [CIX_KeysTable]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE CLUSTERED INDEX [CIX_KeysTable] ON [System.Activities.DurableInstancing].[KeysTable]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = ON, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [CIX_LockOwnersTable]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE CLUSTERED INDEX [CIX_LockOwnersTable] ON [System.Activities.DurableInstancing].[LockOwnersTable]
(
	[SurrogateLockOwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [CIX_RunnableInstancesTable_SurrogateInstanceId]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE CLUSTERED INDEX [CIX_RunnableInstancesTable_SurrogateInstanceId] ON [System.Activities.DurableInstancing].[RunnableInstancesTable]
(
	[SurrogateInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = ON, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [CIX_ServiceDeploymentsTable]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE CLUSTERED INDEX [CIX_ServiceDeploymentsTable] ON [System.Activities.DurableInstancing].[ServiceDeploymentsTable]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [CIX_SqlWorkflowInstanceStoreVersionTable]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE CLUSTERED INDEX [CIX_SqlWorkflowInstanceStoreVersionTable] ON [System.Activities.DurableInstancing].[SqlWorkflowInstanceStoreVersionTable]
(
	[Major] ASC,
	[Minor] ASC,
	[Build] ASC,
	[Revision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_PersonalizationPerUser_ncindex2]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_Users_Index2]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_UsersInRoles_index]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iLocationID_X_Address]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iLocationID_X_Address] ON [dbo].[X_Address]
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iEnteredBy_X_AssayGroup]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iEnteredBy_X_AssayGroup] ON [dbo].[X_AssayGroup]
(
	[EnteredContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iLab_Company_X_AssayGroup]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iLab_Company_X_AssayGroup] ON [dbo].[X_AssayGroup]
(
	[LabCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iReceivedBy_X_AssayGroup]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iReceivedBy_X_AssayGroup] ON [dbo].[X_AssayGroup]
(
	[ReceivedContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSubmittedBy_X_AssayGroup]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSubmittedBy_X_AssayGroup] ON [dbo].[X_AssayGroup]
(
	[SubmittedContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAssayGroupTestID_X_AssayGroupStandardTestResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAssayGroupTestID_X_AssayGroupStandardTestResult] ON [dbo].[X_AssayGroupStandardTestResult]
(
	[AssayGroupTestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAssayGroupTestSampleID_X_AssayGroupStandardTestResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAssayGroupTestSampleID_X_AssayGroupStandardTestResult] ON [dbo].[X_AssayGroupStandardTestResult]
(
	[AssayGroupTestSampleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAssayStandardID_X_AssayGroupStandardTestResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAssayStandardID_X_AssayGroupStandardTestResult] ON [dbo].[X_AssayGroupStandardTestResult]
(
	[AssayStandardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSampleCategory_X_AssayGroupStandardTestResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSampleCategory_X_AssayGroupStandardTestResult] ON [dbo].[X_AssayGroupStandardTestResult]
(
	[SampleCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSampleStateID_X_AssayGroupStandardTestResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSampleStateID_X_AssayGroupStandardTestResult] ON [dbo].[X_AssayGroupStandardTestResult]
(
	[SampleStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSampleTypeID_X_AssayGroupStandardTestResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSampleTypeID_X_AssayGroupStandardTestResult] ON [dbo].[X_AssayGroupStandardTestResult]
(
	[SampleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAssayGroupID_X_AssayGroupTest]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAssayGroupID_X_AssayGroupTest] ON [dbo].[X_AssayGroupTest]
(
	[AssayGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAssayMethod_X_AssayGroupTest]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAssayMethod_X_AssayGroupTest] ON [dbo].[X_AssayGroupTest]
(
	[AssayMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iAssayType_X_AssayGroupTest]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAssayType_X_AssayGroupTest] ON [dbo].[X_AssayGroupTest]
(
	[AssayTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAssayTypeID_X_AssayGroupTest]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAssayTypeID_X_AssayGroupTest] ON [dbo].[X_AssayGroupTest]
(
	[AssayTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParameterID_X_AssayGroupTest]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iParameterID_X_AssayGroupTest] ON [dbo].[X_AssayGroupTest]
(
	[ParameterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_AssayTest]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_AssayTest] ON [dbo].[X_AssayGroupTest]
(
	[AssayGroupID] ASC,
	[AssayTestName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAssayGroupTestID_X_AssayGroupTestResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAssayGroupTestID_X_AssayGroupTestResult] ON [dbo].[X_AssayGroupTestResult]
(
	[AssayGroupTestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAssayGroupTestSampleID_X_AssayGroupTestResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAssayGroupTestSampleID_X_AssayGroupTestResult] ON [dbo].[X_AssayGroupTestResult]
(
	[SampleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAssayGroupTestResultID_X_AssayGroupTestResultComment]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAssayGroupTestResultID_X_AssayGroupTestResultComment] ON [dbo].[X_AssayGroupTestResultComment]
(
	[AssayGroupTestResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAssayGroupTestResultID_X_AssayGroupTestResultDuplicate]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAssayGroupTestResultID_X_AssayGroupTestResultDuplicate] ON [dbo].[X_AssayGroupTestResultDuplicate]
(
	[AssayGroupTestResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iApproverContactID_X_BlockModel]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iApproverContactID_X_BlockModel] ON [dbo].[X_BlockModel]
(
	[ApproverContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAuthorContactID_X_BlockModel]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAuthorContactID_X_BlockModel] ON [dbo].[X_BlockModel]
(
	[AuthorContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDimensionEasting_X_BlockModel]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDimensionEasting_X_BlockModel] ON [dbo].[X_BlockModel]
(
	[DimensionEasting] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDimensionElevation_X_BlockModel]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDimensionElevation_X_BlockModel] ON [dbo].[X_BlockModel]
(
	[DimensionElevation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDimensionNorthing_X_BlockModel]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDimensionNorthing_X_BlockModel] ON [dbo].[X_BlockModel]
(
	[DimensionNorthing] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iExternalReviewerContactID_X_BlockModel]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iExternalReviewerContactID_X_BlockModel] ON [dbo].[X_BlockModel]
(
	[ExternalReviewerContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iProjectID_X_BlockModel]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iProjectID_X_BlockModel] ON [dbo].[X_BlockModel]
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iResponsibleContactID_X_BlockModel]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iResponsibleContactID_X_BlockModel] ON [dbo].[X_BlockModel]
(
	[ResponsibleContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NonClusteredIndex-20130206-114433]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20130206-114433] ON [dbo].[X_BlockModelBlock]
(
	[BlockModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NonClusteredIndex-20130213-121247]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20130213-121247] ON [dbo].[X_BlockModelBlock]
(
	[BlockModelID] ASC,
	[CentroidX] ASC,
	[CentroidY] ASC,
	[CentroidZ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iBlockModelBlockID_X_BlockModelBlockData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iBlockModelBlockID_X_BlockModelBlockData] ON [dbo].[X_BlockModelBlockData]
(
	[BlockModelBlockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParameterID_X_BlockModelBlockData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iParameterID_X_BlockModelBlockData] ON [dbo].[X_BlockModelBlockData]
(
	[ParameterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iBlockModelID_X_BlockModelMetadata]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iBlockModelID_X_BlockModelMetadata] ON [dbo].[X_BlockModelMetadata]
(
	[BlockModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParameterID_X_BlockModelMetadata]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iParameterID_X_BlockModelMetadata] ON [dbo].[X_BlockModelMetadata]
(
	[ParameterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCasing_Type_X_CasingData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCasing_Type_X_CasingData] ON [dbo].[X_Casing]
(
	[CasingTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHeaderID_X_CasingData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHeaderID_X_CasingData] ON [dbo].[X_Casing]
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHeaderID_X_CementingData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHeaderID_X_CementingData] ON [dbo].[X_Cementing]
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iCountryID_X_Company]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCountryID_X_Company] ON [dbo].[X_Company]
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPrimaryPersonID_X_Company]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iPrimaryPersonID_X_Company] ON [dbo].[X_Company]
(
	[PrimaryContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_Company]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_Company] ON [dbo].[X_Company]
(
	[CompanyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAddressID_X_CompanyAddress]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAddressID_X_CompanyAddress] ON [dbo].[X_CompanyAddress]
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCompanyID_X_CompanyAddress]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCompanyID_X_CompanyAddress] ON [dbo].[X_CompanyAddress]
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCompanyID_X_CompanyRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCompanyID_X_CompanyRelation] ON [dbo].[X_CompanyRelation]
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParentCompanyID_X_CompanyRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iParentCompanyID_X_CompanyRelation] ON [dbo].[X_CompanyRelation]
(
	[ParentCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_X_ComplianceWorkType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_ComplianceWorkType] ON [dbo].[X_ComplianceWorkType]
(
	[ComplianceID] ASC,
	[WorkTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAssayGroupTestSampleID_X_DesurveyResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAssayGroupTestSampleID_X_DesurveyResult] ON [dbo].[X_Composite]
(
	[AssayGroupTestSampleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iBlockModelBlockID_X_Composite]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iBlockModelBlockID_X_Composite] ON [dbo].[X_Composite]
(
	[BlockModelBlockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCasingID_X_DesurveyResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCasingID_X_DesurveyResult] ON [dbo].[X_Composite]
(
	[CasingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCementingID_X_DesurveyResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCementingID_X_DesurveyResult] ON [dbo].[X_Composite]
(
	[CementingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDefectID_X_DesurveyResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDefectID_X_DesurveyResult] ON [dbo].[X_Composite]
(
	[DefectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDesurveyID_X_DesurveyResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDesurveyID_X_DesurveyResult] ON [dbo].[X_Composite]
(
	[DesurveyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDrillingID_X_DesurveyResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDrillingID_X_DesurveyResult] ON [dbo].[X_Composite]
(
	[DrillingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeologyID_X_DesurveyResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeologyID_X_DesurveyResult] ON [dbo].[X_Composite]
(
	[GeologyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophysicsDataID_X_DesurveyResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophysicsDataID_X_DesurveyResult] ON [dbo].[X_Composite]
(
	[GeophysicsDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHeaderID_X_DesurveyResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHeaderID_X_DesurveyResult] ON [dbo].[X_Composite]
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iLithologyID_X_DesurveyResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iLithologyID_X_DesurveyResult] ON [dbo].[X_Composite]
(
	[LithologyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iMineralogyID_X_DesurveyResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iMineralogyID_X_DesurveyResult] ON [dbo].[X_Composite]
(
	[MineralogyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPointLoadID_X_DesurveyResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iPointLoadID_X_DesurveyResult] ON [dbo].[X_Composite]
(
	[PointLoadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iRecoveryID_X_DesurveyResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iRecoveryID_X_DesurveyResult] ON [dbo].[X_Composite]
(
	[RecoveryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_X_DesurveyResult]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DesurveyResult] ON [dbo].[X_Composite]
(
	[DesurveyID] ASC,
	[FromDepth] ASC,
	[ToDepth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParameterID_X_CompositeData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iParameterID_X_CompositeData] ON [dbo].[X_CompositeData]
(
	[ParameterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAspNetUserID_X_Contact]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAspNetUserID_X_Contact] ON [dbo].[X_Contact]
(
	[AspNetUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iBirthCountryID_X_Contact]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iBirthCountryID_X_Contact] ON [dbo].[X_Contact]
(
	[BirthCountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_Person]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_Person] ON [dbo].[X_Contact]
(
	[ContactName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iXafUserID_X_Contact]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iXafUserID_X_Contact] ON [dbo].[X_Contact]
(
	[XafUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAddressID_X_ContactAddress]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAddressID_X_ContactAddress] ON [dbo].[X_ContactAddress]
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iContactID_X_ContactAddress]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iContactID_X_ContactAddress] ON [dbo].[X_ContactAddress]
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iProjectID_X_Drill_Company_Contract]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iProjectID_X_Drill_Company_Contract] ON [dbo].[X_Contract]
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAlteration_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAlteration_X_DefectData] ON [dbo].[X_Defect]
(
	[AlterationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iBed_Spacing_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iBed_Spacing_X_DefectData] ON [dbo].[X_Defect]
(
	[BedSpacingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDefect_Contin_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDefect_Contin_X_DefectData] ON [dbo].[X_Defect]
(
	[DefectContinuityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDefect_Intact_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDefect_Intact_X_DefectData] ON [dbo].[X_Defect]
(
	[DefectCompletenessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDefect_Type_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDefect_Type_X_DefectData] ON [dbo].[X_Defect]
(
	[DefectTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDip_Orient_Meth_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDip_Orient_Meth_X_DefectData] ON [dbo].[X_Defect]
(
	[DipOrientationMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iEst_Strength_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iEst_Strength_X_DefectData] ON [dbo].[X_Defect]
(
	[EstimatedStrengthID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHeaderID_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHeaderID_X_DefectData] ON [dbo].[X_Defect]
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iInfill_Est_Str_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iInfill_Est_Str_X_DefectData] ON [dbo].[X_Defect]
(
	[InfillEstimatedStrengthID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iInfill_Mode_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iInfill_Mode_X_DefectData] ON [dbo].[X_Defect]
(
	[InfillModeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iInfill_Plast_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iInfill_Plast_X_DefectData] ON [dbo].[X_Defect]
(
	[InfillPlasticityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iInfill_Type_1_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iInfill_Type_1_X_DefectData] ON [dbo].[X_Defect]
(
	[PrimaryInfillTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iInfill_Type_2_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iInfill_Type_2_X_DefectData] ON [dbo].[X_Defect]
(
	[SecondaryInfillTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iMoist_Sensitive_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iMoist_Sensitive_X_DefectData] ON [dbo].[X_Defect]
(
	[MoistureSensitivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPlasticity_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iPlasticity_X_DefectData] ON [dbo].[X_Defect]
(
	[PlasticityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iRoughness_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iRoughness_X_DefectData] ON [dbo].[X_Defect]
(
	[RoughnessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iShape_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iShape_X_DefectData] ON [dbo].[X_Defect]
(
	[ShapeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iWeathering_X_DefectData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iWeathering_X_DefectData] ON [dbo].[X_Defect]
(
	[WeatheringID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDesurveyAlgorithmTypeID_X_Desurvey]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDesurveyAlgorithmTypeID_X_Desurvey] ON [dbo].[X_Desurvey]
(
	[DesurveyAlgorithmTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSurveyID_X_Desurvey]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSurveyID_X_Desurvey] ON [dbo].[X_Desurvey]
(
	[SurveyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryAdjective]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryAdjective] ON [dbo].[X_DictionaryAdjective]
(
	[StandardAdjectiveName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryAlteration]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryAlteration] ON [dbo].[X_DictionaryAlteration]
(
	[StandardAlterationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryAssayMethod]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryAssayMethod] ON [dbo].[X_DictionaryAssayMethod]
(
	[StandardAssayMethodName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryAssayStandard]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryAssayStandard] ON [dbo].[X_DictionaryAssayStandard]
(
	[StandardAssayStandardName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryAssayTest]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryAssayTest] ON [dbo].[X_DictionaryAssayTest]
(
	[StandardAssayTestName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryAssayType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryAssayType] ON [dbo].[X_DictionaryAssayType]
(
	[StandardAssayTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryBasalContact]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryBasalContact] ON [dbo].[X_DictionaryBasalContact]
(
	[StandardBasalContactName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryBedSpacing]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryBedSpacing] ON [dbo].[X_DictionaryBedSpacing]
(
	[StandardBedSpacingName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryColour]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryColour] ON [dbo].[X_DictionaryColour]
(
	[StandardColourName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryCommodity]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryCommodity] ON [dbo].[X_DictionaryCommodity]
(
	[StandardCommodityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryCoreState]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryCoreState] ON [dbo].[X_DictionaryCoreState]
(
	[StandardCoreStateName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iCountryID_X_DictionaryCountryState]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCountryID_X_DictionaryCountryState] ON [dbo].[X_DictionaryCountryState]
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryDataStatus]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryDataStatus] ON [dbo].[X_DictionaryDataStatus]
(
	[StandardDataStatusName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryDefectCompleteness]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryDefectCompleteness] ON [dbo].[X_DictionaryDefectCompleteness]
(
	[StandardDefectCompletenessName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryDefectContinuity]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryDefectContinuity] ON [dbo].[X_DictionaryDefectContinuity]
(
	[StandardDefectContinuityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryDefectSpacing]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryDefectSpacing] ON [dbo].[X_DictionaryDefectSpacing]
(
	[StandardDefectSpacingName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryDefectType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryDefectType] ON [dbo].[X_DictionaryDefectType]
(
	[StandardDefectTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryDesurveyAlgorithmType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryDesurveyAlgorithmType] ON [dbo].[X_DictionaryDesurveyAlgorithmType]
(
	[StandardDesurveyAlgorithmTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryDipOrientationMethod]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryDipOrientationMethod] ON [dbo].[X_DictionaryDipOrientationMethod]
(
	[StandardDipOrientationMethodName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryDomain]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryDomain] ON [dbo].[X_DictionaryDomain]
(
	[StandardDomainName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDomainID_X_DictionaryDomainAlias]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDomainID_X_DictionaryDomainAlias] ON [dbo].[X_DictionaryDomainAlias]
(
	[DomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryDrillBitType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryDrillBitType] ON [dbo].[X_DictionaryDrillBitType]
(
	[StandardDrillBitTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryDrillCasingType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryDrillCasingType] ON [dbo].[X_DictionaryDrillCasingType]
(
	[StandardDrillCasingTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryDrillFluid]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryDrillFluid] ON [dbo].[X_DictionaryDrillFluid]
(
	[StandardDrillFluidName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryDrillRigType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryDrillRigType] ON [dbo].[X_DictionaryDrillRigType]
(
	[StandardDrillRigTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryDrillSize]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryDrillSize] ON [dbo].[X_DictionaryDrillSize]
(
	[StandardDrillSizeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryEstimatedStrength]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryEstimatedStrength] ON [dbo].[X_DictionaryEstimatedStrength]
(
	[StandardEstimatedStrengthName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryFailureMode]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryFailureMode] ON [dbo].[X_DictionaryFailureMode]
(
	[StandardFailureModeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryFlowTestType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryFlowTestType] ON [dbo].[X_DictionaryFlowTestType]
(
	[StandardFlowTestTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryGasDetected]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryGasDetected] ON [dbo].[X_DictionaryGasDetected]
(
	[StandardGasDetectedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryGeodeticDatum]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryGeodeticDatum] ON [dbo].[X_DictionaryGeodeticDatum]
(
	[StandardGeodeticDatumName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryGeophysicalLogType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryGeophysicalLogType] ON [dbo].[X_DictionaryGeophysicalLogType]
(
	[StandardGeophysicalLogTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryGroup]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryGroup] ON [dbo].[X_DictionaryGroup]
(
	[StandardGroupName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iChildGroupID_X_DictionaryGroupMembership]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iChildGroupID_X_DictionaryGroupMembership] ON [dbo].[X_DictionaryGroupMembership]
(
	[ChildGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParentGroupID_X_DictionaryGroupMembership]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iParentGroupID_X_DictionaryGroupMembership] ON [dbo].[X_DictionaryGroupMembership]
(
	[ParentGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryHeightDatum]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryHeightDatum] ON [dbo].[X_DictionaryHeightDatum]
(
	[StandardHeightDatumName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryHolePurpose]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryHolePurpose] ON [dbo].[X_DictionaryHolePurpose]
(
	[StandardHolePurposeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryHoleStatus]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryHoleStatus] ON [dbo].[X_DictionaryHoleStatus]
(
	[StandardHoleStatusName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryHoleType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryHoleType] ON [dbo].[X_DictionaryHoleType]
(
	[StandardHoleTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryHorizon]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryHorizon] ON [dbo].[X_DictionaryHorizon]
(
	[StandardHorizonName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryHue]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryHue] ON [dbo].[X_DictionaryHue]
(
	[StandardHueName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryInfillMode]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryInfillMode] ON [dbo].[X_DictionaryInfillMode]
(
	[StandardInfillModeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryInfillType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryInfillType] ON [dbo].[X_DictionaryInfillType]
(
	[StandardInfillTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryIntervalStatus]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryIntervalStatus] ON [dbo].[X_DictionaryIntervalStatus]
(
	[StandardIntervalStatusName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryLeaseApplicationType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryLeaseApplicationType] ON [dbo].[X_DictionaryLeaseApplicationType]
(
	[StandardLeaseApplicationTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryLithologyInterrelation]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryLithologyInterrelation] ON [dbo].[X_DictionaryLithologyInterrelation]
(
	[StandardLithologyInterrelationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryLithologyQualifiers]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryLithologyQualifiers] ON [dbo].[X_DictionaryLithologyQualifier]
(
	[StandardLithologyQualifierName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryLithologyType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryLithologyType] ON [dbo].[X_DictionaryLithologyType]
(
	[StandardLithologyTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryLocationType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryLocationType] ON [dbo].[X_DictionaryLocationType]
(
	[StandardLocationTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryMechanicalState]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryMechanicalState] ON [dbo].[X_DictionaryMechanicalState]
(
	[StandardMechanicalStateName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryMineralAbundance]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryMineralAbundance] ON [dbo].[X_DictionaryMineralAbundance]
(
	[StandardMineralAbundanceName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryMineralAndFossilAbundance]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryMineralAndFossilAbundance] ON [dbo].[X_DictionaryMineralAndFossilAbundance]
(
	[StandardMineralAndFossilAbundanceName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryMineralAndFossilAssociation]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryMineralAndFossilAssociation] ON [dbo].[X_DictionaryMineralAndFossilAssociation]
(
	[StandardMineralAndFossilAssociationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryMineralAndFossilType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryMineralAndFossilType] ON [dbo].[X_DictionaryMineralAndFossilType]
(
	[StandardMineralAndFossilTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryMineralForm]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryMineralForm] ON [dbo].[X_DictionaryMineralForm]
(
	[StandardMineralFormName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryMineralStyle]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryMineralStyle] ON [dbo].[X_DictionaryMineralStyle]
(
	[StandardMineralStyleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryMineralType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryMineralType] ON [dbo].[X_DictionaryMineralType]
(
	[StandardMineralTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryMoistureSensititvity]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryMoistureSensititvity] ON [dbo].[X_DictionaryMoistureSensitivity]
(
	[StandardMoistureSensitivityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryPlasticity]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryPlasticity] ON [dbo].[X_DictionaryPlasticity]
(
	[StandardPlasticityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryPly]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryPly] ON [dbo].[X_DictionaryPly]
(
	[StandardPlyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPlyID_X_DictionaryPlyAlias]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iPlyID_X_DictionaryPlyAlias] ON [dbo].[X_DictionaryPlyAlias]
(
	[PlyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryPointLoadTestType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryPointLoadTestType] ON [dbo].[X_DictionaryPointLoadTestType]
(
	[StandardPointLoadTestTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryProfession]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryProfession] ON [dbo].[X_DictionaryProfession]
(
	[StandardProfessionName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParentProvinceTypeID_X_DictionaryProvinceGroup]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iParentProvinceTypeID_X_DictionaryProvinceGroup] ON [dbo].[X_DictionaryProvinceGroup]
(
	[ParentProvinceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryProvinceGroup]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryProvinceGroup] ON [dbo].[X_DictionaryProvinceGroup]
(
	[StandardProvinceGroupName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryProvinceType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryProvinceType] ON [dbo].[X_DictionaryProvinceType]
(
	[StandardProvinceTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryRelationType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryRelationType] ON [dbo].[X_DictionaryRelationType]
(
	[StandardRelationTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryRockMassUnitType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryRockMassUnitType] ON [dbo].[X_DictionaryRockMassUnitType]
(
	[StandardRockMassUnitTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionarySampleCategory]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionarySampleCategory] ON [dbo].[X_DictionarySampleCategory]
(
	[StandardSampleCategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionarySampleState]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionarySampleState] ON [dbo].[X_DictionarySampleState]
(
	[StandardSampleStateName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionarySampleType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionarySampleType] ON [dbo].[X_DictionarySampleType]
(
	[StandardSampleTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionarySeam]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionarySeam] ON [dbo].[X_DictionarySeam]
(
	[StandardSeamName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSeamID_X_DictionarySeamAlias]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSeamID_X_DictionarySeamAlias] ON [dbo].[X_DictionarySeamAlias]
(
	[SeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionarySedimentaryFeature]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionarySedimentaryFeature] ON [dbo].[X_DictionarySedimentaryFeature]
(
	[StandardSedimentaryFeatureName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryShade]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryShade] ON [dbo].[X_DictionaryShade]
(
	[StandardShadeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryShape]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryShape] ON [dbo].[X_DictionaryShape]
(
	[StandardShapeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryStratigraphy]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryStratigraphy] ON [dbo].[X_DictionaryStratigraphy]
(
	[StandardStratigraphyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionarySurfaceRoughness]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionarySurfaceRoughness] ON [dbo].[X_DictionarySurfaceRoughness]
(
	[StandardSurfaceRoughnessName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionarySurveyAccuracy]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionarySurveyAccuracy] ON [dbo].[X_DictionarySurveyAccuracy]
(
	[StandardSurveyAccuracyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryTexture]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryTexture] ON [dbo].[X_DictionaryTexture]
(
	[StandardTextureName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryUnit]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryUnit] ON [dbo].[X_DictionaryUnit]
(
	[StandardUnitName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_X_DictionaryWeathering]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryWeathering] ON [dbo].[X_DictionaryWeathering]
(
	[StandardWeatheringName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iProfessionID_X_DictionaryWorkType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iProfessionID_X_DictionaryWorkType] ON [dbo].[X_DictionaryWorkType]
(
	[ProfessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParentWorkTypeID_X_DictionaryWorkTypeRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iParentWorkTypeID_X_DictionaryWorkTypeRelation] ON [dbo].[X_DictionaryWorkTypeRelation]
(
	[ParentWorkTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iWorkTypeID_X_DictionaryWorkTypeRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iWorkTypeID_X_DictionaryWorkTypeRelation] ON [dbo].[X_DictionaryWorkTypeRelation]
(
	[WorkTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_X_DictionaryWorkTypeRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_X_DictionaryWorkTypeRelation] ON [dbo].[X_DictionaryWorkTypeRelation]
(
	[ParentWorkTypeID] ASC,
	[WorkTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDrill_Company_X_DrillingData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDrill_Company_X_DrillingData] ON [dbo].[X_Drilling]
(
	[DrillingCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDrill_Fluid_X_DrillingData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDrill_Fluid_X_DrillingData] ON [dbo].[X_Drilling]
(
	[DrillFluidID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDrill_Size_Name_X_DrillingData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDrill_Size_Name_X_DrillingData] ON [dbo].[X_Drilling]
(
	[DrillSizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDrillBitTypeID_X_Drilling]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDrillBitTypeID_X_Drilling] ON [dbo].[X_Drilling]
(
	[DrillBitTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDrillerID_X_Drilling]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDrillerID_X_Drilling] ON [dbo].[X_Drilling]
(
	[DrillerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHeaderID_X_DrillingData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHeaderID_X_DrillingData] ON [dbo].[X_Drilling]
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iRig_Type_X_DrillingData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iRig_Type_X_DrillingData] ON [dbo].[X_Drilling]
(
	[DrillRigTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCompanyID_X_Experience]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCompanyID_X_Experience] ON [dbo].[X_Experience]
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iContactID_X_Experience]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iContactID_X_Experience] ON [dbo].[X_Experience]
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iLocationID_X_Experience]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iLocationID_X_Experience] ON [dbo].[X_Experience]
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iProjectID_X_Experience]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iProjectID_X_Experience] ON [dbo].[X_Experience]
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iWorkTypeID_X_Experience]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iWorkTypeID_X_Experience] ON [dbo].[X_Experience]
(
	[WorkTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParentFileID_X_FileData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iParentFileID_X_FileData] ON [dbo].[X_FileData]
(
	[ParentFileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeologistID_X_GeologistsData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeologistID_X_GeologistsData] ON [dbo].[X_Geology]
(
	[GeologyContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHeaderID_X_GeologistsData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHeaderID_X_GeologistsData] ON [dbo].[X_Geology]
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHeaderID_X_Geophysics]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHeaderID_X_Geophysics] ON [dbo].[X_Geophysics]
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophysicsMetadataID_X_GeophyicsData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophysicsMetadataID_X_GeophyicsData] ON [dbo].[X_GeophysicsData]
(
	[GeophysicsMetadataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophysicsID_X_GeophysicsMetadata]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophysicsID_X_GeophysicsMetadata] ON [dbo].[X_GeophysicsMetadata]
(
	[GeophysicsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParameterID_X_GeophysicsMetadata]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iParameterID_X_GeophysicsMetadata] ON [dbo].[X_GeophysicsMetadata]
(
	[ParameterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iData_Status_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iData_Status_X_Header] ON [dbo].[X_Header]
(
	[DataStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeodetic_Datum_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeodetic_Datum_X_Header] ON [dbo].[X_Header]
(
	[GeodeticDatumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeolog_Organiz_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeolog_Organiz_X_Header] ON [dbo].[X_Header]
(
	[GeologyCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophys_Company_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophys_Company_X_Header] ON [dbo].[X_Header]
(
	[GeophysicalLoggingCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophys_Log_1_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophys_Log_1_X_Header] ON [dbo].[X_Header]
(
	[GeophysicalLogTypeID1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophys_Log_10_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophys_Log_10_X_Header] ON [dbo].[X_Header]
(
	[GeophysicalLogTypeID10] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophys_Log_11_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophys_Log_11_X_Header] ON [dbo].[X_Header]
(
	[GeophysicalLogTypeID11] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophys_Log_12_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophys_Log_12_X_Header] ON [dbo].[X_Header]
(
	[GeophysicalLogTypeID12] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophys_Log_2_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophys_Log_2_X_Header] ON [dbo].[X_Header]
(
	[GeophysicalLogTypeID2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophys_Log_3_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophys_Log_3_X_Header] ON [dbo].[X_Header]
(
	[GeophysicalLogTypeID3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophys_Log_4_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophys_Log_4_X_Header] ON [dbo].[X_Header]
(
	[GeophysicalLogTypeID4] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophys_Log_5_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophys_Log_5_X_Header] ON [dbo].[X_Header]
(
	[GeophysicalLogTypeID5] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophys_Log_6_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophys_Log_6_X_Header] ON [dbo].[X_Header]
(
	[GeophysicalLogTypeID6] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophys_Log_7_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophys_Log_7_X_Header] ON [dbo].[X_Header]
(
	[GeophysicalLogTypeID7] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophys_Log_8_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophys_Log_8_X_Header] ON [dbo].[X_Header]
(
	[GeophysicalLogTypeID8] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophys_Log_9_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophys_Log_9_X_Header] ON [dbo].[X_Header]
(
	[GeophysicalLogTypeID9] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGeophys_Logger_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGeophys_Logger_X_Header] ON [dbo].[X_Header]
(
	[GeophysicalLoggerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHeight_Datum_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHeight_Datum_X_Header] ON [dbo].[X_Header]
(
	[HeightDatumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHole_Purpose_1_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHole_Purpose_1_X_Header] ON [dbo].[X_Header]
(
	[PrimaryHolePurposeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHole_Purpose_2_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHole_Purpose_2_X_Header] ON [dbo].[X_Header]
(
	[SecondaryHolePurposeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHole_Status_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHole_Status_X_Header] ON [dbo].[X_Header]
(
	[HoleStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHole_Type_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHole_Type_X_Header] ON [dbo].[X_Header]
(
	[HoleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iProjectID_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iProjectID_X_Header] ON [dbo].[X_Header]
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSurvey_Accuracy_X_Header]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSurvey_Accuracy_X_Header] ON [dbo].[X_Header]
(
	[SurveyAccuracyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOriginalHeaderID_X_HeaderRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iOriginalHeaderID_X_HeaderRelation] ON [dbo].[X_HeaderRelation]
(
	[OriginalHeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iRelatedHeaderID_X_HeaderRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iRelatedHeaderID_X_HeaderRelation] ON [dbo].[X_HeaderRelation]
(
	[RelatedHeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iRelationTypeID_X_HeaderRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iRelationTypeID_X_HeaderRelation] ON [dbo].[X_HeaderRelation]
(
	[RelationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iApprovedByContactID_X_Lease]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iApprovedByContactID_X_Lease] ON [dbo].[X_Lease]
(
	[ApprovedByContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOwnerCompanyID_X_Lease]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iOwnerCompanyID_X_Lease] ON [dbo].[X_Lease]
(
	[OwnerCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTenementID_X_Lease]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iTenementID_X_Lease] ON [dbo].[X_Lease]
(
	[TenementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iApprovedByContactID_X_LeaseApplication]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iApprovedByContactID_X_LeaseApplication] ON [dbo].[X_LeaseApplication]
(
	[ApprovedByContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iLeaseApplicationTypeID_X_LeaseApplication]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iLeaseApplicationTypeID_X_LeaseApplication] ON [dbo].[X_LeaseApplication]
(
	[LeaseApplicationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOwnerCompanyID_X_LeaseApplication]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iOwnerCompanyID_X_LeaseApplication] ON [dbo].[X_LeaseApplication]
(
	[OwnerCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTenementID_X_LeaseApplication]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iTenementID_X_LeaseApplication] ON [dbo].[X_LeaseApplication]
(
	[TenementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAdjective_1_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAdjective_1_X_LithologyData] ON [dbo].[X_Lithology]
(
	[AdjectiveID1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAdjective_2_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAdjective_2_X_LithologyData] ON [dbo].[X_Lithology]
(
	[AdjectiveID2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAdjective_3_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAdjective_3_X_LithologyData] ON [dbo].[X_Lithology]
(
	[AdjectiveID3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAdjective_4_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAdjective_4_X_LithologyData] ON [dbo].[X_Lithology]
(
	[AdjectiveID4] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iBasal_Contact_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iBasal_Contact_X_LithologyData] ON [dbo].[X_Lithology]
(
	[BasalContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iBed_Spacing_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iBed_Spacing_X_LithologyData] ON [dbo].[X_Lithology]
(
	[BedSpacingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iColour_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iColour_X_LithologyData] ON [dbo].[X_Lithology]
(
	[ColourID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCore_State_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCore_State_X_LithologyData] ON [dbo].[X_Lithology]
(
	[CoreStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDefect_Intact_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDefect_Intact_X_LithologyData] ON [dbo].[X_Lithology]
(
	[DefectCompletenessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDefect_Spacing_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDefect_Spacing_X_LithologyData] ON [dbo].[X_Lithology]
(
	[DefectSpacingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDefect_Type_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDefect_Type_X_LithologyData] ON [dbo].[X_Lithology]
(
	[DefectTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDomainID_X_Lithology]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDomainID_X_Lithology] ON [dbo].[X_Lithology]
(
	[DomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iEst_Strength_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iEst_Strength_X_LithologyData] ON [dbo].[X_Lithology]
(
	[EstimatedStrengthID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGas_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGas_X_LithologyData] ON [dbo].[X_Lithology]
(
	[GasDetectedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHeaderID_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHeaderID_X_LithologyData] ON [dbo].[X_Lithology]
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHorizonID_X_Lithology]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHorizonID_X_Lithology] ON [dbo].[X_Lithology]
(
	[HorizonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHue_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHue_X_LithologyData] ON [dbo].[X_Lithology]
(
	[HueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iInterval_Status_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iInterval_Status_X_LithologyData] ON [dbo].[X_Lithology]
(
	[IntervalStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iLitho_Interrel_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iLitho_Interrel_X_LithologyData] ON [dbo].[X_Lithology]
(
	[LithologyInterrelationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iLitho_Qual_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iLitho_Qual_X_LithologyData] ON [dbo].[X_Lithology]
(
	[LithologyQualifierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iLitho_Type_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iLitho_Type_X_LithologyData] ON [dbo].[X_Lithology]
(
	[LithologyTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iMech_State_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iMech_State_X_LithologyData] ON [dbo].[X_Lithology]
(
	[MechanicalStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iMin_Fos_Abund_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iMin_Fos_Abund_X_LithologyData] ON [dbo].[X_Lithology]
(
	[MineralAndFossilAbundanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iMin_Fos_Assoc_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iMin_Fos_Assoc_X_LithologyData] ON [dbo].[X_Lithology]
(
	[MineralAndFossilAssociationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iMin_Fos_Type_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iMin_Fos_Type_X_LithologyData] ON [dbo].[X_Lithology]
(
	[MineralAndFossilTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPlyID_X_Lithology]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iPlyID_X_Lithology] ON [dbo].[X_Lithology]
(
	[PlyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSample_Type_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSample_Type_X_LithologyData] ON [dbo].[X_Lithology]
(
	[SampleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSeamID_X_Lithology]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSeamID_X_Lithology] ON [dbo].[X_Lithology]
(
	[SeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSed_Feature_1_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSed_Feature_1_X_LithologyData] ON [dbo].[X_Lithology]
(
	[SedimentaryFeature1ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSed_Feature_2_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSed_Feature_2_X_LithologyData] ON [dbo].[X_Lithology]
(
	[SedimentaryFeature2ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iShade_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iShade_X_LithologyData] ON [dbo].[X_Lithology]
(
	[ShadeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iStratigraphyID_X_Lithology]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iStratigraphyID_X_Lithology] ON [dbo].[X_Lithology]
(
	[StratigraphyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTexture_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iTexture_X_LithologyData] ON [dbo].[X_Lithology]
(
	[TextureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iWeathering_X_LithologyData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iWeathering_X_LithologyData] ON [dbo].[X_Lithology]
(
	[WeatheringID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iCountryID_X_Location]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCountryID_X_Location] ON [dbo].[X_Location]
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCountryStateID_X_Location]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCountryStateID_X_Location] ON [dbo].[X_Location]
(
	[CountryStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOwnerCompanyID_X_Location]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iOwnerCompanyID_X_Location] ON [dbo].[X_Location]
(
	[OwnerCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iResponsibleContactID_X_Location]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iResponsibleContactID_X_Location] ON [dbo].[X_Location]
(
	[ResponsibleContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iLocationID_X_LocationAlias]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iLocationID_X_LocationAlias] ON [dbo].[X_LocationAlias]
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iMetaDataID_X_MetaDataRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iMetaDataID_X_MetaDataRelation] ON [dbo].[X_MetaDataRelation]
(
	[MetaDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHeaderID_X_Mineralogy]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHeaderID_X_Mineralogy] ON [dbo].[X_Mineralogy]
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iMin_Abundance_X_Mineralogy]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iMin_Abundance_X_Mineralogy] ON [dbo].[X_Mineralogy]
(
	[MineralAbundanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iMin_Form_X_Mineralogy]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iMin_Form_X_Mineralogy] ON [dbo].[X_Mineralogy]
(
	[MineralFormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iMin_Style_X_Mineralogy]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iMin_Style_X_Mineralogy] ON [dbo].[X_Mineralogy]
(
	[MineralStyleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iMin_Type_X_Mineralogy]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iMin_Type_X_Mineralogy] ON [dbo].[X_Mineralogy]
(
	[MineralTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUnitID_X_Parameter]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iUnitID_X_Parameter] ON [dbo].[X_Parameter]
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParameter1ID_X_ParameterDuplicate]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iParameter1ID_X_ParameterDuplicate] ON [dbo].[X_ParameterDuplicate]
(
	[Parameter1ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParameter2ID_X_ParameterDuplicate]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iParameter2ID_X_ParameterDuplicate] ON [dbo].[X_ParameterDuplicate]
(
	[Parameter2ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iGroupID_X_ParameterGroup]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iGroupID_X_ParameterGroup] ON [dbo].[X_ParameterGroup]
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParameterID_X_ParameterGroup]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iParameterID_X_ParameterGroup] ON [dbo].[X_ParameterGroup]
(
	[ParameterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iFailure_Mode_X_PointLoadData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iFailure_Mode_X_PointLoadData] ON [dbo].[X_PointLoad]
(
	[FailureModeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHeaderID_X_PointLoadData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHeaderID_X_PointLoadData] ON [dbo].[X_PointLoad]
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPL_Test_Type_X_PointLoadData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iPL_Test_Type_X_PointLoadData] ON [dbo].[X_PointLoad]
(
	[PointLoadTestTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSample_State_X_PointLoadData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSample_State_X_PointLoadData] ON [dbo].[X_PointLoad]
(
	[SampleStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSample_Type_X_PointLoadData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSample_Type_X_PointLoadData] ON [dbo].[X_PointLoad]
(
	[SampleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iClientCompanyID_X_Project]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iClientCompanyID_X_Project] ON [dbo].[X_Project]
(
	[ClientCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTenementID_X_Project]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iTenementID_X_Project] ON [dbo].[X_Project]
(
	[TenementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParentProjectPlanID_X_ProjectPlan]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iParentProjectPlanID_X_ProjectPlan] ON [dbo].[X_ProjectPlan]
(
	[ParentProjectPlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iResponsibleContactID_X_ProjectPlan]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iResponsibleContactID_X_ProjectPlan] ON [dbo].[X_ProjectPlan]
(
	[ResponsibleContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParentProjectTaskID_X_ProjectPlanTask]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iParentProjectTaskID_X_ProjectPlanTask] ON [dbo].[X_ProjectPlanTask]
(
	[ParentProjectTaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iProjectPlanID_X_ProjectPlanTask]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iProjectPlanID_X_ProjectPlanTask] ON [dbo].[X_ProjectPlanTask]
(
	[ProjectPlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iProjectPlanTaskID_X_ProjectPlanTaskResponse]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iProjectPlanTaskID_X_ProjectPlanTaskResponse] ON [dbo].[X_ProjectPlanTaskResponse]
(
	[ProjectPlanTaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iResponsibleContactID_X_ProjectPlanTaskResponse]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iResponsibleContactID_X_ProjectPlanTaskResponse] ON [dbo].[X_ProjectPlanTaskResponse]
(
	[ResponsibleContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iProjectPlanTaskID_X_ProjectPlanTaskWorker]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iProjectPlanTaskID_X_ProjectPlanTaskWorker] ON [dbo].[X_ProjectPlanTaskWorker]
(
	[ProjectPlanTaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iWorkerID_X_ProjectPlanTaskWorker]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iWorkerID_X_ProjectPlanTaskWorker] ON [dbo].[X_ProjectPlanTaskWorker]
(
	[WorkerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTenementID_X_Prospectus]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iTenementID_X_Prospectus] ON [dbo].[X_Prospectus]
(
	[TenementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iCountryID_X_ProspectusProject]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCountryID_X_ProspectusProject] ON [dbo].[X_ProspectusProject]
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iProspectusID_X_ProspectusProject]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iProspectusID_X_ProspectusProject] ON [dbo].[X_ProspectusProject]
(
	[ProspectusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCommodityID_X_ProspectusProjectCommodity]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCommodityID_X_ProspectusProjectCommodity] ON [dbo].[X_ProspectusProjectCommodity]
(
	[CommodityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iProspectusProjectID_X_ProspectusProjectCommodity]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iProspectusProjectID_X_ProspectusProjectCommodity] ON [dbo].[X_ProspectusProjectCommodity]
(
	[ProspectusProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iProspectusProjectID_X_ProspectusProjectProvince]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iProspectusProjectID_X_ProspectusProjectProvince] ON [dbo].[X_ProspectusProjectProvince]
(
	[ProspectusProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iProvinceID_X_ProspectusProjectProvince]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iProvinceID_X_ProspectusProjectProvince] ON [dbo].[X_ProspectusProjectProvince]
(
	[ProvinceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iApprovedByContactID_X_Province]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iApprovedByContactID_X_Province] ON [dbo].[X_Province]
(
	[ApprovedByContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iCountryID_X_Province]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCountryID_X_Province] ON [dbo].[X_Province]
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCountryStateID_X_Province]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCountryStateID_X_Province] ON [dbo].[X_Province]
(
	[CountryStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOwnerCompanyID_X_Province]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iOwnerCompanyID_X_Province] ON [dbo].[X_Province]
(
	[OwnerCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iProvinceTypeID_X_Province]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iProvinceTypeID_X_Province] ON [dbo].[X_Province]
(
	[ProvinceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDrill_Size_Name_X_RecoveryData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iDrill_Size_Name_X_RecoveryData] ON [dbo].[X_Recovery]
(
	[DrillSizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHeaderID_X_RecoveryData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHeaderID_X_RecoveryData] ON [dbo].[X_Recovery]
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHeaderID_X_AssayGroupTestSample]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHeaderID_X_AssayGroupTestSample] ON [dbo].[X_Sample]
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSampleCategoryID_X_AssayGroupTestSample]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSampleCategoryID_X_AssayGroupTestSample] ON [dbo].[X_Sample]
(
	[SampleCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSampleStateID_X_AssayGroupTestSample]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSampleStateID_X_AssayGroupTestSample] ON [dbo].[X_Sample]
(
	[SampleStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSampleTypeID_X_AssayGroupTestSample]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSampleTypeID_X_AssayGroupTestSample] ON [dbo].[X_Sample]
(
	[SampleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAccessorApplicationID_X_SecurityBlacklist]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAccessorApplicationID_X_SecurityBlacklist] ON [dbo].[X_SecurityBlacklist]
(
	[AccessorApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAccessorCompanyID_X_SecurityBlacklist]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAccessorCompanyID_X_SecurityBlacklist] ON [dbo].[X_SecurityBlacklist]
(
	[AccessorCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAccessorContactID_X_SecurityBlacklist]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAccessorContactID_X_SecurityBlacklist] ON [dbo].[X_SecurityBlacklist]
(
	[AccessorContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAccessorProjectID_X_SecurityBlacklist]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAccessorProjectID_X_SecurityBlacklist] ON [dbo].[X_SecurityBlacklist]
(
	[AccessorProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAccessorRoleID_X_SecurityBlacklist]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAccessorRoleID_X_SecurityBlacklist] ON [dbo].[X_SecurityBlacklist]
(
	[AccessorRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOwnerApplicationID_X_SecurityBlacklist]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iOwnerApplicationID_X_SecurityBlacklist] ON [dbo].[X_SecurityBlacklist]
(
	[OwnerApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOwnerCompanyID_X_SecurityBlacklist]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iOwnerCompanyID_X_SecurityBlacklist] ON [dbo].[X_SecurityBlacklist]
(
	[OwnerCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOwnerProjectID_X_SecurityBlacklist]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iOwnerProjectID_X_SecurityBlacklist] ON [dbo].[X_SecurityBlacklist]
(
	[OwnerProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAccessorApplicationID_X_SecurityWhitelist]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAccessorApplicationID_X_SecurityWhitelist] ON [dbo].[X_SecurityWhitelist]
(
	[AccessorApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAccessorCompanyID_X_SecurityWhitelist]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAccessorCompanyID_X_SecurityWhitelist] ON [dbo].[X_SecurityWhitelist]
(
	[AccessorCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAccessorContactID_X_SecurityWhitelist]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAccessorContactID_X_SecurityWhitelist] ON [dbo].[X_SecurityWhitelist]
(
	[AccessorContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAccessorProjectID_X_SecurityWhitelist]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAccessorProjectID_X_SecurityWhitelist] ON [dbo].[X_SecurityWhitelist]
(
	[AccessorProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAccessorRoleID_X_SecurityWhitelist]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iAccessorRoleID_X_SecurityWhitelist] ON [dbo].[X_SecurityWhitelist]
(
	[AccessorRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOwnerApplicationID_X_SecurityWhitelist]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iOwnerApplicationID_X_SecurityWhitelist] ON [dbo].[X_SecurityWhitelist]
(
	[OwnerApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOwnerCompanyID_X_SecurityWhitelist]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iOwnerCompanyID_X_SecurityWhitelist] ON [dbo].[X_SecurityWhitelist]
(
	[OwnerCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOwnerProjectID_X_SecurityWhitelist]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iOwnerProjectID_X_SecurityWhitelist] ON [dbo].[X_SecurityWhitelist]
(
	[OwnerProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHeaderID_X_Survey]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHeaderID_X_Survey] ON [dbo].[X_Survey]
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSurveyCompanyID_X_Survey]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSurveyCompanyID_X_Survey] ON [dbo].[X_Survey]
(
	[SurveyCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSurveyedBy_X_Survey]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSurveyedBy_X_Survey] ON [dbo].[X_Survey]
(
	[SurveyContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iApprovedByContactID_X_Tenement]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iApprovedByContactID_X_Tenement] ON [dbo].[X_Tenement]
(
	[ApprovedByContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iCountryID_X_Tenement]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCountryID_X_Tenement] ON [dbo].[X_Tenement]
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOwnerCompanyID_X_Tenement]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iOwnerCompanyID_X_Tenement] ON [dbo].[X_Tenement]
(
	[OwnerCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCommodityID_X_TenementCommodity]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iCommodityID_X_TenementCommodity] ON [dbo].[X_TenementCommodity]
(
	[CommodityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTenementID_X_TenementCommodity]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iTenementID_X_TenementCommodity] ON [dbo].[X_TenementCommodity]
(
	[TenementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iProvinceID_X_TenementProvince]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iProvinceID_X_TenementProvince] ON [dbo].[X_TenementProvince]
(
	[ProvinceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTenementID_X_TenementProvince]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iTenementID_X_TenementProvince] ON [dbo].[X_TenementProvince]
(
	[TenementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParentTenementID_X_TenementRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iParentTenementID_X_TenementRelation] ON [dbo].[X_TenementRelation]
(
	[ParentTenementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTenementID_X_TenementRelation]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iTenementID_X_TenementRelation] ON [dbo].[X_TenementRelation]
(
	[TenementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUsageAuditTypeID_X_UsageAudit]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iUsageAuditTypeID_X_UsageAudit] ON [dbo].[X_UsageAudit]
(
	[UsageAuditTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iFlow_Test_Type_X_WaterFlowData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iFlow_Test_Type_X_WaterFlowData] ON [dbo].[X_WaterFlow]
(
	[FlowTestTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iHeaderID_X_WaterFlowData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iHeaderID_X_WaterFlowData] ON [dbo].[X_WaterFlow]
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSample_Type_X_WaterFlowData]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [iSample_Type_X_WaterFlowData] ON [dbo].[X_WaterFlow]
(
	[SampleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_DefinitionIdentityTable_DefinitionIdentityAnyRevisionHash]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [NCIX_DefinitionIdentityTable_DefinitionIdentityAnyRevisionHash] ON [System.Activities.DurableInstancing].[DefinitionIdentityTable]
(
	[DefinitionIdentityAnyRevisionHash] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_DefinitionIdentityTable_DefinitionIdentityHash]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [NCIX_DefinitionIdentityTable_DefinitionIdentityHash] ON [System.Activities.DurableInstancing].[DefinitionIdentityTable]
(
	[DefinitionIdentityHash] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = ON, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_InstancesTable_CreationTime]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [NCIX_InstancesTable_CreationTime] ON [System.Activities.DurableInstancing].[InstancesTable]
(
	[CreationTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_InstancesTable_Id]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [NCIX_InstancesTable_Id] ON [System.Activities.DurableInstancing].[InstancesTable]
(
	[Id] ASC
)
INCLUDE ( 	[Version],
	[SurrogateLockOwnerId],
	[IsCompleted]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_InstancesTable_LastUpdated]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [NCIX_InstancesTable_LastUpdated] ON [System.Activities.DurableInstancing].[InstancesTable]
(
	[LastUpdated] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_InstancesTable_ServiceDeploymentId]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [NCIX_InstancesTable_ServiceDeploymentId] ON [System.Activities.DurableInstancing].[InstancesTable]
(
	[ServiceDeploymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_InstancesTable_SurrogateLockOwnerId]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [NCIX_InstancesTable_SurrogateLockOwnerId] ON [System.Activities.DurableInstancing].[InstancesTable]
(
	[SurrogateLockOwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [NCIX_InstancesTable_SuspensionExceptionName]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [NCIX_InstancesTable_SuspensionExceptionName] ON [System.Activities.DurableInstancing].[InstancesTable]
(
	[SuspensionExceptionName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_InstancesTable_WorkflowHostType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [NCIX_InstancesTable_WorkflowHostType] ON [System.Activities.DurableInstancing].[InstancesTable]
(
	[WorkflowHostType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_KeysTable_SurrogateInstanceId]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [NCIX_KeysTable_SurrogateInstanceId] ON [System.Activities.DurableInstancing].[KeysTable]
(
	[SurrogateInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_LockOwnersTable_Id]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [NCIX_LockOwnersTable_Id] ON [System.Activities.DurableInstancing].[LockOwnersTable]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = ON, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [NCIX_LockOwnersTable_LockExpiration]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [NCIX_LockOwnersTable_LockExpiration] ON [System.Activities.DurableInstancing].[LockOwnersTable]
(
	[LockExpiration] ASC
)
INCLUDE ( 	[WorkflowHostType],
	[MachineName]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_LockOwnersTable_WorkflowHostType]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [NCIX_LockOwnersTable_WorkflowHostType] ON [System.Activities.DurableInstancing].[LockOwnersTable]
(
	[WorkflowHostType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_LockOwnersTable_WorkflowIdentityFilter]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [NCIX_LockOwnersTable_WorkflowIdentityFilter] ON [System.Activities.DurableInstancing].[LockOwnersTable]
(
	[WorkflowIdentityFilter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_RunnableInstancesTable]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [NCIX_RunnableInstancesTable] ON [System.Activities.DurableInstancing].[RunnableInstancesTable]
(
	[WorkflowHostType] ASC,
	[RunnableTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_RunnableInstancesTable_RunnableTime]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [NCIX_RunnableInstancesTable_RunnableTime] ON [System.Activities.DurableInstancing].[RunnableInstancesTable]
(
	[RunnableTime] ASC
)
INCLUDE ( 	[WorkflowHostType],
	[ServiceDeploymentId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_RunnableInstancesTable_SurrogateIdentityId]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE NONCLUSTERED INDEX [NCIX_RunnableInstancesTable_SurrogateIdentityId] ON [System.Activities.DurableInstancing].[RunnableInstancesTable]
(
	[SurrogateIdentityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
/****** Object:  Index [NCIX_ServiceDeploymentsTable_ServiceDeploymentHash]    Script Date: 27/05/2013 5:48:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [NCIX_ServiceDeploymentsTable_ServiceDeploymentHash] ON [System.Activities.DurableInstancing].[ServiceDeploymentsTable]
(
	[ServiceDeploymentHash] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = ON, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
ALTER TABLE [dbo].[E_Credit] ADD  CONSTRAINT [DF_E_Credit_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[E_Credit] ADD  CONSTRAINT [DF_E_Credit_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[E_Credit] ADD  CONSTRAINT [DF_E_Credit_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[E_Currency] ADD  CONSTRAINT [DF_E_Currency_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[E_Currency] ADD  CONSTRAINT [DF_E_Currency_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[E_Currency] ADD  CONSTRAINT [DF_E_Currency_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[E_DictionaryTax] ADD  CONSTRAINT [DF_E_DictionaryTax_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[E_DictionaryTax] ADD  CONSTRAINT [DF_E_DictionaryTax_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[E_DictionaryTax] ADD  CONSTRAINT [DF_E_DictionaryTax_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[E_Invoice] ADD  CONSTRAINT [DF_E_Invoice_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[E_Invoice] ADD  CONSTRAINT [DF_E_Invoice_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[E_Invoice] ADD  CONSTRAINT [DF_E_Invoice_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[E_InvoiceLine] ADD  CONSTRAINT [DF_E_InvoiceLine_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[E_InvoiceLine] ADD  CONSTRAINT [DF_E_InvoiceLine_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[E_InvoiceLine] ADD  CONSTRAINT [DF_E_InvoiceLine_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[E_Journal] ADD  CONSTRAINT [DF_E_Journal_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[E_Journal] ADD  CONSTRAINT [DF_E_Journal_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[E_Journal] ADD  CONSTRAINT [DF_E_Journal_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[E_Payment] ADD  CONSTRAINT [DF_E_Payment_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[E_Payment] ADD  CONSTRAINT [DF_E_Payment_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[E_Payment] ADD  CONSTRAINT [DF_E_Payment_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[E_PurchaseOrder] ADD  CONSTRAINT [DF_E_PurchaseOrder_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[E_PurchaseOrder] ADD  CONSTRAINT [DF_E_PurchaseOrder_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[E_PurchaseOrder] ADD  CONSTRAINT [DF_E_PurchaseOrder_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[E_Supply] ADD  CONSTRAINT [DF_E_Supply_Sequence]  DEFAULT ((0)) FOR [Sequence]
GO
ALTER TABLE [dbo].[E_Supply] ADD  CONSTRAINT [DF_E_Supply_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[E_Supply] ADD  CONSTRAINT [DF_E_Supply_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[E_Supply] ADD  CONSTRAINT [DF_E_Supply_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[E_SupplyItem] ADD  CONSTRAINT [DF_E_SupplyItem_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[E_SupplyItem] ADD  CONSTRAINT [DF_E_SupplyItem_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[E_SupplyItem] ADD  CONSTRAINT [DF_E_SupplyItem_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[E_SupplyItemTax] ADD  CONSTRAINT [DF_E_SupplyItemTax_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[E_SupplyItemTax] ADD  CONSTRAINT [DF_E_SupplyItemTax_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[E_SupplyItemTax] ADD  CONSTRAINT [DF_E_SupplyItemTax_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_Account] ADD  CONSTRAINT [DF_Q_Account_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_Account] ADD  CONSTRAINT [DF_Q_Account_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_Account] ADD  CONSTRAINT [DF_Q_Account_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_AccountDiscount] ADD  CONSTRAINT [DF_Q_AccountDiscount_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_AccountDiscount] ADD  CONSTRAINT [DF_Q_AccountDiscount_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_AccountDiscount] ADD  CONSTRAINT [DF_Q_AccountDiscount_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_Asset] ADD  CONSTRAINT [DF_Q_Asset_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_Asset] ADD  CONSTRAINT [DF_Q_Asset_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_Asset] ADD  CONSTRAINT [DF_Q_Asset_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_AssetAlias] ADD  CONSTRAINT [DF_Q_AssetAlias_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_AssetAlias] ADD  CONSTRAINT [DF_Q_AssetAlias_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_AssetAlias] ADD  CONSTRAINT [DF_Q_AssetAlias_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_AssetMaintenance] ADD  CONSTRAINT [DF_Q_AssetMaintenance_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_AssetMaintenance] ADD  CONSTRAINT [DF_Q_AssetMaintenance_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_AssetMaintenance] ADD  CONSTRAINT [DF_Q_AssetMaintenance_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_AssetWarranty] ADD  CONSTRAINT [DF_Q_AssetWarranty_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_AssetWarranty] ADD  CONSTRAINT [DF_Q_AssetWarranty_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_AssetWarranty] ADD  CONSTRAINT [DF_Q_AssetWarranty_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_CompanyAccount] ADD  CONSTRAINT [DF_Q_CompanyAccount_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_CompanyAccount] ADD  CONSTRAINT [DF_Q_CompanyAccount_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_CompanyAccount] ADD  CONSTRAINT [DF_Q_CompanyAccount_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_ContractAsset] ADD  CONSTRAINT [DF_Q_ContractAsset_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_ContractAsset] ADD  CONSTRAINT [DF_Q_ContractAsset_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_ContractAsset] ADD  CONSTRAINT [DF_Q_ContractAsset_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice] ADD  CONSTRAINT [DF_Q_DeliveryAdvice_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice] ADD  CONSTRAINT [DF_Q_DeliveryAdvice_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice] ADD  CONSTRAINT [DF_Q_DeliveryAdvice_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_DeliveryAdviceItem] ADD  CONSTRAINT [DF_Q_DeliveryAdviceItem_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_DeliveryAdviceItem] ADD  CONSTRAINT [DF_Q_DeliveryAdviceItem_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_DeliveryAdviceItem] ADD  CONSTRAINT [DF_Q_DeliveryAdviceItem_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_DicitonaryAssetStatus] ADD  CONSTRAINT [DF_Q_DicitonaryAssetStatus_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_DicitonaryAssetStatus] ADD  CONSTRAINT [DF_Q_DicitonaryAssetStatus_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_DicitonaryAssetStatus] ADD  CONSTRAINT [DF_Q_DicitonaryAssetStatus_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_DictionaryDeviceType] ADD  CONSTRAINT [DF_Q_DictionaryDeviceType_DeviceTypeID]  DEFAULT (newid()) FOR [DeviceTypeID]
GO
ALTER TABLE [dbo].[Q_DictionaryDeviceType] ADD  CONSTRAINT [DF_Q_DictionaryDeviceType_IsAttributable]  DEFAULT ((1)) FOR [IsAttributable]
GO
ALTER TABLE [dbo].[Q_DictionaryDeviceType] ADD  CONSTRAINT [DF_Q_DictionaryDeviceType_IsCategory]  DEFAULT ((0)) FOR [IsDevice]
GO
ALTER TABLE [dbo].[Q_DictionaryDeviceType] ADD  CONSTRAINT [DF_Q_DictionaryDeviceType_IsPart]  DEFAULT ((0)) FOR [IsPart]
GO
ALTER TABLE [dbo].[Q_DictionaryEventType] ADD  CONSTRAINT [DF_Q_DictionaryEventType_EventTypeID]  DEFAULT (newid()) FOR [EventTypeID]
GO
ALTER TABLE [dbo].[Q_DictionaryPartCategory] ADD  CONSTRAINT [DF_Q_DictionaryPartCategory_PartCategoryID]  DEFAULT (newid()) FOR [PartCategoryID]
GO
ALTER TABLE [dbo].[Q_ModelPart] ADD  CONSTRAINT [DF_Q_ModelPart_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_ModelPart] ADD  CONSTRAINT [DF_Q_ModelPart_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_ModelPart] ADD  CONSTRAINT [DF_Q_ModelPart_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_ModelPartKit] ADD  CONSTRAINT [DF_Q_ModelPartKit_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_ModelPartKit] ADD  CONSTRAINT [DF_Q_ModelPartKit_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_ModelPartKit] ADD  CONSTRAINT [DF_Q_ModelPartKit_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_ModelProcedure] ADD  CONSTRAINT [DF_Q_ModelProcedure_Sequence]  DEFAULT ((0)) FOR [Sequence]
GO
ALTER TABLE [dbo].[Q_ModelProcedure] ADD  CONSTRAINT [DF_Q_ModelProcedure_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_ModelProcedure] ADD  CONSTRAINT [DF_Q_ModelProcedure_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_ModelProcedure] ADD  CONSTRAINT [DF_Q_ModelProcedure_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_ModelProcedureTask] ADD  CONSTRAINT [DF_Q_ModelProcedureTask_Sequence]  DEFAULT ((0)) FOR [Sequence]
GO
ALTER TABLE [dbo].[Q_ModelProcedureTask] ADD  CONSTRAINT [DF_Q_ModelProcedureTask_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_ModelProcedureTask] ADD  CONSTRAINT [DF_Q_ModelProcedureTask_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_ModelProcedureTask] ADD  CONSTRAINT [DF_Q_ModelProcedureTask_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_ModelProcedureTaskPart] ADD  CONSTRAINT [DF_Q_ModelProcedureTaskPart_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_ModelProcedureTaskPart] ADD  CONSTRAINT [DF_Q_ModelProcedureTaskPart_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_ModelProcedureTaskPart] ADD  CONSTRAINT [DF_Q_ModelProcedureTaskPart_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_ModelScheduleCycle] ADD  CONSTRAINT [DF_Q_ModelScheduleCycle_Sequence]  DEFAULT ((0)) FOR [Sequence]
GO
ALTER TABLE [dbo].[Q_ModelScheduleCycle] ADD  CONSTRAINT [DF_Q_ModelScheduleCycle_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_ModelScheduleCycle] ADD  CONSTRAINT [DF_Q_ModelScheduleCycle_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_ModelScheduleCycle] ADD  CONSTRAINT [DF_Q_ModelScheduleCycle_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_ModelWarranty] ADD  CONSTRAINT [DF_Q_ModelWarranty_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_ModelWarranty] ADD  CONSTRAINT [DF_Q_ModelWarranty_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_ModelWarranty] ADD  CONSTRAINT [DF_Q_ModelWarranty_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskModel] ADD  CONSTRAINT [DF_Q_ProjectPlanTaskModel_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskModel] ADD  CONSTRAINT [DF_Q_ProjectPlanTaskModel_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskModel] ADD  CONSTRAINT [DF_Q_ProjectPlanTaskModel_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskPart] ADD  CONSTRAINT [DF_Q_ProjectPlanTaskPart_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskPart] ADD  CONSTRAINT [DF_Q_ProjectPlanTaskPart_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskPart] ADD  CONSTRAINT [DF_Q_ProjectPlanTaskPart_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_Recall] ADD  CONSTRAINT [DF_Q_Recall_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_Recall] ADD  CONSTRAINT [DF_Q_Recall_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_Recall] ADD  CONSTRAINT [DF_Q_Recall_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_RecallModel] ADD  CONSTRAINT [DF_Q_RecallModel_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_RecallModel] ADD  CONSTRAINT [DF_Q_RecallModel_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_RecallModel] ADD  CONSTRAINT [DF_Q_RecallModel_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_RecallModelAsset] ADD  CONSTRAINT [DF_Q_RecallModelAssets_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_RecallModelAsset] ADD  CONSTRAINT [DF_Q_RecallModelAssets_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_RecallModelAsset] ADD  CONSTRAINT [DF_Q_RecallModelAssets_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_SupplierModel] ADD  CONSTRAINT [DF_Q_SupplierModel_SupplierModelID]  DEFAULT (newid()) FOR [SupplierModelID]
GO
ALTER TABLE [dbo].[Q_SupplierModel] ADD  CONSTRAINT [DF_Q_ModelSupplier_Seqeunce]  DEFAULT ((0)) FOR [Seqeunce]
GO
ALTER TABLE [dbo].[Q_SupplierModel] ADD  CONSTRAINT [DF_Q_SupplierModel_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_SupplierModel] ADD  CONSTRAINT [DF_Q_SupplierModel_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_SupplierModel] ADD  CONSTRAINT [DF_Q_SupplierModel_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_SupplierPart] ADD  CONSTRAINT [DF_Q_PartSupplier_Seqeunce]  DEFAULT ((0)) FOR [Seqeunce]
GO
ALTER TABLE [dbo].[Q_SupplierPart] ADD  CONSTRAINT [DF_Q_SupplierPart_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_SupplierPart] ADD  CONSTRAINT [DF_Q_SupplierPart_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_SupplierPart] ADD  CONSTRAINT [DF_Q_SupplierPart_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_Warehouse] ADD  CONSTRAINT [DF_Q_Warehouse_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_Warehouse] ADD  CONSTRAINT [DF_Q_Warehouse_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_Warehouse] ADD  CONSTRAINT [DF_Q_Warehouse_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_WarehouseModel] ADD  CONSTRAINT [DF_Q_WarehouseModel_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_WarehouseModel] ADD  CONSTRAINT [DF_Q_WarehouseModel_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_WarehouseModel] ADD  CONSTRAINT [DF_Q_WarehouseModel_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_WarehouseModelSupplier] ADD  CONSTRAINT [DF_Q_WarehouseModelSupplier_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_WarehouseModelSupplier] ADD  CONSTRAINT [DF_Q_WarehouseModelSupplier_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_WarehouseModelSupplier] ADD  CONSTRAINT [DF_Q_WarehouseModelSupplier_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_WarehousePart] ADD  CONSTRAINT [DF_Q_WarehousePart_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_WarehousePart] ADD  CONSTRAINT [DF_Q_WarehousePart_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_WarehousePart] ADD  CONSTRAINT [DF_Q_WarehousePart_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_WarehousePartSupplier] ADD  CONSTRAINT [DF_Q_WarehousePartSupplier_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_WarehousePartSupplier] ADD  CONSTRAINT [DF_Q_WarehousePartSupplier_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_WarehousePartSupplier] ADD  CONSTRAINT [DF_Q_WarehousePartSupplier_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[Q_WorkflowSchedule] ADD  CONSTRAINT [DF_Q_WorkflowSchedule_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[Q_WorkflowSchedule] ADD  CONSTRAINT [DF_Q_WorkflowSchedule_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[Q_WorkflowSchedule] ADD  CONSTRAINT [DF_Q_WorkflowSchedule_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Address] ADD  CONSTRAINT [DF_X_Address_IsHQ]  DEFAULT ((0)) FOR [IsHQ]
GO
ALTER TABLE [dbo].[X_Address] ADD  CONSTRAINT [DF_X_Address_IsPostBox]  DEFAULT ((0)) FOR [IsPostBox]
GO
ALTER TABLE [dbo].[X_Address] ADD  CONSTRAINT [DF_X_Address_Priority]  DEFAULT ((0)) FOR [Priority]
GO
ALTER TABLE [dbo].[X_Address] ADD  CONSTRAINT [DF_X_Address_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Address] ADD  CONSTRAINT [DF_X_Address_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Address] ADD  CONSTRAINT [DF_X_Address_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_AssayGroup] ADD  CONSTRAINT [DF_X_AssayGroup_AssayGroup]  DEFAULT (newid()) FOR [AssayGroupID]
GO
ALTER TABLE [dbo].[X_AssayGroup] ADD  CONSTRAINT [DF_X_AssayGroup_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_AssayGroup] ADD  CONSTRAINT [DF_X_AssayGroup_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_AssayGroup] ADD  CONSTRAINT [DF_X_AssayGroup_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] ADD  CONSTRAINT [DF_X_AssayGroupStandardTestResult_AssayGroupStandardTestResult]  DEFAULT (newid()) FOR [AssayGroupStandardTestResultID]
GO
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] ADD  CONSTRAINT [DF_X_AssayGroupStandardTestResult_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] ADD  CONSTRAINT [DF_X_AssayGroupStandardTestResult_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] ADD  CONSTRAINT [DF_X_AssayGroupStandardTestResult_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_AssayGroupTest] ADD  CONSTRAINT [DF_X_AssayGroupTest_AssayGroupTest]  DEFAULT (newid()) FOR [AssayGroupTestID]
GO
ALTER TABLE [dbo].[X_AssayGroupTest] ADD  CONSTRAINT [DF_X_AssayGroupTest_AssayTestPriority]  DEFAULT ((0)) FOR [AssayTestPriority]
GO
ALTER TABLE [dbo].[X_AssayGroupTest] ADD  CONSTRAINT [DF_X_AssayGroupTest_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_AssayGroupTest] ADD  CONSTRAINT [DF_X_AssayGroupTest_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_AssayGroupTest] ADD  CONSTRAINT [DF_X_AssayGroupTest_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_AssayGroupTestResult] ADD  CONSTRAINT [DF_X_AssayGroupTestResult_AssayGroupTestResult]  DEFAULT (newid()) FOR [AssayGroupTestResultID]
GO
ALTER TABLE [dbo].[X_AssayGroupTestResult] ADD  CONSTRAINT [DF_X_AssayGroupTestResult_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_AssayGroupTestResult] ADD  CONSTRAINT [DF_X_AssayGroupTestResult_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_AssayGroupTestResult] ADD  CONSTRAINT [DF_X_AssayGroupTestResult_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_AssayGroupTestResultComment] ADD  CONSTRAINT [DF_X_AssayGroupTestResultComment_AssayGroupTestResultComment]  DEFAULT (newid()) FOR [AssayGroupTestResultCommentID]
GO
ALTER TABLE [dbo].[X_AssayGroupTestResultComment] ADD  CONSTRAINT [DF_X_AssayGroupTestResultComment_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_AssayGroupTestResultComment] ADD  CONSTRAINT [DF_X_AssayGroupTestResultComment_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_AssayGroupTestResultComment] ADD  CONSTRAINT [DF_X_AssayGroupTestResultComment_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_AssayGroupTestResultDuplicate] ADD  CONSTRAINT [DF_X_AssayGroupTestResultDuplicate_AssayGroupTestResultDuplicate]  DEFAULT (newid()) FOR [AssayGroupTestResultDuplicateID]
GO
ALTER TABLE [dbo].[X_AssayGroupTestResultDuplicate] ADD  CONSTRAINT [DF_X_AssayGroupTestResultDuplicate_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_AssayGroupTestResultDuplicate] ADD  CONSTRAINT [DF_X_AssayGroupTestResultDuplicate_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_AssayGroupTestResultDuplicate] ADD  CONSTRAINT [DF_X_AssayGroupTestResultDuplicate_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_BlockModelID]  DEFAULT (newid()) FOR [BlockModelID]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_IsIJKCalculated]  DEFAULT ((1)) FOR [IsIJKCalculated]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_OriginI]  DEFAULT ((0)) FOR [OriginI]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_OriginJ]  DEFAULT ((0)) FOR [OriginJ]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_OriginK]  DEFAULT ((0)) FOR [OriginK]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_MinimumI]  DEFAULT ((0)) FOR [MinimumI]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_MinimumJ]  DEFAULT ((0)) FOR [MinimumJ]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_MinimumK]  DEFAULT ((0)) FOR [MinimumK]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_DimensionEasting]  DEFAULT ('X') FOR [DimensionEasting]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_DimensionNorthing]  DEFAULT ('Y') FOR [DimensionNorthing]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_DimensionElevation]  DEFAULT ('Z') FOR [DimensionElevation]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_OriginNorthPositive]  DEFAULT ((1)) FOR [IsOriginNorthPositive]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_OriginEastPositive]  DEFAULT ((1)) FOR [IsOriginEastPositive]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_OriginElevationUpPositive]  DEFAULT ((1)) FOR [IsOriginElevationUpwardsPositive]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_UnitIJK]  DEFAULT ('m') FOR [UnitIJK]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_BlockModel] ADD  CONSTRAINT [DF_X_BlockModel_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_BlockModelBlock] ADD  CONSTRAINT [DF_X_BlockModelBlock_BlockModelBlockID]  DEFAULT (newid()) FOR [BlockModelBlockID]
GO
ALTER TABLE [dbo].[X_BlockModelBlock] ADD  CONSTRAINT [DF_X_BlockModelBlock_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_BlockModelBlock] ADD  CONSTRAINT [DF_X_BlockModelBlock_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_BlockModelBlock] ADD  CONSTRAINT [DF_X_BlockModelBlock_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_BlockModelBlockData] ADD  CONSTRAINT [DF_X_BlockModelBlockData_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_BlockModelBlockData] ADD  CONSTRAINT [DF_X_BlockModelBlockData_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_BlockModelBlockData] ADD  CONSTRAINT [DF_X_BlockModelBlockData_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_BlockModelMetadata] ADD  CONSTRAINT [DF_X_BlockModelMetadata_BlockModelMetadataID]  DEFAULT (newid()) FOR [BlockModelMetadataID]
GO
ALTER TABLE [dbo].[X_BlockModelMetadata] ADD  CONSTRAINT [DF_X_BlockModelMetadata_IsColumnData]  DEFAULT ((0)) FOR [IsColumnData]
GO
ALTER TABLE [dbo].[X_BlockModelMetadata] ADD  CONSTRAINT [DF_X_BlockModelMetadata_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_BlockModelMetadata] ADD  CONSTRAINT [DF_X_BlockModelMetadata_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_BlockModelMetadata] ADD  CONSTRAINT [DF_X_BlockModelMetadata_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Casing] ADD  CONSTRAINT [DF_X_Casing_Casing]  DEFAULT (newid()) FOR [CasingID]
GO
ALTER TABLE [dbo].[X_Casing] ADD  CONSTRAINT [DF_X_Casing_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Casing] ADD  CONSTRAINT [DF_X_Casing_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Casing] ADD  CONSTRAINT [DF_X_Casing_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Cementing] ADD  CONSTRAINT [DF_X_Cementing_Cementing]  DEFAULT (newid()) FOR [CementingID]
GO
ALTER TABLE [dbo].[X_Cementing] ADD  CONSTRAINT [DF_X_Cementing_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Cementing] ADD  CONSTRAINT [DF_X_Cementing_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Cementing] ADD  CONSTRAINT [DF_X_Cementing_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Company] ADD  CONSTRAINT [DF_X_Company_Company]  DEFAULT (newid()) FOR [CompanyID]
GO
ALTER TABLE [dbo].[X_Company] ADD  CONSTRAINT [DF_X_Company_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Company] ADD  CONSTRAINT [DF_X_Company_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Company] ADD  CONSTRAINT [DF_X_Company_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_CompanyAddress] ADD  CONSTRAINT [DF_X_CompanyAddress_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_CompanyAddress] ADD  CONSTRAINT [DF_X_CompanyAddress_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_CompanyAddress] ADD  CONSTRAINT [DF_X_CompanyAddress_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_CompanyRelation] ADD  CONSTRAINT [DF_X_CompanyRelation_IsChildVisible]  DEFAULT ((0)) FOR [IsChildVisible]
GO
ALTER TABLE [dbo].[X_CompanyRelation] ADD  CONSTRAINT [DF_X_CompanyRelation_IsParentVisible]  DEFAULT ((0)) FOR [IsParentVisible]
GO
ALTER TABLE [dbo].[X_CompanyRelation] ADD  CONSTRAINT [DF_X_CompanyRelation_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_CompanyRelation] ADD  CONSTRAINT [DF_X_CompanyRelation_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_CompanyRelation] ADD  CONSTRAINT [DF_X_CompanyRelation_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Compliance] ADD  CONSTRAINT [DF_X_Compliance_ComplianceID]  DEFAULT (newid()) FOR [ComplianceID]
GO
ALTER TABLE [dbo].[X_Compliance] ADD  CONSTRAINT [DF_X_Compliance_ComplianceVersion]  DEFAULT ('1') FOR [ComplianceVersion]
GO
ALTER TABLE [dbo].[X_Compliance] ADD  CONSTRAINT [DF_X_Compliance_ValidFrom]  DEFAULT (getdate()) FOR [ValidFrom]
GO
ALTER TABLE [dbo].[X_Compliance] ADD  CONSTRAINT [DF_X_Compliance_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Compliance] ADD  CONSTRAINT [DF_X_Compliance_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Compliance] ADD  CONSTRAINT [DF_X_Compliance_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ComplianceTask] ADD  CONSTRAINT [DF_X_ComplianceTask_ExecutePrior]  DEFAULT ((0)) FOR [ExecutePrior]
GO
ALTER TABLE [dbo].[X_ComplianceTask] ADD  CONSTRAINT [DF_X_ComplianceTask_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ComplianceTask] ADD  CONSTRAINT [DF_X_ComplianceTask_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ComplianceTask] ADD  CONSTRAINT [DF_X_ComplianceTask_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ComplianceWorkType] ADD  CONSTRAINT [DF_X_ComplianceWorkType_ComplianceWorkTypeID]  DEFAULT (newid()) FOR [ComplianceWorkTypeID]
GO
ALTER TABLE [dbo].[X_ComplianceWorkType] ADD  CONSTRAINT [DF_X_ComplianceWorkType_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ComplianceWorkType] ADD  CONSTRAINT [DF_X_ComplianceWorkType_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ComplianceWorkType] ADD  CONSTRAINT [DF_X_ComplianceWorkType_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Composite] ADD  CONSTRAINT [DF_X_Composite_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Composite] ADD  CONSTRAINT [DF_X_Composite_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Composite] ADD  CONSTRAINT [DF_X_Composite_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_CompositeData] ADD  CONSTRAINT [DF_X_CompositeData_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_CompositeData] ADD  CONSTRAINT [DF_X_CompositeData_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_CompositeData] ADD  CONSTRAINT [DF_X_CompositeData_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Contact] ADD  CONSTRAINT [DF_X_Contact_Contact]  DEFAULT (newid()) FOR [ContactID]
GO
ALTER TABLE [dbo].[X_Contact] ADD  CONSTRAINT [DF_X_Contact_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Contact] ADD  CONSTRAINT [DF_X_Contact_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Contact] ADD  CONSTRAINT [DF_X_Contact_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ContactAddress] ADD  CONSTRAINT [DF_X_ContactAddress_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ContactAddress] ADD  CONSTRAINT [DF_X_ContactAddress_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ContactAddress] ADD  CONSTRAINT [DF_X_ContactAddress_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Contract] ADD  CONSTRAINT [DF_X_DrillCompanyContract_DrillContract]  DEFAULT (newid()) FOR [ContractID]
GO
ALTER TABLE [dbo].[X_Contract] ADD  CONSTRAINT [DF_X_DrillCompanyContract_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Contract] ADD  CONSTRAINT [DF_X_DrillCompanyContract_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Contract] ADD  CONSTRAINT [DF_X_DrillCompanyContract_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ContractCondition] ADD  CONSTRAINT [DF_X_ContractCondition_ContractConditionID]  DEFAULT (newid()) FOR [ContractConditionID]
GO
ALTER TABLE [dbo].[X_ContractCondition] ADD  CONSTRAINT [DF_X_ContractCondition_IsIncluded]  DEFAULT ((0)) FOR [IsIncluded]
GO
ALTER TABLE [dbo].[X_ContractCondition] ADD  CONSTRAINT [DF_X_ContractCondition_IsExluded]  DEFAULT ((0)) FOR [IsExluded]
GO
ALTER TABLE [dbo].[X_ContractCondition] ADD  CONSTRAINT [DF_X_ContractCondition_IsMaximum]  DEFAULT ((0)) FOR [Maximum]
GO
ALTER TABLE [dbo].[X_ContractCondition] ADD  CONSTRAINT [DF_X_ContractCondition_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ContractCondition] ADD  CONSTRAINT [DF_X_ContractCondition_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ContractCondition] ADD  CONSTRAINT [DF_X_ContractCondition_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ContractConditionModel] ADD  CONSTRAINT [DF_X_ContractConditionModel_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ContractConditionModel] ADD  CONSTRAINT [DF_X_ContractConditionModel_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ContractConditionModel] ADD  CONSTRAINT [DF_X_ContractConditionModel_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ContractConditionPart] ADD  CONSTRAINT [DF_X_ContractConditionPart_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ContractConditionPart] ADD  CONSTRAINT [DF_X_ContractConditionPart_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ContractConditionPart] ADD  CONSTRAINT [DF_X_ContractConditionPart_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_CostEstimateModel] ADD  CONSTRAINT [DF_X_CostEstimateModel_CostEstimateModelID]  DEFAULT (newid()) FOR [CostEstimateModelID]
GO
ALTER TABLE [dbo].[X_CostEstimateModel] ADD  CONSTRAINT [DF_X_CO_ProRataUnits]  DEFAULT ((1)) FOR [ProRataUnits]
GO
ALTER TABLE [dbo].[X_CostEstimateModel] ADD  CONSTRAINT [DF_X_CO_IsAccruableWithParentCost]  DEFAULT ((0)) FOR [IsAccruableWithParentCost]
GO
ALTER TABLE [dbo].[X_CostEstimateModel] ADD  CONSTRAINT [DF_X_CostEstimateModel_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_CostEstimateModel] ADD  CONSTRAINT [DF_X_CostEstimateModel_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_CostEstimateModel] ADD  CONSTRAINT [DF_X_CostEstimateModel_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Defect] ADD  CONSTRAINT [DF_X_Defect_Defect]  DEFAULT (newid()) FOR [DefectID]
GO
ALTER TABLE [dbo].[X_Defect] ADD  CONSTRAINT [DF_X_Defect_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Defect] ADD  CONSTRAINT [DF_X_Defect_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Defect] ADD  CONSTRAINT [DF_X_Defect_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Desurvey] ADD  CONSTRAINT [DF_X_Desurvey_DesurveyID]  DEFAULT (newid()) FOR [DesurveyID]
GO
ALTER TABLE [dbo].[X_Desurvey] ADD  CONSTRAINT [DF_X_Desurvey_DesurveyAlgorithmTypeID]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [DesurveyAlgorithmTypeID]
GO
ALTER TABLE [dbo].[X_Desurvey] ADD  CONSTRAINT [DF_X_Desurvey_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Desurvey] ADD  CONSTRAINT [DF_X_Desurvey_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Desurvey] ADD  CONSTRAINT [DF_X_Desurvey_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_DictionaryAdjective] ADD  CONSTRAINT [DF_X_DictionaryAdjective_AdjectiveID]  DEFAULT (newid()) FOR [AdjectiveID]
GO
ALTER TABLE [dbo].[X_DictionaryAlteration] ADD  CONSTRAINT [DF_X_DictionaryAlteration_AlterationID]  DEFAULT (newid()) FOR [AlterationID]
GO
ALTER TABLE [dbo].[X_DictionaryAssayMethod] ADD  CONSTRAINT [DF_X_DictionaryAssayMethod_AssayMethodID]  DEFAULT (newid()) FOR [AssayMethodID]
GO
ALTER TABLE [dbo].[X_DictionaryAssayStandard] ADD  CONSTRAINT [DF_X_DictionaryAssayStandard_AssayStandardID]  DEFAULT (newid()) FOR [AssayStandardID]
GO
ALTER TABLE [dbo].[X_DictionaryAssayTest] ADD  CONSTRAINT [DF_X_DictionaryAssayTest_AssayTestID]  DEFAULT (newid()) FOR [AssayTestID]
GO
ALTER TABLE [dbo].[X_DictionaryAssayType] ADD  CONSTRAINT [DF_X_DictionaryAssayType_AssayTypeID]  DEFAULT (newid()) FOR [AssayTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryBasalContact] ADD  CONSTRAINT [DF_X_DictionaryBasalContact_BasalContactID]  DEFAULT (newid()) FOR [BasalContactID]
GO
ALTER TABLE [dbo].[X_DictionaryBedSpacing] ADD  CONSTRAINT [DF_X_DictionaryBedSpacing_BedSpacingID]  DEFAULT (newid()) FOR [BedSpacingID]
GO
ALTER TABLE [dbo].[X_DictionaryCharacteristic] ADD  CONSTRAINT [DF_X_DictionaryCharacteristic_CharacteristicID]  DEFAULT (newid()) FOR [CharacteristicID]
GO
ALTER TABLE [dbo].[X_DictionaryCharacteristicType] ADD  CONSTRAINT [DF_X_DictionaryCharacteristicType_CharacteristicTypeID]  DEFAULT (newid()) FOR [CharacteristicTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryColour] ADD  CONSTRAINT [DF_X_DictionaryColour_ColourID]  DEFAULT (newid()) FOR [ColourID]
GO
ALTER TABLE [dbo].[X_DictionaryCommodity] ADD  CONSTRAINT [DF_X_DictionaryCommodity_CommodityID]  DEFAULT (newid()) FOR [CommodityID]
GO
ALTER TABLE [dbo].[X_DictionaryContractConditionType] ADD  CONSTRAINT [DF_X_DictionaryContractCondition_ContractConditionID]  DEFAULT (newid()) FOR [ContractConditionTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryCoreState] ADD  CONSTRAINT [DF_X_DictionaryCoreState_CoreStateID]  DEFAULT (newid()) FOR [CoreStateID]
GO
ALTER TABLE [dbo].[X_DictionaryCostType] ADD  CONSTRAINT [DF_X_DictionaryCostType_CostTypeID]  DEFAULT (newid()) FOR [CostTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryDataStatus] ADD  CONSTRAINT [DF_X_DictionaryDataStatus_DataStatusID]  DEFAULT (newid()) FOR [DataStatusID]
GO
ALTER TABLE [dbo].[X_DictionaryDefectCompleteness] ADD  CONSTRAINT [DF_X_DictionaryDefectCompleteness_DefectCompletenessID]  DEFAULT (newid()) FOR [DefectCompletenessID]
GO
ALTER TABLE [dbo].[X_DictionaryDefectContinuity] ADD  CONSTRAINT [DF_X_DictionaryDefectContinuity_DefectContinuityID]  DEFAULT (newid()) FOR [DefectContinuityID]
GO
ALTER TABLE [dbo].[X_DictionaryDefectSpacing] ADD  CONSTRAINT [DF_X_DictionaryDefectSpacing_DefectSpacingID]  DEFAULT (newid()) FOR [DefectSpacingID]
GO
ALTER TABLE [dbo].[X_DictionaryDefectType] ADD  CONSTRAINT [DF_X_DictionaryDefectType_DefectTypeID]  DEFAULT (newid()) FOR [DefectTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryDesurveyAlgorithmType] ADD  CONSTRAINT [DF_X_DictionaryDesurveyAlgorithmType_DesurveyAlgorithmID]  DEFAULT (newid()) FOR [DesurveyAlgorithmTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryDipOrientationMethod] ADD  CONSTRAINT [DF_X_DictionaryDipOrientationMethod_DipOrientationMethodID]  DEFAULT (newid()) FOR [DipOrientationMethodID]
GO
ALTER TABLE [dbo].[X_DictionaryDomain] ADD  CONSTRAINT [DF_X_DictionaryDomain_DomainID]  DEFAULT (newid()) FOR [DomainID]
GO
ALTER TABLE [dbo].[X_DictionaryDrillBitType] ADD  CONSTRAINT [DF_X_DictionaryDrillBitType_DrillBitTypeID]  DEFAULT (newid()) FOR [DrillBitTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryDrillCasingType] ADD  CONSTRAINT [DF_X_DictionaryDrillCasingType_DrillCasingTypeID]  DEFAULT (newid()) FOR [DrillCasingTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryDrillFluid] ADD  CONSTRAINT [DF_X_DictionaryDrillFluid_DrillFluidID]  DEFAULT (newid()) FOR [DrillFluidID]
GO
ALTER TABLE [dbo].[X_DictionaryDrillRigType] ADD  CONSTRAINT [DF_X_DictionaryDrillRigType_DrillRigTypeID]  DEFAULT (newid()) FOR [DrillRigTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryDrillSize] ADD  CONSTRAINT [DF_X_DictionaryDrillSize_DrillSizeID]  DEFAULT (newid()) FOR [DrillSizeID]
GO
ALTER TABLE [dbo].[X_DictionaryEstimatedStrength] ADD  CONSTRAINT [DF_X_DictionaryEstimatedStrength_EstimatedStrengthID]  DEFAULT (newid()) FOR [EstimatedStrengthID]
GO
ALTER TABLE [dbo].[X_DictionaryFailureMode] ADD  CONSTRAINT [DF_X_DictionaryFailureMode_FailureModeID]  DEFAULT (newid()) FOR [FailureModeID]
GO
ALTER TABLE [dbo].[X_DictionaryFlowTestType] ADD  CONSTRAINT [DF_X_DictionaryFlowTestType_FlowTestTypeID]  DEFAULT (newid()) FOR [FlowTestTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryGasDetected] ADD  CONSTRAINT [DF_X_DictionaryGasDetected_GasDetectedID]  DEFAULT (newid()) FOR [GasDetectedID]
GO
ALTER TABLE [dbo].[X_DictionaryGeodeticDatum] ADD  CONSTRAINT [DF_X_DictionaryGeodeticDatum_GeodeticDatumID]  DEFAULT (newid()) FOR [GeodeticDatumID]
GO
ALTER TABLE [dbo].[X_DictionaryGeophysicalLogType] ADD  CONSTRAINT [DF_X_DictionaryGeophysicalLogType_GeophysicalLogTypeID]  DEFAULT (newid()) FOR [GeophysicalLogTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryGroup] ADD  CONSTRAINT [DF_X_DictionaryGroup_GroupID]  DEFAULT (newid()) FOR [GroupID]
GO
ALTER TABLE [dbo].[X_DictionaryGroupMembership] ADD  CONSTRAINT [DF_X_DictionaryGroupMembership_GroupMembershipID]  DEFAULT (newid()) FOR [GroupMembershipID]
GO
ALTER TABLE [dbo].[X_DictionaryHeightDatum] ADD  CONSTRAINT [DF_X_DictionaryHeightDatum_HeightDatumID]  DEFAULT (newid()) FOR [HeightDatumID]
GO
ALTER TABLE [dbo].[X_DictionaryHolePurpose] ADD  CONSTRAINT [DF_X_DictionaryHolePurpose_HolePurposeID]  DEFAULT (newid()) FOR [HolePurposeID]
GO
ALTER TABLE [dbo].[X_DictionaryHoleStatus] ADD  CONSTRAINT [DF_X_DictionaryHoleStatus_HoleStatusID]  DEFAULT (newid()) FOR [HoleStatusID]
GO
ALTER TABLE [dbo].[X_DictionaryHoleType] ADD  CONSTRAINT [DF_X_DictionaryHoleType_HoleTypeID]  DEFAULT (newid()) FOR [HoleTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryHorizon] ADD  CONSTRAINT [DF_X_DictionaryHorizon_HorizonID]  DEFAULT (newid()) FOR [HorizonID]
GO
ALTER TABLE [dbo].[X_DictionaryHue] ADD  CONSTRAINT [DF_X_DictionaryHue_HueID]  DEFAULT (newid()) FOR [HueID]
GO
ALTER TABLE [dbo].[X_DictionaryInfillMode] ADD  CONSTRAINT [DF_X_DictionaryInfillMode_InfillModeID]  DEFAULT (newid()) FOR [InfillModeID]
GO
ALTER TABLE [dbo].[X_DictionaryInfillType] ADD  CONSTRAINT [DF_X_DictionaryInfillType_InfillTypeID]  DEFAULT (newid()) FOR [InfillTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryIntervalStatus] ADD  CONSTRAINT [DF_X_DictionaryIntervalStatus_IntervalStatusID]  DEFAULT (newid()) FOR [IntervalStatusID]
GO
ALTER TABLE [dbo].[X_DictionaryLeaseApplicationType] ADD  CONSTRAINT [DF_X_DictionaryLeaseApplicationType_LeaseApplicationTypeID]  DEFAULT (newid()) FOR [LeaseApplicationTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryLithologyInterrelation] ADD  CONSTRAINT [DF_X_DictionaryLithologyInterrelation_LithologyInterralationID]  DEFAULT (newid()) FOR [LithologyInterralationID]
GO
ALTER TABLE [dbo].[X_DictionaryLithologyQualifier] ADD  CONSTRAINT [DF_X_DictionaryLithologyQualifiers_LithologyQualifierID]  DEFAULT (newid()) FOR [LithologyQualifierID]
GO
ALTER TABLE [dbo].[X_DictionaryLithologyType] ADD  CONSTRAINT [DF_X_DictionaryLithologyType_LithologyTypeID]  DEFAULT (newid()) FOR [LithologyTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryLocationType] ADD  CONSTRAINT [DF_X_DictionaryLocationType_LocationTypeID]  DEFAULT (newid()) FOR [LocationTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryMechanicalState] ADD  CONSTRAINT [DF_X_DictionaryMechanicalState_MechanicalStateID]  DEFAULT (newid()) FOR [MechanicalStateID]
GO
ALTER TABLE [dbo].[X_DictionaryMineralAbundance] ADD  CONSTRAINT [DF_X_DictionaryMineralAbundance_MineralAbundanceID]  DEFAULT (newid()) FOR [MineralAbundanceID]
GO
ALTER TABLE [dbo].[X_DictionaryMineralAndFossilAbundance] ADD  CONSTRAINT [DF_X_DictionaryMineralAndFossilAbundance_MineralAndFossilAbundanceID]  DEFAULT (newid()) FOR [MineralAndFossilAbundanceID]
GO
ALTER TABLE [dbo].[X_DictionaryMineralAndFossilAssociation] ADD  CONSTRAINT [DF_X_DictionaryMineralAndFossilAssociation_MineralAndFossilAssociationID]  DEFAULT (newid()) FOR [MineralAndFossilAssociationID]
GO
ALTER TABLE [dbo].[X_DictionaryMineralAndFossilType] ADD  CONSTRAINT [DF_X_DictionaryMineralAndFossilType_MineralAndFossilTypeID]  DEFAULT (newid()) FOR [MineralAndFossilTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryMineralForm] ADD  CONSTRAINT [DF_X_DictionaryMineralForm_MineralFormID]  DEFAULT (newid()) FOR [MineralFormID]
GO
ALTER TABLE [dbo].[X_DictionaryMineralStyle] ADD  CONSTRAINT [DF_X_DictionaryMineralStyle_MineralStyleID]  DEFAULT (newid()) FOR [MineralStyleID]
GO
ALTER TABLE [dbo].[X_DictionaryMineralType] ADD  CONSTRAINT [DF_X_DictionaryMineralType_MineralTypeID]  DEFAULT (newid()) FOR [MineralTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryModel] ADD  CONSTRAINT [DF_X_DictionaryModel_ModelID]  DEFAULT (newid()) FOR [ModelID]
GO
ALTER TABLE [dbo].[X_DictionaryModel] ADD  CONSTRAINT [DF_X_DictionaryModel_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_DictionaryModel] ADD  CONSTRAINT [DF_X_DictionaryModel_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_DictionaryModel] ADD  CONSTRAINT [DF_X_DictionaryModel_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_DictionaryModelCategory] ADD  CONSTRAINT [DF_X_DictionaryModelCategory_ModelCategoryID]  DEFAULT (newid()) FOR [ModelCategoryID]
GO
ALTER TABLE [dbo].[X_DictionaryModelRelation] ADD  CONSTRAINT [DF_X_DictionaryModelRelation_Related]  DEFAULT (getdate()) FOR [Related]
GO
ALTER TABLE [dbo].[X_DictionaryModelStatus] ADD  CONSTRAINT [DF_X_DictionaryModelStatus_ModelStatusID]  DEFAULT (newid()) FOR [ModelStatusID]
GO
ALTER TABLE [dbo].[X_DictionaryMoistureSensitivity] ADD  CONSTRAINT [DF_X_DictionaryMoistureSensititvity_MoistureSensitivityID]  DEFAULT (newid()) FOR [MoistureSensitivityID]
GO
ALTER TABLE [dbo].[X_DictionaryPartStatus] ADD  CONSTRAINT [DF_X_DictionaryPartStatus_PartStatusID]  DEFAULT (newid()) FOR [PartStatusID]
GO
ALTER TABLE [dbo].[X_DictionaryPlasticity] ADD  CONSTRAINT [DF_X_DictionaryPlasticity_PlasticityID]  DEFAULT (newid()) FOR [PlasticityID]
GO
ALTER TABLE [dbo].[X_DictionaryPly] ADD  CONSTRAINT [DF_X_DictionaryPly_PlyID]  DEFAULT (newid()) FOR [PlyID]
GO
ALTER TABLE [dbo].[X_DictionaryPointLoadTestType] ADD  CONSTRAINT [DF_X_DictionaryPointLoadTestType_PointLoadTestTypeID]  DEFAULT (newid()) FOR [PointLoadTestTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryPosition] ADD  CONSTRAINT [DF_X_DictionaryPosition_PositionID]  DEFAULT (newid()) FOR [PositionID]
GO
ALTER TABLE [dbo].[X_DictionaryProfession] ADD  CONSTRAINT [DF_X_DictionaryProfession_ProfessionID]  DEFAULT (newid()) FOR [ProfessionID]
GO
ALTER TABLE [dbo].[X_DictionaryProvinceGroup] ADD  CONSTRAINT [DF_X_DictionaryProvinceGroup_ProvinceGroupID]  DEFAULT (newid()) FOR [ProvinceGroupID]
GO
ALTER TABLE [dbo].[X_DictionaryProvinceType] ADD  CONSTRAINT [DF_X_DictionaryProvinceType_ProvinceTypeID]  DEFAULT (newid()) FOR [ProvinceTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryRelationType] ADD  CONSTRAINT [DF_X_DictionaryRelationType_RelationTypeID]  DEFAULT (newid()) FOR [RelationTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryRockMassUnitType] ADD  CONSTRAINT [DF_X_DictionaryRockMassUnitType_RockMassUnitTypeID]  DEFAULT (newid()) FOR [RockMassUnitTypeID]
GO
ALTER TABLE [dbo].[X_DictionarySampleCategory] ADD  CONSTRAINT [DF_X_DictionarySampleCategory_SampleCategoryID]  DEFAULT (newid()) FOR [SampleCategoryID]
GO
ALTER TABLE [dbo].[X_DictionarySampleState] ADD  CONSTRAINT [DF_X_DictionarySampleState_SampleStateID]  DEFAULT (newid()) FOR [SampleStateID]
GO
ALTER TABLE [dbo].[X_DictionarySampleType] ADD  CONSTRAINT [DF_X_DictionarySampleType_SampleTypeID]  DEFAULT (newid()) FOR [SampleTypeID]
GO
ALTER TABLE [dbo].[X_DictionarySeam] ADD  CONSTRAINT [DF_X_DictionarySeam_SeamID]  DEFAULT (newid()) FOR [SeamID]
GO
ALTER TABLE [dbo].[X_DictionarySedimentaryFeature] ADD  CONSTRAINT [DF_X_DictionarySedimentaryFeature_SedimentaryFeatureID]  DEFAULT (newid()) FOR [SedimentaryFeatureID]
GO
ALTER TABLE [dbo].[X_DictionaryShade] ADD  CONSTRAINT [DF_X_DictionaryShade_ShadeID]  DEFAULT (newid()) FOR [ShadeID]
GO
ALTER TABLE [dbo].[X_DictionaryShape] ADD  CONSTRAINT [DF_X_DictionaryShape_ShapeID]  DEFAULT (newid()) FOR [ShapeID]
GO
ALTER TABLE [dbo].[X_DictionaryStratigraphy] ADD  CONSTRAINT [DF_X_DictionaryStratigraphy_StratigraphyID]  DEFAULT (newid()) FOR [StratigraphyID]
GO
ALTER TABLE [dbo].[X_DictionarySurfaceRoughness] ADD  CONSTRAINT [DF_X_DictionarySurfaceRoughness_SurfaceRoughnessID]  DEFAULT (newid()) FOR [SurfaceRoughnessID]
GO
ALTER TABLE [dbo].[X_DictionarySurveyAccuracy] ADD  CONSTRAINT [DF_X_DictionarySurveyAccuracy_SurveyAccuracyID]  DEFAULT (newid()) FOR [SurveyAccuracyID]
GO
ALTER TABLE [dbo].[X_DictionaryTexture] ADD  CONSTRAINT [DF_X_DictionaryTexture_TextureID]  DEFAULT (newid()) FOR [TextureID]
GO
ALTER TABLE [dbo].[X_DictionaryUnit] ADD  CONSTRAINT [DF_X_DictionaryUnit_UnitID]  DEFAULT (newid()) FOR [UnitID]
GO
ALTER TABLE [dbo].[X_DictionaryUnit] ADD  CONSTRAINT [DF_X_DictionaryUnit_StrictlySI]  DEFAULT ((0)) FOR [StrictlySI]
GO
ALTER TABLE [dbo].[X_DictionaryUnitType] ADD  CONSTRAINT [DF_X_DictionaryUnitType_UnitTypeID]  DEFAULT (newid()) FOR [UnitTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryWeathering] ADD  CONSTRAINT [DF_X_DictionaryWeathering_WeatheringID]  DEFAULT (newid()) FOR [WeatheringID]
GO
ALTER TABLE [dbo].[X_DictionaryWorkType] ADD  CONSTRAINT [DF_X_DictionaryWorkType_WorkTypeID]  DEFAULT (newid()) FOR [WorkTypeID]
GO
ALTER TABLE [dbo].[X_DictionaryWorkType] ADD  CONSTRAINT [DF_X_DictionaryWorkType_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_DictionaryWorkType] ADD  CONSTRAINT [DF_X_DictionaryWorkType_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_DictionaryWorkType] ADD  CONSTRAINT [DF_X_DictionaryWorkType_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_DictionaryWorkTypeClass] ADD  CONSTRAINT [DF_X_DictionaryWorkTypeClass_WorkTypeClassID]  DEFAULT (newid()) FOR [WorkTypeClassID]
GO
ALTER TABLE [dbo].[X_DictionaryWorkTypeRelation] ADD  CONSTRAINT [DF_X_DictionaryWorkTypeRelation_WorkTypeRelationID]  DEFAULT (newid()) FOR [WorkTypeRelationID]
GO
ALTER TABLE [dbo].[X_Drilling] ADD  CONSTRAINT [DF_X_Drilling_Drilling]  DEFAULT (newid()) FOR [DrillingID]
GO
ALTER TABLE [dbo].[X_Drilling] ADD  CONSTRAINT [DF_X_Drilling_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Drilling] ADD  CONSTRAINT [DF_X_Drilling_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Drilling] ADD  CONSTRAINT [DF_X_Drilling_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Experience] ADD  CONSTRAINT [DF_X_Experience_ExperienceID]  DEFAULT (newid()) FOR [ExperienceID]
GO
ALTER TABLE [dbo].[X_Experience] ADD  CONSTRAINT [DF_X_Experience_DateStart]  DEFAULT (getdate()) FOR [DateStart]
GO
ALTER TABLE [dbo].[X_Experience] ADD  CONSTRAINT [DF_X_Experience_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Experience] ADD  CONSTRAINT [DF_X_Experience_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_FileData] ADD  CONSTRAINT [DF_X_FileData_FileDataID]  DEFAULT (newid()) FOR [FileDataID]
GO
ALTER TABLE [dbo].[X_FileData] ADD  CONSTRAINT [DF_X_FileData_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_FileData] ADD  CONSTRAINT [DF_X_FileData_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_FileData] ADD  CONSTRAINT [DF_X_FileData_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Geology] ADD  CONSTRAINT [DF_X_Geology_Geology]  DEFAULT (newid()) FOR [GeologyID]
GO
ALTER TABLE [dbo].[X_Geology] ADD  CONSTRAINT [DF_X_Geology_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Geology] ADD  CONSTRAINT [DF_X_Geology_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Geology] ADD  CONSTRAINT [DF_X_Geology_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Geophysics] ADD  CONSTRAINT [DF_X_Geophysics_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Geophysics] ADD  CONSTRAINT [DF_X_Geophysics_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Geophysics] ADD  CONSTRAINT [DF_X_Geophysics_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_GeophysicsData] ADD  CONSTRAINT [DF_X_GeophyicsData_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_GeophysicsData] ADD  CONSTRAINT [DF_X_GeophyicsData_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_GeophysicsData] ADD  CONSTRAINT [DF_X_GeophyicsData_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_GeophysicsMetadata] ADD  CONSTRAINT [DF_X_GeophysicsMetadata_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_GeophysicsMetadata] ADD  CONSTRAINT [DF_X_GeophysicsMetadata_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_GeophysicsMetadata] ADD  CONSTRAINT [DF_X_GeophysicsMetadata_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Header] ADD  CONSTRAINT [DF_X_Header_HoleID]  DEFAULT (newid()) FOR [HeaderID]
GO
ALTER TABLE [dbo].[X_Header] ADD  CONSTRAINT [DF_X_Header_Utm_Zone_Hemisphere]  DEFAULT ('S') FOR [UtmZoneHemisphere]
GO
ALTER TABLE [dbo].[X_Header] ADD  CONSTRAINT [DF_X_Header_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Header] ADD  CONSTRAINT [DF_X_Header_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Header] ADD  CONSTRAINT [DF_X_Header_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_HeaderRelation] ADD  CONSTRAINT [DF_X_HeaderRelation_Related]  DEFAULT (getdate()) FOR [Related]
GO
ALTER TABLE [dbo].[X_HeaderRelation] ADD  CONSTRAINT [DF_X_HeaderRelation_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_HeaderRelation] ADD  CONSTRAINT [DF_X_HeaderRelation_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_HeaderRelation] ADD  CONSTRAINT [DF_X_HeaderRelation_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Lease] ADD  CONSTRAINT [DF_X_Lease_Lease]  DEFAULT (newid()) FOR [LeaseID]
GO
ALTER TABLE [dbo].[X_Lease] ADD  CONSTRAINT [DF_X_Lease_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Lease] ADD  CONSTRAINT [DF_X_Lease_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Lease] ADD  CONSTRAINT [DF_X_Lease_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_LeaseApplication] ADD  CONSTRAINT [DF_X_LeaseApplication_LeaseApplication]  DEFAULT (newid()) FOR [LeaseApplicationID]
GO
ALTER TABLE [dbo].[X_LeaseApplication] ADD  CONSTRAINT [DF_X_LeaseApplication_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_LeaseApplication] ADD  CONSTRAINT [DF_X_LeaseApplication_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_LeaseApplication] ADD  CONSTRAINT [DF_X_LeaseApplication_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Lithology] ADD  CONSTRAINT [DF_X_Lithology_Lithology]  DEFAULT (newid()) FOR [LithologyID]
GO
ALTER TABLE [dbo].[X_Lithology] ADD  CONSTRAINT [DF_X_Lithology_LithologyPercentage]  DEFAULT ((100)) FOR [LithologyPercentage]
GO
ALTER TABLE [dbo].[X_Lithology] ADD  CONSTRAINT [DF_X_Lithology_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Lithology] ADD  CONSTRAINT [DF_X_Lithology_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Lithology] ADD  CONSTRAINT [DF_X_Lithology_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Location] ADD  CONSTRAINT [DF_X_Location_DefaultCulture]  DEFAULT (N'en-AU') FOR [DefaultCulture]
GO
ALTER TABLE [dbo].[X_Location] ADD  CONSTRAINT [DF_X_Location_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Location] ADD  CONSTRAINT [DF_X_Location_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Location] ADD  CONSTRAINT [DF_X_Location_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_LocationAlias] ADD  CONSTRAINT [DF_X_LocationAlias_Culture]  DEFAULT (N'en-AU') FOR [Culture]
GO
ALTER TABLE [dbo].[X_LocationAlias] ADD  CONSTRAINT [DF_X_LocationAlias_Priority]  DEFAULT ((0)) FOR [Priority]
GO
ALTER TABLE [dbo].[X_LocationAlias] ADD  CONSTRAINT [DF_X_LocationAlias_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_LocationAlias] ADD  CONSTRAINT [DF_X_LocationAlias_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_LocationAlias] ADD  CONSTRAINT [DF_X_LocationAlias_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_LocationHistory] ADD  CONSTRAINT [DF_X_LocationHistory_LocationTaken]  DEFAULT (getdate()) FOR [LocationTaken]
GO
ALTER TABLE [dbo].[X_LocationHistory] ADD  CONSTRAINT [DF_X_LocationHistory_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_LocationHistory] ADD  CONSTRAINT [DF_X_LocationHistory_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_LocationHistory] ADD  CONSTRAINT [DF_X_LocationHistory_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_MetaData] ADD  CONSTRAINT [DF_X_MetaData_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_MetaData] ADD  CONSTRAINT [DF_X_MetaData_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_MetaData] ADD  CONSTRAINT [DF_X_MetaData_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_MetaDataRelation] ADD  CONSTRAINT [DF_X_MetaDataRelation_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_MetaDataRelation] ADD  CONSTRAINT [DF_X_MetaDataRelation_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_MetaDataRelation] ADD  CONSTRAINT [DF_X_MetaDataRelation_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Mineralogy] ADD  CONSTRAINT [DF_X_Mineralogy_Mineralogy]  DEFAULT (newid()) FOR [MineralogyID]
GO
ALTER TABLE [dbo].[X_Mineralogy] ADD  CONSTRAINT [DF_X_Mineralogy_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Mineralogy] ADD  CONSTRAINT [DF_X_Mineralogy_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Mineralogy] ADD  CONSTRAINT [DF_X_Mineralogy_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ModelCharacteristic] ADD  CONSTRAINT [DF_X_ModelCharacteristic_ModelCharacteristicID]  DEFAULT (newid()) FOR [ModelCharacteristicID]
GO
ALTER TABLE [dbo].[X_ModelCharacteristic] ADD  CONSTRAINT [DF_X_ModelCharacteristic_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ModelCharacteristic] ADD  CONSTRAINT [DF_X_ModelCharacteristic_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ModelCharacteristic] ADD  CONSTRAINT [DF_X_ModelCharacteristic_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Opportunity] ADD  CONSTRAINT [DF_X_Opportunity_OpportunityID]  DEFAULT (newid()) FOR [OpportunityID]
GO
ALTER TABLE [dbo].[X_Opportunity] ADD  CONSTRAINT [DF_X_Opportunity_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Opportunity] ADD  CONSTRAINT [DF_X_Opportunity_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Opportunity] ADD  CONSTRAINT [DF_X_Opportunity_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Parameter] ADD  CONSTRAINT [DF_X_Parameter_ParameterID]  DEFAULT (newid()) FOR [ParameterID]
GO
ALTER TABLE [dbo].[X_Parameter] ADD  CONSTRAINT [DF_X_Parameter_Locale]  DEFAULT (N'en-AU') FOR [Locale]
GO
ALTER TABLE [dbo].[X_Parameter] ADD  CONSTRAINT [DF_X_Parameter_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Parameter] ADD  CONSTRAINT [DF_X_Parameter_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Parameter] ADD  CONSTRAINT [DF_X_Parameter_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ParameterDuplicate] ADD  CONSTRAINT [DF_X_ParameterDuplicate_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ParameterDuplicate] ADD  CONSTRAINT [DF_X_ParameterDuplicate_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ParameterDuplicate] ADD  CONSTRAINT [DF_X_ParameterDuplicate_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ParameterGroup] ADD  CONSTRAINT [DF_X_ParameterGroup_ParameterGroupID]  DEFAULT (newid()) FOR [ParameterGroupID]
GO
ALTER TABLE [dbo].[X_ParameterGroup] ADD  CONSTRAINT [DF_X_ParameterGroup_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ParameterGroup] ADD  CONSTRAINT [DF_X_ParameterGroup_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ParameterGroup] ADD  CONSTRAINT [DF_X_ParameterGroup_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_PartCharacteristic] ADD  CONSTRAINT [DF_X_PartCharacteristic_PartCharacteristicID]  DEFAULT (newid()) FOR [PartCharacteristicID]
GO
ALTER TABLE [dbo].[X_PartCharacteristic] ADD  CONSTRAINT [DF_X_PartCharacteristic_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_PartCharacteristic] ADD  CONSTRAINT [DF_X_PartCharacteristic_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_PartCharacteristic] ADD  CONSTRAINT [DF_X_PartCharacteristic_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_PointLoad] ADD  CONSTRAINT [DF_X_PointLoad_PointLoad]  DEFAULT (newid()) FOR [PointLoadID]
GO
ALTER TABLE [dbo].[X_PointLoad] ADD  CONSTRAINT [DF_X_PointLoad_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_PointLoad] ADD  CONSTRAINT [DF_X_PointLoad_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_PointLoad] ADD  CONSTRAINT [DF_X_PointLoad_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_PrivateData] ADD  CONSTRAINT [DF_Table_1_UserDataID]  DEFAULT (newid()) FOR [PrivateDataID]
GO
ALTER TABLE [dbo].[X_PrivateData] ADD  CONSTRAINT [DF_X_PrivateData_SystemDataType]  DEFAULT (N'System.String') FOR [SystemDataType]
GO
ALTER TABLE [dbo].[X_PrivateData] ADD  CONSTRAINT [DF_X_PrivateData_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_PrivateData] ADD  CONSTRAINT [DF_X_PrivateData_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_PrivateData] ADD  CONSTRAINT [DF_X_PrivateData_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Project] ADD  CONSTRAINT [DF_X_Project_Project]  DEFAULT (newid()) FOR [ProjectID]
GO
ALTER TABLE [dbo].[X_Project] ADD  CONSTRAINT [DF_X_Project_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Project] ADD  CONSTRAINT [DF_X_Project_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Project] ADD  CONSTRAINT [DF_X_Project_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ProjectDeliverable] ADD  CONSTRAINT [DF_X_ProjectDeliverable_DeliverableID]  DEFAULT (newid()) FOR [ProjectDeliverableID]
GO
ALTER TABLE [dbo].[X_ProjectDeliverable] ADD  CONSTRAINT [DF_X_ProjectDeliverable_Sequence]  DEFAULT ((0)) FOR [Sequence]
GO
ALTER TABLE [dbo].[X_ProjectDeliverable] ADD  CONSTRAINT [DF_X_ProjectDeliverable_Initiated]  DEFAULT (getdate()) FOR [Initiated]
GO
ALTER TABLE [dbo].[X_ProjectDeliverable] ADD  CONSTRAINT [DF_X_ProjectDeliverable_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ProjectDeliverable] ADD  CONSTRAINT [DF_X_ProjectDeliverable_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ProjectDeliverable] ADD  CONSTRAINT [DF_X_ProjectDeliverable_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ProjectPlan] ADD  CONSTRAINT [DF_X_ProjectPlan_ProjectPlanID]  DEFAULT (newid()) FOR [ProjectPlanID]
GO
ALTER TABLE [dbo].[X_ProjectPlan] ADD  CONSTRAINT [DF_X_ProjectPlan_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ProjectPlan] ADD  CONSTRAINT [DF_X_ProjectPlan_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ProjectPlan] ADD  CONSTRAINT [DF_X_ProjectPlan_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ProjectPlanTask] ADD  CONSTRAINT [DF_X_ProjectPlanTask_ProjectPlanTaskID]  DEFAULT (newid()) FOR [ProjectPlanTaskID]
GO
ALTER TABLE [dbo].[X_ProjectPlanTask] ADD  CONSTRAINT [DF_X_ProjectPlanTask_Priority]  DEFAULT ((0)) FOR [Priority]
GO
ALTER TABLE [dbo].[X_ProjectPlanTask] ADD  CONSTRAINT [DF_X_ProjectPlanTask_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ProjectPlanTask] ADD  CONSTRAINT [DF_X_ProjectPlanTask_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ProjectPlanTask] ADD  CONSTRAINT [DF_X_ProjectPlanTask_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskComplianceResponse] ADD  CONSTRAINT [DF_X_ProjectPlanTaskComplianceResponse_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskComplianceResponse] ADD  CONSTRAINT [DF_X_ProjectPlanTaskComplianceResponse_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskComplianceResponse] ADD  CONSTRAINT [DF_X_ProjectPlanTaskComplianceResponse_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse] ADD  CONSTRAINT [DF_X_ProjectPlanTaskResponse_Completed]  DEFAULT (getdate()) FOR [Completed]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse] ADD  CONSTRAINT [DF_X_ProjectPlanTaskResponse_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse] ADD  CONSTRAINT [DF_X_ProjectPlanTaskResponse_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse] ADD  CONSTRAINT [DF_X_ProjectPlanTaskResponse_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskWorker] ADD  CONSTRAINT [DF_X_ProjectPlanTaskWorker_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskWorker] ADD  CONSTRAINT [DF_X_ProjectPlanTaskWorker_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskWorker] ADD  CONSTRAINT [DF_X_ProjectPlanTaskWorker_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Prospectus] ADD  CONSTRAINT [DF_X_Prospectus_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Prospectus] ADD  CONSTRAINT [DF_X_Prospectus_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Prospectus] ADD  CONSTRAINT [DF_X_Prospectus_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ProspectusProject] ADD  CONSTRAINT [DF_X_ProspectusProject_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ProspectusProject] ADD  CONSTRAINT [DF_X_ProspectusProject_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ProspectusProject] ADD  CONSTRAINT [DF_X_ProspectusProject_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ProspectusProjectCommodity] ADD  CONSTRAINT [DF_X_ProspectusProjectCommodity_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ProspectusProjectCommodity] ADD  CONSTRAINT [DF_X_ProspectusProjectCommodity_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ProspectusProjectCommodity] ADD  CONSTRAINT [DF_X_ProspectusProjectCommodity_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_ProspectusProjectProvince] ADD  CONSTRAINT [DF_X_ProspectusProjectProvince_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_ProspectusProjectProvince] ADD  CONSTRAINT [DF_X_ProspectusProjectProvince_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_ProspectusProjectProvince] ADD  CONSTRAINT [DF_X_ProspectusProjectProvince_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Province] ADD  CONSTRAINT [DF_X_Province_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Province] ADD  CONSTRAINT [DF_X_Province_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Province] ADD  CONSTRAINT [DF_X_Province_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Recovery] ADD  CONSTRAINT [DF_X_Recovery_Recovery]  DEFAULT (newid()) FOR [RecoveryID]
GO
ALTER TABLE [dbo].[X_Recovery] ADD  CONSTRAINT [DF_X_RecoveryData_Confident]  DEFAULT ((0)) FOR [Confident]
GO
ALTER TABLE [dbo].[X_Recovery] ADD  CONSTRAINT [DF_X_Recovery_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Recovery] ADD  CONSTRAINT [DF_X_Recovery_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Recovery] ADD  CONSTRAINT [DF_X_Recovery_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Sample] ADD  CONSTRAINT [DF_X_AssayGroupTestSample_AssayGroupTestSample]  DEFAULT (newid()) FOR [SampleID]
GO
ALTER TABLE [dbo].[X_Sample] ADD  CONSTRAINT [DF_X_AssayGroupTestSample_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Sample] ADD  CONSTRAINT [DF_X_AssayGroupTestSample_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Sample] ADD  CONSTRAINT [DF_X_AssayGroupTestSample_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_SecurityBlacklist] ADD  CONSTRAINT [DF_X_SecurityBlacklist_CanCreate]  DEFAULT ((0)) FOR [CanCreate]
GO
ALTER TABLE [dbo].[X_SecurityBlacklist] ADD  CONSTRAINT [DF_X_SecurityBlacklist_CanRead]  DEFAULT ((0)) FOR [CanRead]
GO
ALTER TABLE [dbo].[X_SecurityBlacklist] ADD  CONSTRAINT [DF_X_SecurityBlacklist_CanUpdate]  DEFAULT ((0)) FOR [CanUpdate]
GO
ALTER TABLE [dbo].[X_SecurityBlacklist] ADD  CONSTRAINT [DF_X_SecurityBlacklist_CanDelete]  DEFAULT ((0)) FOR [CanDelete]
GO
ALTER TABLE [dbo].[X_SecurityBlacklist] ADD  CONSTRAINT [DF_X_SecurityBlacklist_IsField]  DEFAULT ((0)) FOR [IsField]
GO
ALTER TABLE [dbo].[X_SecurityBlacklist] ADD  CONSTRAINT [DF_X_SecurityBlacklist_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_SecurityBlacklist] ADD  CONSTRAINT [DF_X_SecurityBlacklist_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_SecurityBlacklist] ADD  CONSTRAINT [DF_X_SecurityBlacklist_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_SecurityWhitelist] ADD  CONSTRAINT [DF_X_SecurityWhitelist_CanCreate]  DEFAULT ((1)) FOR [CanCreate]
GO
ALTER TABLE [dbo].[X_SecurityWhitelist] ADD  CONSTRAINT [DF_X_SecurityWhitelist_CanRead]  DEFAULT ((1)) FOR [CanRead]
GO
ALTER TABLE [dbo].[X_SecurityWhitelist] ADD  CONSTRAINT [DF_X_SecurityWhitelist_CanUpdate]  DEFAULT ((1)) FOR [CanUpdate]
GO
ALTER TABLE [dbo].[X_SecurityWhitelist] ADD  CONSTRAINT [DF_X_SecurityWhitelist_CanDelete]  DEFAULT ((1)) FOR [CanDelete]
GO
ALTER TABLE [dbo].[X_SecurityWhitelist] ADD  CONSTRAINT [DF_X_SecurityWhitelist_IsField]  DEFAULT ((1)) FOR [IsField]
GO
ALTER TABLE [dbo].[X_SecurityWhitelist] ADD  CONSTRAINT [DF_X_SecurityWhitelist_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_SecurityWhitelist] ADD  CONSTRAINT [DF_X_SecurityWhitelist_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_SecurityWhitelist] ADD  CONSTRAINT [DF_X_SecurityWhitelist_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Survey] ADD  CONSTRAINT [DF_X_Survey_Survey]  DEFAULT (newid()) FOR [SurveyID]
GO
ALTER TABLE [dbo].[X_Survey] ADD  CONSTRAINT [DF_X_Survey_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Survey] ADD  CONSTRAINT [DF_X_Survey_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Survey] ADD  CONSTRAINT [DF_X_Survey_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Task] ADD  CONSTRAINT [DF_Table_1_Priority]  DEFAULT ((0)) FOR [DefaultPriority]
GO
ALTER TABLE [dbo].[X_Task] ADD  CONSTRAINT [DF_X_Task_Version]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Task] ADD  CONSTRAINT [DF_X_Task_VersionCertainty]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Task] ADD  CONSTRAINT [DF_X_Task_VersionUpdated]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_Tenement] ADD  CONSTRAINT [DF_X_Tenement_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_Tenement] ADD  CONSTRAINT [DF_X_Tenement_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_Tenement] ADD  CONSTRAINT [DF_X_Tenement_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_TenementCommodity] ADD  CONSTRAINT [DF_X_TenementCommodity_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_TenementCommodity] ADD  CONSTRAINT [DF_X_TenementCommodity_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_TenementCommodity] ADD  CONSTRAINT [DF_X_TenementCommodity_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_TenementProvince] ADD  CONSTRAINT [DF_X_TenementProvince_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_TenementProvince] ADD  CONSTRAINT [DF_X_TenementProvince_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_TenementProvince] ADD  CONSTRAINT [DF_X_TenementProvince_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_TenementRelation] ADD  CONSTRAINT [DF_X_TenementRelation_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_TenementRelation] ADD  CONSTRAINT [DF_X_TenementRelation_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_TenementRelation] ADD  CONSTRAINT [DF_X_TenementRelation_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_UsageAudit] ADD  CONSTRAINT [DF_X_UsageAudit_AuditID]  DEFAULT (newid()) FOR [UsageAuditID]
GO
ALTER TABLE [dbo].[X_UsageAudit] ADD  CONSTRAINT [DF_X_UsageAudit_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_UsageAudit] ADD  CONSTRAINT [DF_X_UsageAudit_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_UsageAudit] ADD  CONSTRAINT [DF_X_UsageAudit_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_UserData] ADD  CONSTRAINT [DF_X_UserData_UserDataID]  DEFAULT (newid()) FOR [UserDataID]
GO
ALTER TABLE [dbo].[X_UserData] ADD  CONSTRAINT [DF_X_UserData_SystemDataType]  DEFAULT (N'System.String') FOR [SystemDataType]
GO
ALTER TABLE [dbo].[X_UserData] ADD  CONSTRAINT [DF_X_UserData_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_UserData] ADD  CONSTRAINT [DF_X_UserData_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_UserData] ADD  CONSTRAINT [DF_X_UserData_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [dbo].[X_WaterFlow] ADD  CONSTRAINT [DF_X_WaterFlow_WaterFlow]  DEFAULT (newid()) FOR [WaterFlowID]
GO
ALTER TABLE [dbo].[X_WaterFlow] ADD  CONSTRAINT [DF_X_WaterFlow_X1]  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[X_WaterFlow] ADD  CONSTRAINT [DF_X_WaterFlow_X2]  DEFAULT ((0)) FOR [VersionCertainty]
GO
ALTER TABLE [dbo].[X_WaterFlow] ADD  CONSTRAINT [DF_X_WaterFlow_X3]  DEFAULT (getdate()) FOR [VersionUpdated]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT (NULL) FOR [PrimitiveDataProperties]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT (NULL) FOR [ComplexDataProperties]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT (NULL) FOR [WriteOnlyPrimitiveDataProperties]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT (NULL) FOR [WriteOnlyComplexDataProperties]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT (NULL) FOR [MetadataProperties]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT ((0)) FOR [DataEncodingOption]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT ((0)) FOR [MetadataEncodingOption]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT (NULL) FOR [LastUpdated]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT (NULL) FOR [SuspensionExceptionName]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT (NULL) FOR [SuspensionReason]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT (NULL) FOR [BlockingBookmarks]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT (NULL) FOR [LastMachineRunOn]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT (NULL) FOR [ExecutionStatus]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT ((0)) FOR [IsInitialized]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT ((0)) FOR [IsSuspended]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT ((0)) FOR [IsReadyToRun]
GO
ALTER TABLE [System.Activities.DurableInstancing].[InstancesTable] ADD  DEFAULT ((0)) FOR [IsCompleted]
GO
ALTER TABLE [System.Activities.DurableInstancing].[LockOwnersTable] ADD  DEFAULT (NULL) FOR [PrimitiveLockOwnerData]
GO
ALTER TABLE [System.Activities.DurableInstancing].[LockOwnersTable] ADD  DEFAULT (NULL) FOR [ComplexLockOwnerData]
GO
ALTER TABLE [System.Activities.DurableInstancing].[LockOwnersTable] ADD  DEFAULT (NULL) FOR [WriteOnlyPrimitiveLockOwnerData]
GO
ALTER TABLE [System.Activities.DurableInstancing].[LockOwnersTable] ADD  DEFAULT (NULL) FOR [WriteOnlyComplexLockOwnerData]
GO
ALTER TABLE [System.Activities.DurableInstancing].[LockOwnersTable] ADD  DEFAULT ((0)) FOR [EncodingOption]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[E_Credit]  WITH CHECK ADD  CONSTRAINT [FK_E_Credit_E_Currency] FOREIGN KEY([CurrencyID])
REFERENCES [dbo].[E_Currency] ([CurrencyID])
GO
ALTER TABLE [dbo].[E_Credit] CHECK CONSTRAINT [FK_E_Credit_E_Currency]
GO
ALTER TABLE [dbo].[E_Credit]  WITH CHECK ADD  CONSTRAINT [FK_E_Credit_E_Invoice] FOREIGN KEY([InvoiceID])
REFERENCES [dbo].[E_Invoice] ([InvoiceID])
GO
ALTER TABLE [dbo].[E_Credit] CHECK CONSTRAINT [FK_E_Credit_E_Invoice]
GO
ALTER TABLE [dbo].[E_Credit]  WITH CHECK ADD  CONSTRAINT [FK_E_Credit_E_InvoiceLine] FOREIGN KEY([InvoiceLineID])
REFERENCES [dbo].[E_InvoiceLine] ([InvoiceLineID])
GO
ALTER TABLE [dbo].[E_Credit] CHECK CONSTRAINT [FK_E_Credit_E_InvoiceLine]
GO
ALTER TABLE [dbo].[E_Credit]  WITH CHECK ADD  CONSTRAINT [FK_E_Credit_E_Supply] FOREIGN KEY([SupplyID])
REFERENCES [dbo].[E_Supply] ([SupplyID])
GO
ALTER TABLE [dbo].[E_Credit] CHECK CONSTRAINT [FK_E_Credit_E_Supply]
GO
ALTER TABLE [dbo].[E_Currency]  WITH CHECK ADD  CONSTRAINT [FK_E_Currency_X_DictionaryCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
GO
ALTER TABLE [dbo].[E_Currency] CHECK CONSTRAINT [FK_E_Currency_X_DictionaryCountry]
GO
ALTER TABLE [dbo].[E_DictionaryTax]  WITH CHECK ADD  CONSTRAINT [FK_E_DictionaryTax_X_DictionaryCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
GO
ALTER TABLE [dbo].[E_DictionaryTax] CHECK CONSTRAINT [FK_E_DictionaryTax_X_DictionaryCountry]
GO
ALTER TABLE [dbo].[E_DictionaryTax]  WITH CHECK ADD  CONSTRAINT [FK_E_DictionaryTax_X_DictionaryCountryState] FOREIGN KEY([CountryStateID])
REFERENCES [dbo].[X_DictionaryCountryState] ([CountryStateID])
GO
ALTER TABLE [dbo].[E_DictionaryTax] CHECK CONSTRAINT [FK_E_DictionaryTax_X_DictionaryCountryState]
GO
ALTER TABLE [dbo].[E_DictionaryTax]  WITH CHECK ADD  CONSTRAINT [FK_E_DictionaryTax_X_DictionaryUnit] FOREIGN KEY([TaxRateUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[E_DictionaryTax] CHECK CONSTRAINT [FK_E_DictionaryTax_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[E_DictionaryTax]  WITH CHECK ADD  CONSTRAINT [FK_E_DictionaryTax_X_Province] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[X_Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[E_DictionaryTax] CHECK CONSTRAINT [FK_E_DictionaryTax_X_Province]
GO
ALTER TABLE [dbo].[E_Invoice]  WITH CHECK ADD  CONSTRAINT [FK_E_Invoice_E_Currency] FOREIGN KEY([CurrencyID])
REFERENCES [dbo].[E_Currency] ([CurrencyID])
GO
ALTER TABLE [dbo].[E_Invoice] CHECK CONSTRAINT [FK_E_Invoice_E_Currency]
GO
ALTER TABLE [dbo].[E_Invoice]  WITH CHECK ADD  CONSTRAINT [FK_E_Invoice_Q_Account] FOREIGN KEY([SupplierAccountID])
REFERENCES [dbo].[Q_Account] ([AccountID])
GO
ALTER TABLE [dbo].[E_Invoice] CHECK CONSTRAINT [FK_E_Invoice_Q_Account]
GO
ALTER TABLE [dbo].[E_Invoice]  WITH CHECK ADD  CONSTRAINT [FK_E_Invoice_Q_Account1] FOREIGN KEY([CustomerAccountID])
REFERENCES [dbo].[Q_Account] ([AccountID])
GO
ALTER TABLE [dbo].[E_Invoice] CHECK CONSTRAINT [FK_E_Invoice_Q_Account1]
GO
ALTER TABLE [dbo].[E_Invoice]  WITH CHECK ADD  CONSTRAINT [FK_E_Invoice_X_Company] FOREIGN KEY([SupplierCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[E_Invoice] CHECK CONSTRAINT [FK_E_Invoice_X_Company]
GO
ALTER TABLE [dbo].[E_Invoice]  WITH CHECK ADD  CONSTRAINT [FK_E_Invoice_X_Company1] FOREIGN KEY([CustomerCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[E_Invoice] CHECK CONSTRAINT [FK_E_Invoice_X_Company1]
GO
ALTER TABLE [dbo].[E_Invoice]  WITH CHECK ADD  CONSTRAINT [FK_E_Invoice_X_CompanyAddress] FOREIGN KEY([SupplierCompanyAddressID])
REFERENCES [dbo].[X_CompanyAddress] ([CompanyAddressID])
GO
ALTER TABLE [dbo].[E_Invoice] CHECK CONSTRAINT [FK_E_Invoice_X_CompanyAddress]
GO
ALTER TABLE [dbo].[E_Invoice]  WITH CHECK ADD  CONSTRAINT [FK_E_Invoice_X_CompanyAddress1] FOREIGN KEY([CustomerCompanyAddressID])
REFERENCES [dbo].[X_CompanyAddress] ([CompanyAddressID])
GO
ALTER TABLE [dbo].[E_Invoice] CHECK CONSTRAINT [FK_E_Invoice_X_CompanyAddress1]
GO
ALTER TABLE [dbo].[E_InvoiceLine]  WITH CHECK ADD  CONSTRAINT [FK_E_InvoiceLine_E_Currency] FOREIGN KEY([CurrencyID])
REFERENCES [dbo].[E_Currency] ([CurrencyID])
GO
ALTER TABLE [dbo].[E_InvoiceLine] CHECK CONSTRAINT [FK_E_InvoiceLine_E_Currency]
GO
ALTER TABLE [dbo].[E_InvoiceLine]  WITH CHECK ADD  CONSTRAINT [FK_E_InvoiceLine_E_DictionaryTax] FOREIGN KEY([TaxID])
REFERENCES [dbo].[E_DictionaryTax] ([TaxID])
GO
ALTER TABLE [dbo].[E_InvoiceLine] CHECK CONSTRAINT [FK_E_InvoiceLine_E_DictionaryTax]
GO
ALTER TABLE [dbo].[E_InvoiceLine]  WITH CHECK ADD  CONSTRAINT [FK_E_InvoiceLine_E_Invoice] FOREIGN KEY([InvoiceID])
REFERENCES [dbo].[E_Invoice] ([InvoiceID])
GO
ALTER TABLE [dbo].[E_InvoiceLine] CHECK CONSTRAINT [FK_E_InvoiceLine_E_Invoice]
GO
ALTER TABLE [dbo].[E_InvoiceLine]  WITH CHECK ADD  CONSTRAINT [FK_E_InvoiceLine_E_SupplyItem] FOREIGN KEY([SupplyItemID])
REFERENCES [dbo].[E_SupplyItem] ([SupplyItemID])
GO
ALTER TABLE [dbo].[E_InvoiceLine] CHECK CONSTRAINT [FK_E_InvoiceLine_E_SupplyItem]
GO
ALTER TABLE [dbo].[E_Journal]  WITH CHECK ADD  CONSTRAINT [FK_E_Journal_E_Currency] FOREIGN KEY([CurrencyID])
REFERENCES [dbo].[E_Currency] ([CurrencyID])
GO
ALTER TABLE [dbo].[E_Journal] CHECK CONSTRAINT [FK_E_Journal_E_Currency]
GO
ALTER TABLE [dbo].[E_Journal]  WITH CHECK ADD  CONSTRAINT [FK_E_Journal_Q_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Q_Account] ([AccountID])
GO
ALTER TABLE [dbo].[E_Journal] CHECK CONSTRAINT [FK_E_Journal_Q_Account]
GO
ALTER TABLE [dbo].[E_Payment]  WITH CHECK ADD  CONSTRAINT [FK_E_Payment_E_Currency] FOREIGN KEY([CurrencyID])
REFERENCES [dbo].[E_Currency] ([CurrencyID])
GO
ALTER TABLE [dbo].[E_Payment] CHECK CONSTRAINT [FK_E_Payment_E_Currency]
GO
ALTER TABLE [dbo].[E_Payment]  WITH CHECK ADD  CONSTRAINT [FK_E_Payment_E_Payment] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[E_Payment] ([PaymentID])
GO
ALTER TABLE [dbo].[E_Payment] CHECK CONSTRAINT [FK_E_Payment_E_Payment]
GO
ALTER TABLE [dbo].[E_Payment]  WITH CHECK ADD  CONSTRAINT [FK_E_Payment_Q_Account] FOREIGN KEY([CustomerAccountID])
REFERENCES [dbo].[Q_Account] ([AccountID])
GO
ALTER TABLE [dbo].[E_Payment] CHECK CONSTRAINT [FK_E_Payment_Q_Account]
GO
ALTER TABLE [dbo].[E_Payment]  WITH CHECK ADD  CONSTRAINT [FK_E_Payment_Q_Account1] FOREIGN KEY([SupplierAccountID])
REFERENCES [dbo].[Q_Account] ([AccountID])
GO
ALTER TABLE [dbo].[E_Payment] CHECK CONSTRAINT [FK_E_Payment_Q_Account1]
GO
ALTER TABLE [dbo].[E_PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_E_PurchaseOrder_E_Currency] FOREIGN KEY([CurrencyID])
REFERENCES [dbo].[E_Currency] ([CurrencyID])
GO
ALTER TABLE [dbo].[E_PurchaseOrder] CHECK CONSTRAINT [FK_E_PurchaseOrder_E_Currency]
GO
ALTER TABLE [dbo].[E_PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_E_PurchaseOrder_Q_Account] FOREIGN KEY([CustomerAccountID])
REFERENCES [dbo].[Q_Account] ([AccountID])
GO
ALTER TABLE [dbo].[E_PurchaseOrder] CHECK CONSTRAINT [FK_E_PurchaseOrder_Q_Account]
GO
ALTER TABLE [dbo].[E_PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_E_PurchaseOrder_Q_Account1] FOREIGN KEY([SupplierAccountID])
REFERENCES [dbo].[Q_Account] ([AccountID])
GO
ALTER TABLE [dbo].[E_PurchaseOrder] CHECK CONSTRAINT [FK_E_PurchaseOrder_Q_Account1]
GO
ALTER TABLE [dbo].[E_PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_E_PurchaseOrder_X_Company] FOREIGN KEY([CustomerCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[E_PurchaseOrder] CHECK CONSTRAINT [FK_E_PurchaseOrder_X_Company]
GO
ALTER TABLE [dbo].[E_PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_E_PurchaseOrder_X_Company1] FOREIGN KEY([SupplierCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[E_PurchaseOrder] CHECK CONSTRAINT [FK_E_PurchaseOrder_X_Company1]
GO
ALTER TABLE [dbo].[E_PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_E_PurchaseOrder_X_Contact] FOREIGN KEY([CustomerContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[E_PurchaseOrder] CHECK CONSTRAINT [FK_E_PurchaseOrder_X_Contact]
GO
ALTER TABLE [dbo].[E_PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_E_PurchaseOrder_X_Contact1] FOREIGN KEY([SupplierContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[E_PurchaseOrder] CHECK CONSTRAINT [FK_E_PurchaseOrder_X_Contact1]
GO
ALTER TABLE [dbo].[E_PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_E_PurchaseOrder_X_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[E_PurchaseOrder] CHECK CONSTRAINT [FK_E_PurchaseOrder_X_Project]
GO
ALTER TABLE [dbo].[E_Supply]  WITH CHECK ADD  CONSTRAINT [FK_E_Supply_E_Invoice] FOREIGN KEY([SupplierInvoiceID])
REFERENCES [dbo].[E_Invoice] ([InvoiceID])
GO
ALTER TABLE [dbo].[E_Supply] CHECK CONSTRAINT [FK_E_Supply_E_Invoice]
GO
ALTER TABLE [dbo].[E_Supply]  WITH CHECK ADD  CONSTRAINT [FK_E_Supply_E_Invoice1] FOREIGN KEY([CustomerInvoiceID])
REFERENCES [dbo].[E_Invoice] ([InvoiceID])
GO
ALTER TABLE [dbo].[E_Supply] CHECK CONSTRAINT [FK_E_Supply_E_Invoice1]
GO
ALTER TABLE [dbo].[E_Supply]  WITH CHECK ADD  CONSTRAINT [FK_E_Supply_E_PurchaseOrder] FOREIGN KEY([SupplierPurchaseOrderID])
REFERENCES [dbo].[E_PurchaseOrder] ([PurchaseOrderID])
GO
ALTER TABLE [dbo].[E_Supply] CHECK CONSTRAINT [FK_E_Supply_E_PurchaseOrder]
GO
ALTER TABLE [dbo].[E_Supply]  WITH CHECK ADD  CONSTRAINT [FK_E_Supply_E_PurchaseOrder1] FOREIGN KEY([CustomerPurchaseOrderID])
REFERENCES [dbo].[E_PurchaseOrder] ([PurchaseOrderID])
GO
ALTER TABLE [dbo].[E_Supply] CHECK CONSTRAINT [FK_E_Supply_E_PurchaseOrder1]
GO
ALTER TABLE [dbo].[E_Supply]  WITH CHECK ADD  CONSTRAINT [FK_E_Supply_E_Supply] FOREIGN KEY([ParentSupplyID])
REFERENCES [dbo].[E_Supply] ([SupplyID])
GO
ALTER TABLE [dbo].[E_Supply] CHECK CONSTRAINT [FK_E_Supply_E_Supply]
GO
ALTER TABLE [dbo].[E_Supply]  WITH CHECK ADD  CONSTRAINT [FK_E_Supply_X_Contact] FOREIGN KEY([CustomerApprovedBy])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[E_Supply] CHECK CONSTRAINT [FK_E_Supply_X_Contact]
GO
ALTER TABLE [dbo].[E_Supply]  WITH CHECK ADD  CONSTRAINT [FK_E_Supply_X_Contact1] FOREIGN KEY([SupplierApprovedBy])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[E_Supply] CHECK CONSTRAINT [FK_E_Supply_X_Contact1]
GO
ALTER TABLE [dbo].[E_Supply]  WITH CHECK ADD  CONSTRAINT [FK_E_Supply_X_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[E_Supply] CHECK CONSTRAINT [FK_E_Supply_X_Project]
GO
ALTER TABLE [dbo].[E_Supply]  WITH CHECK ADD  CONSTRAINT [FK_E_Supply_X_ProjectDeliverable] FOREIGN KEY([CurrentProjectDeliverableID])
REFERENCES [dbo].[X_ProjectDeliverable] ([ProjectDeliverableID])
GO
ALTER TABLE [dbo].[E_Supply] CHECK CONSTRAINT [FK_E_Supply_X_ProjectDeliverable]
GO
ALTER TABLE [dbo].[E_Supply]  WITH CHECK ADD  CONSTRAINT [FK_E_Supply_X_ProjectDeliverable1] FOREIGN KEY([FinalProjectDeliverableID])
REFERENCES [dbo].[X_ProjectDeliverable] ([ProjectDeliverableID])
GO
ALTER TABLE [dbo].[E_Supply] CHECK CONSTRAINT [FK_E_Supply_X_ProjectDeliverable1]
GO
ALTER TABLE [dbo].[E_SupplyItem]  WITH CHECK ADD  CONSTRAINT [FK_E_SupplyItem_E_Currency] FOREIGN KEY([CurrencyID])
REFERENCES [dbo].[E_Currency] ([CurrencyID])
GO
ALTER TABLE [dbo].[E_SupplyItem] CHECK CONSTRAINT [FK_E_SupplyItem_E_Currency]
GO
ALTER TABLE [dbo].[E_SupplyItem]  WITH CHECK ADD  CONSTRAINT [FK_E_SupplyItem_E_Supply] FOREIGN KEY([SupplyID])
REFERENCES [dbo].[E_Supply] ([SupplyID])
GO
ALTER TABLE [dbo].[E_SupplyItem] CHECK CONSTRAINT [FK_E_SupplyItem_E_Supply]
GO
ALTER TABLE [dbo].[E_SupplyItem]  WITH CHECK ADD  CONSTRAINT [FK_E_SupplyItem_Q_Account] FOREIGN KEY([CustomerAccountID])
REFERENCES [dbo].[Q_Account] ([AccountID])
GO
ALTER TABLE [dbo].[E_SupplyItem] CHECK CONSTRAINT [FK_E_SupplyItem_Q_Account]
GO
ALTER TABLE [dbo].[E_SupplyItem]  WITH CHECK ADD  CONSTRAINT [FK_E_SupplyItem_Q_ProjectPlanTaskModel] FOREIGN KEY([ProjectPlanTaskModelID])
REFERENCES [dbo].[Q_ProjectPlanTaskModel] ([ProjectPlanTaskModelID])
GO
ALTER TABLE [dbo].[E_SupplyItem] CHECK CONSTRAINT [FK_E_SupplyItem_Q_ProjectPlanTaskModel]
GO
ALTER TABLE [dbo].[E_SupplyItem]  WITH CHECK ADD  CONSTRAINT [FK_E_SupplyItem_Q_ProjectPlanTaskPart] FOREIGN KEY([ProjectPlanTaskPartID])
REFERENCES [dbo].[Q_ProjectPlanTaskPart] ([ProjectPlanTaskPartID])
GO
ALTER TABLE [dbo].[E_SupplyItem] CHECK CONSTRAINT [FK_E_SupplyItem_Q_ProjectPlanTaskPart]
GO
ALTER TABLE [dbo].[E_SupplyItem]  WITH CHECK ADD  CONSTRAINT [FK_E_SupplyItem_X_DictionaryUnit] FOREIGN KEY([PartUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[E_SupplyItem] CHECK CONSTRAINT [FK_E_SupplyItem_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[E_SupplyItem]  WITH CHECK ADD  CONSTRAINT [FK_E_SupplyItem_X_DictionaryUnit1] FOREIGN KEY([LabourUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[E_SupplyItem] CHECK CONSTRAINT [FK_E_SupplyItem_X_DictionaryUnit1]
GO
ALTER TABLE [dbo].[E_SupplyItem]  WITH CHECK ADD  CONSTRAINT [FK_E_SupplyItem_X_DictionaryUnit2] FOREIGN KEY([ModelUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[E_SupplyItem] CHECK CONSTRAINT [FK_E_SupplyItem_X_DictionaryUnit2]
GO
ALTER TABLE [dbo].[E_SupplyItem]  WITH CHECK ADD  CONSTRAINT [FK_E_SupplyItem_X_ProjectPlanTaskResponse] FOREIGN KEY([ProjectPlanTaskResponseID])
REFERENCES [dbo].[X_ProjectPlanTaskResponse] ([ProjectPlanTaskResponseID])
GO
ALTER TABLE [dbo].[E_SupplyItem] CHECK CONSTRAINT [FK_E_SupplyItem_X_ProjectPlanTaskResponse]
GO
ALTER TABLE [dbo].[E_SupplyItemTax]  WITH CHECK ADD  CONSTRAINT [FK_E_SupplyItemTax_E_DictionaryTax] FOREIGN KEY([TaxID])
REFERENCES [dbo].[E_DictionaryTax] ([TaxID])
GO
ALTER TABLE [dbo].[E_SupplyItemTax] CHECK CONSTRAINT [FK_E_SupplyItemTax_E_DictionaryTax]
GO
ALTER TABLE [dbo].[E_SupplyItemTax]  WITH CHECK ADD  CONSTRAINT [FK_E_SupplyItemTax_E_SupplyItem] FOREIGN KEY([SupplyItemID])
REFERENCES [dbo].[E_SupplyItem] ([SupplyItemID])
GO
ALTER TABLE [dbo].[E_SupplyItemTax] CHECK CONSTRAINT [FK_E_SupplyItemTax_E_SupplyItem]
GO
ALTER TABLE [dbo].[Q_Account]  WITH CHECK ADD  CONSTRAINT [FK_Q_Account_Q_Account] FOREIGN KEY([ParentAccountID])
REFERENCES [dbo].[Q_Account] ([AccountID])
GO
ALTER TABLE [dbo].[Q_Account] CHECK CONSTRAINT [FK_Q_Account_Q_Account]
GO
ALTER TABLE [dbo].[Q_Account]  WITH CHECK ADD  CONSTRAINT [FK_Q_Account_X_Company] FOREIGN KEY([PrimaryCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[Q_Account] CHECK CONSTRAINT [FK_Q_Account_X_Company]
GO
ALTER TABLE [dbo].[Q_Account]  WITH CHECK ADD  CONSTRAINT [FK_Q_Account_X_Location] FOREIGN KEY([DefaultLocationID])
REFERENCES [dbo].[X_Location] ([LocationID])
GO
ALTER TABLE [dbo].[Q_Account] CHECK CONSTRAINT [FK_Q_Account_X_Location]
GO
ALTER TABLE [dbo].[Q_AccountDiscount]  WITH CHECK ADD  CONSTRAINT [FK_Q_AccountDiscount_Q_DictionaryDeviceType] FOREIGN KEY([DeviceTypeID])
REFERENCES [dbo].[Q_DictionaryDeviceType] ([DeviceTypeID])
GO
ALTER TABLE [dbo].[Q_AccountDiscount] CHECK CONSTRAINT [FK_Q_AccountDiscount_Q_DictionaryDeviceType]
GO
ALTER TABLE [dbo].[Q_AccountDiscount]  WITH CHECK ADD  CONSTRAINT [FK_Q_AccountDiscount_X_DictionaryUnit] FOREIGN KEY([LevelUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[Q_AccountDiscount] CHECK CONSTRAINT [FK_Q_AccountDiscount_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[Q_AccountDiscount]  WITH CHECK ADD  CONSTRAINT [FK_Q_AccountProductDiscount_Q_Account] FOREIGN KEY([SourceAccountID])
REFERENCES [dbo].[Q_Account] ([AccountID])
GO
ALTER TABLE [dbo].[Q_AccountDiscount] CHECK CONSTRAINT [FK_Q_AccountProductDiscount_Q_Account]
GO
ALTER TABLE [dbo].[Q_AccountDiscount]  WITH CHECK ADD  CONSTRAINT [FK_Q_AccountProductDiscount_X_Company] FOREIGN KEY([ClientCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[Q_AccountDiscount] CHECK CONSTRAINT [FK_Q_AccountProductDiscount_X_Company]
GO
ALTER TABLE [dbo].[Q_AccountDiscount]  WITH CHECK ADD  CONSTRAINT [FK_Q_AccountProductDiscount_X_Experience] FOREIGN KEY([ProviderExperienceID])
REFERENCES [dbo].[X_Experience] ([ExperienceID])
GO
ALTER TABLE [dbo].[Q_AccountDiscount] CHECK CONSTRAINT [FK_Q_AccountProductDiscount_X_Experience]
GO
ALTER TABLE [dbo].[Q_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Q_Asset_E_PurchaseOrder] FOREIGN KEY([PurchaseOrderID])
REFERENCES [dbo].[E_PurchaseOrder] ([PurchaseOrderID])
GO
ALTER TABLE [dbo].[Q_Asset] CHECK CONSTRAINT [FK_Q_Asset_E_PurchaseOrder]
GO
ALTER TABLE [dbo].[Q_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Q_Asset_Q_Account] FOREIGN KEY([OwnerAccountID])
REFERENCES [dbo].[Q_Account] ([AccountID])
GO
ALTER TABLE [dbo].[Q_Asset] CHECK CONSTRAINT [FK_Q_Asset_Q_Account]
GO
ALTER TABLE [dbo].[Q_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Q_Asset_Q_Account1] FOREIGN KEY([BorrowerAccountID])
REFERENCES [dbo].[Q_Account] ([AccountID])
GO
ALTER TABLE [dbo].[Q_Asset] CHECK CONSTRAINT [FK_Q_Asset_Q_Account1]
GO
ALTER TABLE [dbo].[Q_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Q_Asset_Q_Account2] FOREIGN KEY([MaintenanceAccountID])
REFERENCES [dbo].[Q_Account] ([AccountID])
GO
ALTER TABLE [dbo].[Q_Asset] CHECK CONSTRAINT [FK_Q_Asset_Q_Account2]
GO
ALTER TABLE [dbo].[Q_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Q_Asset_Q_Asset] FOREIGN KEY([ParentAssetID])
REFERENCES [dbo].[Q_Asset] ([AssetID])
GO
ALTER TABLE [dbo].[Q_Asset] CHECK CONSTRAINT [FK_Q_Asset_Q_Asset]
GO
ALTER TABLE [dbo].[Q_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Q_Asset_Q_DicitonaryAssetStatus] FOREIGN KEY([AssetStatusID])
REFERENCES [dbo].[Q_DicitonaryAssetStatus] ([AssetStatusID])
GO
ALTER TABLE [dbo].[Q_Asset] CHECK CONSTRAINT [FK_Q_Asset_Q_DicitonaryAssetStatus]
GO
ALTER TABLE [dbo].[Q_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Q_Asset_X_DictionaryModel] FOREIGN KEY([ModelID])
REFERENCES [dbo].[X_DictionaryModel] ([ModelID])
GO
ALTER TABLE [dbo].[Q_Asset] CHECK CONSTRAINT [FK_Q_Asset_X_DictionaryModel]
GO
ALTER TABLE [dbo].[Q_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Q_Asset_X_Experience] FOREIGN KEY([ExperienceID])
REFERENCES [dbo].[X_Experience] ([ExperienceID])
GO
ALTER TABLE [dbo].[Q_Asset] CHECK CONSTRAINT [FK_Q_Asset_X_Experience]
GO
ALTER TABLE [dbo].[Q_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Q_Asset_X_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[X_Location] ([LocationID])
GO
ALTER TABLE [dbo].[Q_Asset] CHECK CONSTRAINT [FK_Q_Asset_X_Location]
GO
ALTER TABLE [dbo].[Q_AssetAlias]  WITH CHECK ADD  CONSTRAINT [FK_Q_AssetAlias_Q_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Q_Asset] ([AssetID])
GO
ALTER TABLE [dbo].[Q_AssetAlias] CHECK CONSTRAINT [FK_Q_AssetAlias_Q_Asset]
GO
ALTER TABLE [dbo].[Q_AssetMaintenance]  WITH CHECK ADD  CONSTRAINT [FK_Q_AssetMaintenance_Q_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Q_Asset] ([AssetID])
GO
ALTER TABLE [dbo].[Q_AssetMaintenance] CHECK CONSTRAINT [FK_Q_AssetMaintenance_Q_Asset]
GO
ALTER TABLE [dbo].[Q_AssetMaintenance]  WITH CHECK ADD  CONSTRAINT [FK_Q_AssetMaintenance_Q_ModelProcedure] FOREIGN KEY([ModelProcedureID])
REFERENCES [dbo].[Q_ModelProcedure] ([ModelProcedureID])
GO
ALTER TABLE [dbo].[Q_AssetMaintenance] CHECK CONSTRAINT [FK_Q_AssetMaintenance_Q_ModelProcedure]
GO
ALTER TABLE [dbo].[Q_AssetWarranty]  WITH CHECK ADD  CONSTRAINT [FK_Q_AssetWarranty_Q_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Q_Asset] ([AssetID])
GO
ALTER TABLE [dbo].[Q_AssetWarranty] CHECK CONSTRAINT [FK_Q_AssetWarranty_Q_Asset]
GO
ALTER TABLE [dbo].[Q_AssetWarranty]  WITH CHECK ADD  CONSTRAINT [FK_Q_AssetWarranty_Q_DictionaryWarrantyType] FOREIGN KEY([WarrantyTypeID])
REFERENCES [dbo].[Q_DictionaryWarrantyType] ([WarrantyTypeID])
GO
ALTER TABLE [dbo].[Q_AssetWarranty] CHECK CONSTRAINT [FK_Q_AssetWarranty_Q_DictionaryWarrantyType]
GO
ALTER TABLE [dbo].[Q_AssetWarranty]  WITH CHECK ADD  CONSTRAINT [FK_Q_AssetWarranty_Q_ModelWarranty] FOREIGN KEY([ModelWarrantyID])
REFERENCES [dbo].[Q_ModelWarranty] ([ModelWarrantyID])
GO
ALTER TABLE [dbo].[Q_AssetWarranty] CHECK CONSTRAINT [FK_Q_AssetWarranty_Q_ModelWarranty]
GO
ALTER TABLE [dbo].[Q_AssetWarranty]  WITH CHECK ADD  CONSTRAINT [FK_Q_AssetWarranty_X_DictionaryUnit] FOREIGN KEY([FrequencyUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[Q_AssetWarranty] CHECK CONSTRAINT [FK_Q_AssetWarranty_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[Q_CompanyAccount]  WITH CHECK ADD  CONSTRAINT [FK_Q_CompanyAccount_Q_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Q_Account] ([AccountID])
GO
ALTER TABLE [dbo].[Q_CompanyAccount] CHECK CONSTRAINT [FK_Q_CompanyAccount_Q_Account]
GO
ALTER TABLE [dbo].[Q_CompanyAccount]  WITH CHECK ADD  CONSTRAINT [FK_Q_CompanyAccount_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[Q_CompanyAccount] CHECK CONSTRAINT [FK_Q_CompanyAccount_X_Company]
GO
ALTER TABLE [dbo].[Q_ContractAsset]  WITH CHECK ADD  CONSTRAINT [FK_Q_ContractAsset_Q_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Q_Asset] ([AssetID])
GO
ALTER TABLE [dbo].[Q_ContractAsset] CHECK CONSTRAINT [FK_Q_ContractAsset_Q_Asset]
GO
ALTER TABLE [dbo].[Q_ContractAsset]  WITH CHECK ADD  CONSTRAINT [FK_Q_ContractAsset_X_Contract] FOREIGN KEY([ContractID])
REFERENCES [dbo].[X_Contract] ([ContractID])
GO
ALTER TABLE [dbo].[Q_ContractAsset] CHECK CONSTRAINT [FK_Q_ContractAsset_X_Contract]
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice]  WITH CHECK ADD  CONSTRAINT [FK_Q_DeliveryAdvice_Q_Account] FOREIGN KEY([BillingAccountID])
REFERENCES [dbo].[Q_Account] ([AccountID])
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice] CHECK CONSTRAINT [FK_Q_DeliveryAdvice_Q_Account]
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice]  WITH CHECK ADD  CONSTRAINT [FK_Q_DeliveryAdvice_Q_DictionaryDeliveryAdvice] FOREIGN KEY([DeliveryAdviceReasonID])
REFERENCES [dbo].[Q_DictionaryDeliveryAdviceReason] ([DeliveryAdviceReasonID])
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice] CHECK CONSTRAINT [FK_Q_DeliveryAdvice_Q_DictionaryDeliveryAdvice]
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice]  WITH CHECK ADD  CONSTRAINT [FK_Q_DeliveryAdvice_X_Company] FOREIGN KEY([ShippingCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice] CHECK CONSTRAINT [FK_Q_DeliveryAdvice_X_Company]
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice]  WITH CHECK ADD  CONSTRAINT [FK_Q_DeliveryAdvice_X_CompanyAddress] FOREIGN KEY([SourceCompanyAddressID])
REFERENCES [dbo].[X_CompanyAddress] ([CompanyAddressID])
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice] CHECK CONSTRAINT [FK_Q_DeliveryAdvice_X_CompanyAddress]
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice]  WITH CHECK ADD  CONSTRAINT [FK_Q_DeliveryAdvice_X_CompanyAddress1] FOREIGN KEY([DestinationCompanyAddressID])
REFERENCES [dbo].[X_CompanyAddress] ([CompanyAddressID])
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice] CHECK CONSTRAINT [FK_Q_DeliveryAdvice_X_CompanyAddress1]
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice]  WITH CHECK ADD  CONSTRAINT [FK_Q_DeliveryAdvice_X_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice] CHECK CONSTRAINT [FK_Q_DeliveryAdvice_X_Project]
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice]  WITH CHECK ADD  CONSTRAINT [FK_Q_DeliveryAdvice_X_ProjectDeliverable] FOREIGN KEY([ProjectDeliverableID])
REFERENCES [dbo].[X_ProjectDeliverable] ([ProjectDeliverableID])
GO
ALTER TABLE [dbo].[Q_DeliveryAdvice] CHECK CONSTRAINT [FK_Q_DeliveryAdvice_X_ProjectDeliverable]
GO
ALTER TABLE [dbo].[Q_DeliveryAdviceItem]  WITH CHECK ADD  CONSTRAINT [FK_Q_DeliveryAdviceItem_Q_DictionaryDecontaminationStatus] FOREIGN KEY([DecontaminationStatusID])
REFERENCES [dbo].[Q_DictionaryDecontaminationStatus] ([DecontaminationStatusID])
GO
ALTER TABLE [dbo].[Q_DeliveryAdviceItem] CHECK CONSTRAINT [FK_Q_DeliveryAdviceItem_Q_DictionaryDecontaminationStatus]
GO
ALTER TABLE [dbo].[Q_DeliveryAdviceItem]  WITH CHECK ADD  CONSTRAINT [FK_Q_DeliveryAdviceItems_Q_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Q_Asset] ([AssetID])
GO
ALTER TABLE [dbo].[Q_DeliveryAdviceItem] CHECK CONSTRAINT [FK_Q_DeliveryAdviceItems_Q_Asset]
GO
ALTER TABLE [dbo].[Q_DeliveryAdviceItem]  WITH CHECK ADD  CONSTRAINT [FK_Q_DeliveryAdviceItems_Q_DeliveryAdvice] FOREIGN KEY([DeliveryAdviceID])
REFERENCES [dbo].[Q_DeliveryAdvice] ([DeliveryAdviceID])
GO
ALTER TABLE [dbo].[Q_DeliveryAdviceItem] CHECK CONSTRAINT [FK_Q_DeliveryAdviceItems_Q_DeliveryAdvice]
GO
ALTER TABLE [dbo].[Q_DeliveryAdviceItem]  WITH CHECK ADD  CONSTRAINT [FK_Q_DeliveryAdviceItems_Q_DictionaryPart] FOREIGN KEY([PartID])
REFERENCES [dbo].[Q_DictionaryPart] ([PartID])
GO
ALTER TABLE [dbo].[Q_DeliveryAdviceItem] CHECK CONSTRAINT [FK_Q_DeliveryAdviceItems_Q_DictionaryPart]
GO
ALTER TABLE [dbo].[Q_DictionaryDeviceType]  WITH CHECK ADD  CONSTRAINT [FK_Q_DictionaryDeviceType_Q_DictionaryDeviceType1] FOREIGN KEY([ParentDeviceTypeID])
REFERENCES [dbo].[Q_DictionaryDeviceType] ([DeviceTypeID])
GO
ALTER TABLE [dbo].[Q_DictionaryDeviceType] CHECK CONSTRAINT [FK_Q_DictionaryDeviceType_Q_DictionaryDeviceType1]
GO
ALTER TABLE [dbo].[Q_DictionaryDeviceType]  WITH CHECK ADD  CONSTRAINT [FK_Q_DictionaryDeviceType_X_Experience] FOREIGN KEY([PrimaryWorkTypeID])
REFERENCES [dbo].[X_Experience] ([ExperienceID])
GO
ALTER TABLE [dbo].[Q_DictionaryDeviceType] CHECK CONSTRAINT [FK_Q_DictionaryDeviceType_X_Experience]
GO
ALTER TABLE [dbo].[Q_DictionaryPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_DictionaryPart_Q_DictionaryDeviceType] FOREIGN KEY([DeviceTypeID])
REFERENCES [dbo].[Q_DictionaryDeviceType] ([DeviceTypeID])
GO
ALTER TABLE [dbo].[Q_DictionaryPart] CHECK CONSTRAINT [FK_Q_DictionaryPart_Q_DictionaryDeviceType]
GO
ALTER TABLE [dbo].[Q_DictionaryPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_DictionaryPart_Q_DictionaryPart] FOREIGN KEY([ParentPartID])
REFERENCES [dbo].[Q_DictionaryPart] ([PartID])
GO
ALTER TABLE [dbo].[Q_DictionaryPart] CHECK CONSTRAINT [FK_Q_DictionaryPart_Q_DictionaryPart]
GO
ALTER TABLE [dbo].[Q_DictionaryPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_DictionaryPart_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[Q_DictionaryPart] CHECK CONSTRAINT [FK_Q_DictionaryPart_X_Company]
GO
ALTER TABLE [dbo].[Q_DictionaryPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_DictionaryPart_X_DictionaryPartStatus] FOREIGN KEY([PartStatusID])
REFERENCES [dbo].[X_DictionaryPartStatus] ([PartStatusID])
GO
ALTER TABLE [dbo].[Q_DictionaryPart] CHECK CONSTRAINT [FK_Q_DictionaryPart_X_DictionaryPartStatus]
GO
ALTER TABLE [dbo].[Q_DictionaryPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_DictionaryPart_X_DictionaryUnit] FOREIGN KEY([EstimatedLifetimeUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[Q_DictionaryPart] CHECK CONSTRAINT [FK_Q_DictionaryPart_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[Q_DictionaryPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_DictionaryPart_X_FileData] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[Q_DictionaryPart] CHECK CONSTRAINT [FK_Q_DictionaryPart_X_FileData]
GO
ALTER TABLE [dbo].[Q_DictionaryPartCategory]  WITH CHECK ADD  CONSTRAINT [FK_Q_DictionaryPartCategory_Q_DictionaryDeviceType] FOREIGN KEY([CategoryDeviceTypeID])
REFERENCES [dbo].[Q_DictionaryDeviceType] ([DeviceTypeID])
GO
ALTER TABLE [dbo].[Q_DictionaryPartCategory] CHECK CONSTRAINT [FK_Q_DictionaryPartCategory_Q_DictionaryDeviceType]
GO
ALTER TABLE [dbo].[Q_DictionaryPartCategory]  WITH CHECK ADD  CONSTRAINT [FK_Q_DictionaryPartCategory_Q_DictionaryPart] FOREIGN KEY([PartID])
REFERENCES [dbo].[Q_DictionaryPart] ([PartID])
GO
ALTER TABLE [dbo].[Q_DictionaryPartCategory] CHECK CONSTRAINT [FK_Q_DictionaryPartCategory_Q_DictionaryPart]
GO
ALTER TABLE [dbo].[Q_DictionaryPartKitItem]  WITH CHECK ADD  CONSTRAINT [FK_Q_DictionaryPartKitItem_X_DictionaryUnit] FOREIGN KEY([UnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[Q_DictionaryPartKitItem] CHECK CONSTRAINT [FK_Q_DictionaryPartKitItem_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[Q_DictionaryPartKitItem]  WITH CHECK ADD  CONSTRAINT [FK_Q_PartKitItems_Q_DictionaryPart] FOREIGN KEY([PartID])
REFERENCES [dbo].[Q_DictionaryPart] ([PartID])
GO
ALTER TABLE [dbo].[Q_DictionaryPartKitItem] CHECK CONSTRAINT [FK_Q_PartKitItems_Q_DictionaryPart]
GO
ALTER TABLE [dbo].[Q_DictionaryPartKitItem]  WITH CHECK ADD  CONSTRAINT [FK_Q_PartKitItems_Q_DictionaryPartKit] FOREIGN KEY([PartKitID])
REFERENCES [dbo].[Q_DictionaryPartKit] ([PartKitID])
GO
ALTER TABLE [dbo].[Q_DictionaryPartKitItem] CHECK CONSTRAINT [FK_Q_PartKitItems_Q_DictionaryPartKit]
GO
ALTER TABLE [dbo].[Q_ModelPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelPart_Q_DictionaryPart] FOREIGN KEY([PartID])
REFERENCES [dbo].[Q_DictionaryPart] ([PartID])
GO
ALTER TABLE [dbo].[Q_ModelPart] CHECK CONSTRAINT [FK_Q_ModelPart_Q_DictionaryPart]
GO
ALTER TABLE [dbo].[Q_ModelPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelPart_X_DictionaryModel] FOREIGN KEY([ModelID])
REFERENCES [dbo].[X_DictionaryModel] ([ModelID])
GO
ALTER TABLE [dbo].[Q_ModelPart] CHECK CONSTRAINT [FK_Q_ModelPart_X_DictionaryModel]
GO
ALTER TABLE [dbo].[Q_ModelPartKit]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelPartKit_Q_DictionaryPartKit] FOREIGN KEY([PartKitID])
REFERENCES [dbo].[Q_DictionaryPartKit] ([PartKitID])
GO
ALTER TABLE [dbo].[Q_ModelPartKit] CHECK CONSTRAINT [FK_Q_ModelPartKit_Q_DictionaryPartKit]
GO
ALTER TABLE [dbo].[Q_ModelProcedure]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelProcedure_Q_DictionaryProcedure] FOREIGN KEY([ProcedureID])
REFERENCES [dbo].[Q_DictionaryProcedure] ([ProcedureID])
GO
ALTER TABLE [dbo].[Q_ModelProcedure] CHECK CONSTRAINT [FK_Q_ModelProcedure_Q_DictionaryProcedure]
GO
ALTER TABLE [dbo].[Q_ModelProcedure]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelProcedure_Q_ModelProcedure] FOREIGN KEY([ModelProcedureID])
REFERENCES [dbo].[Q_ModelProcedure] ([ModelProcedureID])
GO
ALTER TABLE [dbo].[Q_ModelProcedure] CHECK CONSTRAINT [FK_Q_ModelProcedure_Q_ModelProcedure]
GO
ALTER TABLE [dbo].[Q_ModelProcedure]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelProcedure_X_DictionaryModel] FOREIGN KEY([ModelID])
REFERENCES [dbo].[X_DictionaryModel] ([ModelID])
GO
ALTER TABLE [dbo].[Q_ModelProcedure] CHECK CONSTRAINT [FK_Q_ModelProcedure_X_DictionaryModel]
GO
ALTER TABLE [dbo].[Q_ModelProcedureTask]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelProcedureTask_Q_ModelProcedure] FOREIGN KEY([ModelProcedureID])
REFERENCES [dbo].[Q_ModelProcedure] ([ModelProcedureID])
GO
ALTER TABLE [dbo].[Q_ModelProcedureTask] CHECK CONSTRAINT [FK_Q_ModelProcedureTask_Q_ModelProcedure]
GO
ALTER TABLE [dbo].[Q_ModelProcedureTask]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelProcedureTask_Q_ModelProcedureTask] FOREIGN KEY([ModelProcedureTaskID])
REFERENCES [dbo].[Q_ModelProcedureTask] ([ModelProcedureTaskID])
GO
ALTER TABLE [dbo].[Q_ModelProcedureTask] CHECK CONSTRAINT [FK_Q_ModelProcedureTask_Q_ModelProcedureTask]
GO
ALTER TABLE [dbo].[Q_ModelProcedureTask]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelProcedureTask_X_DictionaryUnit] FOREIGN KEY([EstimatedDurationUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[Q_ModelProcedureTask] CHECK CONSTRAINT [FK_Q_ModelProcedureTask_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[Q_ModelProcedureTask]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelProcedureTask_X_FileData] FOREIGN KEY([FileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[Q_ModelProcedureTask] CHECK CONSTRAINT [FK_Q_ModelProcedureTask_X_FileData]
GO
ALTER TABLE [dbo].[Q_ModelProcedureTask]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelProcedureTask_X_Task] FOREIGN KEY([TaskID])
REFERENCES [dbo].[X_Task] ([TaskID])
GO
ALTER TABLE [dbo].[Q_ModelProcedureTask] CHECK CONSTRAINT [FK_Q_ModelProcedureTask_X_Task]
GO
ALTER TABLE [dbo].[Q_ModelProcedureTaskPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelProcedureTaskPart_Q_DictionaryPart] FOREIGN KEY([PartID])
REFERENCES [dbo].[Q_DictionaryPart] ([PartID])
GO
ALTER TABLE [dbo].[Q_ModelProcedureTaskPart] CHECK CONSTRAINT [FK_Q_ModelProcedureTaskPart_Q_DictionaryPart]
GO
ALTER TABLE [dbo].[Q_ModelProcedureTaskPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelProcedureTaskPart_Q_ModelProcedureTask] FOREIGN KEY([ModelProcedureTaskID])
REFERENCES [dbo].[Q_ModelProcedureTask] ([ModelProcedureTaskID])
GO
ALTER TABLE [dbo].[Q_ModelProcedureTaskPart] CHECK CONSTRAINT [FK_Q_ModelProcedureTaskPart_Q_ModelProcedureTask]
GO
ALTER TABLE [dbo].[Q_ModelScheduleCycle]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelScheduleCycle_Q_ModelProcedure] FOREIGN KEY([ModelProcedureID])
REFERENCES [dbo].[Q_ModelProcedure] ([ModelProcedureID])
GO
ALTER TABLE [dbo].[Q_ModelScheduleCycle] CHECK CONSTRAINT [FK_Q_ModelScheduleCycle_Q_ModelProcedure]
GO
ALTER TABLE [dbo].[Q_ModelScheduleCycle]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelScheduleCycle_X_DictionaryModel] FOREIGN KEY([ModelID])
REFERENCES [dbo].[X_DictionaryModel] ([ModelID])
GO
ALTER TABLE [dbo].[Q_ModelScheduleCycle] CHECK CONSTRAINT [FK_Q_ModelScheduleCycle_X_DictionaryModel]
GO
ALTER TABLE [dbo].[Q_ModelScheduleCycle]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelScheduleCycle_X_DictionaryUnit] FOREIGN KEY([ScheduleFrequencyUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[Q_ModelScheduleCycle] CHECK CONSTRAINT [FK_Q_ModelScheduleCycle_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[Q_ModelWarranty]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelWarranty_Q_DictionaryWarrantyType] FOREIGN KEY([WarrantyTypeID])
REFERENCES [dbo].[Q_DictionaryWarrantyType] ([WarrantyTypeID])
GO
ALTER TABLE [dbo].[Q_ModelWarranty] CHECK CONSTRAINT [FK_Q_ModelWarranty_Q_DictionaryWarrantyType]
GO
ALTER TABLE [dbo].[Q_ModelWarranty]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelWarranty_X_Contract] FOREIGN KEY([SupplierContractID])
REFERENCES [dbo].[X_Contract] ([ContractID])
GO
ALTER TABLE [dbo].[Q_ModelWarranty] CHECK CONSTRAINT [FK_Q_ModelWarranty_X_Contract]
GO
ALTER TABLE [dbo].[Q_ModelWarranty]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelWarranty_X_DictionaryModel] FOREIGN KEY([ModelID])
REFERENCES [dbo].[X_DictionaryModel] ([ModelID])
GO
ALTER TABLE [dbo].[Q_ModelWarranty] CHECK CONSTRAINT [FK_Q_ModelWarranty_X_DictionaryModel]
GO
ALTER TABLE [dbo].[Q_ModelWarranty]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelWarranty_X_DictionaryUnit] FOREIGN KEY([WarrantyPeriodUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[Q_ModelWarranty] CHECK CONSTRAINT [FK_Q_ModelWarranty_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskModel]  WITH CHECK ADD  CONSTRAINT [FK_Q_ProjectPlanTaskModel_Q_DictionaryModel] FOREIGN KEY([ModelID])
REFERENCES [dbo].[X_DictionaryModel] ([ModelID])
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskModel] CHECK CONSTRAINT [FK_Q_ProjectPlanTaskModel_Q_DictionaryModel]
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskModel]  WITH CHECK ADD  CONSTRAINT [FK_Q_ProjectPlanTaskModel_Q_SupplierModel] FOREIGN KEY([SupplierModelID])
REFERENCES [dbo].[Q_SupplierModel] ([SupplierModelID])
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskModel] CHECK CONSTRAINT [FK_Q_ProjectPlanTaskModel_Q_SupplierModel]
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskModel]  WITH CHECK ADD  CONSTRAINT [FK_Q_ProjectPlanTaskModel_Q_WarehouseModel] FOREIGN KEY([WarehouseModelID])
REFERENCES [dbo].[Q_WarehouseModel] ([WarehouseModelID])
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskModel] CHECK CONSTRAINT [FK_Q_ProjectPlanTaskModel_Q_WarehouseModel]
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskModel]  WITH CHECK ADD  CONSTRAINT [FK_Q_ProjectPlanTaskModel_X_DictionaryUnit] FOREIGN KEY([QuantityUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskModel] CHECK CONSTRAINT [FK_Q_ProjectPlanTaskModel_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskModel]  WITH CHECK ADD  CONSTRAINT [FK_Q_ProjectPlanTaskModel_X_ProjectPlanTask] FOREIGN KEY([ProjectPlanTaskID])
REFERENCES [dbo].[X_ProjectPlanTask] ([ProjectPlanTaskID])
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskModel] CHECK CONSTRAINT [FK_Q_ProjectPlanTaskModel_X_ProjectPlanTask]
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_ProjectPlanTaskPart_Q_DictionaryPart] FOREIGN KEY([PartID])
REFERENCES [dbo].[Q_DictionaryPart] ([PartID])
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskPart] CHECK CONSTRAINT [FK_Q_ProjectPlanTaskPart_Q_DictionaryPart]
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_ProjectPlanTaskPart_Q_SupplierPart] FOREIGN KEY([SupplierPartID])
REFERENCES [dbo].[Q_SupplierPart] ([SupplierPartID])
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskPart] CHECK CONSTRAINT [FK_Q_ProjectPlanTaskPart_Q_SupplierPart]
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_ProjectPlanTaskPart_Q_WarehousePart] FOREIGN KEY([WarehousePartID])
REFERENCES [dbo].[Q_WarehousePart] ([WarehousePartID])
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskPart] CHECK CONSTRAINT [FK_Q_ProjectPlanTaskPart_Q_WarehousePart]
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_ProjectPlanTaskPart_X_DictionaryUnit] FOREIGN KEY([QuantityUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskPart] CHECK CONSTRAINT [FK_Q_ProjectPlanTaskPart_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_ProjectPlanTaskPart_X_ProjectPlanTask] FOREIGN KEY([ProjectPlanTaskID])
REFERENCES [dbo].[X_ProjectPlanTask] ([ProjectPlanTaskID])
GO
ALTER TABLE [dbo].[Q_ProjectPlanTaskPart] CHECK CONSTRAINT [FK_Q_ProjectPlanTaskPart_X_ProjectPlanTask]
GO
ALTER TABLE [dbo].[Q_Recall]  WITH CHECK ADD  CONSTRAINT [FK_Q_Recall_X_Contact] FOREIGN KEY([IssuedBy])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Q_Recall] CHECK CONSTRAINT [FK_Q_Recall_X_Contact]
GO
ALTER TABLE [dbo].[Q_Recall]  WITH CHECK ADD  CONSTRAINT [FK_Q_Recall_X_Contact1] FOREIGN KEY([ReceivedBy])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Q_Recall] CHECK CONSTRAINT [FK_Q_Recall_X_Contact1]
GO
ALTER TABLE [dbo].[Q_Recall]  WITH CHECK ADD  CONSTRAINT [FK_Q_Recall_X_Contact2] FOREIGN KEY([ActionedBy])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Q_Recall] CHECK CONSTRAINT [FK_Q_Recall_X_Contact2]
GO
ALTER TABLE [dbo].[Q_Recall]  WITH CHECK ADD  CONSTRAINT [FK_Q_Recall_X_Contact3] FOREIGN KEY([ResponsibleContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Q_Recall] CHECK CONSTRAINT [FK_Q_Recall_X_Contact3]
GO
ALTER TABLE [dbo].[Q_Recall]  WITH CHECK ADD  CONSTRAINT [FK_Q_Recall_X_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[Q_Recall] CHECK CONSTRAINT [FK_Q_Recall_X_Project]
GO
ALTER TABLE [dbo].[Q_RecallModel]  WITH CHECK ADD  CONSTRAINT [FK_Q_RecallModel_Q_Recall] FOREIGN KEY([RecallID])
REFERENCES [dbo].[Q_Recall] ([RecallID])
GO
ALTER TABLE [dbo].[Q_RecallModel] CHECK CONSTRAINT [FK_Q_RecallModel_Q_Recall]
GO
ALTER TABLE [dbo].[Q_RecallModel]  WITH CHECK ADD  CONSTRAINT [FK_Q_RecallModel_X_DictionaryModel] FOREIGN KEY([ModelID])
REFERENCES [dbo].[X_DictionaryModel] ([ModelID])
GO
ALTER TABLE [dbo].[Q_RecallModel] CHECK CONSTRAINT [FK_Q_RecallModel_X_DictionaryModel]
GO
ALTER TABLE [dbo].[Q_RecallModel]  WITH CHECK ADD  CONSTRAINT [FK_Q_RecallsModel_Q_Recalls] FOREIGN KEY([RecallModelID])
REFERENCES [dbo].[Q_Recall] ([RecallID])
GO
ALTER TABLE [dbo].[Q_RecallModel] CHECK CONSTRAINT [FK_Q_RecallsModel_Q_Recalls]
GO
ALTER TABLE [dbo].[Q_RecallModelAsset]  WITH CHECK ADD  CONSTRAINT [FK_Q_RecallModelAssets_Q_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Q_Asset] ([AssetID])
GO
ALTER TABLE [dbo].[Q_RecallModelAsset] CHECK CONSTRAINT [FK_Q_RecallModelAssets_Q_Asset]
GO
ALTER TABLE [dbo].[Q_RecallModelAsset]  WITH CHECK ADD  CONSTRAINT [FK_Q_RecallModelAssets_Q_RecallModel] FOREIGN KEY([RecallModelID])
REFERENCES [dbo].[Q_RecallModel] ([RecallModelID])
GO
ALTER TABLE [dbo].[Q_RecallModelAsset] CHECK CONSTRAINT [FK_Q_RecallModelAssets_Q_RecallModel]
GO
ALTER TABLE [dbo].[Q_RecallModelAsset]  WITH CHECK ADD  CONSTRAINT [FK_Q_RecallModelAssets_X_ProjectPlan] FOREIGN KEY([ProjectPlanID])
REFERENCES [dbo].[X_ProjectPlan] ([ProjectPlanID])
GO
ALTER TABLE [dbo].[Q_RecallModelAsset] CHECK CONSTRAINT [FK_Q_RecallModelAssets_X_ProjectPlan]
GO
ALTER TABLE [dbo].[Q_SupplierModel]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelSupplier_X_Company] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[Q_SupplierModel] CHECK CONSTRAINT [FK_Q_ModelSupplier_X_Company]
GO
ALTER TABLE [dbo].[Q_SupplierModel]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelSupplier_X_DictionaryUnit] FOREIGN KEY([PriceUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[Q_SupplierModel] CHECK CONSTRAINT [FK_Q_ModelSupplier_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[Q_SupplierModel]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelSupplier_X_DictionaryUnit1] FOREIGN KEY([LeadTimeUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[Q_SupplierModel] CHECK CONSTRAINT [FK_Q_ModelSupplier_X_DictionaryUnit1]
GO
ALTER TABLE [dbo].[Q_SupplierModel]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelSupplier_X_FileData] FOREIGN KEY([SupplierFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[Q_SupplierModel] CHECK CONSTRAINT [FK_Q_ModelSupplier_X_FileData]
GO
ALTER TABLE [dbo].[Q_SupplierModel]  WITH CHECK ADD  CONSTRAINT [FK_Q_SupplierModel_X_Contract] FOREIGN KEY([SupplierContractID])
REFERENCES [dbo].[X_Contract] ([ContractID])
GO
ALTER TABLE [dbo].[Q_SupplierModel] CHECK CONSTRAINT [FK_Q_SupplierModel_X_Contract]
GO
ALTER TABLE [dbo].[Q_SupplierModel]  WITH CHECK ADD  CONSTRAINT [FK_Q_SupplierModel_X_DictionaryModel] FOREIGN KEY([ModelID])
REFERENCES [dbo].[X_DictionaryModel] ([ModelID])
GO
ALTER TABLE [dbo].[Q_SupplierModel] CHECK CONSTRAINT [FK_Q_SupplierModel_X_DictionaryModel]
GO
ALTER TABLE [dbo].[Q_SupplierPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_PartSupplier_Q_DictionaryPart] FOREIGN KEY([PartID])
REFERENCES [dbo].[Q_DictionaryPart] ([PartID])
GO
ALTER TABLE [dbo].[Q_SupplierPart] CHECK CONSTRAINT [FK_Q_PartSupplier_Q_DictionaryPart]
GO
ALTER TABLE [dbo].[Q_SupplierPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_PartSupplier_X_Company] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[Q_SupplierPart] CHECK CONSTRAINT [FK_Q_PartSupplier_X_Company]
GO
ALTER TABLE [dbo].[Q_SupplierPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_PartSupplier_X_DictionaryUnit] FOREIGN KEY([PriceUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[Q_SupplierPart] CHECK CONSTRAINT [FK_Q_PartSupplier_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[Q_SupplierPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_PartSupplier_X_DictionaryUnit1] FOREIGN KEY([LeadTimeUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[Q_SupplierPart] CHECK CONSTRAINT [FK_Q_PartSupplier_X_DictionaryUnit1]
GO
ALTER TABLE [dbo].[Q_SupplierPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_PartSupplier_X_FileData] FOREIGN KEY([SupplierFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[Q_SupplierPart] CHECK CONSTRAINT [FK_Q_PartSupplier_X_FileData]
GO
ALTER TABLE [dbo].[Q_SupplierPart]  WITH CHECK ADD  CONSTRAINT [FK_Q_SupplierPart_X_Contract] FOREIGN KEY([SupplierContractID])
REFERENCES [dbo].[X_Contract] ([ContractID])
GO
ALTER TABLE [dbo].[Q_SupplierPart] CHECK CONSTRAINT [FK_Q_SupplierPart_X_Contract]
GO
ALTER TABLE [dbo].[Q_Warehouse]  WITH CHECK ADD  CONSTRAINT [FK_Q_PartWarehouse_Q_] FOREIGN KEY([WarehouseID])
REFERENCES [dbo].[Q_Warehouse] ([WarehouseID])
GO
ALTER TABLE [dbo].[Q_Warehouse] CHECK CONSTRAINT [FK_Q_PartWarehouse_Q_]
GO
ALTER TABLE [dbo].[Q_Warehouse]  WITH CHECK ADD  CONSTRAINT [FK_Q_Warehouse_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[Q_Warehouse] CHECK CONSTRAINT [FK_Q_Warehouse_X_Company]
GO
ALTER TABLE [dbo].[Q_Warehouse]  WITH CHECK ADD  CONSTRAINT [FK_Q_Warehouse_X_Location] FOREIGN KEY([PrimaryLocationID])
REFERENCES [dbo].[X_Location] ([LocationID])
GO
ALTER TABLE [dbo].[Q_Warehouse] CHECK CONSTRAINT [FK_Q_Warehouse_X_Location]
GO
ALTER TABLE [dbo].[Q_WarehouseModel]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelWarehouseStockControl_Q_DictionaryModel] FOREIGN KEY([ModelID])
REFERENCES [dbo].[X_DictionaryModel] ([ModelID])
GO
ALTER TABLE [dbo].[Q_WarehouseModel] CHECK CONSTRAINT [FK_Q_ModelWarehouseStockControl_Q_DictionaryModel]
GO
ALTER TABLE [dbo].[Q_WarehouseModel]  WITH CHECK ADD  CONSTRAINT [FK_Q_ModelWarehouseStockControl_Q_ModelWarehouse] FOREIGN KEY([WarehouseID])
REFERENCES [dbo].[Q_Warehouse] ([WarehouseID])
GO
ALTER TABLE [dbo].[Q_WarehouseModel] CHECK CONSTRAINT [FK_Q_ModelWarehouseStockControl_Q_ModelWarehouse]
GO
ALTER TABLE [dbo].[Q_WarehouseModelSupplier]  WITH CHECK ADD  CONSTRAINT [FK_Q_WarehouseModelSupplier_Q_SupplierModel] FOREIGN KEY([SupplierModelID])
REFERENCES [dbo].[Q_SupplierModel] ([SupplierModelID])
GO
ALTER TABLE [dbo].[Q_WarehouseModelSupplier] CHECK CONSTRAINT [FK_Q_WarehouseModelSupplier_Q_SupplierModel]
GO
ALTER TABLE [dbo].[Q_WarehouseModelSupplier]  WITH CHECK ADD  CONSTRAINT [FK_Q_WarehouseModelSupplier_Q_WarehouseModel] FOREIGN KEY([WarehouseModelID])
REFERENCES [dbo].[Q_WarehouseModel] ([WarehouseModelID])
GO
ALTER TABLE [dbo].[Q_WarehouseModelSupplier] CHECK CONSTRAINT [FK_Q_WarehouseModelSupplier_Q_WarehouseModel]
GO
ALTER TABLE [dbo].[Q_WarehouseModelSupplier]  WITH CHECK ADD  CONSTRAINT [FK_Q_WarehouseModelSupplier_X_DictionaryUnit] FOREIGN KEY([QuantityUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[Q_WarehouseModelSupplier] CHECK CONSTRAINT [FK_Q_WarehouseModelSupplier_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[Q_WarehousePart]  WITH CHECK ADD  CONSTRAINT [FK_Q_PartWarehouseStockControl_Q_DictionaryPart] FOREIGN KEY([PartID])
REFERENCES [dbo].[Q_DictionaryPart] ([PartID])
GO
ALTER TABLE [dbo].[Q_WarehousePart] CHECK CONSTRAINT [FK_Q_PartWarehouseStockControl_Q_DictionaryPart]
GO
ALTER TABLE [dbo].[Q_WarehousePart]  WITH CHECK ADD  CONSTRAINT [FK_Q_PartWarehouseStockControl_Q_PartWarehouse] FOREIGN KEY([WarehouseID])
REFERENCES [dbo].[Q_Warehouse] ([WarehouseID])
GO
ALTER TABLE [dbo].[Q_WarehousePart] CHECK CONSTRAINT [FK_Q_PartWarehouseStockControl_Q_PartWarehouse]
GO
ALTER TABLE [dbo].[Q_WarehousePartSupplier]  WITH CHECK ADD  CONSTRAINT [FK_Q_WarehousePartSupplier_Q_SupplierPart] FOREIGN KEY([SupplierPartID])
REFERENCES [dbo].[Q_SupplierPart] ([SupplierPartID])
GO
ALTER TABLE [dbo].[Q_WarehousePartSupplier] CHECK CONSTRAINT [FK_Q_WarehousePartSupplier_Q_SupplierPart]
GO
ALTER TABLE [dbo].[Q_WarehousePartSupplier]  WITH CHECK ADD  CONSTRAINT [FK_Q_WarehousePartSupplier_Q_WarehousePart] FOREIGN KEY([WarehousePartID])
REFERENCES [dbo].[Q_WarehousePart] ([WarehousePartID])
GO
ALTER TABLE [dbo].[Q_WarehousePartSupplier] CHECK CONSTRAINT [FK_Q_WarehousePartSupplier_Q_WarehousePart]
GO
ALTER TABLE [dbo].[Q_WarehousePartSupplier]  WITH CHECK ADD  CONSTRAINT [FK_Q_WarehousePartSupplier_X_DictionaryUnit] FOREIGN KEY([QuantityUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[Q_WarehousePartSupplier] CHECK CONSTRAINT [FK_Q_WarehousePartSupplier_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[Q_WorkflowSchedule]  WITH CHECK ADD  CONSTRAINT [FK_Q_WorkflowSchedule_Q_DictionaryEventType] FOREIGN KEY([EventTypeID])
REFERENCES [dbo].[Q_DictionaryEventType] ([EventTypeID])
GO
ALTER TABLE [dbo].[Q_WorkflowSchedule] CHECK CONSTRAINT [FK_Q_WorkflowSchedule_Q_DictionaryEventType]
GO
ALTER TABLE [dbo].[Q_WorkflowSchedule]  WITH CHECK ADD  CONSTRAINT [FK_Q_WorkflowSchedule_X_Experience] FOREIGN KEY([WorkerID])
REFERENCES [dbo].[X_Experience] ([ExperienceID])
GO
ALTER TABLE [dbo].[Q_WorkflowSchedule] CHECK CONSTRAINT [FK_Q_WorkflowSchedule_X_Experience]
GO
ALTER TABLE [dbo].[X_Address]  WITH CHECK ADD  CONSTRAINT [FK_X_Address_X_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[X_Location] ([LocationID])
GO
ALTER TABLE [dbo].[X_Address] CHECK CONSTRAINT [FK_X_Address_X_Location]
GO
ALTER TABLE [dbo].[X_AssayGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroup_X_Company] FOREIGN KEY([LabCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_AssayGroup] CHECK CONSTRAINT [FK_X_AssayGroup_X_Company]
GO
ALTER TABLE [dbo].[X_AssayGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroup_X_Person] FOREIGN KEY([SubmittedContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_AssayGroup] CHECK CONSTRAINT [FK_X_AssayGroup_X_Person]
GO
ALTER TABLE [dbo].[X_AssayGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroup_X_Person1] FOREIGN KEY([ReceivedContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_AssayGroup] CHECK CONSTRAINT [FK_X_AssayGroup_X_Person1]
GO
ALTER TABLE [dbo].[X_AssayGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroup_X_Person2] FOREIGN KEY([EnteredContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_AssayGroup] CHECK CONSTRAINT [FK_X_AssayGroup_X_Person2]
GO
ALTER TABLE [dbo].[X_AssayGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroup_X_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[X_AssayGroup] CHECK CONSTRAINT [FK_X_AssayGroup_X_Project]
GO
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_AssayGroupTest] FOREIGN KEY([AssayGroupTestID])
REFERENCES [dbo].[X_AssayGroupTest] ([AssayGroupTestID])
GO
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] CHECK CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_AssayGroupTest]
GO
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_AssayGroupTestSample] FOREIGN KEY([AssayGroupTestSampleID])
REFERENCES [dbo].[X_Sample] ([SampleID])
GO
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] CHECK CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_AssayGroupTestSample]
GO
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_DictionaryAssayStandard] FOREIGN KEY([AssayStandardID])
REFERENCES [dbo].[X_DictionaryAssayStandard] ([AssayStandardID])
GO
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] CHECK CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_DictionaryAssayStandard]
GO
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_DictionarySample_Category] FOREIGN KEY([SampleCategoryID])
REFERENCES [dbo].[X_DictionarySampleCategory] ([SampleCategoryID])
GO
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] CHECK CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_DictionarySample_Category]
GO
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_DictionarySampleState] FOREIGN KEY([SampleStateID])
REFERENCES [dbo].[X_DictionarySampleState] ([SampleStateID])
GO
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] CHECK CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_DictionarySampleState]
GO
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_DictionarySampleType] FOREIGN KEY([SampleTypeID])
REFERENCES [dbo].[X_DictionarySampleType] ([SampleTypeID])
GO
ALTER TABLE [dbo].[X_AssayGroupStandardTestResult] CHECK CONSTRAINT [FK_X_AssayGroupStandardTestResult_X_DictionarySampleType]
GO
ALTER TABLE [dbo].[X_AssayGroupTest]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTest_X_AssayGroup] FOREIGN KEY([AssayGroupID])
REFERENCES [dbo].[X_AssayGroup] ([AssayGroupID])
GO
ALTER TABLE [dbo].[X_AssayGroupTest] CHECK CONSTRAINT [FK_X_AssayGroupTest_X_AssayGroup]
GO
ALTER TABLE [dbo].[X_AssayGroupTest]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTest_X_DictionaryAssayMethod] FOREIGN KEY([AssayMethodID])
REFERENCES [dbo].[X_DictionaryAssayMethod] ([AssayMethodID])
GO
ALTER TABLE [dbo].[X_AssayGroupTest] CHECK CONSTRAINT [FK_X_AssayGroupTest_X_DictionaryAssayMethod]
GO
ALTER TABLE [dbo].[X_AssayGroupTest]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTest_X_DictionaryAssayType] FOREIGN KEY([AssayTypeID])
REFERENCES [dbo].[X_DictionaryAssayType] ([AssayTypeID])
GO
ALTER TABLE [dbo].[X_AssayGroupTest] CHECK CONSTRAINT [FK_X_AssayGroupTest_X_DictionaryAssayType]
GO
ALTER TABLE [dbo].[X_AssayGroupTest]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTest_X_Parameter] FOREIGN KEY([ParameterID])
REFERENCES [dbo].[X_Parameter] ([ParameterID])
GO
ALTER TABLE [dbo].[X_AssayGroupTest] CHECK CONSTRAINT [FK_X_AssayGroupTest_X_Parameter]
GO
ALTER TABLE [dbo].[X_AssayGroupTestResult]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTestResult_X_AssayGroupTest] FOREIGN KEY([AssayGroupTestID])
REFERENCES [dbo].[X_AssayGroupTest] ([AssayGroupTestID])
GO
ALTER TABLE [dbo].[X_AssayGroupTestResult] CHECK CONSTRAINT [FK_X_AssayGroupTestResult_X_AssayGroupTest]
GO
ALTER TABLE [dbo].[X_AssayGroupTestResult]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTestResult_X_AssayGroupTestSample] FOREIGN KEY([SampleID])
REFERENCES [dbo].[X_Sample] ([SampleID])
GO
ALTER TABLE [dbo].[X_AssayGroupTestResult] CHECK CONSTRAINT [FK_X_AssayGroupTestResult_X_AssayGroupTestSample]
GO
ALTER TABLE [dbo].[X_AssayGroupTestResultComment]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTestResultComment_X_AssayGroupTestResult] FOREIGN KEY([AssayGroupTestResultID])
REFERENCES [dbo].[X_AssayGroupTestResult] ([AssayGroupTestResultID])
GO
ALTER TABLE [dbo].[X_AssayGroupTestResultComment] CHECK CONSTRAINT [FK_X_AssayGroupTestResultComment_X_AssayGroupTestResult]
GO
ALTER TABLE [dbo].[X_AssayGroupTestResultDuplicate]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTestResultDuplicate_X_AssayGroupTestResult] FOREIGN KEY([AssayGroupTestResultID])
REFERENCES [dbo].[X_AssayGroupTestResult] ([AssayGroupTestResultID])
GO
ALTER TABLE [dbo].[X_AssayGroupTestResultDuplicate] CHECK CONSTRAINT [FK_X_AssayGroupTestResultDuplicate_X_AssayGroupTestResult]
GO
ALTER TABLE [dbo].[X_BlockModel]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModel_X_Contact] FOREIGN KEY([AuthorContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_BlockModel] CHECK CONSTRAINT [FK_X_BlockModel_X_Contact]
GO
ALTER TABLE [dbo].[X_BlockModel]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModel_X_Contact2] FOREIGN KEY([ResponsibleContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_BlockModel] CHECK CONSTRAINT [FK_X_BlockModel_X_Contact2]
GO
ALTER TABLE [dbo].[X_BlockModel]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModel_X_Contact3] FOREIGN KEY([ApproverContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_BlockModel] CHECK CONSTRAINT [FK_X_BlockModel_X_Contact3]
GO
ALTER TABLE [dbo].[X_BlockModel]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModel_X_Contact4] FOREIGN KEY([ExternalReviewerContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_BlockModel] CHECK CONSTRAINT [FK_X_BlockModel_X_Contact4]
GO
ALTER TABLE [dbo].[X_BlockModel]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModel_X_DictionaryDimension] FOREIGN KEY([DimensionEasting])
REFERENCES [dbo].[X_DictionaryDimension] ([DimensionID])
GO
ALTER TABLE [dbo].[X_BlockModel] CHECK CONSTRAINT [FK_X_BlockModel_X_DictionaryDimension]
GO
ALTER TABLE [dbo].[X_BlockModel]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModel_X_DictionaryDimension1] FOREIGN KEY([DimensionElevation])
REFERENCES [dbo].[X_DictionaryDimension] ([DimensionID])
GO
ALTER TABLE [dbo].[X_BlockModel] CHECK CONSTRAINT [FK_X_BlockModel_X_DictionaryDimension1]
GO
ALTER TABLE [dbo].[X_BlockModel]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModel_X_DictionaryDimension2] FOREIGN KEY([DimensionNorthing])
REFERENCES [dbo].[X_DictionaryDimension] ([DimensionID])
GO
ALTER TABLE [dbo].[X_BlockModel] CHECK CONSTRAINT [FK_X_BlockModel_X_DictionaryDimension2]
GO
ALTER TABLE [dbo].[X_BlockModel]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModel_X_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[X_BlockModel] CHECK CONSTRAINT [FK_X_BlockModel_X_Project]
GO
ALTER TABLE [dbo].[X_BlockModelBlock]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModelBlock_X_BlockModel] FOREIGN KEY([BlockModelID])
REFERENCES [dbo].[X_BlockModel] ([BlockModelID])
GO
ALTER TABLE [dbo].[X_BlockModelBlock] CHECK CONSTRAINT [FK_X_BlockModelBlock_X_BlockModel]
GO
ALTER TABLE [dbo].[X_BlockModelBlockData]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModelBlockData_X_BlockModel] FOREIGN KEY([BlockModelID])
REFERENCES [dbo].[X_BlockModel] ([BlockModelID])
GO
ALTER TABLE [dbo].[X_BlockModelBlockData] CHECK CONSTRAINT [FK_X_BlockModelBlockData_X_BlockModel]
GO
ALTER TABLE [dbo].[X_BlockModelBlockData]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModelBlockData_X_BlockModelBlock] FOREIGN KEY([BlockModelBlockID])
REFERENCES [dbo].[X_BlockModelBlock] ([BlockModelBlockID])
GO
ALTER TABLE [dbo].[X_BlockModelBlockData] CHECK CONSTRAINT [FK_X_BlockModelBlockData_X_BlockModelBlock]
GO
ALTER TABLE [dbo].[X_BlockModelBlockData]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModelBlockData_X_Parameter] FOREIGN KEY([ParameterID])
REFERENCES [dbo].[X_Parameter] ([ParameterID])
GO
ALTER TABLE [dbo].[X_BlockModelBlockData] CHECK CONSTRAINT [FK_X_BlockModelBlockData_X_Parameter]
GO
ALTER TABLE [dbo].[X_BlockModelMetadata]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModelMetadata_X_BlockModel] FOREIGN KEY([BlockModelID])
REFERENCES [dbo].[X_BlockModel] ([BlockModelID])
GO
ALTER TABLE [dbo].[X_BlockModelMetadata] CHECK CONSTRAINT [FK_X_BlockModelMetadata_X_BlockModel]
GO
ALTER TABLE [dbo].[X_BlockModelMetadata]  WITH CHECK ADD  CONSTRAINT [FK_X_BlockModelMetadata_X_Parameter] FOREIGN KEY([ParameterID])
REFERENCES [dbo].[X_Parameter] ([ParameterID])
GO
ALTER TABLE [dbo].[X_BlockModelMetadata] CHECK CONSTRAINT [FK_X_BlockModelMetadata_X_Parameter]
GO
ALTER TABLE [dbo].[X_Casing]  WITH CHECK ADD  CONSTRAINT [FK_X_CasingData_X_DictionaryCasing_Type] FOREIGN KEY([CasingTypeID])
REFERENCES [dbo].[X_DictionaryDrillCasingType] ([DrillCasingTypeID])
GO
ALTER TABLE [dbo].[X_Casing] CHECK CONSTRAINT [FK_X_CasingData_X_DictionaryCasing_Type]
GO
ALTER TABLE [dbo].[X_Casing]  WITH CHECK ADD  CONSTRAINT [FK_X_CasingData_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
GO
ALTER TABLE [dbo].[X_Casing] CHECK CONSTRAINT [FK_X_CasingData_X_Header]
GO
ALTER TABLE [dbo].[X_Cementing]  WITH CHECK ADD  CONSTRAINT [FK_X_CementingData_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
GO
ALTER TABLE [dbo].[X_Cementing] CHECK CONSTRAINT [FK_X_CementingData_X_Header]
GO
ALTER TABLE [dbo].[X_Company]  WITH CHECK ADD  CONSTRAINT [FK_X_Company_X_DictionaryCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
GO
ALTER TABLE [dbo].[X_Company] CHECK CONSTRAINT [FK_X_Company_X_DictionaryCountry]
GO
ALTER TABLE [dbo].[X_Company]  WITH CHECK ADD  CONSTRAINT [FK_X_Company_X_Person] FOREIGN KEY([PrimaryContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Company] CHECK CONSTRAINT [FK_X_Company_X_Person]
GO
ALTER TABLE [dbo].[X_CompanyAddress]  WITH CHECK ADD  CONSTRAINT [FK_X_CompanyAddress_X_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[X_Address] ([AddressID])
GO
ALTER TABLE [dbo].[X_CompanyAddress] CHECK CONSTRAINT [FK_X_CompanyAddress_X_Address]
GO
ALTER TABLE [dbo].[X_CompanyAddress]  WITH CHECK ADD  CONSTRAINT [FK_X_CompanyAddress_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_CompanyAddress] CHECK CONSTRAINT [FK_X_CompanyAddress_X_Company]
GO
ALTER TABLE [dbo].[X_CompanyRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_CompanyRelation_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_CompanyRelation] CHECK CONSTRAINT [FK_X_CompanyRelation_X_Company]
GO
ALTER TABLE [dbo].[X_CompanyRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_CompanyRelation_X_Company1] FOREIGN KEY([ParentCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_CompanyRelation] CHECK CONSTRAINT [FK_X_CompanyRelation_X_Company1]
GO
ALTER TABLE [dbo].[X_Compliance]  WITH CHECK ADD  CONSTRAINT [FK_X_Compliance_X_Company] FOREIGN KEY([AuthorityCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_Compliance] CHECK CONSTRAINT [FK_X_Compliance_X_Company]
GO
ALTER TABLE [dbo].[X_Compliance]  WITH CHECK ADD  CONSTRAINT [FK_X_Compliance_X_Contact] FOREIGN KEY([MaintainedBy])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Compliance] CHECK CONSTRAINT [FK_X_Compliance_X_Contact]
GO
ALTER TABLE [dbo].[X_Compliance]  WITH CHECK ADD  CONSTRAINT [FK_X_Compliance_X_DictionaryCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
GO
ALTER TABLE [dbo].[X_Compliance] CHECK CONSTRAINT [FK_X_Compliance_X_DictionaryCountry]
GO
ALTER TABLE [dbo].[X_Compliance]  WITH CHECK ADD  CONSTRAINT [FK_X_Compliance_X_Province] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[X_Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[X_Compliance] CHECK CONSTRAINT [FK_X_Compliance_X_Province]
GO
ALTER TABLE [dbo].[X_ComplianceTask]  WITH CHECK ADD  CONSTRAINT [FK_X_ComplianceTask_X_Compliance] FOREIGN KEY([ComplianceID])
REFERENCES [dbo].[X_Compliance] ([ComplianceID])
GO
ALTER TABLE [dbo].[X_ComplianceTask] CHECK CONSTRAINT [FK_X_ComplianceTask_X_Compliance]
GO
ALTER TABLE [dbo].[X_ComplianceTask]  WITH CHECK ADD  CONSTRAINT [FK_X_ComplianceTask_X_Task] FOREIGN KEY([TaskID])
REFERENCES [dbo].[X_Task] ([TaskID])
GO
ALTER TABLE [dbo].[X_ComplianceTask] CHECK CONSTRAINT [FK_X_ComplianceTask_X_Task]
GO
ALTER TABLE [dbo].[X_ComplianceWorkType]  WITH CHECK ADD  CONSTRAINT [FK_X_ComplianceWorkType_X_Compliance] FOREIGN KEY([ComplianceID])
REFERENCES [dbo].[X_Compliance] ([ComplianceID])
GO
ALTER TABLE [dbo].[X_ComplianceWorkType] CHECK CONSTRAINT [FK_X_ComplianceWorkType_X_Compliance]
GO
ALTER TABLE [dbo].[X_ComplianceWorkType]  WITH CHECK ADD  CONSTRAINT [FK_X_ComplianceWorkType_X_DictionaryWorkType] FOREIGN KEY([WorkTypeID])
REFERENCES [dbo].[X_DictionaryWorkType] ([WorkTypeID])
GO
ALTER TABLE [dbo].[X_ComplianceWorkType] CHECK CONSTRAINT [FK_X_ComplianceWorkType_X_DictionaryWorkType]
GO
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_Composite_X_BlockModel] FOREIGN KEY([BlockModelBlockID])
REFERENCES [dbo].[X_BlockModelBlock] ([BlockModelBlockID])
GO
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_Composite_X_BlockModel]
GO
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_AssayGroupTestSample] FOREIGN KEY([AssayGroupTestSampleID])
REFERENCES [dbo].[X_Sample] ([SampleID])
GO
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_AssayGroupTestSample]
GO
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Casing] FOREIGN KEY([CasingID])
REFERENCES [dbo].[X_Casing] ([CasingID])
GO
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Casing]
GO
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Cementing] FOREIGN KEY([CementingID])
REFERENCES [dbo].[X_Cementing] ([CementingID])
GO
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Cementing]
GO
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Defect] FOREIGN KEY([DefectID])
REFERENCES [dbo].[X_Defect] ([DefectID])
GO
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Defect]
GO
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Desurvey] FOREIGN KEY([DesurveyID])
REFERENCES [dbo].[X_Desurvey] ([DesurveyID])
GO
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Desurvey]
GO
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Drilling] FOREIGN KEY([DrillingID])
REFERENCES [dbo].[X_Drilling] ([DrillingID])
GO
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Drilling]
GO
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Geology] FOREIGN KEY([GeologyID])
REFERENCES [dbo].[X_Geology] ([GeologyID])
GO
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Geology]
GO
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_GeophyicsData] FOREIGN KEY([GeophysicsDataID])
REFERENCES [dbo].[X_GeophysicsData] ([GeophysicsDataID])
GO
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_GeophyicsData]
GO
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
GO
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Header]
GO
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Lithology] FOREIGN KEY([LithologyID])
REFERENCES [dbo].[X_Lithology] ([LithologyID])
GO
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Lithology]
GO
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Mineralogy] FOREIGN KEY([MineralogyID])
REFERENCES [dbo].[X_Mineralogy] ([MineralogyID])
GO
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Mineralogy]
GO
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_PointLoad] FOREIGN KEY([PointLoadID])
REFERENCES [dbo].[X_PointLoad] ([PointLoadID])
GO
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_PointLoad]
GO
ALTER TABLE [dbo].[X_Composite]  WITH CHECK ADD  CONSTRAINT [FK_X_DesurveyResult_X_Recovery] FOREIGN KEY([RecoveryID])
REFERENCES [dbo].[X_Recovery] ([RecoveryID])
GO
ALTER TABLE [dbo].[X_Composite] CHECK CONSTRAINT [FK_X_DesurveyResult_X_Recovery]
GO
ALTER TABLE [dbo].[X_CompositeData]  WITH CHECK ADD  CONSTRAINT [FK_X_CompositeCustomData_X_Parameter] FOREIGN KEY([ParameterID])
REFERENCES [dbo].[X_Parameter] ([ParameterID])
GO
ALTER TABLE [dbo].[X_CompositeData] CHECK CONSTRAINT [FK_X_CompositeCustomData_X_Parameter]
GO
ALTER TABLE [dbo].[X_Contact]  WITH CHECK ADD  CONSTRAINT [FK_X_Person_X_DictionaryCountry] FOREIGN KEY([BirthCountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
GO
ALTER TABLE [dbo].[X_Contact] CHECK CONSTRAINT [FK_X_Person_X_DictionaryCountry]
GO
ALTER TABLE [dbo].[X_ContactAddress]  WITH CHECK ADD  CONSTRAINT [FK_X_ContactAddress_X_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[X_Address] ([AddressID])
GO
ALTER TABLE [dbo].[X_ContactAddress] CHECK CONSTRAINT [FK_X_ContactAddress_X_Address]
GO
ALTER TABLE [dbo].[X_ContactAddress]  WITH CHECK ADD  CONSTRAINT [FK_X_ContactAddress_X_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_ContactAddress] CHECK CONSTRAINT [FK_X_ContactAddress_X_Contact]
GO
ALTER TABLE [dbo].[X_Contract]  WITH CHECK ADD  CONSTRAINT [FK_X_Contract_X_Company] FOREIGN KEY([ObligeeCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_Contract] CHECK CONSTRAINT [FK_X_Contract_X_Company]
GO
ALTER TABLE [dbo].[X_Contract]  WITH CHECK ADD  CONSTRAINT [FK_X_Contract_X_Company1] FOREIGN KEY([ObligorCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_Contract] CHECK CONSTRAINT [FK_X_Contract_X_Company1]
GO
ALTER TABLE [dbo].[X_Contract]  WITH CHECK ADD  CONSTRAINT [FK_X_Contract_X_Company2] FOREIGN KEY([AssigneeCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_Contract] CHECK CONSTRAINT [FK_X_Contract_X_Company2]
GO
ALTER TABLE [dbo].[X_Contract]  WITH CHECK ADD  CONSTRAINT [FK_X_Contract_X_Company3] FOREIGN KEY([SolicitorCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_Contract] CHECK CONSTRAINT [FK_X_Contract_X_Company3]
GO
ALTER TABLE [dbo].[X_Contract]  WITH CHECK ADD  CONSTRAINT [FK_X_Contract_X_Contact] FOREIGN KEY([ObligeeID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Contract] CHECK CONSTRAINT [FK_X_Contract_X_Contact]
GO
ALTER TABLE [dbo].[X_Contract]  WITH CHECK ADD  CONSTRAINT [FK_X_Contract_X_Contact1] FOREIGN KEY([ObligorID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Contract] CHECK CONSTRAINT [FK_X_Contract_X_Contact1]
GO
ALTER TABLE [dbo].[X_Contract]  WITH CHECK ADD  CONSTRAINT [FK_X_Contract_X_Contact2] FOREIGN KEY([AssigneeID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Contract] CHECK CONSTRAINT [FK_X_Contract_X_Contact2]
GO
ALTER TABLE [dbo].[X_Contract]  WITH CHECK ADD  CONSTRAINT [FK_X_Contract_X_Contact3] FOREIGN KEY([SolicitorID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Contract] CHECK CONSTRAINT [FK_X_Contract_X_Contact3]
GO
ALTER TABLE [dbo].[X_Contract]  WITH CHECK ADD  CONSTRAINT [FK_X_Contract_X_Contract] FOREIGN KEY([ParentContractID])
REFERENCES [dbo].[X_Contract] ([ContractID])
GO
ALTER TABLE [dbo].[X_Contract] CHECK CONSTRAINT [FK_X_Contract_X_Contract]
GO
ALTER TABLE [dbo].[X_Contract]  WITH CHECK ADD  CONSTRAINT [FK_X_Contract_X_FileData] FOREIGN KEY([FileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_Contract] CHECK CONSTRAINT [FK_X_Contract_X_FileData]
GO
ALTER TABLE [dbo].[X_Contract]  WITH CHECK ADD  CONSTRAINT [FK_X_Contract_X_ProjectDeliverable] FOREIGN KEY([LastDeliverableID])
REFERENCES [dbo].[X_ProjectDeliverable] ([ProjectDeliverableID])
GO
ALTER TABLE [dbo].[X_Contract] CHECK CONSTRAINT [FK_X_Contract_X_ProjectDeliverable]
GO
ALTER TABLE [dbo].[X_Contract]  WITH CHECK ADD  CONSTRAINT [FK_X_Contract_X_ProjectDeliverable1] FOREIGN KEY([LastDeliverableID])
REFERENCES [dbo].[X_ProjectDeliverable] ([ProjectDeliverableID])
GO
ALTER TABLE [dbo].[X_Contract] CHECK CONSTRAINT [FK_X_Contract_X_ProjectDeliverable1]
GO
ALTER TABLE [dbo].[X_Contract]  WITH CHECK ADD  CONSTRAINT [FK_X_Drill_Company_Contract_X_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[X_Contract] CHECK CONSTRAINT [FK_X_Drill_Company_Contract_X_Project]
GO
ALTER TABLE [dbo].[X_ContractCondition]  WITH CHECK ADD  CONSTRAINT [FK_X_ContractCondition_X_Contract] FOREIGN KEY([ContractID])
REFERENCES [dbo].[X_Contract] ([ContractID])
GO
ALTER TABLE [dbo].[X_ContractCondition] CHECK CONSTRAINT [FK_X_ContractCondition_X_Contract]
GO
ALTER TABLE [dbo].[X_ContractCondition]  WITH CHECK ADD  CONSTRAINT [FK_X_ContractCondition_X_DictionaryContractConditionType] FOREIGN KEY([ContractConditionTypeID])
REFERENCES [dbo].[X_DictionaryContractConditionType] ([ContractConditionTypeID])
GO
ALTER TABLE [dbo].[X_ContractCondition] CHECK CONSTRAINT [FK_X_ContractCondition_X_DictionaryContractConditionType]
GO
ALTER TABLE [dbo].[X_ContractCondition]  WITH CHECK ADD  CONSTRAINT [FK_X_ContractCondition_X_DictionaryUnit] FOREIGN KEY([EstimatedValueOngoingUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[X_ContractCondition] CHECK CONSTRAINT [FK_X_ContractCondition_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[X_ContractConditionModel]  WITH CHECK ADD  CONSTRAINT [FK_X_ContractConditionModel_X_ContractCondition] FOREIGN KEY([ContractConditionID])
REFERENCES [dbo].[X_ContractCondition] ([ContractConditionID])
GO
ALTER TABLE [dbo].[X_ContractConditionModel] CHECK CONSTRAINT [FK_X_ContractConditionModel_X_ContractCondition]
GO
ALTER TABLE [dbo].[X_ContractConditionModel]  WITH CHECK ADD  CONSTRAINT [FK_X_ContractConditionModel_X_DictionaryModel] FOREIGN KEY([ModelID])
REFERENCES [dbo].[X_DictionaryModel] ([ModelID])
GO
ALTER TABLE [dbo].[X_ContractConditionModel] CHECK CONSTRAINT [FK_X_ContractConditionModel_X_DictionaryModel]
GO
ALTER TABLE [dbo].[X_ContractConditionPart]  WITH CHECK ADD  CONSTRAINT [FK_X_ContractConditionPart_X_ContractCondition] FOREIGN KEY([ContractConditionID])
REFERENCES [dbo].[X_ContractCondition] ([ContractConditionID])
GO
ALTER TABLE [dbo].[X_ContractConditionPart] CHECK CONSTRAINT [FK_X_ContractConditionPart_X_ContractCondition]
GO
ALTER TABLE [dbo].[X_ContractConditionPart]  WITH CHECK ADD  CONSTRAINT [FK_X_ContractConditionPart_X_DictionaryPart] FOREIGN KEY([PartID])
REFERENCES [dbo].[Q_DictionaryPart] ([PartID])
GO
ALTER TABLE [dbo].[X_ContractConditionPart] CHECK CONSTRAINT [FK_X_ContractConditionPart_X_DictionaryPart]
GO
ALTER TABLE [dbo].[X_CostEstimateModel]  WITH CHECK ADD  CONSTRAINT [FK_X_CostEstimateModel_X_Contract] FOREIGN KEY([ContractID])
REFERENCES [dbo].[X_Contract] ([ContractID])
GO
ALTER TABLE [dbo].[X_CostEstimateModel] CHECK CONSTRAINT [FK_X_CostEstimateModel_X_Contract]
GO
ALTER TABLE [dbo].[X_CostEstimateModel]  WITH CHECK ADD  CONSTRAINT [FK_X_CostEstimateModel_X_CostEstimateModel] FOREIGN KEY([ParentCostEstimateModelID])
REFERENCES [dbo].[X_CostEstimateModel] ([CostEstimateModelID])
GO
ALTER TABLE [dbo].[X_CostEstimateModel] CHECK CONSTRAINT [FK_X_CostEstimateModel_X_CostEstimateModel]
GO
ALTER TABLE [dbo].[X_CostEstimateModel]  WITH CHECK ADD  CONSTRAINT [FK_X_CostEstimateModel_X_DictionaryCostType] FOREIGN KEY([CostTypeID])
REFERENCES [dbo].[X_DictionaryCostType] ([CostTypeID])
GO
ALTER TABLE [dbo].[X_CostEstimateModel] CHECK CONSTRAINT [FK_X_CostEstimateModel_X_DictionaryCostType]
GO
ALTER TABLE [dbo].[X_CostEstimateModel]  WITH CHECK ADD  CONSTRAINT [FK_X_CostEstimateModel_X_DictionaryModel] FOREIGN KEY([ModelID])
REFERENCES [dbo].[X_DictionaryModel] ([ModelID])
GO
ALTER TABLE [dbo].[X_CostEstimateModel] CHECK CONSTRAINT [FK_X_CostEstimateModel_X_DictionaryModel]
GO
ALTER TABLE [dbo].[X_CostEstimateModel]  WITH CHECK ADD  CONSTRAINT [FK_X_CostEstimateModel_X_DictionaryUnit] FOREIGN KEY([ProRataUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[X_CostEstimateModel] CHECK CONSTRAINT [FK_X_CostEstimateModel_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[X_CostEstimateModel]  WITH CHECK ADD  CONSTRAINT [FK_X_CostEstimateModel_X_DictionaryUnit1] FOREIGN KEY([AccruedQuantumSIUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[X_CostEstimateModel] CHECK CONSTRAINT [FK_X_CostEstimateModel_X_DictionaryUnit1]
GO
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_Defect_X_DictionaryRockMassUnitType] FOREIGN KEY([RockMassUnitTypeID])
REFERENCES [dbo].[X_DictionaryRockMassUnitType] ([RockMassUnitTypeID])
GO
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_Defect_X_DictionaryRockMassUnitType]
GO
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryAlteration] FOREIGN KEY([AlterationID])
REFERENCES [dbo].[X_DictionaryAlteration] ([AlterationID])
GO
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryAlteration]
GO
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryDip_Orient_Meth] FOREIGN KEY([DipOrientationMethodID])
REFERENCES [dbo].[X_DictionaryDipOrientationMethod] ([DipOrientationMethodID])
GO
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryDip_Orient_Meth]
GO
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryEst_Strength] FOREIGN KEY([EstimatedStrengthID])
REFERENCES [dbo].[X_DictionaryEstimatedStrength] ([EstimatedStrengthID])
GO
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryEst_Strength]
GO
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryEst_Strength1] FOREIGN KEY([InfillEstimatedStrengthID])
REFERENCES [dbo].[X_DictionaryEstimatedStrength] ([EstimatedStrengthID])
GO
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryEst_Strength1]
GO
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryInfill_Mode] FOREIGN KEY([InfillModeID])
REFERENCES [dbo].[X_DictionaryInfillMode] ([InfillModeID])
GO
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryInfill_Mode]
GO
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryInfill_Type] FOREIGN KEY([PrimaryInfillTypeID])
REFERENCES [dbo].[X_DictionaryInfillType] ([InfillTypeID])
GO
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryInfill_Type]
GO
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryInfill_Type1] FOREIGN KEY([SecondaryInfillTypeID])
REFERENCES [dbo].[X_DictionaryInfillType] ([InfillTypeID])
GO
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryInfill_Type1]
GO
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryMoist_Sensitive] FOREIGN KEY([MoistureSensitivityID])
REFERENCES [dbo].[X_DictionaryMoistureSensitivity] ([MoistureSensitivityID])
GO
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryMoist_Sensitive]
GO
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryPlasticity] FOREIGN KEY([PlasticityID])
REFERENCES [dbo].[X_DictionaryPlasticity] ([PlasticityID])
GO
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryPlasticity]
GO
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryPlasticity1] FOREIGN KEY([InfillPlasticityID])
REFERENCES [dbo].[X_DictionaryPlasticity] ([PlasticityID])
GO
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryPlasticity1]
GO
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryRoughness] FOREIGN KEY([RoughnessID])
REFERENCES [dbo].[X_DictionarySurfaceRoughness] ([SurfaceRoughnessID])
GO
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryRoughness]
GO
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryShape] FOREIGN KEY([ShapeID])
REFERENCES [dbo].[X_DictionaryShape] ([ShapeID])
GO
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryShape]
GO
ALTER TABLE [dbo].[X_Defect]  WITH CHECK ADD  CONSTRAINT [FK_X_DefectData_X_DictionaryWeathering] FOREIGN KEY([WeatheringID])
REFERENCES [dbo].[X_DictionaryWeathering] ([WeatheringID])
GO
ALTER TABLE [dbo].[X_Defect] CHECK CONSTRAINT [FK_X_DefectData_X_DictionaryWeathering]
GO
ALTER TABLE [dbo].[X_Desurvey]  WITH CHECK ADD  CONSTRAINT [FK_X_Desurvey_X_DictionaryDesurveyAlgorithmType] FOREIGN KEY([DesurveyAlgorithmTypeID])
REFERENCES [dbo].[X_DictionaryDesurveyAlgorithmType] ([DesurveyAlgorithmTypeID])
GO
ALTER TABLE [dbo].[X_Desurvey] CHECK CONSTRAINT [FK_X_Desurvey_X_DictionaryDesurveyAlgorithmType]
GO
ALTER TABLE [dbo].[X_Desurvey]  WITH CHECK ADD  CONSTRAINT [FK_X_Desurvey_X_Survey] FOREIGN KEY([SurveyID])
REFERENCES [dbo].[X_Survey] ([SurveyID])
GO
ALTER TABLE [dbo].[X_Desurvey] CHECK CONSTRAINT [FK_X_Desurvey_X_Survey]
GO
ALTER TABLE [dbo].[X_DictionaryAdjective]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryAdjective_X_FileData] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryAdjective] CHECK CONSTRAINT [FK_X_DictionaryAdjective_X_FileData]
GO
ALTER TABLE [dbo].[X_DictionaryAlteration]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryAlteration_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryAlteration] CHECK CONSTRAINT [FK_X_X_DictionaryAlteration_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryAssayMethod]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryAssayMethod_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryAssayMethod] CHECK CONSTRAINT [FK_X_X_DictionaryAssayMethod_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryAssayStandard]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryAssayStandard_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryAssayStandard] CHECK CONSTRAINT [FK_X_X_DictionaryAssayStandard_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryAssayTest]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryAssayTest_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryAssayTest] CHECK CONSTRAINT [FK_X_X_DictionaryAssayTest_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryAssayType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryAssayType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryAssayType] CHECK CONSTRAINT [FK_X_X_DictionaryAssayType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryBasalContact]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryBasalContact_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryBasalContact] CHECK CONSTRAINT [FK_X_X_DictionaryBasalContact_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryBedSpacing]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryBedSpacing_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryBedSpacing] CHECK CONSTRAINT [FK_X_X_DictionaryBedSpacing_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryCharacteristic]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryCharacteristic_X_DictionaryCharacteristicType] FOREIGN KEY([CharacteristicTypeID])
REFERENCES [dbo].[X_DictionaryCharacteristicType] ([CharacteristicTypeID])
GO
ALTER TABLE [dbo].[X_DictionaryCharacteristic] CHECK CONSTRAINT [FK_X_DictionaryCharacteristic_X_DictionaryCharacteristicType]
GO
ALTER TABLE [dbo].[X_DictionaryCharacteristic]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryCharacteristic_X_DictionaryUnit] FOREIGN KEY([UnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[X_DictionaryCharacteristic] CHECK CONSTRAINT [FK_X_DictionaryCharacteristic_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[X_DictionaryCharacteristic]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryCharacteristic_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryCharacteristic] CHECK CONSTRAINT [FK_X_X_DictionaryCharacteristic_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryCharacteristicType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryCharacteristicType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryCharacteristicType] CHECK CONSTRAINT [FK_X_X_DictionaryCharacteristicType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryColour]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryColour_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryColour] CHECK CONSTRAINT [FK_X_X_DictionaryColour_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryCommodity]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryCommodity_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryCommodity] CHECK CONSTRAINT [FK_X_X_DictionaryCommodity_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryContractConditionType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryContractCondition_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryContractConditionType] CHECK CONSTRAINT [FK_X_X_DictionaryContractCondition_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryCoreState]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryCoreState_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryCoreState] CHECK CONSTRAINT [FK_X_X_DictionaryCoreState_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryCountry]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryCountry_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryCountry] CHECK CONSTRAINT [FK_X_X_DictionaryCountry_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryCountryState]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryCountryState_X_DictionaryCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
GO
ALTER TABLE [dbo].[X_DictionaryCountryState] CHECK CONSTRAINT [FK_X_DictionaryCountryState_X_DictionaryCountry]
GO
ALTER TABLE [dbo].[X_DictionaryCountryState]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryCountryState_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryCountryState] CHECK CONSTRAINT [FK_X_X_DictionaryCountryState_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryDataStatus]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryDataStatus_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryDataStatus] CHECK CONSTRAINT [FK_X_X_DictionaryDataStatus_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryDefectCompleteness]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryDefectCompleteness_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryDefectCompleteness] CHECK CONSTRAINT [FK_X_X_DictionaryDefectCompleteness_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryDefectContinuity]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryDefectContinuity_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryDefectContinuity] CHECK CONSTRAINT [FK_X_X_DictionaryDefectContinuity_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryDefectSpacing]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryDefectSpacing_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryDefectSpacing] CHECK CONSTRAINT [FK_X_X_DictionaryDefectSpacing_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryDefectType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryDefectType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryDefectType] CHECK CONSTRAINT [FK_X_X_DictionaryDefectType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryDesurveyAlgorithmType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryDesurveyAlgorithmType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryDesurveyAlgorithmType] CHECK CONSTRAINT [FK_X_X_DictionaryDesurveyAlgorithmType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryDimension]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryDimension_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryDimension] CHECK CONSTRAINT [FK_X_X_DictionaryDimension_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryDipOrientationMethod]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryDipOrientationMethod_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryDipOrientationMethod] CHECK CONSTRAINT [FK_X_X_DictionaryDipOrientationMethod_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryDomain]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryDomain_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryDomain] CHECK CONSTRAINT [FK_X_X_DictionaryDomain_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryDomainAlias]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryDomainRelations_X_DictionaryDomainRelations] FOREIGN KEY([DomainID])
REFERENCES [dbo].[X_DictionaryDomain] ([DomainID])
GO
ALTER TABLE [dbo].[X_DictionaryDomainAlias] CHECK CONSTRAINT [FK_X_DictionaryDomainRelations_X_DictionaryDomainRelations]
GO
ALTER TABLE [dbo].[X_DictionaryDomainAlias]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryDomainAlias_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryDomainAlias] CHECK CONSTRAINT [FK_X_X_DictionaryDomainAlias_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryDrillBitType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryDrillBitType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryDrillBitType] CHECK CONSTRAINT [FK_X_X_DictionaryDrillBitType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryDrillCasingType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryDrillCasingType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryDrillCasingType] CHECK CONSTRAINT [FK_X_X_DictionaryDrillCasingType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryDrillFluid]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryDrillFluid_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryDrillFluid] CHECK CONSTRAINT [FK_X_X_DictionaryDrillFluid_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryDrillRigType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryDrillRigType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryDrillRigType] CHECK CONSTRAINT [FK_X_X_DictionaryDrillRigType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryDrillSize]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryDrillSize_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryDrillSize] CHECK CONSTRAINT [FK_X_X_DictionaryDrillSize_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryEstimatedStrength]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryEstimatedStrength_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryEstimatedStrength] CHECK CONSTRAINT [FK_X_X_DictionaryEstimatedStrength_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryFailureMode]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryFailureMode_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryFailureMode] CHECK CONSTRAINT [FK_X_X_DictionaryFailureMode_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryFlowTestType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryFlowTestType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryFlowTestType] CHECK CONSTRAINT [FK_X_X_DictionaryFlowTestType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryGasDetected]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryGasDetected_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryGasDetected] CHECK CONSTRAINT [FK_X_X_DictionaryGasDetected_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryGeodeticDatum]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryGeodeticDatum_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryGeodeticDatum] CHECK CONSTRAINT [FK_X_X_DictionaryGeodeticDatum_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryGeophysicalLogType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryGeophysicalLogType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryGeophysicalLogType] CHECK CONSTRAINT [FK_X_X_DictionaryGeophysicalLogType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryGroup_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryGroup] CHECK CONSTRAINT [FK_X_X_DictionaryGroup_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryGroupMembership]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryGroupMembership_X_DictionaryGroup] FOREIGN KEY([ChildGroupID])
REFERENCES [dbo].[X_DictionaryGroup] ([GroupID])
GO
ALTER TABLE [dbo].[X_DictionaryGroupMembership] CHECK CONSTRAINT [FK_X_DictionaryGroupMembership_X_DictionaryGroup]
GO
ALTER TABLE [dbo].[X_DictionaryGroupMembership]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryGroupMembership_X_DictionaryGroupMembership] FOREIGN KEY([ParentGroupID])
REFERENCES [dbo].[X_DictionaryGroup] ([GroupID])
GO
ALTER TABLE [dbo].[X_DictionaryGroupMembership] CHECK CONSTRAINT [FK_X_DictionaryGroupMembership_X_DictionaryGroupMembership]
GO
ALTER TABLE [dbo].[X_DictionaryGroupMembership]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryGroupMembership_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryGroupMembership] CHECK CONSTRAINT [FK_X_X_DictionaryGroupMembership_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryHeightDatum]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryHeightDatum_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryHeightDatum] CHECK CONSTRAINT [FK_X_X_DictionaryHeightDatum_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryHolePurpose]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryHolePurpose_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryHolePurpose] CHECK CONSTRAINT [FK_X_X_DictionaryHolePurpose_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryHoleStatus]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryHoleStatus_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryHoleStatus] CHECK CONSTRAINT [FK_X_X_DictionaryHoleStatus_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryHoleType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryHoleType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryHoleType] CHECK CONSTRAINT [FK_X_X_DictionaryHoleType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryHorizon]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryHorizon_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryHorizon] CHECK CONSTRAINT [FK_X_X_DictionaryHorizon_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryHue]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryHue_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryHue] CHECK CONSTRAINT [FK_X_X_DictionaryHue_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryInfillMode]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryInfillMode_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryInfillMode] CHECK CONSTRAINT [FK_X_X_DictionaryInfillMode_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryInfillType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryInfillType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryInfillType] CHECK CONSTRAINT [FK_X_X_DictionaryInfillType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryIntervalStatus]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryIntervalStatus_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryIntervalStatus] CHECK CONSTRAINT [FK_X_X_DictionaryIntervalStatus_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryLeaseApplicationType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryLeaseApplicationType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryLeaseApplicationType] CHECK CONSTRAINT [FK_X_X_DictionaryLeaseApplicationType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryLithologyInterrelation]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryLithologyInterrelation_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryLithologyInterrelation] CHECK CONSTRAINT [FK_X_X_DictionaryLithologyInterrelation_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryLithologyQualifier]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryLithologyQualifier_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryLithologyQualifier] CHECK CONSTRAINT [FK_X_X_DictionaryLithologyQualifier_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryLithologyType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryLithologyType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryLithologyType] CHECK CONSTRAINT [FK_X_X_DictionaryLithologyType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryLocationType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryLocationType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryLocationType] CHECK CONSTRAINT [FK_X_X_DictionaryLocationType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryMechanicalState]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryMechanicalState_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryMechanicalState] CHECK CONSTRAINT [FK_X_X_DictionaryMechanicalState_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryMineralAbundance]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryMineralAbundance_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryMineralAbundance] CHECK CONSTRAINT [FK_X_X_DictionaryMineralAbundance_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryMineralAndFossilAbundance]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryMineralAndFossilAbundance_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryMineralAndFossilAbundance] CHECK CONSTRAINT [FK_X_X_DictionaryMineralAndFossilAbundance_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryMineralAndFossilAssociation]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryMineralAndFossilAssociation_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryMineralAndFossilAssociation] CHECK CONSTRAINT [FK_X_X_DictionaryMineralAndFossilAssociation_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryMineralAndFossilType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryMineralAndFossilType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryMineralAndFossilType] CHECK CONSTRAINT [FK_X_X_DictionaryMineralAndFossilType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryMineralForm]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryMineralForm_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryMineralForm] CHECK CONSTRAINT [FK_X_X_DictionaryMineralForm_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryMineralStyle]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryMineralStyle_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryMineralStyle] CHECK CONSTRAINT [FK_X_X_DictionaryMineralStyle_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryMineralType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryMineralType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryMineralType] CHECK CONSTRAINT [FK_X_X_DictionaryMineralType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryModel]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryModel_Q_DictionaryDeviceType] FOREIGN KEY([DeviceTypeID])
REFERENCES [dbo].[Q_DictionaryDeviceType] ([DeviceTypeID])
GO
ALTER TABLE [dbo].[X_DictionaryModel] CHECK CONSTRAINT [FK_X_DictionaryModel_Q_DictionaryDeviceType]
GO
ALTER TABLE [dbo].[X_DictionaryModel]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryModel_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_DictionaryModel] CHECK CONSTRAINT [FK_X_DictionaryModel_X_Company]
GO
ALTER TABLE [dbo].[X_DictionaryModel]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryModel_X_DictionaryModel] FOREIGN KEY([ModelID])
REFERENCES [dbo].[X_DictionaryModel] ([ModelID])
GO
ALTER TABLE [dbo].[X_DictionaryModel] CHECK CONSTRAINT [FK_X_DictionaryModel_X_DictionaryModel]
GO
ALTER TABLE [dbo].[X_DictionaryModel]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryModel_X_DictionaryModel1] FOREIGN KEY([ParentModelID])
REFERENCES [dbo].[X_DictionaryModel] ([ModelID])
GO
ALTER TABLE [dbo].[X_DictionaryModel] CHECK CONSTRAINT [FK_X_DictionaryModel_X_DictionaryModel1]
GO
ALTER TABLE [dbo].[X_DictionaryModel]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryModel_X_DictionaryModelStatus] FOREIGN KEY([ModelStatusID])
REFERENCES [dbo].[X_DictionaryModelStatus] ([ModelStatusID])
GO
ALTER TABLE [dbo].[X_DictionaryModel] CHECK CONSTRAINT [FK_X_DictionaryModel_X_DictionaryModelStatus]
GO
ALTER TABLE [dbo].[X_DictionaryModel]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryModel_X_DictionaryUnit1] FOREIGN KEY([EstimatedLifetimeUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[X_DictionaryModel] CHECK CONSTRAINT [FK_X_DictionaryModel_X_DictionaryUnit1]
GO
ALTER TABLE [dbo].[X_DictionaryModel]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryModel_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryModel] CHECK CONSTRAINT [FK_X_X_DictionaryModel_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryModelCategory]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryModelCategory_Q_DictionaryDeviceType] FOREIGN KEY([CategoryDeviceTypeID])
REFERENCES [dbo].[Q_DictionaryDeviceType] ([DeviceTypeID])
GO
ALTER TABLE [dbo].[X_DictionaryModelCategory] CHECK CONSTRAINT [FK_X_DictionaryModelCategory_Q_DictionaryDeviceType]
GO
ALTER TABLE [dbo].[X_DictionaryModelCategory]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryModelCategory_X_DictionaryModel] FOREIGN KEY([ModelID])
REFERENCES [dbo].[X_DictionaryModel] ([ModelID])
GO
ALTER TABLE [dbo].[X_DictionaryModelCategory] CHECK CONSTRAINT [FK_X_DictionaryModelCategory_X_DictionaryModel]
GO
ALTER TABLE [dbo].[X_DictionaryModelRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryModelRelation_X_DictionaryRelationType] FOREIGN KEY([RelationTypeID])
REFERENCES [dbo].[X_DictionaryRelationType] ([RelationTypeID])
GO
ALTER TABLE [dbo].[X_DictionaryModelRelation] CHECK CONSTRAINT [FK_X_DictionaryModelRelation_X_DictionaryRelationType]
GO
ALTER TABLE [dbo].[X_DictionaryModelStatus]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryModelStatus_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryModelStatus] CHECK CONSTRAINT [FK_X_X_DictionaryModelStatus_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryMoistureSensitivity]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryMoistureSensitivity_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryMoistureSensitivity] CHECK CONSTRAINT [FK_X_X_DictionaryMoistureSensitivity_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryPartStatus]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryPartStatus_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryPartStatus] CHECK CONSTRAINT [FK_X_X_DictionaryPartStatus_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryPlasticity]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryPlasticity_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryPlasticity] CHECK CONSTRAINT [FK_X_X_DictionaryPlasticity_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryPly]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryPly_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryPly] CHECK CONSTRAINT [FK_X_X_DictionaryPly_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryPlyAlias]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryPlyAlias_X_DictionaryPlyAlias] FOREIGN KEY([PlyID])
REFERENCES [dbo].[X_DictionaryPly] ([PlyID])
GO
ALTER TABLE [dbo].[X_DictionaryPlyAlias] CHECK CONSTRAINT [FK_X_DictionaryPlyAlias_X_DictionaryPlyAlias]
GO
ALTER TABLE [dbo].[X_DictionaryPlyAlias]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryPlyAlias_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryPlyAlias] CHECK CONSTRAINT [FK_X_X_DictionaryPlyAlias_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryPointLoadTestType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryPointLoadTestType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryPointLoadTestType] CHECK CONSTRAINT [FK_X_X_DictionaryPointLoadTestType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryPosition]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryPosition_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryPosition] CHECK CONSTRAINT [FK_X_X_DictionaryPosition_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryProfession]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryProfession_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryProfession] CHECK CONSTRAINT [FK_X_X_DictionaryProfession_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryProvinceGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryProvinceGroup_X_DictionaryProvinceType] FOREIGN KEY([ParentProvinceTypeID])
REFERENCES [dbo].[X_DictionaryProvinceType] ([ProvinceTypeID])
GO
ALTER TABLE [dbo].[X_DictionaryProvinceGroup] CHECK CONSTRAINT [FK_X_DictionaryProvinceGroup_X_DictionaryProvinceType]
GO
ALTER TABLE [dbo].[X_DictionaryProvinceGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryProvinceGroup_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryProvinceGroup] CHECK CONSTRAINT [FK_X_X_DictionaryProvinceGroup_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryProvinceType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryProvinceType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryProvinceType] CHECK CONSTRAINT [FK_X_X_DictionaryProvinceType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryRelationType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryRelationType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryRelationType] CHECK CONSTRAINT [FK_X_X_DictionaryRelationType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryRockMassUnitType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryRockMassUnitType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryRockMassUnitType] CHECK CONSTRAINT [FK_X_X_DictionaryRockMassUnitType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionarySampleCategory]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionarySampleCategory_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionarySampleCategory] CHECK CONSTRAINT [FK_X_X_DictionarySampleCategory_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionarySampleState]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionarySampleState_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionarySampleState] CHECK CONSTRAINT [FK_X_X_DictionarySampleState_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionarySampleType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionarySampleType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionarySampleType] CHECK CONSTRAINT [FK_X_X_DictionarySampleType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionarySeam]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionarySeam_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionarySeam] CHECK CONSTRAINT [FK_X_X_DictionarySeam_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionarySeamAlias]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionarySeamAlias_X_DictionarySeam] FOREIGN KEY([SeamID])
REFERENCES [dbo].[X_DictionarySeam] ([SeamID])
GO
ALTER TABLE [dbo].[X_DictionarySeamAlias] CHECK CONSTRAINT [FK_X_DictionarySeamAlias_X_DictionarySeam]
GO
ALTER TABLE [dbo].[X_DictionarySeamAlias]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionarySeamAlias_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionarySeamAlias] CHECK CONSTRAINT [FK_X_X_DictionarySeamAlias_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionarySedimentaryFeature]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionarySedimentaryFeature_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionarySedimentaryFeature] CHECK CONSTRAINT [FK_X_X_DictionarySedimentaryFeature_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryShade]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryShade_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryShade] CHECK CONSTRAINT [FK_X_X_DictionaryShade_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryShape]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryShape_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryShape] CHECK CONSTRAINT [FK_X_X_DictionaryShape_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryStratigraphy]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryStratigraphy_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryStratigraphy] CHECK CONSTRAINT [FK_X_X_DictionaryStratigraphy_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionarySurfaceRoughness]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionarySurfaceRoughness_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionarySurfaceRoughness] CHECK CONSTRAINT [FK_X_X_DictionarySurfaceRoughness_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionarySurveyAccuracy]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionarySurveyAccuracy_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionarySurveyAccuracy] CHECK CONSTRAINT [FK_X_X_DictionarySurveyAccuracy_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryTexture]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryTexture_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryTexture] CHECK CONSTRAINT [FK_X_X_DictionaryTexture_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryUnit]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryUnit_X_DictionaryUnitType] FOREIGN KEY([UnitTypeID])
REFERENCES [dbo].[X_DictionaryUnitType] ([UnitTypeID])
GO
ALTER TABLE [dbo].[X_DictionaryUnit] CHECK CONSTRAINT [FK_X_DictionaryUnit_X_DictionaryUnitType]
GO
ALTER TABLE [dbo].[X_DictionaryUnit]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryUnit_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryUnit] CHECK CONSTRAINT [FK_X_X_DictionaryUnit_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryUnitType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryUnitType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryUnitType] CHECK CONSTRAINT [FK_X_X_DictionaryUnitType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryUsageAuditType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryUsageAuditType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryUsageAuditType] CHECK CONSTRAINT [FK_X_X_DictionaryUsageAuditType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryWeathering]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryWeathering_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryWeathering] CHECK CONSTRAINT [FK_X_X_DictionaryWeathering_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryWorkType]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryWorkType_X_DictionaryProfession] FOREIGN KEY([ProfessionID])
REFERENCES [dbo].[X_DictionaryProfession] ([ProfessionID])
GO
ALTER TABLE [dbo].[X_DictionaryWorkType] CHECK CONSTRAINT [FK_X_DictionaryWorkType_X_DictionaryProfession]
GO
ALTER TABLE [dbo].[X_DictionaryWorkType]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryWorkType_X_DictionaryWorkType1] FOREIGN KEY([WorkTypeID])
REFERENCES [dbo].[X_DictionaryWorkType] ([WorkTypeID])
GO
ALTER TABLE [dbo].[X_DictionaryWorkType] CHECK CONSTRAINT [FK_X_DictionaryWorkType_X_DictionaryWorkType1]
GO
ALTER TABLE [dbo].[X_DictionaryWorkType]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryWorkType_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryWorkType] CHECK CONSTRAINT [FK_X_X_DictionaryWorkType_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryWorkTypeClass]  WITH CHECK ADD  CONSTRAINT [FK_X_X_DictionaryWorkTypeClass_X_FileData_OriginalFile] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_DictionaryWorkTypeClass] CHECK CONSTRAINT [FK_X_X_DictionaryWorkTypeClass_X_FileData_OriginalFile]
GO
ALTER TABLE [dbo].[X_DictionaryWorkTypeRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryWorkTypeRelation_X_DictionaryWorkType] FOREIGN KEY([WorkTypeID])
REFERENCES [dbo].[X_DictionaryWorkType] ([WorkTypeID])
GO
ALTER TABLE [dbo].[X_DictionaryWorkTypeRelation] CHECK CONSTRAINT [FK_X_DictionaryWorkTypeRelation_X_DictionaryWorkType]
GO
ALTER TABLE [dbo].[X_DictionaryWorkTypeRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_DictionaryWorkTypeRelation_X_DictionaryWorkType1] FOREIGN KEY([ParentWorkTypeID])
REFERENCES [dbo].[X_DictionaryWorkType] ([WorkTypeID])
GO
ALTER TABLE [dbo].[X_DictionaryWorkTypeRelation] CHECK CONSTRAINT [FK_X_DictionaryWorkTypeRelation_X_DictionaryWorkType1]
GO
ALTER TABLE [dbo].[X_Drilling]  WITH CHECK ADD  CONSTRAINT [FK_X_Drilling_X_Company] FOREIGN KEY([DrillingCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_Drilling] CHECK CONSTRAINT [FK_X_Drilling_X_Company]
GO
ALTER TABLE [dbo].[X_Drilling]  WITH CHECK ADD  CONSTRAINT [FK_X_DrillingData_X_Contact] FOREIGN KEY([DrillerID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Drilling] CHECK CONSTRAINT [FK_X_DrillingData_X_Contact]
GO
ALTER TABLE [dbo].[X_Drilling]  WITH CHECK ADD  CONSTRAINT [FK_X_DrillingData_X_DictionaryDrill_Fluid] FOREIGN KEY([DrillFluidID])
REFERENCES [dbo].[X_DictionaryDrillFluid] ([DrillFluidID])
GO
ALTER TABLE [dbo].[X_Drilling] CHECK CONSTRAINT [FK_X_DrillingData_X_DictionaryDrill_Fluid]
GO
ALTER TABLE [dbo].[X_Drilling]  WITH CHECK ADD  CONSTRAINT [FK_X_DrillingData_X_DictionaryDrill_Size_Name] FOREIGN KEY([DrillSizeID])
REFERENCES [dbo].[X_DictionaryDrillSize] ([DrillSizeID])
GO
ALTER TABLE [dbo].[X_Drilling] CHECK CONSTRAINT [FK_X_DrillingData_X_DictionaryDrill_Size_Name]
GO
ALTER TABLE [dbo].[X_Drilling]  WITH CHECK ADD  CONSTRAINT [FK_X_DrillingData_X_DictionaryDrillBitType] FOREIGN KEY([DrillBitTypeID])
REFERENCES [dbo].[X_DictionaryDrillBitType] ([DrillBitTypeID])
GO
ALTER TABLE [dbo].[X_Drilling] CHECK CONSTRAINT [FK_X_DrillingData_X_DictionaryDrillBitType]
GO
ALTER TABLE [dbo].[X_Drilling]  WITH CHECK ADD  CONSTRAINT [FK_X_DrillingData_X_DictionaryRig_Type] FOREIGN KEY([DrillRigTypeID])
REFERENCES [dbo].[X_DictionaryDrillRigType] ([DrillRigTypeID])
GO
ALTER TABLE [dbo].[X_Drilling] CHECK CONSTRAINT [FK_X_DrillingData_X_DictionaryRig_Type]
GO
ALTER TABLE [dbo].[X_Drilling]  WITH CHECK ADD  CONSTRAINT [FK_X_DrillingData_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
GO
ALTER TABLE [dbo].[X_Drilling] CHECK CONSTRAINT [FK_X_DrillingData_X_Header]
GO
ALTER TABLE [dbo].[X_Experience]  WITH CHECK ADD  CONSTRAINT [FK_X_Experience_X_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_Experience] CHECK CONSTRAINT [FK_X_Experience_X_Company]
GO
ALTER TABLE [dbo].[X_Experience]  WITH CHECK ADD  CONSTRAINT [FK_X_Experience_X_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Experience] CHECK CONSTRAINT [FK_X_Experience_X_Contact]
GO
ALTER TABLE [dbo].[X_Experience]  WITH CHECK ADD  CONSTRAINT [FK_X_Experience_X_DictionaryPosition] FOREIGN KEY([PositionID])
REFERENCES [dbo].[X_DictionaryPosition] ([PositionID])
GO
ALTER TABLE [dbo].[X_Experience] CHECK CONSTRAINT [FK_X_Experience_X_DictionaryPosition]
GO
ALTER TABLE [dbo].[X_Experience]  WITH CHECK ADD  CONSTRAINT [FK_X_Experience_X_DictionaryProfession] FOREIGN KEY([ProfessionID])
REFERENCES [dbo].[X_DictionaryProfession] ([ProfessionID])
GO
ALTER TABLE [dbo].[X_Experience] CHECK CONSTRAINT [FK_X_Experience_X_DictionaryProfession]
GO
ALTER TABLE [dbo].[X_Experience]  WITH CHECK ADD  CONSTRAINT [FK_X_Experience_X_DictionaryWorkType] FOREIGN KEY([WorkTypeID])
REFERENCES [dbo].[X_DictionaryWorkType] ([WorkTypeID])
GO
ALTER TABLE [dbo].[X_Experience] CHECK CONSTRAINT [FK_X_Experience_X_DictionaryWorkType]
GO
ALTER TABLE [dbo].[X_Experience]  WITH CHECK ADD  CONSTRAINT [FK_X_Experience_X_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[X_Location] ([LocationID])
GO
ALTER TABLE [dbo].[X_Experience] CHECK CONSTRAINT [FK_X_Experience_X_Location]
GO
ALTER TABLE [dbo].[X_Experience]  WITH CHECK ADD  CONSTRAINT [FK_X_Experience_X_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[X_Experience] CHECK CONSTRAINT [FK_X_Experience_X_Project]
GO
ALTER TABLE [dbo].[X_FileData]  WITH CHECK ADD  CONSTRAINT [FK_X_FileData_X_Experience] FOREIGN KEY([WorkerID])
REFERENCES [dbo].[X_Experience] ([ExperienceID])
GO
ALTER TABLE [dbo].[X_FileData] CHECK CONSTRAINT [FK_X_FileData_X_Experience]
GO
ALTER TABLE [dbo].[X_FileData]  WITH CHECK ADD  CONSTRAINT [FK_X_FileID_X_FileID] FOREIGN KEY([ParentFileID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_FileData] CHECK CONSTRAINT [FK_X_FileID_X_FileID]
GO
ALTER TABLE [dbo].[X_Geology]  WITH CHECK ADD  CONSTRAINT [FK_X_GeologistData_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
GO
ALTER TABLE [dbo].[X_Geology] CHECK CONSTRAINT [FK_X_GeologistData_X_Header]
GO
ALTER TABLE [dbo].[X_Geology]  WITH CHECK ADD  CONSTRAINT [FK_X_GeologistData_X_Person] FOREIGN KEY([GeologyContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Geology] CHECK CONSTRAINT [FK_X_GeologistData_X_Person]
GO
ALTER TABLE [dbo].[X_Geophysics]  WITH CHECK ADD  CONSTRAINT [FK_X_Geophysics_X_DictionaryUnit] FOREIGN KEY([DimensionUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[X_Geophysics] CHECK CONSTRAINT [FK_X_Geophysics_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[X_Geophysics]  WITH CHECK ADD  CONSTRAINT [FK_X_Geophysics_X_FileData] FOREIGN KEY([OriginalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_Geophysics] CHECK CONSTRAINT [FK_X_Geophysics_X_FileData]
GO
ALTER TABLE [dbo].[X_Geophysics]  WITH CHECK ADD  CONSTRAINT [FK_X_Geophysics_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
GO
ALTER TABLE [dbo].[X_Geophysics] CHECK CONSTRAINT [FK_X_Geophysics_X_Header]
GO
ALTER TABLE [dbo].[X_GeophysicsData]  WITH CHECK ADD  CONSTRAINT [FK_X_GeophyicsData_X_GeophysicsMetadata] FOREIGN KEY([GeophysicsMetadataID])
REFERENCES [dbo].[X_GeophysicsMetadata] ([GeophysicsMetadataID])
GO
ALTER TABLE [dbo].[X_GeophysicsData] CHECK CONSTRAINT [FK_X_GeophyicsData_X_GeophysicsMetadata]
GO
ALTER TABLE [dbo].[X_GeophysicsMetadata]  WITH CHECK ADD  CONSTRAINT [FK_X_GeophysicsMetadata_X_Geophysics] FOREIGN KEY([GeophysicsID])
REFERENCES [dbo].[X_Geophysics] ([GeophysicsID])
GO
ALTER TABLE [dbo].[X_GeophysicsMetadata] CHECK CONSTRAINT [FK_X_GeophysicsMetadata_X_Geophysics]
GO
ALTER TABLE [dbo].[X_GeophysicsMetadata]  WITH CHECK ADD  CONSTRAINT [FK_X_GeophysicsMetadata_X_Parameter] FOREIGN KEY([ParameterID])
REFERENCES [dbo].[X_Parameter] ([ParameterID])
GO
ALTER TABLE [dbo].[X_GeophysicsMetadata] CHECK CONSTRAINT [FK_X_GeophysicsMetadata_X_Parameter]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_Company] FOREIGN KEY([GeologyCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_Company]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_Company1] FOREIGN KEY([GeophysicalLoggingCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_Company1]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryData_Status] FOREIGN KEY([DataStatusID])
REFERENCES [dbo].[X_DictionaryDataStatus] ([DataStatusID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryData_Status]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeodetic_Datum] FOREIGN KEY([GeodeticDatumID])
REFERENCES [dbo].[X_DictionaryGeodeticDatum] ([GeodeticDatumID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeodetic_Datum]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log] FOREIGN KEY([GeophysicalLogTypeID1])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log1] FOREIGN KEY([GeophysicalLogTypeID10])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log1]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log10] FOREIGN KEY([GeophysicalLogTypeID8])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log10]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log11] FOREIGN KEY([GeophysicalLogTypeID9])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log11]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log2] FOREIGN KEY([GeophysicalLogTypeID11])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log2]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log3] FOREIGN KEY([GeophysicalLogTypeID12])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log3]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log4] FOREIGN KEY([GeophysicalLogTypeID2])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log4]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log5] FOREIGN KEY([GeophysicalLogTypeID3])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log5]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log6] FOREIGN KEY([GeophysicalLogTypeID4])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log6]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log7] FOREIGN KEY([GeophysicalLogTypeID5])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log7]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log8] FOREIGN KEY([GeophysicalLogTypeID6])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log8]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log9] FOREIGN KEY([GeophysicalLogTypeID7])
REFERENCES [dbo].[X_DictionaryGeophysicalLogType] ([GeophysicalLogTypeID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryGeophys_Log9]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryHeight_Datum] FOREIGN KEY([HeightDatumID])
REFERENCES [dbo].[X_DictionaryHeightDatum] ([HeightDatumID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryHeight_Datum]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryHole_Purpose] FOREIGN KEY([PrimaryHolePurposeID])
REFERENCES [dbo].[X_DictionaryHolePurpose] ([HolePurposeID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryHole_Purpose]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryHole_Purpose1] FOREIGN KEY([SecondaryHolePurposeID])
REFERENCES [dbo].[X_DictionaryHolePurpose] ([HolePurposeID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryHole_Purpose1]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryHole_Status] FOREIGN KEY([HoleStatusID])
REFERENCES [dbo].[X_DictionaryHoleStatus] ([HoleStatusID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryHole_Status]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionaryHole_Type] FOREIGN KEY([HoleTypeID])
REFERENCES [dbo].[X_DictionaryHoleType] ([HoleTypeID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionaryHole_Type]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_DictionarySurvey_Accuracy] FOREIGN KEY([SurveyAccuracyID])
REFERENCES [dbo].[X_DictionarySurveyAccuracy] ([SurveyAccuracyID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_DictionarySurvey_Accuracy]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[X_Location] ([LocationID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_Location]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_Person] FOREIGN KEY([GeophysicalLoggerID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_Person]
GO
ALTER TABLE [dbo].[X_Header]  WITH CHECK ADD  CONSTRAINT [FK_X_Header_X_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[X_Header] CHECK CONSTRAINT [FK_X_Header_X_Project]
GO
ALTER TABLE [dbo].[X_HeaderRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_HeaderRelation_X_DictionaryRelationType] FOREIGN KEY([RelationTypeID])
REFERENCES [dbo].[X_DictionaryRelationType] ([RelationTypeID])
GO
ALTER TABLE [dbo].[X_HeaderRelation] CHECK CONSTRAINT [FK_X_HeaderRelation_X_DictionaryRelationType]
GO
ALTER TABLE [dbo].[X_HeaderRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_HeaderRelation_X_Header] FOREIGN KEY([OriginalHeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
GO
ALTER TABLE [dbo].[X_HeaderRelation] CHECK CONSTRAINT [FK_X_HeaderRelation_X_Header]
GO
ALTER TABLE [dbo].[X_HeaderRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_HeaderRelation_X_Header1] FOREIGN KEY([RelatedHeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
GO
ALTER TABLE [dbo].[X_HeaderRelation] CHECK CONSTRAINT [FK_X_HeaderRelation_X_Header1]
GO
ALTER TABLE [dbo].[X_Lease]  WITH CHECK ADD  CONSTRAINT [FK_X_Lease_X_Company] FOREIGN KEY([OwnerCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_Lease] CHECK CONSTRAINT [FK_X_Lease_X_Company]
GO
ALTER TABLE [dbo].[X_Lease]  WITH CHECK ADD  CONSTRAINT [FK_X_Lease_X_Contact] FOREIGN KEY([ApprovedByContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Lease] CHECK CONSTRAINT [FK_X_Lease_X_Contact]
GO
ALTER TABLE [dbo].[X_Lease]  WITH CHECK ADD  CONSTRAINT [FK_X_Lease_X_Tenement] FOREIGN KEY([TenementID])
REFERENCES [dbo].[X_Tenement] ([TenementID])
GO
ALTER TABLE [dbo].[X_Lease] CHECK CONSTRAINT [FK_X_Lease_X_Tenement]
GO
ALTER TABLE [dbo].[X_LeaseApplication]  WITH CHECK ADD  CONSTRAINT [FK_X_LeaseApplication_X_Company] FOREIGN KEY([OwnerCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_LeaseApplication] CHECK CONSTRAINT [FK_X_LeaseApplication_X_Company]
GO
ALTER TABLE [dbo].[X_LeaseApplication]  WITH CHECK ADD  CONSTRAINT [FK_X_LeaseApplication_X_Contact] FOREIGN KEY([ApprovedByContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_LeaseApplication] CHECK CONSTRAINT [FK_X_LeaseApplication_X_Contact]
GO
ALTER TABLE [dbo].[X_LeaseApplication]  WITH CHECK ADD  CONSTRAINT [FK_X_LeaseApplication_X_DictionaryLeaseApplicationType] FOREIGN KEY([LeaseApplicationTypeID])
REFERENCES [dbo].[X_DictionaryLeaseApplicationType] ([LeaseApplicationTypeID])
GO
ALTER TABLE [dbo].[X_LeaseApplication] CHECK CONSTRAINT [FK_X_LeaseApplication_X_DictionaryLeaseApplicationType]
GO
ALTER TABLE [dbo].[X_LeaseApplication]  WITH CHECK ADD  CONSTRAINT [FK_X_LeaseApplication_X_Tenement] FOREIGN KEY([TenementID])
REFERENCES [dbo].[X_Tenement] ([TenementID])
GO
ALTER TABLE [dbo].[X_LeaseApplication] CHECK CONSTRAINT [FK_X_LeaseApplication_X_Tenement]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_Lithology_X_DictionaryAdjective] FOREIGN KEY([AdjectiveID1])
REFERENCES [dbo].[X_DictionaryAdjective] ([AdjectiveID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_Lithology_X_DictionaryAdjective]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_Lithology_X_DictionaryDomain] FOREIGN KEY([DomainID])
REFERENCES [dbo].[X_DictionaryDomain] ([DomainID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_Lithology_X_DictionaryDomain]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_Lithology_X_DictionaryHorizon] FOREIGN KEY([HorizonID])
REFERENCES [dbo].[X_DictionaryHorizon] ([HorizonID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_Lithology_X_DictionaryHorizon]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_Lithology_X_DictionaryPly] FOREIGN KEY([PlyID])
REFERENCES [dbo].[X_DictionaryPly] ([PlyID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_Lithology_X_DictionaryPly]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_Lithology_X_DictionarySeam] FOREIGN KEY([SeamID])
REFERENCES [dbo].[X_DictionarySeam] ([SeamID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_Lithology_X_DictionarySeam]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_Lithology_X_DictionaryStratigraphy] FOREIGN KEY([StratigraphyID])
REFERENCES [dbo].[X_DictionaryStratigraphy] ([StratigraphyID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_Lithology_X_DictionaryStratigraphy]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryAdjective1] FOREIGN KEY([AdjectiveID2])
REFERENCES [dbo].[X_DictionaryAdjective] ([AdjectiveID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryAdjective1]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryAdjective2] FOREIGN KEY([AdjectiveID3])
REFERENCES [dbo].[X_DictionaryAdjective] ([AdjectiveID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryAdjective2]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryAdjective3] FOREIGN KEY([AdjectiveID4])
REFERENCES [dbo].[X_DictionaryAdjective] ([AdjectiveID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryAdjective3]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryBasal_Contact] FOREIGN KEY([BasalContactID])
REFERENCES [dbo].[X_DictionaryBasalContact] ([BasalContactID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryBasal_Contact]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryBed_Spacing] FOREIGN KEY([BedSpacingID])
REFERENCES [dbo].[X_DictionaryBedSpacing] ([BedSpacingID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryBed_Spacing]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryColour] FOREIGN KEY([ColourID])
REFERENCES [dbo].[X_DictionaryColour] ([ColourID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryColour]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryCore_State] FOREIGN KEY([CoreStateID])
REFERENCES [dbo].[X_DictionaryCoreState] ([CoreStateID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryCore_State]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryDefect_Intact] FOREIGN KEY([DefectCompletenessID])
REFERENCES [dbo].[X_DictionaryDefectCompleteness] ([DefectCompletenessID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryDefect_Intact]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryDefect_Spacing] FOREIGN KEY([DefectSpacingID])
REFERENCES [dbo].[X_DictionaryDefectSpacing] ([DefectSpacingID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryDefect_Spacing]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryDefect_Type] FOREIGN KEY([DefectTypeID])
REFERENCES [dbo].[X_DictionaryDefectType] ([DefectTypeID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryDefect_Type]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryEst_Strength] FOREIGN KEY([EstimatedStrengthID])
REFERENCES [dbo].[X_DictionaryEstimatedStrength] ([EstimatedStrengthID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryEst_Strength]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryGas] FOREIGN KEY([GasDetectedID])
REFERENCES [dbo].[X_DictionaryGasDetected] ([GasDetectedID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryGas]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryHue] FOREIGN KEY([HueID])
REFERENCES [dbo].[X_DictionaryHue] ([HueID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryHue]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryInterval_Status] FOREIGN KEY([IntervalStatusID])
REFERENCES [dbo].[X_DictionaryIntervalStatus] ([IntervalStatusID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryInterval_Status]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryLitho_Interrel] FOREIGN KEY([LithologyInterrelationID])
REFERENCES [dbo].[X_DictionaryLithologyInterrelation] ([LithologyInterralationID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryLitho_Interrel]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryLitho_Qual] FOREIGN KEY([LithologyQualifierID])
REFERENCES [dbo].[X_DictionaryLithologyQualifier] ([LithologyQualifierID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryLitho_Qual]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryLitho_Type] FOREIGN KEY([LithologyTypeID])
REFERENCES [dbo].[X_DictionaryLithologyType] ([LithologyTypeID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryLitho_Type]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryMech_State] FOREIGN KEY([MechanicalStateID])
REFERENCES [dbo].[X_DictionaryMechanicalState] ([MechanicalStateID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryMech_State]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryMin_Fos_Abund] FOREIGN KEY([MineralAndFossilAbundanceID])
REFERENCES [dbo].[X_DictionaryMineralAndFossilAbundance] ([MineralAndFossilAbundanceID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryMin_Fos_Abund]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryMin_Fos_Assoc] FOREIGN KEY([MineralAndFossilAssociationID])
REFERENCES [dbo].[X_DictionaryMineralAndFossilAssociation] ([MineralAndFossilAssociationID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryMin_Fos_Assoc]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryMin_Fos_Type] FOREIGN KEY([MineralAndFossilTypeID])
REFERENCES [dbo].[X_DictionaryMineralAndFossilType] ([MineralAndFossilTypeID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryMin_Fos_Type]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionarySample_Type] FOREIGN KEY([SampleTypeID])
REFERENCES [dbo].[X_DictionarySampleType] ([SampleTypeID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionarySample_Type]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionarySed_Feature] FOREIGN KEY([SedimentaryFeature1ID])
REFERENCES [dbo].[X_DictionarySedimentaryFeature] ([SedimentaryFeatureID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionarySed_Feature]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionarySed_Feature1] FOREIGN KEY([SedimentaryFeature2ID])
REFERENCES [dbo].[X_DictionarySedimentaryFeature] ([SedimentaryFeatureID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionarySed_Feature1]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryShade] FOREIGN KEY([ShadeID])
REFERENCES [dbo].[X_DictionaryShade] ([ShadeID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryShade]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryTexture] FOREIGN KEY([TextureID])
REFERENCES [dbo].[X_DictionaryTexture] ([TextureID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryTexture]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_DictionaryWeathering] FOREIGN KEY([WeatheringID])
REFERENCES [dbo].[X_DictionaryWeathering] ([WeatheringID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_DictionaryWeathering]
GO
ALTER TABLE [dbo].[X_Lithology]  WITH CHECK ADD  CONSTRAINT [FK_X_LithologyData_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
GO
ALTER TABLE [dbo].[X_Lithology] CHECK CONSTRAINT [FK_X_LithologyData_X_Header]
GO
ALTER TABLE [dbo].[X_Location]  WITH CHECK ADD  CONSTRAINT [FK_X_Location_X_Company] FOREIGN KEY([OwnerCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_Location] CHECK CONSTRAINT [FK_X_Location_X_Company]
GO
ALTER TABLE [dbo].[X_Location]  WITH CHECK ADD  CONSTRAINT [FK_X_Location_X_Contact] FOREIGN KEY([ResponsibleContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Location] CHECK CONSTRAINT [FK_X_Location_X_Contact]
GO
ALTER TABLE [dbo].[X_Location]  WITH CHECK ADD  CONSTRAINT [FK_X_Location_X_DictionaryCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
GO
ALTER TABLE [dbo].[X_Location] CHECK CONSTRAINT [FK_X_Location_X_DictionaryCountry]
GO
ALTER TABLE [dbo].[X_Location]  WITH CHECK ADD  CONSTRAINT [FK_X_Location_X_DictionaryCountryState] FOREIGN KEY([CountryStateID])
REFERENCES [dbo].[X_DictionaryCountryState] ([CountryStateID])
GO
ALTER TABLE [dbo].[X_Location] CHECK CONSTRAINT [FK_X_Location_X_DictionaryCountryState]
GO
ALTER TABLE [dbo].[X_Location]  WITH CHECK ADD  CONSTRAINT [FK_X_Location_X_DictionaryLocationType] FOREIGN KEY([LocationTypeID])
REFERENCES [dbo].[X_DictionaryLocationType] ([LocationTypeID])
GO
ALTER TABLE [dbo].[X_Location] CHECK CONSTRAINT [FK_X_Location_X_DictionaryLocationType]
GO
ALTER TABLE [dbo].[X_LocationAlias]  WITH CHECK ADD  CONSTRAINT [FK_X_LocationAlias_X_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[X_Location] ([LocationID])
GO
ALTER TABLE [dbo].[X_LocationAlias] CHECK CONSTRAINT [FK_X_LocationAlias_X_Location]
GO
ALTER TABLE [dbo].[X_LocationHistory]  WITH CHECK ADD  CONSTRAINT [FK_X_LocationHistory_X_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_LocationHistory] CHECK CONSTRAINT [FK_X_LocationHistory_X_Contact]
GO
ALTER TABLE [dbo].[X_LocationHistory]  WITH CHECK ADD  CONSTRAINT [FK_X_LocationHistory_X_Location] FOREIGN KEY([CorrectedLocationID])
REFERENCES [dbo].[X_Location] ([LocationID])
GO
ALTER TABLE [dbo].[X_LocationHistory] CHECK CONSTRAINT [FK_X_LocationHistory_X_Location]
GO
ALTER TABLE [dbo].[X_MetaDataRelation]  WITH CHECK ADD  CONSTRAINT [FK_X_MetaDataRelation_X_MetaData] FOREIGN KEY([MetaDataID])
REFERENCES [dbo].[X_MetaData] ([MetaDataID])
GO
ALTER TABLE [dbo].[X_MetaDataRelation] CHECK CONSTRAINT [FK_X_MetaDataRelation_X_MetaData]
GO
ALTER TABLE [dbo].[X_Mineralogy]  WITH CHECK ADD  CONSTRAINT [FK_X_Mineralogy_X_DictionaryMin_Abundance] FOREIGN KEY([MineralAbundanceID])
REFERENCES [dbo].[X_DictionaryMineralAbundance] ([MineralAbundanceID])
GO
ALTER TABLE [dbo].[X_Mineralogy] CHECK CONSTRAINT [FK_X_Mineralogy_X_DictionaryMin_Abundance]
GO
ALTER TABLE [dbo].[X_Mineralogy]  WITH CHECK ADD  CONSTRAINT [FK_X_Mineralogy_X_DictionaryMin_Form] FOREIGN KEY([MineralFormID])
REFERENCES [dbo].[X_DictionaryMineralForm] ([MineralFormID])
GO
ALTER TABLE [dbo].[X_Mineralogy] CHECK CONSTRAINT [FK_X_Mineralogy_X_DictionaryMin_Form]
GO
ALTER TABLE [dbo].[X_Mineralogy]  WITH CHECK ADD  CONSTRAINT [FK_X_Mineralogy_X_DictionaryMin_Style] FOREIGN KEY([MineralStyleID])
REFERENCES [dbo].[X_DictionaryMineralStyle] ([MineralStyleID])
GO
ALTER TABLE [dbo].[X_Mineralogy] CHECK CONSTRAINT [FK_X_Mineralogy_X_DictionaryMin_Style]
GO
ALTER TABLE [dbo].[X_Mineralogy]  WITH CHECK ADD  CONSTRAINT [FK_X_Mineralogy_X_DictionaryMin_Type] FOREIGN KEY([MineralTypeID])
REFERENCES [dbo].[X_DictionaryMineralType] ([MineralTypeID])
GO
ALTER TABLE [dbo].[X_Mineralogy] CHECK CONSTRAINT [FK_X_Mineralogy_X_DictionaryMin_Type]
GO
ALTER TABLE [dbo].[X_Mineralogy]  WITH CHECK ADD  CONSTRAINT [FK_X_Mineralogy_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
GO
ALTER TABLE [dbo].[X_Mineralogy] CHECK CONSTRAINT [FK_X_Mineralogy_X_Header]
GO
ALTER TABLE [dbo].[X_ModelCharacteristic]  WITH CHECK ADD  CONSTRAINT [FK_X_ModelCharacteristic_X_DictionaryCharacteristic] FOREIGN KEY([CharacteristicID])
REFERENCES [dbo].[X_DictionaryCharacteristic] ([CharacteristicID])
GO
ALTER TABLE [dbo].[X_ModelCharacteristic] CHECK CONSTRAINT [FK_X_ModelCharacteristic_X_DictionaryCharacteristic]
GO
ALTER TABLE [dbo].[X_ModelCharacteristic]  WITH CHECK ADD  CONSTRAINT [FK_X_ModelCharacteristic_X_DictionaryModel] FOREIGN KEY([ModelID])
REFERENCES [dbo].[X_DictionaryModel] ([ModelID])
GO
ALTER TABLE [dbo].[X_ModelCharacteristic] CHECK CONSTRAINT [FK_X_ModelCharacteristic_X_DictionaryModel]
GO
ALTER TABLE [dbo].[X_Opportunity]  WITH CHECK ADD  CONSTRAINT [FK_X_Opportunity_X_Company] FOREIGN KEY([OpportunityCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_Opportunity] CHECK CONSTRAINT [FK_X_Opportunity_X_Company]
GO
ALTER TABLE [dbo].[X_Opportunity]  WITH CHECK ADD  CONSTRAINT [FK_X_Opportunity_X_Contact] FOREIGN KEY([OpportunityContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Opportunity] CHECK CONSTRAINT [FK_X_Opportunity_X_Contact]
GO
ALTER TABLE [dbo].[X_Opportunity]  WITH CHECK ADD  CONSTRAINT [FK_X_Opportunity_X_Contact1] FOREIGN KEY([OpenedBy])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Opportunity] CHECK CONSTRAINT [FK_X_Opportunity_X_Contact1]
GO
ALTER TABLE [dbo].[X_Opportunity]  WITH CHECK ADD  CONSTRAINT [FK_X_Opportunity_X_Contact2] FOREIGN KEY([AssignedBy])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Opportunity] CHECK CONSTRAINT [FK_X_Opportunity_X_Contact2]
GO
ALTER TABLE [dbo].[X_Opportunity]  WITH CHECK ADD  CONSTRAINT [FK_X_Opportunity_X_Contact3] FOREIGN KEY([MaintainedBy])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Opportunity] CHECK CONSTRAINT [FK_X_Opportunity_X_Contact3]
GO
ALTER TABLE [dbo].[X_Opportunity]  WITH CHECK ADD  CONSTRAINT [FK_X_Opportunity_X_Contact4] FOREIGN KEY([ConvertedBy])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Opportunity] CHECK CONSTRAINT [FK_X_Opportunity_X_Contact4]
GO
ALTER TABLE [dbo].[X_Opportunity]  WITH CHECK ADD  CONSTRAINT [FK_X_Opportunity_X_Contact5] FOREIGN KEY([ProposalContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Opportunity] CHECK CONSTRAINT [FK_X_Opportunity_X_Contact5]
GO
ALTER TABLE [dbo].[X_Opportunity]  WITH CHECK ADD  CONSTRAINT [FK_X_Opportunity_X_DictionaryWorkType] FOREIGN KEY([StatusWorkTypeID])
REFERENCES [dbo].[X_DictionaryWorkType] ([WorkTypeID])
GO
ALTER TABLE [dbo].[X_Opportunity] CHECK CONSTRAINT [FK_X_Opportunity_X_DictionaryWorkType]
GO
ALTER TABLE [dbo].[X_Opportunity]  WITH CHECK ADD  CONSTRAINT [FK_X_Opportunity_X_DictionaryWorkType1] FOREIGN KEY([RegardingWorkTypeID])
REFERENCES [dbo].[X_DictionaryWorkType] ([WorkTypeID])
GO
ALTER TABLE [dbo].[X_Opportunity] CHECK CONSTRAINT [FK_X_Opportunity_X_DictionaryWorkType1]
GO
ALTER TABLE [dbo].[X_Opportunity]  WITH CHECK ADD  CONSTRAINT [FK_X_Opportunity_X_Experience] FOREIGN KEY([ExperienceID])
REFERENCES [dbo].[X_Experience] ([ExperienceID])
GO
ALTER TABLE [dbo].[X_Opportunity] CHECK CONSTRAINT [FK_X_Opportunity_X_Experience]
GO
ALTER TABLE [dbo].[X_Opportunity]  WITH CHECK ADD  CONSTRAINT [FK_X_Opportunity_X_FileData] FOREIGN KEY([ProposalFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_Opportunity] CHECK CONSTRAINT [FK_X_Opportunity_X_FileData]
GO
ALTER TABLE [dbo].[X_Opportunity]  WITH CHECK ADD  CONSTRAINT [FK_X_Opportunity_X_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[X_Opportunity] CHECK CONSTRAINT [FK_X_Opportunity_X_Project]
GO
ALTER TABLE [dbo].[X_Parameter]  WITH CHECK ADD  CONSTRAINT [FK_X_CompositeData_X_DictionaryUnit] FOREIGN KEY([UnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[X_Parameter] CHECK CONSTRAINT [FK_X_CompositeData_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[X_ParameterDuplicate]  WITH CHECK ADD  CONSTRAINT [FK_X_ParameterDuplicate_X_Parameter] FOREIGN KEY([Parameter1ID])
REFERENCES [dbo].[X_Parameter] ([ParameterID])
GO
ALTER TABLE [dbo].[X_ParameterDuplicate] CHECK CONSTRAINT [FK_X_ParameterDuplicate_X_Parameter]
GO
ALTER TABLE [dbo].[X_ParameterDuplicate]  WITH CHECK ADD  CONSTRAINT [FK_X_ParameterDuplicate_X_Parameter1] FOREIGN KEY([Parameter2ID])
REFERENCES [dbo].[X_Parameter] ([ParameterID])
GO
ALTER TABLE [dbo].[X_ParameterDuplicate] CHECK CONSTRAINT [FK_X_ParameterDuplicate_X_Parameter1]
GO
ALTER TABLE [dbo].[X_ParameterGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_ParameterGroup_X_DictionaryGroup] FOREIGN KEY([GroupID])
REFERENCES [dbo].[X_DictionaryGroup] ([GroupID])
GO
ALTER TABLE [dbo].[X_ParameterGroup] CHECK CONSTRAINT [FK_X_ParameterGroup_X_DictionaryGroup]
GO
ALTER TABLE [dbo].[X_ParameterGroup]  WITH CHECK ADD  CONSTRAINT [FK_X_ParameterGroup_X_ParameterGroup] FOREIGN KEY([ParameterID])
REFERENCES [dbo].[X_Parameter] ([ParameterID])
GO
ALTER TABLE [dbo].[X_ParameterGroup] CHECK CONSTRAINT [FK_X_ParameterGroup_X_ParameterGroup]
GO
ALTER TABLE [dbo].[X_PartCharacteristic]  WITH CHECK ADD  CONSTRAINT [FK_X_PartCharacteristic_Q_DictionaryPart] FOREIGN KEY([PartID])
REFERENCES [dbo].[Q_DictionaryPart] ([PartID])
GO
ALTER TABLE [dbo].[X_PartCharacteristic] CHECK CONSTRAINT [FK_X_PartCharacteristic_Q_DictionaryPart]
GO
ALTER TABLE [dbo].[X_PartCharacteristic]  WITH CHECK ADD  CONSTRAINT [FK_X_PartCharacteristic_X_DictionaryCharacteristic] FOREIGN KEY([CharacteristicID])
REFERENCES [dbo].[X_DictionaryCharacteristic] ([CharacteristicID])
GO
ALTER TABLE [dbo].[X_PartCharacteristic] CHECK CONSTRAINT [FK_X_PartCharacteristic_X_DictionaryCharacteristic]
GO
ALTER TABLE [dbo].[X_PointLoad]  WITH CHECK ADD  CONSTRAINT [FK_X_PointLoadData_X_DictionaryFailure_Mode] FOREIGN KEY([FailureModeID])
REFERENCES [dbo].[X_DictionaryFailureMode] ([FailureModeID])
GO
ALTER TABLE [dbo].[X_PointLoad] CHECK CONSTRAINT [FK_X_PointLoadData_X_DictionaryFailure_Mode]
GO
ALTER TABLE [dbo].[X_PointLoad]  WITH CHECK ADD  CONSTRAINT [FK_X_PointLoadData_X_DictionaryPL_Test_Type] FOREIGN KEY([PointLoadTestTypeID])
REFERENCES [dbo].[X_DictionaryPointLoadTestType] ([PointLoadTestTypeID])
GO
ALTER TABLE [dbo].[X_PointLoad] CHECK CONSTRAINT [FK_X_PointLoadData_X_DictionaryPL_Test_Type]
GO
ALTER TABLE [dbo].[X_PointLoad]  WITH CHECK ADD  CONSTRAINT [FK_X_PointLoadData_X_DictionarySample_State] FOREIGN KEY([SampleStateID])
REFERENCES [dbo].[X_DictionarySampleState] ([SampleStateID])
GO
ALTER TABLE [dbo].[X_PointLoad] CHECK CONSTRAINT [FK_X_PointLoadData_X_DictionarySample_State]
GO
ALTER TABLE [dbo].[X_PointLoad]  WITH CHECK ADD  CONSTRAINT [FK_X_PointLoadData_X_DictionarySample_Type] FOREIGN KEY([SampleTypeID])
REFERENCES [dbo].[X_DictionarySampleType] ([SampleTypeID])
GO
ALTER TABLE [dbo].[X_PointLoad] CHECK CONSTRAINT [FK_X_PointLoadData_X_DictionarySample_Type]
GO
ALTER TABLE [dbo].[X_PointLoad]  WITH CHECK ADD  CONSTRAINT [FK_X_PointLoadData_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
GO
ALTER TABLE [dbo].[X_PointLoad] CHECK CONSTRAINT [FK_X_PointLoadData_X_Header]
GO
ALTER TABLE [dbo].[X_Project]  WITH CHECK ADD  CONSTRAINT [FK_X_Project_X_Company] FOREIGN KEY([ClientCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_Project] CHECK CONSTRAINT [FK_X_Project_X_Company]
GO
ALTER TABLE [dbo].[X_Project]  WITH CHECK ADD  CONSTRAINT [FK_X_Project_X_Tenement] FOREIGN KEY([TenementID])
REFERENCES [dbo].[X_Tenement] ([TenementID])
GO
ALTER TABLE [dbo].[X_Project] CHECK CONSTRAINT [FK_X_Project_X_Tenement]
GO
ALTER TABLE [dbo].[X_ProjectDeliverable]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectDeliverable_X_Contact] FOREIGN KEY([InitiatedBy])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_ProjectDeliverable] CHECK CONSTRAINT [FK_X_ProjectDeliverable_X_Contact]
GO
ALTER TABLE [dbo].[X_ProjectDeliverable]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectDeliverable_X_Contact1] FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_ProjectDeliverable] CHECK CONSTRAINT [FK_X_ProjectDeliverable_X_Contact1]
GO
ALTER TABLE [dbo].[X_ProjectDeliverable]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectDeliverable_X_Contact2] FOREIGN KEY([EvidenceContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_ProjectDeliverable] CHECK CONSTRAINT [FK_X_ProjectDeliverable_X_Contact2]
GO
ALTER TABLE [dbo].[X_ProjectDeliverable]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectDeliverable_X_Contract] FOREIGN KEY([EvidenceContractID])
REFERENCES [dbo].[X_Contract] ([ContractID])
GO
ALTER TABLE [dbo].[X_ProjectDeliverable] CHECK CONSTRAINT [FK_X_ProjectDeliverable_X_Contract]
GO
ALTER TABLE [dbo].[X_ProjectDeliverable]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectDeliverable_X_DictionaryUnit] FOREIGN KEY([ExpectedProRataPerUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[X_ProjectDeliverable] CHECK CONSTRAINT [FK_X_ProjectDeliverable_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[X_ProjectDeliverable]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectDeliverable_X_DictionaryWorkType] FOREIGN KEY([WorkTypeID])
REFERENCES [dbo].[X_DictionaryWorkType] ([WorkTypeID])
GO
ALTER TABLE [dbo].[X_ProjectDeliverable] CHECK CONSTRAINT [FK_X_ProjectDeliverable_X_DictionaryWorkType]
GO
ALTER TABLE [dbo].[X_ProjectDeliverable]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectDeliverable_X_FileData] FOREIGN KEY([EvidenceFileDataID])
REFERENCES [dbo].[X_FileData] ([FileDataID])
GO
ALTER TABLE [dbo].[X_ProjectDeliverable] CHECK CONSTRAINT [FK_X_ProjectDeliverable_X_FileData]
GO
ALTER TABLE [dbo].[X_ProjectDeliverable]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectDeliverable_X_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[X_ProjectDeliverable] CHECK CONSTRAINT [FK_X_ProjectDeliverable_X_Project]
GO
ALTER TABLE [dbo].[X_ProjectDeliverable]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectDeliverable_X_ProjectPlanTask] FOREIGN KEY([MilestoneTaskID])
REFERENCES [dbo].[X_ProjectPlanTask] ([ProjectPlanTaskID])
GO
ALTER TABLE [dbo].[X_ProjectDeliverable] CHECK CONSTRAINT [FK_X_ProjectDeliverable_X_ProjectPlanTask]
GO
ALTER TABLE [dbo].[X_ProjectPlan]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlan_X_Contact] FOREIGN KEY([ResponsibleContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_ProjectPlan] CHECK CONSTRAINT [FK_X_ProjectPlan_X_Contact]
GO
ALTER TABLE [dbo].[X_ProjectPlan]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlan_X_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[X_ProjectPlan] CHECK CONSTRAINT [FK_X_ProjectPlan_X_Project]
GO
ALTER TABLE [dbo].[X_ProjectPlan]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlan_X_ProjectPlan] FOREIGN KEY([ParentProjectPlanID])
REFERENCES [dbo].[X_ProjectPlan] ([ProjectPlanID])
GO
ALTER TABLE [dbo].[X_ProjectPlan] CHECK CONSTRAINT [FK_X_ProjectPlan_X_ProjectPlan]
GO
ALTER TABLE [dbo].[X_ProjectPlanTask]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTask_X_DictionaryWorkType] FOREIGN KEY([WorkTypeID])
REFERENCES [dbo].[X_DictionaryWorkType] ([WorkTypeID])
GO
ALTER TABLE [dbo].[X_ProjectPlanTask] CHECK CONSTRAINT [FK_X_ProjectPlanTask_X_DictionaryWorkType]
GO
ALTER TABLE [dbo].[X_ProjectPlanTask]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTask_X_ProjectPlan] FOREIGN KEY([ProjectPlanID])
REFERENCES [dbo].[X_ProjectPlan] ([ProjectPlanID])
GO
ALTER TABLE [dbo].[X_ProjectPlanTask] CHECK CONSTRAINT [FK_X_ProjectPlanTask_X_ProjectPlan]
GO
ALTER TABLE [dbo].[X_ProjectPlanTask]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTask_X_ProjectPlanTask] FOREIGN KEY([ParentProjectTaskID])
REFERENCES [dbo].[X_ProjectPlanTask] ([ProjectPlanTaskID])
GO
ALTER TABLE [dbo].[X_ProjectPlanTask] CHECK CONSTRAINT [FK_X_ProjectPlanTask_X_ProjectPlanTask]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskComplianceResponse]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTaskComplianceResponse_X_ComplianceWorkType] FOREIGN KEY([ComplianceWorkTypeID])
REFERENCES [dbo].[X_ComplianceWorkType] ([ComplianceWorkTypeID])
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskComplianceResponse] CHECK CONSTRAINT [FK_X_ProjectPlanTaskComplianceResponse_X_ComplianceWorkType]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskComplianceResponse]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTaskComplianceResponse_X_Contact] FOREIGN KEY([CompletedBy])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskComplianceResponse] CHECK CONSTRAINT [FK_X_ProjectPlanTaskComplianceResponse_X_Contact]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskComplianceResponse]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTaskComplianceResponse_X_Contact1] FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskComplianceResponse] CHECK CONSTRAINT [FK_X_ProjectPlanTaskComplianceResponse_X_Contact1]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskComplianceResponse]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTaskComplianceResponse_X_ProjectPlanTask] FOREIGN KEY([ProjectPlanTaskID])
REFERENCES [dbo].[X_ProjectPlanTask] ([ProjectPlanTaskID])
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskComplianceResponse] CHECK CONSTRAINT [FK_X_ProjectPlanTaskComplianceResponse_X_ProjectPlanTask]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskComplianceResponse]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTaskComplianceResponse_X_ProjectPlanTaskResponse] FOREIGN KEY([ProjectPlanTaskResponseID])
REFERENCES [dbo].[X_ProjectPlanTaskResponse] ([ProjectPlanTaskResponseID])
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskComplianceResponse] CHECK CONSTRAINT [FK_X_ProjectPlanTaskComplianceResponse_X_ProjectPlanTaskResponse]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTaskResponse_X_Contact] FOREIGN KEY([ResponsibleContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse] CHECK CONSTRAINT [FK_X_ProjectPlanTaskResponse_X_Contact]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTaskResponse_X_Contact1] FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse] CHECK CONSTRAINT [FK_X_ProjectPlanTaskResponse_X_Contact1]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTaskResponse_X_DictionaryWorkType] FOREIGN KEY([ActualWorkTypeID])
REFERENCES [dbo].[X_DictionaryWorkType] ([WorkTypeID])
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse] CHECK CONSTRAINT [FK_X_ProjectPlanTaskResponse_X_DictionaryWorkType]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTaskResponse_X_ProjectPlanTask] FOREIGN KEY([ProjectPlanTaskID])
REFERENCES [dbo].[X_ProjectPlanTask] ([ProjectPlanTaskID])
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskResponse] CHECK CONSTRAINT [FK_X_ProjectPlanTaskResponse_X_ProjectPlanTask]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskWorker]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTaskWorker_X_ProjectPlanTask] FOREIGN KEY([ProjectPlanTaskID])
REFERENCES [dbo].[X_ProjectPlanTask] ([ProjectPlanTaskID])
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskWorker] CHECK CONSTRAINT [FK_X_ProjectPlanTaskWorker_X_ProjectPlanTask]
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskWorker]  WITH CHECK ADD  CONSTRAINT [FK_X_ProjectPlanTaskWorker_X_Worker] FOREIGN KEY([WorkerID])
REFERENCES [dbo].[X_Experience] ([ExperienceID])
GO
ALTER TABLE [dbo].[X_ProjectPlanTaskWorker] CHECK CONSTRAINT [FK_X_ProjectPlanTaskWorker_X_Worker]
GO
ALTER TABLE [dbo].[X_Prospectus]  WITH CHECK ADD  CONSTRAINT [FK_X_Prospectus_X_Tenement] FOREIGN KEY([TenementID])
REFERENCES [dbo].[X_Tenement] ([TenementID])
GO
ALTER TABLE [dbo].[X_Prospectus] CHECK CONSTRAINT [FK_X_Prospectus_X_Tenement]
GO
ALTER TABLE [dbo].[X_ProspectusProject]  WITH CHECK ADD  CONSTRAINT [FK_X_ProspectusProject_X_DictionaryCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
GO
ALTER TABLE [dbo].[X_ProspectusProject] CHECK CONSTRAINT [FK_X_ProspectusProject_X_DictionaryCountry]
GO
ALTER TABLE [dbo].[X_ProspectusProject]  WITH CHECK ADD  CONSTRAINT [FK_X_ProspectusProject_X_Prospectus] FOREIGN KEY([ProspectusID])
REFERENCES [dbo].[X_Prospectus] ([ProspectusID])
GO
ALTER TABLE [dbo].[X_ProspectusProject] CHECK CONSTRAINT [FK_X_ProspectusProject_X_Prospectus]
GO
ALTER TABLE [dbo].[X_ProspectusProjectCommodity]  WITH CHECK ADD  CONSTRAINT [FK_X_ProspectusProjectCommodityID_X_DictionaryCommodity] FOREIGN KEY([CommodityID])
REFERENCES [dbo].[X_DictionaryCommodity] ([CommodityID])
GO
ALTER TABLE [dbo].[X_ProspectusProjectCommodity] CHECK CONSTRAINT [FK_X_ProspectusProjectCommodityID_X_DictionaryCommodity]
GO
ALTER TABLE [dbo].[X_ProspectusProjectCommodity]  WITH CHECK ADD  CONSTRAINT [FK_X_ProspectusProjectCommodityID_X_ProspectusProject] FOREIGN KEY([ProspectusProjectID])
REFERENCES [dbo].[X_ProspectusProject] ([ProspectusProjectID])
GO
ALTER TABLE [dbo].[X_ProspectusProjectCommodity] CHECK CONSTRAINT [FK_X_ProspectusProjectCommodityID_X_ProspectusProject]
GO
ALTER TABLE [dbo].[X_ProspectusProjectProvince]  WITH CHECK ADD  CONSTRAINT [FK_X_ProspectusProjectProvince_X_ProspectusProject] FOREIGN KEY([ProspectusProjectID])
REFERENCES [dbo].[X_ProspectusProject] ([ProspectusProjectID])
GO
ALTER TABLE [dbo].[X_ProspectusProjectProvince] CHECK CONSTRAINT [FK_X_ProspectusProjectProvince_X_ProspectusProject]
GO
ALTER TABLE [dbo].[X_ProspectusProjectProvince]  WITH CHECK ADD  CONSTRAINT [FK_X_ProspectusProjectProvince_X_Province] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[X_Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[X_ProspectusProjectProvince] CHECK CONSTRAINT [FK_X_ProspectusProjectProvince_X_Province]
GO
ALTER TABLE [dbo].[X_Province]  WITH CHECK ADD  CONSTRAINT [FK_X_Province_X_Company] FOREIGN KEY([OwnerCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_Province] CHECK CONSTRAINT [FK_X_Province_X_Company]
GO
ALTER TABLE [dbo].[X_Province]  WITH CHECK ADD  CONSTRAINT [FK_X_Province_X_Contact] FOREIGN KEY([ApprovedByContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Province] CHECK CONSTRAINT [FK_X_Province_X_Contact]
GO
ALTER TABLE [dbo].[X_Province]  WITH CHECK ADD  CONSTRAINT [FK_X_Province_X_DictionaryCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
GO
ALTER TABLE [dbo].[X_Province] CHECK CONSTRAINT [FK_X_Province_X_DictionaryCountry]
GO
ALTER TABLE [dbo].[X_Province]  WITH CHECK ADD  CONSTRAINT [FK_X_Province_X_DictionaryCountryState] FOREIGN KEY([CountryStateID])
REFERENCES [dbo].[X_DictionaryCountryState] ([CountryStateID])
GO
ALTER TABLE [dbo].[X_Province] CHECK CONSTRAINT [FK_X_Province_X_DictionaryCountryState]
GO
ALTER TABLE [dbo].[X_Province]  WITH CHECK ADD  CONSTRAINT [FK_X_Province_X_DictionaryProvinceGroup] FOREIGN KEY([ProvinceGroupID])
REFERENCES [dbo].[X_DictionaryProvinceGroup] ([ProvinceGroupID])
GO
ALTER TABLE [dbo].[X_Province] CHECK CONSTRAINT [FK_X_Province_X_DictionaryProvinceGroup]
GO
ALTER TABLE [dbo].[X_Province]  WITH CHECK ADD  CONSTRAINT [FK_X_Province_X_DictionaryProvinceType] FOREIGN KEY([ProvinceTypeID])
REFERENCES [dbo].[X_DictionaryProvinceType] ([ProvinceTypeID])
GO
ALTER TABLE [dbo].[X_Province] CHECK CONSTRAINT [FK_X_Province_X_DictionaryProvinceType]
GO
ALTER TABLE [dbo].[X_Recovery]  WITH CHECK ADD  CONSTRAINT [FK_X_RecoveryData_X_DictionaryDrill_Size_Name] FOREIGN KEY([DrillSizeID])
REFERENCES [dbo].[X_DictionaryDrillSize] ([DrillSizeID])
GO
ALTER TABLE [dbo].[X_Recovery] CHECK CONSTRAINT [FK_X_RecoveryData_X_DictionaryDrill_Size_Name]
GO
ALTER TABLE [dbo].[X_Recovery]  WITH CHECK ADD  CONSTRAINT [FK_X_RecoveryData_X_Header1] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
GO
ALTER TABLE [dbo].[X_Recovery] CHECK CONSTRAINT [FK_X_RecoveryData_X_Header1]
GO
ALTER TABLE [dbo].[X_Sample]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTestSample_X_DictionarySampleCategory] FOREIGN KEY([SampleCategoryID])
REFERENCES [dbo].[X_DictionarySampleCategory] ([SampleCategoryID])
GO
ALTER TABLE [dbo].[X_Sample] CHECK CONSTRAINT [FK_X_AssayGroupTestSample_X_DictionarySampleCategory]
GO
ALTER TABLE [dbo].[X_Sample]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTestSample_X_DictionarySampleState] FOREIGN KEY([SampleStateID])
REFERENCES [dbo].[X_DictionarySampleState] ([SampleStateID])
GO
ALTER TABLE [dbo].[X_Sample] CHECK CONSTRAINT [FK_X_AssayGroupTestSample_X_DictionarySampleState]
GO
ALTER TABLE [dbo].[X_Sample]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTestSample_X_DictionarySampleType] FOREIGN KEY([SampleTypeID])
REFERENCES [dbo].[X_DictionarySampleType] ([SampleTypeID])
GO
ALTER TABLE [dbo].[X_Sample] CHECK CONSTRAINT [FK_X_AssayGroupTestSample_X_DictionarySampleType]
GO
ALTER TABLE [dbo].[X_Sample]  WITH CHECK ADD  CONSTRAINT [FK_X_AssayGroupTestSample_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
GO
ALTER TABLE [dbo].[X_Sample] CHECK CONSTRAINT [FK_X_AssayGroupTestSample_X_Header]
GO
ALTER TABLE [dbo].[X_SecurityBlacklist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityBlacklist_X_Company] FOREIGN KEY([OwnerCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_SecurityBlacklist] CHECK CONSTRAINT [FK_X_SecurityBlacklist_X_Company]
GO
ALTER TABLE [dbo].[X_SecurityBlacklist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityBlacklist_X_Company1] FOREIGN KEY([AccessorCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_SecurityBlacklist] CHECK CONSTRAINT [FK_X_SecurityBlacklist_X_Company1]
GO
ALTER TABLE [dbo].[X_SecurityBlacklist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityBlacklist_X_Contact] FOREIGN KEY([AccessorContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_SecurityBlacklist] CHECK CONSTRAINT [FK_X_SecurityBlacklist_X_Contact]
GO
ALTER TABLE [dbo].[X_SecurityBlacklist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityBlacklist_X_Project] FOREIGN KEY([OwnerProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[X_SecurityBlacklist] CHECK CONSTRAINT [FK_X_SecurityBlacklist_X_Project]
GO
ALTER TABLE [dbo].[X_SecurityBlacklist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityBlacklist_X_Project1] FOREIGN KEY([AccessorProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[X_SecurityBlacklist] CHECK CONSTRAINT [FK_X_SecurityBlacklist_X_Project1]
GO
ALTER TABLE [dbo].[X_SecurityWhitelist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityWhitelist_X_Company] FOREIGN KEY([OwnerCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_SecurityWhitelist] CHECK CONSTRAINT [FK_X_SecurityWhitelist_X_Company]
GO
ALTER TABLE [dbo].[X_SecurityWhitelist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityWhitelist_X_Company1] FOREIGN KEY([AccessorCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_SecurityWhitelist] CHECK CONSTRAINT [FK_X_SecurityWhitelist_X_Company1]
GO
ALTER TABLE [dbo].[X_SecurityWhitelist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityWhitelist_X_Contact] FOREIGN KEY([AccessorContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_SecurityWhitelist] CHECK CONSTRAINT [FK_X_SecurityWhitelist_X_Contact]
GO
ALTER TABLE [dbo].[X_SecurityWhitelist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityWhitelist_X_Contact1] FOREIGN KEY([AccessorContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_SecurityWhitelist] CHECK CONSTRAINT [FK_X_SecurityWhitelist_X_Contact1]
GO
ALTER TABLE [dbo].[X_SecurityWhitelist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityWhitelist_X_Project] FOREIGN KEY([OwnerProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[X_SecurityWhitelist] CHECK CONSTRAINT [FK_X_SecurityWhitelist_X_Project]
GO
ALTER TABLE [dbo].[X_SecurityWhitelist]  WITH CHECK ADD  CONSTRAINT [FK_X_SecurityWhitelist_X_Project1] FOREIGN KEY([AccessorProjectID])
REFERENCES [dbo].[X_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[X_SecurityWhitelist] CHECK CONSTRAINT [FK_X_SecurityWhitelist_X_Project1]
GO
ALTER TABLE [dbo].[X_Survey]  WITH CHECK ADD  CONSTRAINT [FK_X_Survey_X_Company] FOREIGN KEY([SurveyCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_Survey] CHECK CONSTRAINT [FK_X_Survey_X_Company]
GO
ALTER TABLE [dbo].[X_Survey]  WITH CHECK ADD  CONSTRAINT [FK_X_Survey_X_DictionaryModel] FOREIGN KEY([InstrumentModelID])
REFERENCES [dbo].[X_DictionaryModel] ([ModelID])
GO
ALTER TABLE [dbo].[X_Survey] CHECK CONSTRAINT [FK_X_Survey_X_DictionaryModel]
GO
ALTER TABLE [dbo].[X_Survey]  WITH CHECK ADD  CONSTRAINT [FK_X_Survey_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
GO
ALTER TABLE [dbo].[X_Survey] CHECK CONSTRAINT [FK_X_Survey_X_Header]
GO
ALTER TABLE [dbo].[X_Survey]  WITH CHECK ADD  CONSTRAINT [FK_X_Survey_X_Person] FOREIGN KEY([SurveyContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Survey] CHECK CONSTRAINT [FK_X_Survey_X_Person]
GO
ALTER TABLE [dbo].[X_Task]  WITH CHECK ADD  CONSTRAINT [FK_X_Task_X_DictionaryUnit] FOREIGN KEY([EstimatedDurationUnitID])
REFERENCES [dbo].[X_DictionaryUnit] ([UnitID])
GO
ALTER TABLE [dbo].[X_Task] CHECK CONSTRAINT [FK_X_Task_X_DictionaryUnit]
GO
ALTER TABLE [dbo].[X_Task]  WITH CHECK ADD  CONSTRAINT [FK_X_Task_X_Experience] FOREIGN KEY([WorkTypeID])
REFERENCES [dbo].[X_Experience] ([ExperienceID])
GO
ALTER TABLE [dbo].[X_Task] CHECK CONSTRAINT [FK_X_Task_X_Experience]
GO
ALTER TABLE [dbo].[X_Task]  WITH CHECK ADD  CONSTRAINT [FK_X_Task_X_Task] FOREIGN KEY([ParentTaskID])
REFERENCES [dbo].[X_Task] ([TaskID])
GO
ALTER TABLE [dbo].[X_Task] CHECK CONSTRAINT [FK_X_Task_X_Task]
GO
ALTER TABLE [dbo].[X_Tenement]  WITH CHECK ADD  CONSTRAINT [FK_X_Tenement_X_Company] FOREIGN KEY([OwnerCompanyID])
REFERENCES [dbo].[X_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[X_Tenement] CHECK CONSTRAINT [FK_X_Tenement_X_Company]
GO
ALTER TABLE [dbo].[X_Tenement]  WITH CHECK ADD  CONSTRAINT [FK_X_Tenement_X_Contact] FOREIGN KEY([ApprovedByContactID])
REFERENCES [dbo].[X_Contact] ([ContactID])
GO
ALTER TABLE [dbo].[X_Tenement] CHECK CONSTRAINT [FK_X_Tenement_X_Contact]
GO
ALTER TABLE [dbo].[X_Tenement]  WITH CHECK ADD  CONSTRAINT [FK_X_Tenement_X_DictionaryCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[X_DictionaryCountry] ([CountryID])
GO
ALTER TABLE [dbo].[X_Tenement] CHECK CONSTRAINT [FK_X_Tenement_X_DictionaryCountry]
GO
ALTER TABLE [dbo].[X_Tenement]  WITH CHECK ADD  CONSTRAINT [FK_X_Tenement_X_Province] FOREIGN KEY([TenementBoundaryProvinceID])
REFERENCES [dbo].[X_Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[X_Tenement] CHECK CONSTRAINT [FK_X_Tenement_X_Province]
GO
ALTER TABLE [dbo].[X_TenementCommodity]  WITH CHECK ADD  CONSTRAINT [FK_X_TenementCommodityID_X_Commodity] FOREIGN KEY([CommodityID])
REFERENCES [dbo].[X_DictionaryCommodity] ([CommodityID])
GO
ALTER TABLE [dbo].[X_TenementCommodity] CHECK CONSTRAINT [FK_X_TenementCommodityID_X_Commodity]
GO
ALTER TABLE [dbo].[X_TenementCommodity]  WITH CHECK ADD  CONSTRAINT [FK_X_TenementCommodityID_X_Tenement] FOREIGN KEY([TenementID])
REFERENCES [dbo].[X_Tenement] ([TenementID])
GO
ALTER TABLE [dbo].[X_TenementCommodity] CHECK CONSTRAINT [FK_X_TenementCommodityID_X_Tenement]
GO
ALTER TABLE [dbo].[X_TenementProvince]  WITH CHECK ADD  CONSTRAINT [FK_X_TenementProvince_X_Province] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[X_Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[X_TenementProvince] CHECK CONSTRAINT [FK_X_TenementProvince_X_Province]
GO
ALTER TABLE [dbo].[X_TenementProvince]  WITH CHECK ADD  CONSTRAINT [FK_X_TenementProvince_X_Tenement] FOREIGN KEY([TenementID])
REFERENCES [dbo].[X_Tenement] ([TenementID])
GO
ALTER TABLE [dbo].[X_TenementProvince] CHECK CONSTRAINT [FK_X_TenementProvince_X_Tenement]
GO
ALTER TABLE [dbo].[X_TenementRelation]  WITH CHECK ADD  CONSTRAINT [FK_x_TenementRelation_X_Tenement] FOREIGN KEY([TenementID])
REFERENCES [dbo].[X_Tenement] ([TenementID])
GO
ALTER TABLE [dbo].[X_TenementRelation] CHECK CONSTRAINT [FK_x_TenementRelation_X_Tenement]
GO
ALTER TABLE [dbo].[X_TenementRelation]  WITH CHECK ADD  CONSTRAINT [FK_x_TenementRelation_X_Tenement1] FOREIGN KEY([ParentTenementID])
REFERENCES [dbo].[X_Tenement] ([TenementID])
GO
ALTER TABLE [dbo].[X_TenementRelation] CHECK CONSTRAINT [FK_x_TenementRelation_X_Tenement1]
GO
ALTER TABLE [dbo].[X_UsageAudit]  WITH CHECK ADD  CONSTRAINT [FK_X_UsageAudit_X_DictionaryUsageAuditType] FOREIGN KEY([UsageAuditTypeID])
REFERENCES [dbo].[X_DictionaryUsageAuditType] ([UsageAuditTypeID])
GO
ALTER TABLE [dbo].[X_UsageAudit] CHECK CONSTRAINT [FK_X_UsageAudit_X_DictionaryUsageAuditType]
GO
ALTER TABLE [dbo].[X_WaterFlow]  WITH CHECK ADD  CONSTRAINT [FK_X_WaterFlowData_X_DictionaryFlow_Test_Type] FOREIGN KEY([FlowTestTypeID])
REFERENCES [dbo].[X_DictionaryFlowTestType] ([FlowTestTypeID])
GO
ALTER TABLE [dbo].[X_WaterFlow] CHECK CONSTRAINT [FK_X_WaterFlowData_X_DictionaryFlow_Test_Type]
GO
ALTER TABLE [dbo].[X_WaterFlow]  WITH CHECK ADD  CONSTRAINT [FK_X_WaterFlowData_X_DictionarySample_Type] FOREIGN KEY([SampleTypeID])
REFERENCES [dbo].[X_DictionarySampleType] ([SampleTypeID])
GO
ALTER TABLE [dbo].[X_WaterFlow] CHECK CONSTRAINT [FK_X_WaterFlowData_X_DictionarySample_Type]
GO
ALTER TABLE [dbo].[X_WaterFlow]  WITH CHECK ADD  CONSTRAINT [FK_X_WaterFlowData_X_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[X_Header] ([HeaderID])
GO
ALTER TABLE [dbo].[X_WaterFlow] CHECK CONSTRAINT [FK_X_WaterFlowData_X_Header]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "X_Parameter"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 135
               Right = 264
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "X_BlockModel"
            Begin Extent = 
               Top = 7
               Left = 312
               Bottom = 135
               Right = 584
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "X_BlockModelBlock"
            Begin Extent = 
               Top = 7
               Left = 632
               Bottom = 135
               Right = 834
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "X_BlockModelBlockData"
            Begin Extent = 
               Top = 140
               Left = 48
               Bottom = 268
               Right = 282
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'X_VW_ALLPARAMSTEST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'X_VW_ALLPARAMSTEST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'X_VW_ALLPARAMSTEST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "X_Header"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 298
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'X_VW_DictionaryHeader'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'X_VW_DictionaryHeader'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "X_Header"
            Begin Extent = 
               Top = 92
               Left = 5
               Bottom = 335
               Right = 265
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "X_Survey"
            Begin Extent = 
               Top = 0
               Left = 404
               Bottom = 184
               Right = 638
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "X_Project"
            Begin Extent = 
               Top = 185
               Left = 409
               Bottom = 314
               Right = 643
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'X_VW_SurveyViews'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'X_VW_SurveyViews'
GO
USE [master]
GO
ALTER DATABASE [XODB] SET  READ_WRITE 
GO

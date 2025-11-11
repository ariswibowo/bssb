\echo '';
\echo 'Installing DbVersions table...';
\echo '';

CREATE TABLE "DbVersions" (
    "DbVersionId" uuid NOT NULL,
    "DbVersion" varchar(50) NOT NULL,
    "IsInstalledVersion" boolean NOT NULL,
    "ReleaseName" varchar(100) NOT NULL,
    "ReleaseDescription" varchar(300) NOT NULL,
    "InstallAttempt" integer NOT NULL,
    "InstallStatus" varchar(50) NOT NULL,
    "InstallStarted" varchar(100) NULL,
    "InstallEnded" varchar(100) NULL,
    "InstallComments" varchar(300) NOT NULL,
    "InstalledBy" varchar(100) NOT NULL
);

ALTER TABLE ONLY "DbVersions"
    ADD CONSTRAINT "PK_DbVersions" PRIMARY KEY ("DbVersionId");

ALTER TABLE "DbVersions" OWNER TO "Elysian";

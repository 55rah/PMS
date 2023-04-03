CREATE TABLE [dbo].[Employee] (
    [Employee_ID] INT           NOT NULL,
    [IRD]         INT           NOT NULL,
    [FirstName]   VARCHAR (50)  NOT NULL,
    [LastName]    VARCHAR (50)  NOT NULL,
    [WorkType]    TINYINT       NOT NULL,
    [Email]       VARCHAR (255) NULL,
    [Phone]       NCHAR (25)    NULL,
    [Region]      NCHAR (255)   NOT NULL,
    [COA]         BIT           NOT NULL,
    CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([Employee_ID] ASC),
    CONSTRAINT [AK_Employee_IRD] UNIQUE NONCLUSTERED ([IRD] ASC)
);


CREATE TABLE [dbo].[Job_Department] (
    [Job_ID]      INT           NOT NULL,
    [Employee_ID] INT           NOT NULL,
    [JobName]     VARCHAR (50)  NOT NULL,
    [JobDesc]     VARCHAR (255) NULL,
    CONSTRAINT [PK_Job_Department] PRIMARY KEY CLUSTERED ([Job_ID] ASC),
    CONSTRAINT [FK_Job_Department_Employee] FOREIGN KEY ([Employee_ID]) REFERENCES [dbo].[Employee] ([Employee_ID])
);


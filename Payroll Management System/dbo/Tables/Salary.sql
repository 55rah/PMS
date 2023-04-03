CREATE TABLE [dbo].[Salary] (
    [Salary_ID]   INT             NOT NULL,
    [Employee_ID] INT             NOT NULL,
    [Job_ID]      INT             NOT NULL,
    [IRD]         INT             NOT NULL,
    [Salary]      NUMERIC (10, 2) NULL,
    [Wage]        NUMERIC (7, 2)  NULL,
    [Bonus]       NUMERIC (8, 2)  NULL,
    PRIMARY KEY CLUSTERED ([Salary_ID] ASC),
    CONSTRAINT [FK_Salary_Employee] FOREIGN KEY ([Employee_ID]) REFERENCES [dbo].[Employee] ([Employee_ID]),
    CONSTRAINT [FK_Salary_Employee_IRD] FOREIGN KEY ([IRD]) REFERENCES [dbo].[Employee] ([IRD]),
    CONSTRAINT [FK_Salary_Job_Department] FOREIGN KEY ([Job_ID]) REFERENCES [dbo].[Job_Department] ([Job_ID])
);


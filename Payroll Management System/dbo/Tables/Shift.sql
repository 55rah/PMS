CREATE TABLE [dbo].[Shift] (
    [Shift_ID]    INT         NOT NULL,
    [Employee_ID] INT         NOT NULL,
    [Salary_ID]   INT         NOT NULL,
    [Hours]       NUMERIC (4) NOT NULL,
    PRIMARY KEY CLUSTERED ([Shift_ID] ASC),
    CONSTRAINT [FK_Shift_Employee] FOREIGN KEY ([Employee_ID]) REFERENCES [dbo].[Employee] ([Employee_ID]),
    CONSTRAINT [FK_Shift_Salary] FOREIGN KEY ([Salary_ID]) REFERENCES [dbo].[Salary] ([Salary_ID])
);


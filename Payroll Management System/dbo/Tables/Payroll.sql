CREATE TABLE [dbo].[Payroll] (
    [Payroll_ID]  INT             NOT NULL,
    [Employee_ID] INT             NOT NULL,
    [Job_ID]      INT             NOT NULL,
    [Shift_ID]    INT             NOT NULL,
    [Salary_ID]   INT             NOT NULL,
    [Leave_ID]    INT             NOT NULL,
    [IRD]         INT             NOT NULL,
    [DATE]        DATE            NOT NULL,
    [TotalAmount] NUMERIC (11, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([Payroll_ID] ASC),
    CONSTRAINT [FK_Payroll_Employee] FOREIGN KEY ([Employee_ID]) REFERENCES [dbo].[Employee] ([Employee_ID]),
    CONSTRAINT [FK_Payroll_Employee_IRD] FOREIGN KEY ([IRD]) REFERENCES [dbo].[Employee] ([IRD]),
    CONSTRAINT [FK_Payroll_Job_Department] FOREIGN KEY ([Job_ID]) REFERENCES [dbo].[Job_Department] ([Job_ID]),
    CONSTRAINT [FK_Payroll_Leave] FOREIGN KEY ([Leave_ID]) REFERENCES [dbo].[Leave] ([Leave_ID]),
    CONSTRAINT [FK_Payroll_Salary] FOREIGN KEY ([Salary_ID]) REFERENCES [dbo].[Salary] ([Salary_ID]),
    CONSTRAINT [FK_Payroll_Shift] FOREIGN KEY ([Shift_ID]) REFERENCES [dbo].[Shift] ([Shift_ID])
);


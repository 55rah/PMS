CREATE TABLE [dbo].[Leave] (
    [Leave_ID]    INT          NOT NULL,
    [Employee_ID] INT          NOT NULL,
    [StartDate]   DATE         NOT NULL,
    [EndDate]     DATE         NOT NULL,
    [Status]      TINYINT      NOT NULL,
    [LeaveType]   VARCHAR (50) NULL,
    [Approved_by] INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([Leave_ID] ASC),
    CONSTRAINT [FK_Leave_Employee] FOREIGN KEY ([Employee_ID]) REFERENCES [dbo].[Employee] ([Employee_ID])
);


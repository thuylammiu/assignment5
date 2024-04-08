-- Insert sample data into Role table
INSERT INTO [dbo].[Role] ([Role])
VALUES ('Admin'), ('Dentist'), ('Patient');

-- Insert sample data into User table
INSERT INTO [dbo].[User] ([UserName], [Password], [RoleId])
VALUES ('admin', 'admin123', 1), ('dentist1', 'password1', 2), ('patient1', 'password1', 3);

-- Insert sample data into Patient table
INSERT INTO [dbo].[Patient] ([FirstName], [LastName], [Phone], [Email], [UserId])
VALUES ('John', 'Doe', '1234567890', 'john.doe@example.com', 3),
       ('Jane', 'Smith', '0987654321', 'jane.smith@example.com', 3);

-- Insert sample data into Dentist table
INSERT INTO [dbo].[Dentist] ([DentistId], [LastName], [FirstName], [Phone], [Email], [UserId])
VALUES (1, 'Johnson', 'Michael', '9876543210', 'michael.johnson@example.com', 2),
       (2, 'Williams', 'Sarah', '0123456789', 'sarah.williams@example.com', 2);

-- Insert sample data into Surgery table
INSERT INTO [dbo].[Surgery] ([Name], [Adress], [Phone])
VALUES ('City Dental Care', '123 Main St', '555-1234'),
       ('Country Dental Clinic', '456 Oak St', '555-5678');

-- Insert sample data into Appointment table
INSERT INTO [dbo].[Appointment] ([DentistId], [PatientId], [Date], [Status], [SurgeryId])
VALUES (1, 1, '2024-04-07', 'Scheduled', 1),
       (2, 2, '2024-04-08', 'Scheduled', 2);

-- Insert sample data into Bill table
INSERT INTO [dbo].[Bill] ([Date], [Amount], [PaidStatus], [PatientId])
VALUES ('2024-04-07', 100, 'Paid', 1),
       ('2024-04-08', 150, 'Unpaid', 2);
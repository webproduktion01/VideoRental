/*
 Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be executed before the build script.	
 Use SQLCMD syntax to include a file in the pre-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the pre-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
USE [VideoRental]
GO
INSERT [dbo].[Genre] ([GenreID], [GenreName]) VALUES (0, N'Drama')
INSERT [dbo].[Genre] ([GenreID], [GenreName]) VALUES (1, N'Sci-Fi')
INSERT [dbo].[Genre] ([GenreID], [GenreName]) VALUES (2, N'Action')
INSERT [dbo].[Genre] ([GenreID], [GenreName]) VALUES (3, N'Romance')
INSERT [dbo].[Genre] ([GenreID], [GenreName]) VALUES (4, N'Thriller')
INSERT [dbo].[Genre] ([GenreID], [GenreName]) VALUES (5, N'Horror')
INSERT [dbo].[Genre] ([GenreID], [GenreName]) VALUES (6, N'Family')
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieCategory], [MovieLength]) VALUES (0, N'Captain America: Civil War (2016) 	Captain America: Civil War', 2, CAST(N'02:00:00' AS Time))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieCategory], [MovieLength]) VALUES (1, N'DeadPool', 2, CAST(N'02:17:00' AS Time))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieCategory], [MovieLength]) VALUES (2, N'Zootropolis', 6, CAST(N'01:57:00' AS Time))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieCategory], [MovieLength]) VALUES (3, N'When Harry Met Sally', 0, CAST(N'02:57:00' AS Time))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieCategory], [MovieLength]) VALUES (4, N'10 Cloverfield Lane (2016) 	10 Cloverfield Lane', 1, CAST(N'01:37:00' AS Time))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieCategory], [MovieLength]) VALUES (5, N'The Shallows', 4, CAST(N'01:59:00' AS Time))
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20748, N'Morgan', N'Diaz')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20749, N'Crystal', N'Liu')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20750, N'Isabella', N'Stewart')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20751, N'Crystal', N'Yang')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20752, N'Isabella', N'Sanchez')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20753, N'Isabella', N'Morris')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20754, N'Crystal', N'Huang')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20755, N'Crystal', N'Wu')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20756, N'Crystal', N'Lin')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20757, N'Carol', N'Zhou')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20758, N'Isabella', N'Rogers')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20759, N'Isabella', N'Reed')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20760, N'Isabella', N'Cook')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20761, N'Isabella', N'Morgan')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20762, N'Crystal', N'Zhao')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20763, N'Isabella', N'Bell')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20764, N'Crystal', N'Lu')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20765, N'Francis', N'Ruiz')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20766, N'Crystal', N'Xu')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20767, N'Crystal', N'Sun')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20768, N'Isabella', N'Murphy')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20769, N'Crystal', N'Zhu')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20770, N'Crystal', N'Gao')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20771, N'Isabella', N'Bailey')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20772, N'Crystal', N'Liang')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20773, N'Crystal', N'Guo')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20774, N'Isabella', N'Richardson')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20775, N'Crystal', N'He')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20776, N'Crystal', N'Zheng')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName]) VALUES (20777, N'Crystal', N'Hu')
INSERT [dbo].[VideoRental] ([RentalID], [MemberID], [MovieID], [RentDate], [ReturnDate], [RentCostPerDay], [MediaType]) VALUES (0, 20748, 0, CAST(N'2016-03-31' AS Date), CAST(N'2016-07-31' AS Date), 20.0000, 0)
INSERT [dbo].[VideoRental] ([RentalID], [MemberID], [MovieID], [RentDate], [ReturnDate], [RentCostPerDay], [MediaType]) VALUES (1, 20748, 1, CAST(N'2016-03-31' AS Date), CAST(N'2016-07-31' AS Date), 10.0000, 1)
INSERT [dbo].[VideoRental] ([RentalID], [MemberID], [MovieID], [RentDate], [ReturnDate], [RentCostPerDay], [MediaType]) VALUES (2, 20749, 2, CAST(N'2016-04-01' AS Date), CAST(N'2016-05-01' AS Date), 30.0000, 1)
INSERT [dbo].[VideoRental] ([RentalID], [MemberID], [MovieID], [RentDate], [ReturnDate], [RentCostPerDay], [MediaType]) VALUES (3, 20750, 3, CAST(N'2016-04-01' AS Date), CAST(N'2016-05-01' AS Date), 30.0000, 1)
INSERT [dbo].[VideoRental] ([RentalID], [MemberID], [MovieID], [RentDate], [ReturnDate], [RentCostPerDay], [MediaType]) VALUES (4, 20750, 4, CAST(N'2016-04-01' AS Date), CAST(N'2016-06-01' AS Date), 20.0000, 0)

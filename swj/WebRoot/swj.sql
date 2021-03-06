if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[collected]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[collected]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[machine]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[machine]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[order]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[order]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[transfer]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[transfer]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[user]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[user]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[view]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[view]
GO

CREATE TABLE [dbo].[collected] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[machineId] [int] NULL ,
	[value] [float] NULL ,
	[time] [datetime] NULL ,
	[view] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[machine] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[name] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[position] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[jd] [float] NULL ,
	[wd] [float] NULL ,
	[transferId] [int] NULL ,
	[contact] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[phone] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[space] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[order] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[userId] [int] NULL ,
	[machineId] [int] NULL ,
	[sendTime] [datetime] NULL ,
	[content] [varchar] (1000) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[transfer] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[ip] [varchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[port] [int] NULL ,
	[contact] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[phone] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[user] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[username] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[password] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[realname] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[role] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[phone] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[view] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[content] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[range] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO


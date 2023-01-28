USE [bdtestesql]
GO
/****** Object:  Table [dbo].[produtos]    Script Date: 13/10/2017 15:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produtos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](50) NOT NULL,
	[descricao] [nvarchar](100) NOT NULL,
	[estoque] [int] NOT NULL,
 CONSTRAINT [PK_produtos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_produtos]    Script Date: 13/10/2017 15:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_buscar_produtos] 
@estoque smallint
as
select * from produtos where estoque >= @estoque
GO

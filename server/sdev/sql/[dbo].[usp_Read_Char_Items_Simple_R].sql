USE [PS_GameData]
GO
/****** Object:  StoredProcedure [dbo].[usp_Read_Char_Items_Simple_R]    Script Date: 10/17/2023 7:22:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** 개체: 저장 프로시저 dbo.usp_Read_Char_Items_Simple_R    스크립트 날짜: 2006-05-29 오후 7:00:09 ******/

ALTER  Proc [dbo].[usp_Read_Char_Items_Simple_R]

@CharID int,
@Slot int,
@Bag int = 0

AS

SET NOCOUNT ON

SELECT Slot,Type,TypeID,Gem1,Gem2,Gem3,Gem4,Gem5,Gem6 FROM CharItems WHERE CharID=@CharID AND Del=0 AND Bag=0 AND Slot<@Slot

SET NOCOUNT OFF

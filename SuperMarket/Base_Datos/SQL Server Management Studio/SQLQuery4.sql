USE [Administración]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarFacturas]    Script Date: 09/08/2017 1:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[ActualizarFacturas] @CodCliente int
as

declare @NumFac int

select @NumFac  = MAX (NumFac) from Facturas

if @NumFac is NULL  set @NumFac=0

set @NumFac= @NumFac+1;

insert into Facturas(NumFac,FechFac,CodCliente) values(@NumFac,GETDATE(),@CodCliente)

SELECT * from Facturas where NumFac = @Numfac

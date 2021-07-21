/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
	[REFERENCE] as 'Wire Reference Number'
      ,[A_NUMBER] as 'Account Number'
      ,[AMOUNT]
	  , case 
	  when [DEBIT_CREDIT]='D' then 'Outgoing'
	  when [DEBIT_CREDIT]='C' then 'Incoming'
	  End as Direction
      ,convert(varchar(8),[TRANS_DATE],101) as Date
      ,[DESCRIPTION]
      ,[B_COUNTRY] as 'Foreign Country'
      ,[ORIGINAL_TRANSACTION_CODE] as 'Transaction Code'
      ,[BENEFICIARY_DETAILS]
	  ,case 
	  when [DEBIT_CREDIT]='C' then [B_NAME]
	  end as 'Originator',
	  case
	  when [DEBIT_CREDIT]='D' then [B_NAME]
	  end as 'Beneficiary'
  FROM [VW_WIRE_EXCHANGE_VWF]


 
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Entity Projection 1'

define root view entity zcds_07_ep1_dfs
  as projection on zcds_04_re_dfs
{

  key TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      @Semantics.amount: {          currencyCode: 'CurrencyCode'      }
      BookingFee,
      @Semantics.amount: {          currencyCode: 'CurrencyCode'      }
      TotalPrice,
      CurrencyCode,
      Description,
      Status,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      /* Associations */
      _Agency,
      _Booking: redirected to composition child zcds_07_ep2_dfs,
      _Customer
}

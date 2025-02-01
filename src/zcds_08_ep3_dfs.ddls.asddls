@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Entity Projection 3'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_08_ep3_dfs
  as projection on zcds_06_ap2_dfs
{
  key TravelId,
  key BookingId,
  key BookingSupplementId,
      SupplementId,
      @Semantics.amount: {          currencyCode: 'CurrencyCode'      }
      Price,
      CurrencyCode,
      /* Associations */
      _Booking,
      _Travel
}

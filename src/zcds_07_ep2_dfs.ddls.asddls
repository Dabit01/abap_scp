@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Entity Projection 2'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_07_ep2_dfs
  as projection on zcds_05_ap1_dfs
{
  key TravelId,
  key BookingId,
      BookingDate,
      CustomerId,
      CarrierId,
      ConnectionId,
      FlightDate,
      @Semantics.amount: {          currencyCode: 'CurrencyCode'      }
      FlightPrice,
      CurrencyCode,
      /* Associations */
      _Travel: redirected to parent zcds_07_ep1_dfs
}

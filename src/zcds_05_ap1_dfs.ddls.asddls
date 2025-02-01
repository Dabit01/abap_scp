@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Association to Parent1'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_05_ap1_dfs
  as select from /dmo/booking

  association to parent zcds_04_re_dfs as _Travel on $projection.TravelId = _Travel.TravelId //las reservas dependen de lo proyectado en los viajes
{
  key travel_id     as TravelId,
  key booking_id    as BookingId,
      booking_date  as BookingDate,
      customer_id   as CustomerId,
      carrier_id    as CarrierId,
      connection_id as ConnectionId,
      flight_date   as FlightDate,
      @Semantics.amount: {          currencyCode: 'CurrencyCode'      }
      flight_price  as FlightPrice,
      currency_code as CurrencyCode,
      _Travel
}

@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Association to Parent2'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_06_ap2_dfs
  as select from /dmo/book_suppl
  association to parent zcds_05_ap1_dfs as _Booking on  $projection.TravelId  = _Booking.TravelId
                                                    and $projection.BookingId = _Booking.BookingId

  association to zcds_04_re_dfs         as _Travel  on  $projection.TravelId = _Travel.TravelId
{
  key travel_id             as TravelId,
  key booking_id            as BookingId,
  key booking_supplement_id as BookingSupplementId,
      supplement_id         as SupplementId,
      @Semantics.amount: {          currencyCode: 'CurrencyCode'      }
      price                 as Price,
      currency_code         as CurrencyCode,
      _Booking,
      _Travel
}

@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Root Entity'
define root view entity zcds_04_re_dfs
  as select from /dmo/travel
  composition [0..*] of zcds_05_ap1_dfs as _Booking //Para cada Travel(Agencia) podemos tener multiples reservas
  association [1..1] to /DMO/I_Agency   as _Agency   on $projection.AgencyId = _Agency.AgencyID
  association [1..1] to /DMO/I_Customer as _Customer on $projection.CustomerId = _Customer.CustomerID
{
  key travel_id     as TravelId,
      agency_id     as AgencyId,
      customer_id   as CustomerId,
      begin_date    as BeginDate,
      end_date      as EndDate,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      booking_fee   as BookingFee,
      total_price   as TotalPrice,
      currency_code as CurrencyCode,
      description   as Description,
      status        as Status,
      createdby     as Createdby,
      createdat     as Createdat,
      lastchangedby as Lastchangedby,
      lastchangedat as Lastchangedat,
      _Booking,
      _Agency,
      _Customer
}

CLASS zcl_dummy_data_dfs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_dummy_data_dfs IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA ls_abstract TYPE zcds_03_ae_dfs. "prueba para comprobar que se puede declarar una struct del tipo entidad abstracta

    DATA: lt_results TYPE TABLE OF zemployee_dfs.

    lt_results = VALUE #( ( id = '11UX' name = 'Lorena' )
                          ( id = '12UX' name = 'Rosa' )
                        ).

    MODIFY zemployee_dfs FROM TABLE @lt_results.

    IF  sy-subrc = 0.

      out->write( EXPORTING data   = 'Data inserted' ).

    ENDIF.

  ENDMETHOD.

ENDCLASS.

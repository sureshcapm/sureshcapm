using { suresh.db.master, suresh.db.transaction } from '../db/demomodel';


service CatalogService@(path:'/CatalogService') {

    entity EmployeeSet as projection on master.employees;

    entity AddressSet as projection on master.address;

    entity ProductSet as projection on master.product;

    entity BPSet as projection on master.businesspartner;

    entity POs @(
        title: '{i18n>poHeader}'
    ) as projection on transaction.purchaseorder{
        *,
        Items: redirected to POItems
    }

    entity POItems @( title : '{i18n>poItems}' )
    as projection on transaction.poitems{
        *,
        PARENT_KEY: redirected to POs,
        PRODUCT_GUID: redirected to ProductSet
    }

}
using CatalogService as service from '../../srv/CatalogService';

annotate service.POs with @(
    UI.SelectionFields:[
        PO_ID,
        GROSS_AMOUNT,
        Currency_code,
        OVERALL_STATUS
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : Currency_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'GROSS_AMOUNT',
            Value : GROSS_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Label : 'NET_AMOUNT',
            Value : NET_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Label : 'TAX_AMOUNT',
            Value : TAX_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PO_ID',
            Value : PO_ID,
        },
    ]
);
annotate service.POs with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Currency_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'GROSS_AMOUNT',
                Value : GROSS_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'NET_AMOUNT',
                Value : NET_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TAX_AMOUNT',
                Value : TAX_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PO_ID',
                Value : PO_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PARTNER_GUID_NODE_KEY',
                Value : PARTNER_GUID_NODE_KEY,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LIFECYCLE_STATUS',
                Value : LIFECYCLE_STATUS,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OVERALL_STATUS',
                Value : OVERALL_STATUS,
            },
            {
                $Type : 'UI.DataField',
                Label : 'NOTE',
                Value : NOTE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CREATEDAT',
                Value : CREATEDAT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MODIFIEDAT',
                Value : MODIFIEDAT,
            }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);

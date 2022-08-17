namespace mastersSpace;

using {managed} from '@sap/cds/common';

entity OcType {
  key IdOcType : String(1);
      OcTypeDescription : String(20)
}

entity Status  {
  key IdStatus : Integer64 not null;
    StatusDescription : String(100);
};


entity Currency  {
  key IdCurrency : String(4) not null;
    CurrencyDescription : String(100);
};
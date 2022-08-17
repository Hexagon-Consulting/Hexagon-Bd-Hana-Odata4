using {mastersSpace as master} from '../db/masters';

@path : 'service/Masters'
service Masters {
  entity Status         as projection on master.Status;
  entity OcType         as projection on master.OcType;
  entity Currency       as projection on master.Currency;
}

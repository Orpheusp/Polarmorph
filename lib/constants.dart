import 'package:google_maps_flutter/google_maps_flutter.dart';

enum BusinessSiteKey {
  site,
  address,
  phone,
  email,
  location,
}

const List<Map<BusinessSiteKey, dynamic>> BUSINESS_SITES = [
  {
    BusinessSiteKey.site: 'New York, NY',
    BusinessSiteKey.address: '50 Lispenard St\nNew York, NY\n10013',
    BusinessSiteKey.phone: '123-4567890',
    BusinessSiteKey.email: 'ny@polarmorph.com',
    BusinessSiteKey.location: const LatLng(40.719536, -74.0054272),
  },
  {
    BusinessSiteKey.site: 'San Francisco, CA',
    BusinessSiteKey.address: '600 Haight St\nSan Francisco, CA\n94117',
    BusinessSiteKey.phone: '123-4567890',
    BusinessSiteKey.email: 'sf@polarmorph.com',
    BusinessSiteKey.location: const LatLng(37.7722076, -122.4321626),
  },
  {
    BusinessSiteKey.site: 'Venice, CA',
    BusinessSiteKey.address: '1100 Abbot Kinney\nVenice, CA\n90291',
    BusinessSiteKey.phone: '123-4567890',
    BusinessSiteKey.email: 'ven@polarmorph.com',
    BusinessSiteKey.location: const LatLng(33.9916437, -118.4727322),
  },
  {
    BusinessSiteKey.site: 'Seattle, WA',
    BusinessSiteKey.address: '1350 1st Ave\nSeattle, WA\n98101',
    BusinessSiteKey.phone: '123-4567890',
    BusinessSiteKey.email: 'sea@polarmorph.com',
    BusinessSiteKey.location: const LatLng(47.6076652, -122.3411694),
  },
];

const BUSINESS_EVENTS = [
  'Daily Special Coffee Beverage Menu Hand-Picked by Baristas',
  'Weekly Polaroid Photography Exhibitions by Emerging Photographers',
  'Monthly Instant Photography Speaker Series and Q&A with Renown Artists',
  'More...',
];

enum BusinessHourKey {
  start,
  end,
}

const List<Map<BusinessHourKey, String>> BUSINESS_HOURS = [
  {BusinessHourKey.start: '7AM', BusinessHourKey.end: '9PM'},
  {BusinessHourKey.start: 'MON', BusinessHourKey.end: 'SUN'},
];

enum DividerType {
  regular,
  medium,
  bold,
}

const DividerHeight = {
  DividerType.regular: 10.0,
  DividerType.medium: 10.0,
  DividerType.bold: 20.0,
};

const DividerThickness = {
  DividerType.regular: 1.0,
  DividerType.medium: 2.0,
  DividerType.bold: 7.0,
};

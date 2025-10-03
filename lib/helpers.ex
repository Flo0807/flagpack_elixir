defmodule Flagpack.Helpers do
  @country_codes [
    %{country_name: "Andorra", alpha2: "AD", alpha3: "AND", numeric: "020"},
    %{
      country_name: "United Arab Emirates",
      alpha2: "AE",
      alpha3: "ARE",
      numeric: "784"
    },
    %{country_name: "African Union", alpha2: "AFRUN"},
    %{
      country_name: "Antigua and Barbuda",
      alpha2: "AG",
      alpha3: "ATG",
      numeric: "028"
    },
    %{country_name: "Anguilla", alpha2: "AI", alpha3: "AIA", numeric: "660"},
    %{country_name: "Albania", alpha2: "AL", alpha3: "ALB", numeric: "008"},
    %{country_name: "Armenia", alpha2: "AM", alpha3: "ARM", numeric: "051"},
    %{country_name: "Amsterdam", alpha2: "AMS"},
    %{country_name: "Angola", alpha2: "AO", alpha3: "AGO", numeric: "024"},
    %{country_name: "Antarctica", alpha2: "AQ", alpha3: "ATA", numeric: "010"},
    %{country_name: "Argentina", alpha2: "AR", alpha3: "ARG", numeric: "032"},
    %{
      country_name: "American Samoa",
      alpha2: "AS",
      alpha3: "ASM",
      numeric: "016"
    },
    %{country_name: "Austria", alpha2: "AT", alpha3: "AUT", numeric: "040"},
    %{country_name: "Australia", alpha2: "AU", alpha3: "AUS", numeric: "016"},
    %{country_name: "Aruba", alpha2: "AW", alpha3: "ABW", numeric: "533"},
    %{country_name: "Åland Islands", alpha2: "AX", alpha3: "ALA", numeric: "248"},
    %{country_name: "Azerbaijan", alpha2: "AZ", alpha3: "AZE", numeric: "031"},
    %{
      country_name: "Bosnia and Herzegovina",
      alpha2: "BA",
      alpha3: "BIH",
      numeric: "070"
    },
    %{country_name: "Barbados", alpha2: "BB", alpha3: "BRB", numeric: "052"},
    %{country_name: "Bangladesh", alpha2: "BD", alpha3: "BGD", numeric: "050"},
    %{country_name: "Belgium", alpha2: "BE", alpha3: "BEL", numeric: "056"},
    %{country_name: "Burkina Faso", alpha2: "BF", alpha3: "BFA", numeric: "854"},
    %{country_name: "Bulgaria", alpha2: "BG", alpha3: "BGR", numeric: "100"},
    %{country_name: "Bahrain", alpha2: "BH", alpha3: "BHR", numeric: "048"},
    %{country_name: "Burundi", alpha2: "BI", alpha3: "BDI", numeric: "108"},
    %{country_name: "Benin", alpha2: "BJ", alpha3: "BEN", numeric: "204"},
    %{
      country_name: "Saint Barthélemy",
      alpha2: "BL",
      alpha3: "BLM",
      numeric: "652"
    },
    %{country_name: "Bermuda", alpha2: "BM", alpha3: "BMU", numeric: "060"},
    %{country_name: "Brunei", alpha2: "BN", alpha3: "BRN", numeric: "096"},
    %{country_name: "Bolivia", alpha2: "BO", alpha3: "BOL", numeric: "068"},
    %{country_name: "Bonaire", alpha2: "BQ-BO"},
    %{country_name: "Saba", alpha2: "BQ-SA"},
    %{country_name: "Sint Eustatius", alpha2: "BQ-SE"},
    %{country_name: "Brazil", alpha2: "BR", alpha3: "BRA", numeric: "076"},
    %{country_name: "Bahamas", alpha2: "BS", alpha3: "BHS", numeric: "044"},
    %{country_name: "Bhutan", alpha2: "BT", alpha3: "BTN", numeric: "064"},
    %{country_name: "Botswana", alpha2: "BW", alpha3: "BWA", numeric: "072"},
    %{country_name: "Belarus", alpha2: "BY", alpha3: "BLR", numeric: "112"},
    %{country_name: "Belize", alpha2: "BZ", alpha3: "BLZ", numeric: "084"},
    %{country_name: "Canada", alpha2: "CA", alpha3: "CAN", numeric: "124"},
    %{country_name: "Cocos Islands", alpha2: "CC", alpha3: "CCK", numeric: "166"},
    %{
      country_name: "Democratis Republic of Congo",
      alpha2: "CD",
      alpha3: "COD",
      numeric: "180"
    },
    %{
      country_name: "Central African Republic",
      alpha2: "CF",
      alpha3: "CAF",
      numeric: "140"
    },
    %{country_name: "Congo", alpha2: "CG", alpha3: "COG", numeric: "178"},
    %{country_name: "Switzerland", alpha2: "CH", alpha3: "CHE", numeric: "756"},
    %{country_name: "Côte d'Ivoire", alpha2: "CI", alpha3: "CIV", numeric: "384"},
    %{country_name: "Cook Island", alpha2: "CK", alpha3: "COK", numeric: "184"},
    %{country_name: "Chile", alpha2: "CL", alpha3: "CHL", numeric: "152"},
    %{country_name: "Cameroon", alpha2: "CM", alpha3: "CMR", numeric: "120"},
    %{country_name: "China", alpha2: "CN", alpha3: "CHN", numeric: "156"},
    %{country_name: "Colombia", alpha2: "CO", alpha3: "COL", numeric: "170"},
    %{country_name: "Costa Rica", alpha2: "CR", alpha3: "CRI", numeric: "188"},
    %{country_name: "Cuba", alpha2: "CU", alpha3: "CUB", numeric: "192"},
    %{country_name: "Cape Verde", alpha2: "CV", alpha3: "CPV", numeric: "132"},
    %{country_name: "Curaçao", alpha2: "CW", alpha3: "CUW", numeric: "531"},
    %{
      country_name: "Christmas Island",
      alpha2: "CX",
      alpha3: "CXR",
      numeric: "162"
    },
    %{country_name: "Cyprus", alpha2: "CY", alpha3: "CYP", numeric: "196"},
    %{
      country_name: "Czech Republic",
      alpha2: "CZ",
      alpha3: "CZE",
      numeric: "203"
    },
    %{country_name: "Germany", alpha2: "DE", alpha3: "DEU", numeric: "276"},
    %{country_name: "Djibouti", alpha2: "DJ", alpha3: "DJI", numeric: "262"},
    %{country_name: "Denmark", alpha2: "DK", alpha3: "DNK", numeric: "208"},
    %{country_name: "Dominica", alpha2: "DM", alpha3: "DMA", numeric: "212"},
    %{
      country_name: "Dominican Republic",
      alpha2: "DO",
      alpha3: "DOM",
      numeric: "214"
    },
    %{country_name: "Ecuador", alpha2: "EC", alpha3: "ECU", numeric: "218"},
    %{country_name: "Estonia", alpha2: "EE", alpha3: "EST", numeric: "233"},
    %{country_name: "Egypt", alpha2: "EG", alpha3: "EGY", numeric: "818"},
    %{
      country_name: "Western Sahara",
      alpha2: "EH",
      alpha3: "ESH",
      numeric: "732"
    },
    %{country_name: "Eritrea", alpha2: "ER", alpha3: "ERI", numeric: "232"},
    %{country_name: "Spain", alpha2: "ES", alpha3: "ESP", numeric: "724"},
    %{country_name: "Ethiopia", alpha2: "ET", alpha3: "ETH", numeric: "231"},
    %{country_name: "European Union", alpha2: "EU"},
    %{country_name: "Finland", alpha2: "FI", alpha3: "FIN", numeric: "246"},
    %{country_name: "Fiji", alpha2: "FJ", alpha3: "FJI", numeric: "242"},
    %{
      country_name: "Falkland Islands",
      alpha2: "FK",
      alpha3: "FLK",
      numeric: "238"
    },
    %{
      country_name: "Micronesia (Federated States of)",
      alpha2: "FM",
      alpha3: "FSM",
      numeric: "583"
    },
    %{country_name: "Faroe Island", alpha2: "FO", alpha3: "FRO", numeric: "234"},
    %{country_name: "France", alpha2: "FR", alpha3: "FRA", numeric: "250"},
    %{country_name: "Gabon", alpha2: "GA", alpha3: "GAB", numeric: "266"},
    %{country_name: "England", alpha2: "GB-ENG"},
    %{country_name: "Scotland", alpha2: "GB-SCT"},
    %{
      country_name: "United Kingdom",
      alpha2: "GB-UKM",
      alpha3: "GBR",
      numeric: "836"
    },
    %{country_name: "Wales", alpha2: "GB-WLS"},
    %{country_name: "Northern Ireland", alpha2: "GB-NIR"},
    %{country_name: "Grenada", alpha2: "GD", alpha3: "GRD", numeric: "308"},
    %{country_name: "Georgia", alpha2: "GE", alpha3: "GEO", numeric: "268"},
    %{country_name: "French Guiana", alpha2: "GF", alpha3: "GUF", numeric: "254"},
    %{country_name: "Guernsey", alpha2: "GG", alpha3: "GGY", numeric: "831"},
    %{country_name: "Ghana", alpha2: "GH", alpha3: "GHA", numeric: "288"},
    %{country_name: "Gibraltar", alpha2: "GI", alpha3: "GIB", numeric: "292"},
    %{country_name: "Greenland", alpha2: "GL", alpha3: "GRL", numeric: "304"},
    %{country_name: "Gambia", alpha2: "GM", alpha3: "GMB", numeric: "270"},
    %{country_name: "Guinea", alpha2: "GN", alpha3: "GIN", numeric: "324"},
    %{country_name: "Guadeloupe", alpha2: "GP", alpha3: "GLP", numeric: "312"},
    %{
      country_name: "Equatorial Guinea",
      alpha2: "GQ",
      alpha3: "GNQ",
      numeric: "226"
    },
    %{country_name: "Greece", alpha2: "GR", alpha3: "GRC", numeric: "300"},
    %{
      country_name: "South Georgia and the South Sandwich Islands",
      alpha2: "GS",
      alpha3: "SGS",
      numeric: "239"
    },
    %{country_name: "Guatemala", alpha2: "GT", alpha3: "GTM", numeric: "320"},
    %{country_name: "Guam", alpha2: "GU", alpha3: "GUM", numeric: "316"},
    %{country_name: "Guinea-Bissau", alpha2: "GW", alpha3: "GNB", numeric: "624"},
    %{country_name: "Guyana", alpha2: "GY", alpha3: "GUY", numeric: "328"},
    %{country_name: "Hong Kong", alpha2: "HK", alpha3: "HKG", numeric: "344"},
    %{
      country_name: "Heard Island and McDonald Islands",
      alpha2: "HM",
      alpha3: "HMD",
      numeric: "334"
    },
    %{country_name: "Honduras", alpha2: "HN", alpha3: "HND", numeric: "340"},
    %{country_name: "Croatia", alpha2: "HR", alpha3: "HRV", numeric: "191"},
    %{country_name: "Haiti", alpha2: "HT", alpha3: "HTI", numeric: "332"},
    %{country_name: "Hungary", alpha2: "HU", alpha3: "HUN", numeric: "348"},
    %{country_name: "Indonesia", alpha2: "ID", alpha3: "IDN", numeric: "360"},
    %{country_name: "Ireland", alpha2: "IE", alpha3: "IRL", numeric: "372"},
    %{country_name: "Israel", alpha2: "IL", alpha3: "ISR", numeric: "376"},
    %{country_name: "Isle of Man", alpha2: "IM", alpha3: "IMN", numeric: "833"},
    %{country_name: "India", alpha2: "IN", alpha3: "IND", numeric: "356"},
    %{
      country_name: "British Indian Ocean Territory",
      alpha2: "IO",
      alpha3: "IOT",
      numeric: "086"
    },
    %{country_name: "Iraq", alpha2: "IQ", alpha3: "IRQ", numeric: "368"},
    %{country_name: "Iran", alpha2: "IR", alpha3: "IRN", numeric: "364"},
    %{country_name: "Iceland", alpha2: "IS", alpha3: "ISL", numeric: "352"},
    %{country_name: "Italy", alpha2: "IT", alpha3: "ITA", numeric: "380"},
    %{country_name: "Jersey", alpha2: "JE", alpha3: "JEY", numeric: "832"},
    %{country_name: "Jamaica", alpha2: "JM", alpha3: "JAM", numeric: "388"},
    %{country_name: "Jordan", alpha2: "JO", alpha3: "JOR", numeric: "400"},
    %{country_name: "Japan", alpha2: "JP", alpha3: "JPN", numeric: "392"},
    %{country_name: "Kenya", alpha2: "KE", alpha3: "KEN", numeric: "404"},
    %{country_name: "Kyrgyzstan", alpha2: "KG", alpha3: "KGZ", numeric: "417"},
    %{country_name: "Cambodia", alpha2: "KH", alpha3: "KHM", numeric: "116"},
    %{country_name: "Kiribati", alpha2: "KI", alpha3: "KIR", numeric: "296"},
    %{country_name: "Comoros", alpha2: "KM", alpha3: "COM", numeric: "174"},
    %{
      country_name: "Saint Kitts and Nevis",
      alpha2: "KN-SK",
      alpha3: "KNA",
      numeric: "659"
    },
    %{
      country_name: "Korea (the Democratic People's Republic of)",
      alpha2: "KP",
      alpha3: "PRK",
      numeric: "408"
    },
    %{
      country_name: "Korea (the Republic of)",
      alpha2: "KR",
      alpha3: "KOR",
      numeric: "410"
    },
    %{country_name: "Kuwait", alpha2: "KW", alpha3: "KWT", numeric: "414"},
    %{
      country_name: "Cayman Islands",
      alpha2: "KY",
      alpha3: "CYM",
      numeric: "136"
    },
    %{country_name: "Kazakhstan", alpha2: "KZ", alpha3: "KAZ", numeric: "398"},
    %{
      country_name: "Lao People's Democratic Republic (the)",
      alpha2: "LA",
      alpha3: "LAO",
      numeric: "418"
    },
    %{country_name: "Lebanon", alpha2: "LB", alpha3: "LBN", numeric: "422"},
    %{country_name: "Saint Lucia", alpha2: "LC", alpha3: "LCA", numeric: "662"},
    %{country_name: "Liechtenstein", alpha2: "LI", alpha3: "LIE", numeric: "438"},
    %{country_name: "Sri Lanka", alpha2: "LK", alpha3: "LKA", numeric: "144"},
    %{country_name: "Liberia", alpha2: "LR", alpha3: "LBR", numeric: "430"},
    %{country_name: "Lesotho", alpha2: "LS", alpha3: "LSO", numeric: "426"},
    %{country_name: "Lithuania", alpha2: "LT", alpha3: "LTU", numeric: "440"},
    %{country_name: "Luxembourg", alpha2: "LU", alpha3: "LUX", numeric: "442"},
    %{country_name: "Latvia", alpha2: "LV", alpha3: "LVA", numeric: "428"},
    %{country_name: "Libya", alpha2: "LY", alpha3: "LBY", numeric: "434"},
    %{country_name: "Morocco", alpha2: "MA", alpha3: "MAR", numeric: "504"},
    %{country_name: "Monaco", alpha2: "MC", alpha3: "MCO ", numeric: "492"},
    %{
      country_name: "Moldova (the Republic of)",
      alpha2: "MD",
      alpha3: "MDA",
      numeric: "498"
    },
    %{country_name: "Montenegro", alpha2: "ME", alpha3: "MNE", numeric: "499"},
    %{country_name: "Saint Martin", alpha2: "MF", alpha3: "MAF", numeric: "663"},
    %{country_name: "Madagascar", alpha2: "MG", alpha3: "MDG", numeric: "450"},
    %{
      country_name: "Marshall Islands (the)",
      alpha2: "MH",
      alpha3: "MHL",
      numeric: "584"
    },
    %{
      country_name: "North Macedonia",
      alpha2: "MK",
      alpha3: "MKD",
      numeric: "807"
    },
    %{country_name: "Mali", alpha2: "ML", alpha3: "MLI", numeric: "466"},
    %{country_name: "Myanmar", alpha2: "MM", alpha3: "MMR", numeric: "104"},
    %{country_name: "Mongolia", alpha2: "MN", alpha3: "MNG", numeric: "496"},
    %{country_name: "Macao", alpha2: "MO", alpha3: "MAC", numeric: "446"},
    %{
      country_name: "Northern Mariana Islands (the)",
      alpha2: "MP",
      alpha3: "MNP",
      numeric: "580"
    },
    %{country_name: "Martinique", alpha2: "MQ", alpha3: "MTQ", numeric: "474"},
    %{country_name: "Mauritania", alpha2: "MR", alpha3: "MRT", numeric: "478"},
    %{country_name: "Montserrat", alpha2: "MS", alpha3: "MSR", numeric: "500"},
    %{country_name: "Malta", alpha2: "MT", alpha3: "MLT", numeric: "470"},
    %{country_name: "Mauritius", alpha2: "MU", alpha3: "MUS", numeric: "480"},
    %{country_name: "Maldives", alpha2: "MV", alpha3: "MDV", numeric: "462"},
    %{country_name: "Malawi", alpha2: "MW", alpha3: "MWI", numeric: "454"},
    %{country_name: "Mexico", alpha2: "MX", alpha3: "MEX", numeric: "484"},
    %{country_name: "Malaysia", alpha2: "MY", alpha3: "MYS", numeric: "458"},
    %{country_name: "Mozambique", alpha2: "MZ", alpha3: "MOZ", numeric: "508"},
    %{country_name: "Namibia", alpha2: "NA", alpha3: "NAM", numeric: "516"},
    %{country_name: "New Caledonia", alpha2: "NC", alpha3: "NCL", numeric: "540"},
    %{country_name: "Niger", alpha2: "NE", alpha3: "NER", numeric: "562"},
    %{
      country_name: "Norfolk Island",
      alpha2: "NF",
      alpha3: "NFK",
      numeric: "574"
    },
    %{country_name: "Nigeria", alpha2: "NG", alpha3: "NGA", numeric: "566"},
    %{country_name: "Nicaragua", alpha2: "NI", alpha3: "NIC", numeric: "558"},
    %{country_name: "Netherlands", alpha2: "NL", alpha3: "NLD", numeric: "528"},
    %{country_name: "Norway", alpha2: "NO", alpha3: "NOR", numeric: "578"},
    %{country_name: "Nepal", alpha2: "NP", alpha3: "NPL", numeric: "524"},
    %{country_name: "Nauru", alpha2: "NR", alpha3: "NRU", numeric: "520"},
    %{country_name: "Niue", alpha2: "NU", alpha3: "NIU", numeric: "570"},
    %{country_name: "New Zealand", alpha2: "NZ", alpha3: "NZL", numeric: "554"},
    %{country_name: "Oman", alpha2: "OM", alpha3: "OMN", numeric: "512"},
    %{country_name: "Panama", alpha2: "PA", alpha3: "PAN", numeric: "591"},
    %{country_name: "Peru", alpha2: "PE", alpha3: "PER", numeric: "604"},
    %{
      country_name: "French Polyesia",
      alpha2: "PF",
      alpha3: "PYF",
      numeric: "258"
    },
    %{
      country_name: "Papua New Guinea",
      alpha2: "PG",
      alpha3: "PNG",
      numeric: "598"
    },
    %{
      country_name: "Philippines (the)",
      alpha2: "PH",
      alpha3: "PHL",
      numeric: "608"
    },
    %{country_name: "Pakistan", alpha2: "PK", alpha3: "PAK", numeric: "586"},
    %{country_name: "Poland", alpha2: "PL", alpha3: "POL", numeric: "616"},
    %{
      country_name: "Saint Pierre and Miquelon",
      alpha2: "PM",
      alpha3: "SPM",
      numeric: "666"
    },
    %{country_name: "Pitcairn", alpha2: "PN", alpha3: "PCN", numeric: "612"},
    %{country_name: "Puerto Rico", alpha2: "PR", alpha3: "PRI", numeric: "630"},
    %{
      country_name: "Palestine, State of",
      alpha2: "PS",
      alpha3: "PSE",
      numeric: "275"
    },
    %{country_name: "Portugal", alpha2: "PT", alpha3: "PRT", numeric: "620"},
    %{country_name: "Palau", alpha2: "PW", alpha3: "PLW", numeric: "585"},
    %{country_name: "Paraguay", alpha2: "PY", alpha3: "PRY", numeric: "600"},
    %{country_name: "Qatar", alpha2: "QA", alpha3: "QAT", numeric: "634"},
    %{country_name: "Rainbow", alpha2: "RAINBOW"},
    %{country_name: "Réunion", alpha2: "RE", alpha3: "REU", numeric: "638"},
    %{country_name: "Romania", alpha2: "RO", alpha3: "ROU", numeric: "642"},
    %{country_name: "Serbia", alpha2: "RS", alpha3: "SRB", numeric: "688"},
    %{
      country_name: "Russian Federation (the)",
      alpha2: "RU",
      alpha3: "RUS",
      numeric: "643"
    },
    %{country_name: "Rwanda", alpha2: "RW", alpha3: "RWA", numeric: "646"},
    %{country_name: "Saudi Arabia", alpha2: "SA", alpha3: "SAU", numeric: "682"},
    %{
      country_name: "Solomon Islands",
      alpha2: "SB",
      alpha3: "SLB",
      numeric: "090"
    },
    %{country_name: "Seychelles", alpha2: "SC", alpha3: "SYC", numeric: "690"},
    %{country_name: "Sudan (the)", alpha2: "SD", alpha3: "SDN", numeric: "729"},
    %{country_name: "Sweden", alpha2: "SE", alpha3: "SWE", numeric: "752"},
    %{country_name: "Singapore", alpha2: "SG", alpha3: "SGP", numeric: "702"},
    %{
      country_name: "Saint Helena, Ascension Island, Traistan da Cunha",
      alpha2: "SH",
      alpha3: "SHN",
      numeric: "654"
    },
    %{country_name: "Slovenia", alpha2: "SI", alpha3: "SVN", numeric: "705"},
    %{
      country_name: "Svalbard, Jan Mayen",
      alpha2: "SJ",
      alpha3: "SJM",
      numeric: "744"
    },
    %{country_name: "Slovakia", alpha2: "SK", alpha3: "SVK", numeric: "703"},
    %{country_name: "Sierra Leone", alpha2: "SL", alpha3: "SLE", numeric: "694"},
    %{country_name: "San Marino", alpha2: "SM", alpha3: "SMR", numeric: "674"},
    %{country_name: "Senegal", alpha2: "SN", alpha3: "SEN", numeric: "686"},
    %{country_name: "Somalia", alpha2: "SO", alpha3: "SOM", numeric: "706"},
    %{country_name: "Suriname", alpha2: "SR", alpha3: "SUR", numeric: "740"},
    %{country_name: "South Sudan", alpha2: "SS", alpha3: "SSD", numeric: "728"},
    %{
      country_name: "Sao Tome and Principe",
      alpha2: "ST",
      alpha3: "STP",
      numeric: "678"
    },
    %{country_name: "El Salvador", alpha2: "SV", alpha3: "SLV", numeric: "222"},
    %{country_name: "Sint Maarten", alpha2: "SX", alpha3: "SXM", numeric: "534"},
    %{
      country_name: "Syrian Arab Republic (the)",
      alpha2: "SY",
      alpha3: "SYR",
      numeric: "760"
    },
    %{country_name: "Eswatini", alpha2: "SZ", alpha3: "SWZ", numeric: "748"},
    %{
      country_name: "Turks and Caicos Islands (the)",
      alpha2: "TC",
      alpha3: "TCA",
      numeric: "796"
    },
    %{country_name: "Chad", alpha2: "TD", alpha3: "TCD", numeric: "148"},
    %{
      country_name: "French Southern Territories",
      alpha2: "TF",
      alpha3: "ATF",
      numeric: "260"
    },
    %{country_name: "Togo", alpha2: "TG", alpha3: "TGO", numeric: "768"},
    %{country_name: "Thailand", alpha2: "TH", alpha3: "THA", numeric: "764"},
    %{country_name: "Tajikistan", alpha2: "TJ", alpha3: "TJK", numeric: "762"},
    %{country_name: "Tokelau", alpha2: "TK", alpha3: "TKL", numeric: "772"},
    %{country_name: "Timor-Leste", alpha2: "TL", alpha3: "TLS", numeric: "626"},
    %{country_name: "Turkmenistan", alpha2: "TM", alpha3: "TKM", numeric: "795"},
    %{country_name: "Tunisia", alpha2: "TN", alpha3: "TUN", numeric: "788"},
    %{country_name: "Tonga", alpha2: "TO", alpha3: "TON", numeric: "776"},
    %{country_name: "Turkey", alpha2: "TR", alpha3: "TUR", numeric: "792"},
    %{
      country_name: "Trinidad and Tobago",
      alpha2: "TT",
      alpha3: "TTO",
      numeric: "780"
    },
    %{country_name: "Tuvalu", alpha2: "TV", alpha3: "TUV", numeric: "798"},
    %{country_name: "Taiwan", alpha2: "TW", alpha3: "TWN", numeric: "158"},
    %{
      country_name: "Tanzania, the United Republic of",
      alpha2: "TZ",
      alpha3: "TZA",
      numeric: "834"
    },
    %{country_name: "Ukraine", alpha2: "UA", alpha3: "UKR", numeric: "804"},
    %{country_name: "Uganda", alpha2: "UG", alpha3: "UGA", numeric: "800"},
    %{
      country_name: "United States Minor Outlying Islands (the)",
      alpha2: "UM",
      alpha3: "UMI",
      numeric: "581"
    },
    %{country_name: "Union of South American Nations", alpha2: "UNASUR"},
    %{
      country_name: "United States of America",
      alpha2: "US",
      alpha3: "USA",
      numeric: "840"
    },
    %{country_name: "Uruguay", alpha2: "UY", alpha3: "URY", numeric: "858"},
    %{country_name: "Uzbekistan", alpha2: "UZ", alpha3: "UZB", numeric: "860"},
    %{country_name: "Holy See", alpha2: "VA", alpha3: "VAT", numeric: "336"},
    %{
      country_name: "Saint Vincent and the Grenadines",
      alpha2: "VC",
      alpha3: "VCT",
      numeric: "670"
    },
    %{
      country_name: "Venezuela (Bolivarian Republic of)",
      alpha2: "VE",
      alpha3: "VEN",
      numeric: "862"
    },
    %{
      country_name: "Virgin Islands (British)",
      alpha2: "VG",
      alpha3: "VGB",
      numeric: "092"
    },
    %{
      country_name: "Virgin Islands (U.S.)",
      alpha2: "VI",
      alpha3: "VIR",
      numeric: "850"
    },
    %{country_name: "Vietnam", alpha2: "VN", alpha3: "VNM", numeric: "704"},
    %{country_name: "Vanuatu", alpha2: "VU", alpha3: "VUT", numeric: "548"},
    %{
      country_name: "Wallis and Futuna",
      alpha2: "WF",
      alpha3: "WLF",
      numeric: "876"
    },
    %{country_name: "Samoa", alpha2: "WS", alpha3: "WSM", numeric: "882"},
    %{country_name: "Yemen", alpha2: "YE", alpha3: "YEM", numeric: "887"},
    %{country_name: "South Africa", alpha2: "ZA", alpha3: "ZAF", numeric: "710"},
    %{country_name: "Zambia", alpha2: "ZM", alpha3: "ZMB", numeric: "894"},
    %{country_name: "Zimbabwe", alpha2: "ZW", alpha3: "ZWE", numeric: "716"},
    %{country_name: "Afghanistan", alpha2: "AF", alpha3: "AFG", numeric: "004"},
    %{country_name: "Bouvet Island", alpha2: "BV", alpha3: "BVT", numeric: "074"}
  ]

  @doc """
  Finds a country by its alpha2 or alpha3 code.
  """
  def country_name_by_alpha(alpha) do
    alpha = String.upcase(alpha)

    Enum.find(@country_codes, &(get_alpha2(&1) == alpha or get_alpha3(&1) == alpha))
    |> Map.get(:country_name)
  end

  defp get_alpha2(country), do: Map.get(country, :alpha2, "")
  defp get_alpha3(country), do: Map.get(country, :alpha3, "")

  @doc """
  Finds all `id` attributes in an SVG and adds an `@id` suffix to ensure that multiple instances
  of the same flag can be rendered on a page without ID conflicts. It also updates all references
  to those IDs (in `mask`, `fill`, and `filter` attributes).
  """
  def templatize_ids(svg_string) do
    ids =
      ~r/id="([^"]+)"/
      |> Regex.scan(svg_string)
      |> Enum.map(fn [_, id] -> id end)
      |> Enum.uniq()

    Enum.reduce(ids, svg_string, fn original_id, acc ->
      acc
      |> String.replace("id=\"#{original_id}\"", "id={\"#{original_id}_\#{@id}\"}")
      |> String.replace("mask=\"url(##{original_id})\"", "mask={\"url(##{original_id}_\#{@id})\"}")
      |> String.replace("fill=\"url(##{original_id})\"", "fill={\"url(##{original_id}_\#{@id})\"}")
      |> String.replace("filter=\"url(##{original_id})\"", "filter={\"url(##{original_id}_\#{@id})\"}")
    end)
  end
end

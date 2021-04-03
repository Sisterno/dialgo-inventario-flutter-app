const testData = [
  {
    "codigo": 300039606,
    "nombre": "CHIZITOS QUESO 16GX7X14 TIR",
    "precioUnitario": 98,
    "precioCaja": 35.28
  },
  {
    "codigo": 300039607,
    "nombre": "CHIZITOS QUESO 16GX91X1",
    "precioUnitario": 91,
    "precioCaja": 32.76
  },
  {
    "codigo": 300045188,
    "nombre": "CHIZITOS QUESO 40GX5X12 TIR",
    "precioUnitario": 60,
    "precioCaja": 42.6
  },
  {
    "codigo": 300042611,
    "nombre": "CHIZITOS QUESO 40GX48X1",
    "precioUnitario": 48,
    "precioCaja": 34.08
  },
  {
    "codigo": 300043796,
    "nombre": "CHIZITOS QUESO 25GX7X12TIR",
    "precioUnitario": 84,
    "precioCaja": 30.24
  },
  {
    "codigo": 300043795,
    "nombre": "CHIZITOS QUESO 25GX48X1",
    "precioUnitario": 48,
    "precioCaja": 17.28
  },
  {
    "codigo": 300039608,
    "nombre": "CHIZITOS QUESO PIC 16GX7X14 TIR",
    "precioUnitario": 98,
    "precioCaja": 35.28
  },
  {
    "codigo": 300039609,
    "nombre": "CHIZITOS QUESO PICANTE 16GX91X1",
    "precioUnitario": 91,
    "precioCaja": 32.76
  },
  {
    "codigo": 300043797,
    "nombre": "CHIZITOS QUESO PIC 25GX7X12TIR",
    "precioUnitario": 84,
    "precioCaja": 30.24
  },
  {
    "codigo": 300045189,
    "nombre": "CHIZITOS QUESO PICANTE 40GX5X12 TIR",
    "precioUnitario": 60,
    "precioCaja": 42.6
  },
  {
    "codigo": 300044353,
    "nombre": "CHIZITOS QUESO PICANTE 40GX48X1",
    "precioUnitario": 48,
    "precioCaja": 34.08
  },
  {
    "codigo": 300042610,
    "nombre": "CHIZITOS QUESO 190GX8X1 C/PREC",
    "precioUnitario": 8,
    "precioCaja": 27.04
  },
  {
    "codigo": 300045186,
    "nombre": "CHEETOS HORNEADOS QUESO 34GX6X12 TIR",
    "precioUnitario": 72,
    "precioCaja": 51.12
  },
  {
    "codigo": 300036752,
    "nombre": "CHEETOS HORNEADOS QUESO 34GX56X1",
    "precioUnitario": 56,
    "precioCaja": 39.76
  },
  {
    "codigo": 300035392,
    "nombre": "CHEETOS HORNEADOS QUESO 74GX32X1",
    "precioUnitario": 32,
    "precioCaja": 44.48
  },
  {
    "codigo": 300050011,
    "nombre": "CHEETOS HORNEADOS QUESO 200GX10X1",
    "precioUnitario": 10,
    "precioCaja": 40.7
  },
  {
    "codigo": 300039594,
    "nombre": "CHEETOS QUESO PICANTE 15GX10X14 TIR",
    "precioUnitario": 140,
    "precioCaja": 50.4
  },
  {
    "codigo": 300039595,
    "nombre": "CHEETOS QUESO PICANTE 15GX128X1",
    "precioUnitario": 128,
    "precioCaja": 46.08
  },
  {
    "codigo": 300045187,
    "nombre": "CHEETOS QUESO PICANTE 34GX6X12 TIR",
    "precioUnitario": 72,
    "precioCaja": 51.12
  },
  {
    "codigo": 300042605,
    "nombre": "CHEETOS QUESO PICANTE 34GX48X1",
    "precioUnitario": 48,
    "precioCaja": 34.08
  },
  {
    "codigo": 300046971,
    "nombre": "CHEETOS QUESO PICANTE 69GX40X1",
    "precioUnitario": 40,
    "precioCaja": 55.6
  },
  {
    "codigo": 300050875,
    "nombre": "CHEETOS FLAMIN HOT 36GX15X6 TIR",
    "precioUnitario": 90,
    "precioCaja": 63.9
  },
  {
    "codigo": 300039378,
    "nombre": "CHEESE TRIS QUESO 16GX14X13 TIR",
    "precioUnitario": 182,
    "precioCaja": 65.52
  },
  {
    "codigo": 300039379,
    "nombre": "CHEESE TRIS QUESO 16GX195X1",
    "precioUnitario": 195,
    "precioCaja": 70.2
  },
  {
    "codigo": 300050121,
    "nombre": "CHEESE TRIS QUESO 39GX15X6 TIR",
    "precioUnitario": 90,
    "precioCaja": 63.9
  },
  {
    "codigo": 300050122,
    "nombre": "CHEESE TRIS QUESO 39GX96X1",
    "precioUnitario": 96,
    "precioCaja": 68.16
  },
  {
    "codigo": 300039590,
    "nombre": "CHEESE TRIS QUESO PICANTE 16GX14X13 TIR",
    "precioUnitario": 182,
    "precioCaja": 65.52
  },
  {
    "codigo": 300039591,
    "nombre": "CHEESE TRIS QUESO PICANTE 16GX195X1",
    "precioUnitario": 195,
    "precioCaja": 70.2
  },
  {
    "codigo": 300044350,
    "nombre": "CHEESE TRIS QUESO PIC 40GX15X6 TIR",
    "precioUnitario": 90,
    "precioCaja": 63.9
  },
  {
    "codigo": 300044351,
    "nombre": "CHEESE TRIS QUESO PIC 40GX96X1",
    "precioUnitario": 96,
    "precioCaja": 68.16
  },
  {
    "codigo": 300039878,
    "nombre": "CHEETOS CANCHITA CARAMELO 47GX42X1 PE",
    "precioUnitario": 42,
    "precioCaja": 30.24
  },
  {
    "codigo": 300039909,
    "nombre": "CHEETOS CANCHITA MANTEQUILLA 21GX8X6 TIR",
    "precioUnitario": 48,
    "precioCaja": 34.56
  },
  {
    "codigo": 300039908,
    "nombre": "CHEETOS CANCHITA MANTEQUILLA 21GX54X1",
    "precioUnitario": 54,
    "precioCaja": 38.88
  },
  {
    "codigo": 300039873,
    "nombre": "CHEETOS CANCHITA SALADA 30GX6X6 TIR",
    "precioUnitario": 36,
    "precioCaja": 25.92
  },
  {
    "codigo": 300039872,
    "nombre": "CHEETOS CANCHITA SALADA 30GX45X1",
    "precioUnitario": 45,
    "precioCaja": 32.4
  },
  {
    "codigo": 300035061,
    "nombre": "CHICHARRON SAL 21GX16X6 TIR",
    "precioUnitario": 96,
    "precioCaja": 88.32
  },
  {
    "codigo": 300035062,
    "nombre": "CHICHARRON SAL 21GX96X1",
    "precioUnitario": 96,
    "precioCaja": 88.32
  },
  {
    "codigo": 300042608,
    "nombre": "CHICHARRON SAL 41GX60X1 PA",
    "precioUnitario": 60,
    "precioCaja": 98.4
  },
  {
    "codigo": 300044361,
    "nombre": "DORITOS Q/A 23GX9X12 TIR",
    "precioUnitario": 108,
    "precioCaja": 54
  },
  {
    "codigo": 300044360,
    "nombre": "DORITOS Q/A 23GX140X1",
    "precioUnitario": 140,
    "precioCaja": 70
  },
  {
    "codigo": 300049942,
    "nombre": "DORITOS Q/A 40GX90X1",
    "precioUnitario": 90,
    "precioCaja": 76.5
  },
  {
    "codigo": 300035116,
    "nombre": "DORITOS Q/A 85GX48X1 PA C/PREC",
    "precioUnitario": 48,
    "precioCaja": 66.24
  },
  {
    "codigo": 300044359,
    "nombre": "DORITOS Q/A 210GX18X1 PA",
    "precioUnitario": 18,
    "precioCaja": 81.36
  },
  {
    "codigo": 300049944,
    "nombre": "DORITOS QUESO FUEGO 40GX90X1",
    "precioUnitario": 90,
    "precioCaja": 76.5
  },
  {
    "codigo": 300046841,
    "nombre": "DORITOS RULETA 41GX90X1",
    "precioUnitario": 90,
    "precioCaja": 76.5
  },
  {
    "codigo": 300035085,
    "nombre": "DORITOS DIPPAS SAL 200GX13X1",
    "precioUnitario": 14,
    "precioCaja": 63.28
  },
  {
    "codigo": 300035237,
    "nombre": "TORTEES SAL 30GX12X12 TIR PA",
    "precioUnitario": 144,
    "precioCaja": 72
  },
  {
    "codigo": 300035238,
    "nombre": "TORTEES SAL 30GX140X1 PA",
    "precioUnitario": 140,
    "precioCaja": 70
  },
  {
    "codigo": 300042634,
    "nombre": "TORTEES SAL 60GX8X6 TIR",
    "precioUnitario": 48,
    "precioCaja": 44.16
  },
  {
    "codigo": 300042633,
    "nombre": "TORTEES SAL 60GX63X1",
    "precioUnitario": 63,
    "precioCaja": 57.96
  },
  {
    "codigo": 300051049,
    "nombre": "TORTEES SAL 138GRX35X1",
    "precioUnitario": 35,
    "precioCaja": 60.9
  },
  {
    "codigo": 300035186,
    "nombre": "TORTEES PICANTE 30GX12X12 TIR PA",
    "precioUnitario": 144,
    "precioCaja": 72
  },
  {
    "codigo": 300035187,
    "nombre": "TORTEES PICANTE 30GX140X1 PA",
    "precioUnitario": 140,
    "precioCaja": 70
  },
  {
    "codigo": 300042632,
    "nombre": "TORTEES PICANTE 60GX8X6 TIR",
    "precioUnitario": 48,
    "precioCaja": 44.16
  },
  {
    "codigo": 300042631,
    "nombre": "TORTEES PICANTE 60GX63X1",
    "precioUnitario": 63,
    "precioCaja": 57.96
  },
  {
    "codigo": 300035183,
    "nombre": "TORTEES PICANTE 138GX35X1",
    "precioUnitario": 35,
    "precioCaja": 60.9
  },
  {
    "codigo": 300044371,
    "nombre": "LAYS CLASICAS 17GX9X12 TIR PA",
    "precioUnitario": 108,
    "precioCaja": 54
  },
  {
    "codigo": 300044369,
    "nombre": "LAYS CLASICAS 17GX112X1 PA",
    "precioUnitario": 112,
    "precioCaja": 56
  },
  {
    "codigo": 300048003,
    "nombre": "LAYS CLASICAS 40GX5X12 TIR PA",
    "precioUnitario": 60,
    "precioCaja": 42.6
  },
  {
    "codigo": 300048001,
    "nombre": "LAYS CLASICAS 40GX60X1 PA",
    "precioUnitario": 63,
    "precioCaja": 44.73
  },
  {
    "codigo": 300042623,
    "nombre": "LAYS CLASICAS 70GX36X1 PA C/PREC",
    "precioUnitario": 36,
    "precioCaja": 49.68
  },
  {
    "codigo": 300039623,
    "nombre": "LAYS CLASICAS 180GX13X1 PA",
    "precioUnitario": 13,
    "precioCaja": 58.76
  },
  {
    "codigo": 300044373,
    "nombre": "LAYS CLASICAS 210GX12X1",
    "precioUnitario": 12,
    "precioCaja": 54.24
  },
  {
    "codigo": 300042620,
    "nombre": "LAYS AL HILO SAL 40GX92X1",
    "precioUnitario": 92,
    "precioCaja": 78.2
  },
  {
    "codigo": 300044364,
    "nombre": "LAYS AL HILO SAL 23GX12X12 TIR",
    "precioUnitario": 144,
    "precioCaja": 51.84
  },
  {
    "codigo": 300044365,
    "nombre": "LAYS AL HILO SAL 23GX140X1",
    "precioUnitario": 140,
    "precioCaja": 50.4
  },
  {
    "codigo": 300050644,
    "nombre": "LAYS AL HILO SAL 155GX32X1 PA",
    "precioUnitario": 32,
    "precioCaja": 88.32
  },
  {
    "codigo": 300050883,
    "nombre": "LAYS ONDAS SAL 39GX66X1",
    "precioUnitario": 70,
    "precioCaja": 49.7
  },
  {
    "codigo": 300049964,
    "nombre": "LAYS ONDAS SAL 150GX20X1",
    "precioUnitario": 20,
    "precioCaja": 84
  },
  {
    "codigo": 300035314,
    "nombre": "LAYS ONDAS PICANTE 36GX70X1",
    "precioUnitario": 70,
    "precioCaja": 49.7
  },
  {
    "codigo": 300045228,
    "nombre": "LAYS ONDAS PIZZA 28GX6X12 TIR",
    "precioUnitario": 72,
    "precioCaja": 51.12
  },
  {
    "codigo": 300045382,
    "nombre": "LAYS ONDAS PIZZA 28GX70X1",
    "precioUnitario": 70,
    "precioCaja": 49.7
  },
  {
    "codigo": 300047639,
    "nombre": "LAYS POLLO A LA BRASA 34GX63X1",
    "precioUnitario": 63,
    "precioCaja": 44.73
  },
  {
    "codigo": 300051048,
    "nombre": "LAYS FLAMIN HOT 36GX12X6 TIR",
    "precioUnitario": 72,
    "precioCaja": 61.2
  },
  {
    "codigo": 300050850,
    "nombre": "PIQUEO SNAX 23GX9X12 TIR",
    "precioUnitario": 108,
    "precioCaja": 54
  },
  {
    "codigo": 300050859,
    "nombre": "PIQUEO SNAX 23GX112X1",
    "precioUnitario": 112,
    "precioCaja": 56
  },
  {
    "codigo": 300052070,
    "nombre": "PIQUEO SNAX 45GX10X6 TIR",
    "precioUnitario": 60,
    "precioCaja": 55.2
  },
  {
    "codigo": 300050852,
    "nombre": "PIQUEO SNAX 45GX63X1",
    "precioUnitario": 63,
    "precioCaja": 57.96
  },
  {
    "codigo": 300050855,
    "nombre": "PIQUEO SNAX 93GX20X1 PA",
    "precioUnitario": 20,
    "precioCaja": 34.6
  },
  {
    "codigo": 300050846,
    "nombre": "PIQUEO SNAX 225GX10X1 PA",
    "precioUnitario": 10,
    "precioCaja": 48.5
  },
  {
    "codigo": 300044397,
    "nombre": "PIQUEO SNAX PICANTE 49GX12X6 TIR",
    "precioUnitario": 72,
    "precioCaja": 66.24
  },
  {
    "codigo": 300044398,
    "nombre": "PIQUEO SNAX PICANTE 49GX80X1",
    "precioUnitario": 80,
    "precioCaja": 73.6
  },
  {
    "codigo": 300049855,
    "nombre": "NATUCHIPS CAMOTE 36GX63X1 PA",
    "precioUnitario": 63,
    "precioCaja": 53.55
  },
  {
    "codigo": 300035041,
    "nombre": "NATUCHIPS CAMOTE 90GX32X1 PA",
    "precioUnitario": 32,
    "precioCaja": 67.2
  },
  {
    "codigo": 300035480,
    "nombre": "NATUCHIPS CHIFLES SALADO 38GX8X12 TIR PA",
    "precioUnitario": 96,
    "precioCaja": 68.16
  },
  {
    "codigo": 300035150,
    "nombre": "KARINTO CHIFLES SALADO 19GX24X12 TIR MQ",
    "precioUnitario": 288,
    "precioCaja": 103.68
  },
  {
    "codigo": 300050348,
    "nombre": "KARINTO CHIFLES SALADO 38GX13X12 TIR",
    "precioUnitario": 156,
    "precioCaja": 110.76
  },
  {
    "codigo": 300050347,
    "nombre": "KARINTO CHIFLES SALADO 38GX156X1",
    "precioUnitario": 156,
    "precioCaja": 110.76
  },
  {
    "codigo": 300049837,
    "nombre": "LOS CUATES RANCHERITOS 29GX8X12 TIR",
    "precioUnitario": 96,
    "precioCaja": 34.56
  },
  {
    "codigo": 300050943,
    "nombre": "LOS CUATES RANCHERITOS 29GX104X1",
    "precioUnitario": 104,
    "precioCaja": 37.44
  },
  {
    "codigo": 300049838,
    "nombre": "LOS CUATES RANCHERITOS 69GX9X6 TIR",
    "precioUnitario": 54,
    "precioCaja": 38.34
  },
  {
    "codigo": 300049839,
    "nombre": "LOS CUATES SAL 29GX12X12 TIR",
    "precioUnitario": 144,
    "precioCaja": 51.84
  },
  {
    "codigo": 300049960,
    "nombre": "LOS CUATES SAL 69GX7X10 TIR",
    "precioUnitario": 70,
    "precioCaja": 49.7
  },
  {
    "codigo": 300049835,
    "nombre": "LOS CUATES PICANTE 29GX12X12 TIR",
    "precioUnitario": 144,
    "precioCaja": 51.84
  },
  {
    "codigo": 300049836,
    "nombre": "LOS CUATES PICANTE 69GX7X10 TIR",
    "precioUnitario": 70,
    "precioCaja": 49.7
  },
  {
    "codigo": 300049961,
    "nombre": "LOS CUATES TWIST 29GX9X12 TIR",
    "precioUnitario": 108,
    "precioCaja": 38.88
  },
  {
    "codigo": 300049962,
    "nombre": "LOS CUATES TWIST 69GX7X10 TIR",
    "precioUnitario": 70,
    "precioCaja": 49.7
  },
  {
    "codigo": 300039620,
    "nombre": "FREE PAPAS ONDULADAS SAL 16GX12X12 TIR",
    "precioUnitario": 144,
    "precioCaja": 51.84
  },
  {
    "codigo": 300050220,
    "nombre": "FREE PAPAS ONDULADAS SAL 16GX144X1",
    "precioUnitario": 144,
    "precioCaja": 51.84
  },
  {
    "codigo": 300035139,
    "nombre": "FREE PAPAS CLASICAS 15GX9X12 TIR MAYON",
    "precioUnitario": 108,
    "precioCaja": 38.88
  },
  {
    "codigo": 300052700,
    "nombre": "FREE PAPAS PIC BASE PLANA 16GX12X12 TIR",
    "precioUnitario": 144,
    "precioCaja": 51.84
  },
  {
    "codigo": 300050221,
    "nombre": "FREE PAPAS  PIC LISA 30GX72X TIR",
    "precioUnitario": 72,
    "precioCaja": 51.12
  },
  {
    "codigo": 300035156,
    "nombre": "KARINTO HABAS SAL 18GX14X12 TIR",
    "precioUnitario": 168,
    "precioCaja": 60.48
  },
  {
    "codigo": 300038509,
    "nombre": "KARINTO HABAS SAL 35GX6X12 TIR",
    "precioUnitario": 72,
    "precioCaja": 51.84
  },
  {
    "codigo": 300035155,
    "nombre": "KARINTO HABAS SAL 100GX42X1",
    "precioUnitario": 42,
    "precioCaja": 72.24
  },
  {
    "codigo": 300035202,
    "nombre": "KARINTO MANI SAL 20GX16X12 TIR",
    "precioUnitario": 192,
    "precioCaja": 69.12
  },
  {
    "codigo": 300047597,
    "nombre": "KARINTO MANI SAL 35GX10X12 TIR",
    "precioUnitario": 120,
    "precioCaja": 86.4
  },
  {
    "codigo": 300035200,
    "nombre": "KARINTO MANI SAL 100GX42X1",
    "precioUnitario": 42,
    "precioCaja": 72.24
  },
  {
    "codigo": 300035437,
    "nombre": "KARINTO MANI ENGALL PIC 20GX16X12 TIR",
    "precioUnitario": 192,
    "precioCaja": 69.12
  },
  {
    "codigo": 300047595,
    "nombre": "KARINTO MANI ENGALL PIC 35GX10X12 TIR",
    "precioUnitario": 120,
    "precioCaja": 86.4
  },
  {
    "codigo": 300035165,
    "nombre": "KARINTO MANI ENGALL PIC 100GX42X1",
    "precioUnitario": 42,
    "precioCaja": 72.24
  },
  {
    "codigo": 300035456,
    "nombre": "KARINTO MANI ENGALL SAL 20GX16X12 TIR",
    "precioUnitario": 192,
    "precioCaja": 69.12
  },
  {
    "codigo": 300047596,
    "nombre": "KARINTO MANI ENGALL SAL 35GX10X12 TIR",
    "precioUnitario": 120,
    "precioCaja": 86.4
  },
  {
    "codigo": 300035195,
    "nombre": "KARINTO MANI ENGALL SAL 100GX42X1",
    "precioUnitario": 42,
    "precioCaja": 72.24
  },
  {
    "codigo": 300042616,
    "nombre": "KARINTO MANI CONFITADO 38GX9X12 TIR",
    "precioUnitario": 108,
    "precioCaja": 77.76
  },
  {
    "codigo": 300043198,
    "nombre": "GALL QUAKER AVENA MAN CA 28GX17X6 PE",
    "precioUnitario": 102,
    "precioCaja": 86.7
  },
  {
    "codigo": 300043397,
    "nombre": "GALL QUAKER AVENA PASAS 28GX17X6 PE",
    "precioUnitario": 102,
    "precioCaja": 86.7
  },
  {
    "codigo": 300043199,
    "nombre": "GALL QUAKER AVENA GRANOL 28GX17X6 PE",
    "precioUnitario": 102,
    "precioCaja": 86.7
  },
  {
    "codigo": 300043196,
    "nombre": "GALL CHOKIS CHISPAS 40GX13X6 LS PE",
    "precioUnitario": 78,
    "precioCaja": 66.3
  },
  {
    "codigo": 300050818,
    "nombre": "FLAMIN HOT PLANILLA PEQUE�A 222GX9X1",
    "precioUnitario": 9,
    "precioCaja": 43.38
  },
  {
    "codigo": 300051006,
    "nombre": "FLAMIN HOT PLANILLA GRANDE 444GX5X1",
    "precioUnitario": 5,
    "precioCaja": 48.2
  },
  {
    "codigo": 300050197,
    "nombre": "KARINTO PLANILLA 840GX8X1 �",
    "precioUnitario": 8,
    "precioCaja": 138.24
  },
  {
    "codigo": 300050875,
    "nombre": "CHEETOS FLAMIN HOT 36GX15X6 TIR",
    "precioUnitario": 90,
    "precioCaja": 63.9
  },
  {
    "codigo": 300050878,
    "nombre": "DORITOS FLAMIN HOT 39GX12X6 TIR",
    "precioUnitario": 72,
    "precioCaja": 61.2
  },
  {
    "codigo": 300051048,
    "nombre": "LAYS FLAMIN HOT 36GX12X6 TIR",
    "precioUnitario": 72,
    "precioCaja": 61.2
  }
];
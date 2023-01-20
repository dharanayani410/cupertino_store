class Global {
  static List<Map> home = [
    {
      'image': 'asset/image/vb.jpeg',
      'title': 'Vagabond sack',
      'price': 120,
      'total': 0,
      'i': 0,
    },
    {
      'image': 'asset/image/ss.jpeg',
      'title': 'Stella sunglasses',
      'price': 58,
      'total': 0,
      'i': 0,
    },
    {
      'image': 'asset/image/wb.jpeg',
      'title': 'Whitney belt',
      'price': 35,
      'total': 0,
      'i': 0,
    },
    {
      'image': 'asset/image/gs.jpeg',
      'title': 'Garden strand',
      'price': 98,
      'total': 0,
      'i': 0,
    },
    {
      'image': 'asset/image/se.jpeg',
      'title': 'Strut earrings',
      'price': 34,
      'total': 0,
      'i': 0,
    },
    {
      'image': 'asset/image/vs.jpeg',
      'title': 'Varsity socks',
      'price': 12,
      'total': 0,
      'i': 0,
    },
    {
      'image': 'asset/image/wk.jpeg',
      'title': 'Weave keyring',
      'price': 16,
      'total': 0,
      'i': 0,
    }
  ];
  static List<Map<dynamic, dynamic>> cart = [];

  static num totalBill = 0;
  static num shipping = 21;
  static num tax = 10;
  static num finalBill = 0;

  static String searchVal = '';
  static String text = searchVal;

  static List<Map<dynamic, dynamic>> shirt = [
    {
      'image': 'asset/image/csw.jpeg',
      'title': 'Classic shirt in White',
      'price': 70,
      'total': 0,
      'i': 0,
    },
    {
      'image': 'asset/image/ps.jpeg',
      'title': 'Printed shirt',
      'price': 10,
      'total': 0,
      'i': 0,
    },
    {
      'image': 'asset/image/rfs.jpeg',
      'title': 'Regular Fit shirt',
      'price': 38,
      'total': 0,
      'i': 0,
    },
    {
      'image': 'asset/image/ds.jpeg',
      'title': 'Designer shirt',
      'price': 58,
      'total': 0,
      'i': 0,
    },
    {
      'image': 'asset/image/cs1.jpeg',
      'title': 'Casual shirt',
      'price': 16,
      'total': 0,
      'i': 0,
    }
  ];
}

import 'package:flutter/material.dart';



class FineTab extends StatefulWidget{
  const FineTab({super.key});
  @override
  State<FineTab> createState() => _FineTabState();
}
class _FineTabState extends State<FineTab> {

  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
          int _selectedIndex = 0;
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Digtial Driving License'),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  icon: Icon(Icons.logout)),
              )
            ],
            bottom: const TabBar(
              tabs: [
                Tab(text: "Fines"),
                Tab(text: "Previous Fines"),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.attach_money),
                  label: 'Pay Fine',
                ),
              ],
               currentIndex: _selectedIndex,
               onTap: (int index) {
                switch (index) {
                  case 0:
                    // only scroll to top when current index is selected.
                    Navigator.pushNamed(context, '/profile');
                    break;
                  case 1:
                    showModal(context);
                    break;
                }
                setState(
                  () {
                    _selectedIndex = index;
                  },
                );
              },
          ),
          // appBar: AppBar(
          //   title: Text("Fines"),
          // ),
          body: TabBarView(
            children: [
               Container(
                    height: height * 0.5,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Fines remaining',
                            style: TextStyle(
                              color: Color.fromARGB(204, 41, 136, 89),
                              fontSize: 27,
                              fontFamily: 'Helvetica',
                            ),
                          ),
                          const Divider(
                            thickness: 2.5,
                          ),
                          Container(
                            height: height * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                              Row(
                                children: [
                                  Text(
                                  '1. Overspeed Fine: ',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontFamily: 'Helvetica',
                                    fontSize: 25,
                                  ),
                                ),
                                const Text(
                                  'Rs. 1500',
                                  style: TextStyle(
                                    color: Color.fromRGBO(
                                        39, 105, 171, 1),
                                    fontFamily: 'Helvetica',
                                    fontSize: 20,
                                  ),
                                ),
                              ],),
                              Row(
                                children: [
                                  Text(
                                  'Date: 2079/01/20',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontFamily: 'Helvetica',
                                    fontSize: 15,
                                  ),
                                ),
                              ],),
                                const Divider(
                                  thickness: 0.5,
                                ),
                            ],)
                            
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.5,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Previous Fines',
                            style: TextStyle(
                              color: Color.fromARGB(204, 41, 136, 89),
                              fontSize: 27,
                              fontFamily: 'Helvetica',
                            ),
                          ),
                          Divider(
                            thickness: 2.5,
                          ),
                          Container(
                            height: height * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                              Row(
                                children: [
                                  Text(
                                  '1. Drink and Drive: ',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontFamily: 'Helvetica',
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  'Rs. 5500',
                                  style: TextStyle(
                                    color: Color.fromRGBO(
                                        39, 105, 171, 1),
                                    fontFamily: 'Helvetica',
                                    fontSize: 20,
                                  ),
                                ),
                              ],),
                              Row(
                                children: [
                                  Text(
                                  'Date: 2079/01/20',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontFamily: 'Helvetica',
                                    fontSize: 15,
                                  ),
                                ),
                              ],),
                                Divider(
                                  thickness: 0.5,
                                ),
                              Row(
                                children: [
                                  Text(
                                  '2. One Way: ',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontFamily: 'Helvetica',
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  'Rs. 1000',
                                  style: TextStyle(
                                    color: Color.fromRGBO(
                                        39, 105, 171, 1),
                                    fontFamily: 'Helvetica',
                                    fontSize: 20,
                                  ),
                                ),
                              ],),
                              Row(
                                children: [
                                  Text(
                                  'Date: 2079/03/20',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontFamily: 'Helvetica',
                                    fontSize: 15,
                                  ),
                                ),
                              ],),
                            ],)
                            
                          ),
                        ],
                      ),
                    ),
                  ),
            ],
          ),
        ),
      );
  }

   void showModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Pay Fine in the QR'),
        content: Image.asset('assets/img/qrCode.png'),
        actions: <TextButton>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'),
          )
        ],
      ),
    );
  }
}
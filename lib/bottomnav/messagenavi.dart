import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class MessageNav extends StatefulWidget {
  MessageNav({Key? key}) : super(key: key);

  @override
  State<MessageNav> createState() => _MessageNavState();
}

class _MessageNavState extends State<MessageNav> {
  final data = GetStorage('settingsContainer');
  Map<String, dynamic> settings = {};
  Map<String, bool> defaultSettings = {
    "sound enabled": false,
    "music enabled": false,
    "show notifications": false
  };
  @override
  void initState() {
    settings = data.read('settings') ?? defaultSettings;
    super.initState();

     data.listen((){
    print("data saved");
  });
  data.listenKey('settings', (value) {
    print("setings saved");
   });
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text("Get storage example: " + (data.read('example') ?? 'n/a')),
        ),
        body: Center(
          child: Column(
            children: [
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: settings.length,
                itemBuilder: (BuildContext context,int index){
                  String key =settings.keys.elementAt(index);
                  return CheckboxListTile(
                    title: Text(key),
                    value: settings[key],
                   onChanged: (value){
                    setState(() {
                      settings[key]=value;
                    });
                   }
                   );
                }),
              ElevatedButton(
                onPressed: () async{
                  await data.write('settings', settings);
                  setState(() {
                   print("saved");
                  });
                },
                child: const Text("Save Settings"),
              ),
              ElevatedButton(
                onPressed: () async{
                  await data.erase();
                  setState(() {
                    print("cleared");
                  });
                },
                child: Text("Clear Me"),
              )
            ],
          ),
        ));
  }
}

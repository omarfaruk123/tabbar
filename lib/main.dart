import 'package:flutter/material.dart';
import 'package:tabbar/Fragment/AlarmFragment.dart';
import 'package:tabbar/Fragment/BalanceFragment.dart';
import 'package:tabbar/Fragment/ContactFragment.dart';
import 'package:tabbar/Fragment/EmailFragment.dart';
import 'package:tabbar/Fragment/HomeFragment.dart';
import 'package:tabbar/Fragment/PersonFragment.dart';
import 'package:tabbar/Fragment/SearchFragment.dart';
import 'package:tabbar/Fragment/SettingsFragment.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build (BuildContext context){
    return MaterialApp(home:const HomeActivity());
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: 'Home',),
                Tab(icon: Icon(Icons.search),text: 'Search',),
                Tab(icon: Icon(Icons.settings),text: 'Settings',),
                Tab(icon: Icon(Icons.email),text: 'Email',),
                Tab(icon: Icon(Icons.person),text: 'Person',),
                Tab(icon: Icon(Icons.access_alarm),text: 'Alarm',),
                Tab(icon: Icon(Icons.account_balance),text: 'Balance',),
                Tab(icon: Icon(Icons.contact_mail),text: 'Contact',),
              ],
            ) ,
          ),
          body: TabBarView(
            children: [
              HomeFragment(),
              SearchFragment(),
              SettingFragment(),
              EmailFragment(),
              PersonFragment(),
              AlarmFragment(),
              BalanceFragment(),
              ContactFragment()
            ],
          ),
        )
    );
  }
}
import 'dart:async';

import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';

 class HomeScreen extends  StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageindex=0;
  final  series_list=[
    "1 Series","2 Series","3 Series","4 Series","5 Series",
  ];
  int? seriesNumSelect;

 Timer? timer;
PageController _pageController=PageController(
  initialPage: 0
);

@override
  void initState() {
  timer=Timer.periodic(Duration(seconds: 3), (timer) {
    if(pageindex<=4){
      pageindex++;
    }else{
      pageindex=0;
    }
    _pageController.animateToPage(pageindex, duration: Duration(
      milliseconds: 350
    ), curve: Curves.easeIn);
  })   ;
    super.initState();
  }
@override
  void dispose() {
    _pageController.dispose();
    timer=null;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    List<Widget> _demo=[
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network("https://hips.hearstapps.com/hmg-prod/images/2021-bmw-m440i-xdrive-coupe-106-1602004316.jpg?crop=0.668xw:0.565xh;0.163xw,0.313xh&resize=1200:*",
                width: MediaQuery.of(context).size.width,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              bottom: 35,
              right:30 ,
              child: Text("150d cDrive",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),))
        ],
      ),
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network("https://hips.hearstapps.com/hmg-prod/images/2023-bmw-m340i-xdrive-182-640f4380f300b.jpg?crop=0.622xw:0.523xh;0.0962xw,0.434xh&resize=1200:*",
                width: MediaQuery.of(context).size.width,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              bottom: 35,
              right:30 ,
              child: Text("120d xDrive",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),))
        ],
      ),
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network("https://hips.hearstapps.com/hmg-prod/images/2024-bmw-i7-m70-119-643d69e564b2a.jpg?crop=0.609xw:0.514xh;0.298xw,0.385xh&resize=1200:*",
                width: MediaQuery.of(context).size.width,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              bottom: 35,
              right:30 ,
              child: Text("300d yDrive",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),))
        ],
      ),
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network("https://hips.hearstapps.com/hmg-prod/images/2024-bmw-m3-110-1674509061.jpg?crop=0.760xw:0.642xh;0.0641xw,0.243xh&resize=1200:*",
                width: MediaQuery.of(context).size.width,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              bottom: 35,
              right:30 ,
              child: Text("120d xDrive",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),))
        ],
      ),
    ];


    return  Scaffold(
      body:  SafeArea(
        child: ListView(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  Padding(

                    padding: const EdgeInsets.all(8.0),

                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Text("BMW",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40)),

                        Text("Test Drive",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40)),

                      ],

                    ),

                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(

                      radius: 30,
backgroundColor: Colors.blue,
                      foregroundImage: NetworkImage("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFRgVFRUYGBgaGBgYGBgYGBgYGBkYGBgaGhgaGhocIS4lHB4rIRoYJjgmKy8xNTU1HCQ7QDs0Py40NTEBDAwMEA8QHxISGjQhJSM0NDE0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0MTQ0NDQ0NDQ0NDQ0NP/AABEIAQMAwgMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAADAAIEBQYHAQj/xABDEAACAQIDBQQIBAUCBAcBAAABAgADEQQSIQUxQVFhBiJxkQcyUoGhsdHwE0LB4RRigpLxI3IkNHOiM2NkdLLC0hb/xAAZAQACAwEAAAAAAAAAAAAAAAAAAQIDBAX/xAAkEQACAgICAgICAwAAAAAAAAAAAQIRAyESMQRBIlEyYRRCgf/aAAwDAQACEQMRAD8AthhU9kRy4NPYEkKkKqQJEZcEnsD4wi4BPZ+J+slIkKqwAiLs5PZ+LfWEGzk9k/3N9ZLVYULHQyANmJyPnHDZSfzeY+ksFSEVIAVw2SntN5j6Rw2QvtN8PpLRUjwsAKg7HHtnynh2P/P/ANv7y6CxFIgKM7HPtj+39407Hb2l8jL3JFkgBn22Q/NfM/SBbZT/AMvmfpNKyRjJEBmW2bU5DzgW2fU9n4r9ZpmSBdIUKzNNgqnsHzX6wTYV/YM0rJBssKCzNNh39hv7THs5sAyNp428bES+ZYxhHQWUrYscVMA+IBKkX05798vTGMg4iKgsrf4xevlFJ/4S+yPIRRUFokqkIqRyrCqsmB4qwirHIkIqQA8VYVUjkSPLAWud+6MYlSOCyu27tL8CmSti59RTck8SQoFzYcPlMYnpAZQzMpdeAYKrqwvcXX1lvl/KDYnXdcEdHUR4WZbZGPrOVJYMWJIK3K2Fs3eO8DMo3C9724zQYrHLSXM7Dx3aeHwiAlBYypUCm1iTyFtBzPSZ3anbbC0RY1Fd7jupqSCL6+yeGvOc6xXa16tQsWA/EdBc3OVBYhbbgoYk8zc8IAdqWx1GonuWYTC9ssOxpJSIp1H0clWSitxcllPrdLWOm8DfK2p20pYQOv4n8Q9kKm6i7HNm9UWy2C+fGIDYFYxlnMqHbvE1GzgBQneKAAIUvYqWbUnjccrW1uOkYHFLVppUBFnUNv5jdEAmSBdJMYQLrGIiOsCyyWywTrGBFZYFhJTLAssAAERhEKwjGEABxT20UQFgqwyJHIkKqSQzxEhVSOVYQLABqrKzb2Edkz0jZ6eoHB1/Mh+Y6gS3kLFbRpqGGddAc2hYjTdYcYAYfZe2PxXenUBY6rlcagAjMoJI1FrjjceJmE24EWq4W+QkFSd5VgCrHxFjJ3aHE5K5qI1s5zgAkEaaG3D/ADM7jsTnYndc3+A0kRmn7LdrmwyFCoazllvfS6EG/S4T73Qu03ampjHGa6ovqqDzGrHmd9uQ575nTp84tTwgIfUqXB43tcnU898Ejnffd9ievpoPvSNtYdT8oWKg4xTAWBO+56kaD4Rr1yxuT974GxMbACwS7ABGILHKVvrl01PAC/DwlvhnoU2dK1SpUZQpRqLqAG1zqWdTu03aG/SZkNw574Sm4B1F+l7CAHUNh9tGo2DjPh84RWzh6lNcu8qBdhcX4b7AcJ0PCYpKqB6bh1O4j6cJwLZFemzBKtlQm9wONxYMR3gvgdJs+zG0XpYijTw7q9KoSrUi7MEte7KW7wXTMAetoAdMZYJlklhBOIxEV1gHWSnECwgBFYQbCSHEC4gAK0UdaeQAukWGVZ4qwqiMZ6qxVHCgsTYAXMeomM7a7RDP/DlmWiih67L6xzXKUx45bn62gADb3bZEulAGq/8AKxyL4lfWPTQTneM7TV2FiEPVkV233Nyd+vOQdobQzkqgCJmuEUWF91+Z8TrK1mkRjnqEk34yy2fsWpUsxUheZ4+6T+zexw/fcf7QR8Z0HD7PAUcPCZcuenxia8Pj2uUjDUOz4Gh1IP0kj/8AnVtYHXlb76zZjDAcr87az00haxH7zI80/s1LDD6OaYnYrKxXrobcJCbZbWvbz+/dOk4jC66KJF/gwf8AFpNeTJCfixZz+js5iTfT5SQuyCbzZ1Nn23CDp4O3nJLyGyP8aMTn2JwLJwkWdExWzM43TIbU2WUJIHumjHm5aZmzYOO4lYssdnY96L50bL7gennYnXfrK4iOUzQZTvfZjtOmLXKWQOANFJGbmQrd4W057951tfMJ897H2hUo1Fem1iCNLXB13EHQzuXZ7awxNIOQA40dQdL62I5A23GAEt1gXElMIB1jERXEC4klhAuIABtFHRRgXqCEUTxRCKIAegTjHpFx7PiXS4CKwFhxYKASeZ0t0nX9p12p0XdRdlRmF+YGk+esfVZ6hZ2uxZmY9SbkxDIFYW3SXsXZxquL+rx6yMFLnSbns1s3IoJGplGfJxjrsvwYuUrfSNHsnAqijThp4S0VI3DJpJtNLzno6LZDZIFqfDWWVSlbW0iuNZCSolF2RHo9I1KI3yZa5jnTlIErK6vQ0lfUsJeV10lHiAL2EIuh9jFN5VbWw4YE2lim+DxCXEujIrkqOf4/B5TcDSQJscfhb3FtOEzGMw+RtRN+Gdqmc7Pi4u0OwGXMC26/vPQHh4zvPZXZq0cOoAAL982JOh9XU9PnOB0kFwN4vw5zvnY6sr4SnZCmVQrXFrld58OPvl5mLVxAOJLYSO4gBEcQDiSXEA4jEBtFHWijAvlhFg1hVgM8q0g6lWF1YEEdDvnCe2eyhh6rAW5kWIsGvltfeNDO9EaTknpQQ5x3dAbZrb82trnX8p6amIDKdmsIHcX4G86PhaAAmK7GgC+69xedAppoJz8+5HRwagSKGkloZCBtJSEmUplrDu9xa0hkSZkJEFUpcZGVscWkARZ640hEUmPNGV1ZPkVWM3SnrKQbzRYhBKnFUpEsiyqZtYibieV0YDQSOjyyJCTB4lb6jhM3t5LgHjea5EDb5mO0lEoQvAn5/fwmvA/kZc/4lBQBLgc9POd77EUSuDplr3YXNzfQaD5TguGW7jxn0Z2epBcNRUcKa/EXPzm45zJTiAcSS4gHEaI2RXEA4kpxAOIDI9oo+0UYF0sKsGsIsQDhOc+l2mclM/lJt7xc+Vj96zo4mQ9ImAStRurrnph2yXBYrl73dvpoCbwGc57Ea1io3any6TpASc27Af8AMgcMjW+c6adLzDnXyN+B/EjVsSiasR0ELS2lT071um758JV7QoCrewF+DX38wDwlVW7Pqo7pKnwB8yd/jKVxXZa7ZtF2pSI7rgnx+9IlxStoCPOc3dHpvdWY20PC/iJb7P2j3tTx42HiJGTHGLNvQtv5z3E1AoJ+/vfK2hibrcayp2xtUAWJtIKWqRLg2yZiseqgk+7WZvH9paY01v0lJXxL1O6pLb/AXkI7NS93db8iR75ZCC9ik5ei3fb6nQW6XuJJpVlcXGjfAymOEpkdxh7iDHYZWTXePvyk+MfQra7NJgzrKjt1hSFRxqPlLDCYkOobcRoZK7S0s+ELgXKEN5HX3ayeLUivLuJz/YOCNfEU6Q0LuovyudSB5z6PRFQKgsLAADS9gLbp887Dxb4etnp6OMyq5GYoDcEgHS5B4g75r1xj08rglqjG7O5JN7j3kzTPIosy48EsnTo6s4gWEJQfMitzVT5gGNcS5MzvRFdYB1ktxAOIwI+WKOtFEBarCrBLCrAB4EwHaWi+WurC7pdkdbhsjc7cQCdZvxM/i2tXqlt1kHwlGbST/Zq8bba/RyrsNTP8at7/AJ76cSrH78J0nFeqeGkosBgUTGnJpmu411Ay5bW8bn3GaDE0S0z5pXtF+KNaZnMbtZaKKNM7ZvWNgAN7MeA/YSqxOJxVSmKqocjMEQuxpB2bcURdcu83ZuBlvi9hI75nANjuOt7a6k8L8JabUyVsMaNVTl0KshsyMuqsPvpIY+N/InkUq+JylK9d6uQizZzTBDvlzra4BNwd6/3C++TMO9UOabjvg7jYG/6+6HXZiYd/xFYsRqO5l15nvHUa8d8vNgbPq12NV7hL5hmJ7zbrgbt3G0nNxrSFjU12zV7IwYCLmN8y3NvCZLthg8jBlJCnxnQtn0e74aCU3aPBrURlNv3+7TOo1TLlK20cvqYlgFVcwvfupq72Fz4DmeAlpt3s+mGwyVKlR1qOrEIi90OACqM29jqSST+XS0EMEyklbZhoQRee1saxT8KoSE07hvk03ELu8pohOKKcmOUvZR7CwH4zlGdgMmfNr3WGXeG0OpI620h6dSpScr6y3K31CsOBHsmT0qolwpyg7wqgXtuvcwtJDUICqbdY5TT9Cjia9nmz3a/S/O/ym2wdL8SkyNuZSPPSU2H2YF8ZocD3QJXCVyslkVRow2A2Z+GSHIzZzYHTdofjLarZl03KQbfA/pI/aukVql+F9D4i8DsNmd2Ua3U6dSNPjJu5NstxxUYaOwYAf6VP/Yn/AMRCMIRKeVVXkoHkLRrTcujjyduwDCR3WSXEA4jER7RR9ooAT1hVgUMKpjAIJnu1tMhMw42v7j9DNCshbYpZk3XsdQeR0+kqyxuLLsEuORMwewVzYh3vcKlufrHTXzmwRdB4Shw+A/Bc5FsjL3je5LA6e4XaX+GMxJfGjflknK0Ar7ND6m48N8q8TsBm9Wo48j8xNMovFWIUXvFwIRyvoy2H7J0gc9TNUbhnN1/tGh98tKlKwAFh0+gkTbW3UpITfwi7OhqtEVm9ZySOgBIA+Eg1y0i3aVyLiitltKbayEg2++c0KUtPCVWPp6GSlFqKIY5JyZjK+GUEuT46Sdh9n06q7gdNOPhJSYIXa5uDzmfrY7+ExBS90NmH8t9487yvj7NHL0XC9maQ1yLCjZyoO6vlLDC4xXW4M8q1d/H4boVZFtoqq1O3nJWFN18PnA13BPP5jjCYE94jmD5j7Msxx2UZJWij7WvdkS184BuOAFwf0ln2O2SEqoN4PfJPJdbedpF2tTJqJ0QA/wBzS/7EVCajqR6qkg8rsNLy5blQnJrE3+jYtBtCNBtNpywTQLwzQLmADIo3NPIATEhlgUhlgTHrB48f6beH6wix5W4sdx0MTVqhxdNMy7KePjJVJwBbpGYrC1g2VULC+rAjLl4k3424SMalphknFbN+pvTLIYiwlJtraFhe5jquKIBsZlduOzHLfQ/Z+Epc3LRbGCjsHg8I2LfM5ORToPaPD3TX4nEvQo/6QUhdykE6cdxlZ2epFUUsOWVRwXrLp0Yi1j16DW0mqQSbk9g8Pt45R+MBTLaXDFkvbmQCPl1kLam1EVGZqgAG/Xy8fCLbVFhTsqk89Lm2+9hMONlGqTnLnfZbGwNr+UO+2Ja2kR9o9paxP+mxRRuAF2IHMn5CRqmKar33NybbxuFpMr7IYELkINjv3W8ZDGDYXW30HG0ncfQNSLvY20MndB38+ku2xgI+/GYuhS1Kk2OmnLqJcUqhyjyPjulMo07ROMuSplg2J108ZP2dUu4vzAEzZq2Nr9Ja7Kfvrry3ScNFU+mWm2MC6VA7KSjqArAGwIJGU8jx9/jNV2Y2eaaF2Fme2/eFA0v5n4S4wg7if7R8oQzbHGk+RilmbjxBtBsIVoxpaZyO4gXh3gngACKOtPIiRKQwqmR0MKrRjDrCiBQwimIAlpi6rbwR99ZtFmM2suSs68L5h/VrM/kr42aPHfyaIz07/WZ/baFGDjUcffvmh/E+/wBZTbVs7ZSeXSYI9m99FHh9t4u+enSDKAQpY5fDx/xLPYWIxGJLfxFT+HyBrhtCbAagnQjU7uU0GzcEuTKQLa204Q6YYDu6MORtcD9ZbaeqBL9janZ2obGnibDKGzOpPgN46yBidlYv1RiEUDUsBY26j95YVsqCykrzAJA8hoYx8SpU9866G5O7X94OiUYz+7/wyWP2dlL/AI2J9VQQb6ajhvvMttNHD2pscth32uNeNufCbjGYlLFguZvaPAX0BJmcxTFyCQDroBuEcJUOcHW2VWzkqZ7u2bd8P1moNAZAb9ekqaNIb7yy/H7gB4DhCbsqiqYN6Z3yy2Kl3XTj+31lelQGTKG0kwwNd1zBCLL7TEiy34c/dHBNtIrySpNnYUWygcgB8IjI+zsemIpJWptmR1DKfmDyINwfCSDOgc0G0G0e0E0ABvAvCuYJzAAd57GxQAehhlMwO0O3yLcUkLfzObD+0anzEyW1e12JrXDVCF9lO4vvtv8AfLFjb7DkjsGM27hqP/iVkU+zmu39q3MzO1fSbh0uKNN6h5sci/qT5CclrYonW+shVKkfGKFbNbtr0hY2vdQ/4SHTLS7mnV/W+MZ2R2myl1diUc3BYm+fcdeot5dZlcNSznoN/wBJbp5CKWNTi0+iUZuMrR0YV7j9IOkLtm6+PvmT2LtR3qCiBmYglTfUhRcjXpeXmGxpDZTcEaajUEcDynJnjcJUzpwmpRtGwoOCot9I6tRz+qbHf0/zIOCq3tY3ltTWx1HPwkUiVlDiMLVuAKjW6gW8NZR16FYkrnKi+tlUnpNpi6lxprwP3ylNiSoHC/EaG0TdFkdmafZzkgFmI4nTl/mNxVIIAFEuHqZQTb9BvvfwlPj3uRaxHyBHD4QTbY5UkQq9YaAbvhBGv9YCq308OUapJllGflsnU6k0GGwKVKX8PUsDiA6A+y4XPTI6gqTKTB4f8x/xJWLxRpvhWHDEp/3Kw/WSxupqiOWNwdgfR72pq4Vnw7C65jdCdzro4U8Dp8J1/Ze1qWJTPTa/tKdGU8mE4R20oHD7RqldA7LVW3JwC3/cHj6e1npt+JTdkbmrFTY+E6aipI5tnfmgmnKNlekeuhAq5aq/zDK4/qX9RNXhO3uFewfPTPUZl811+Ei4tBZp2MC0HhdoUqovTqI4/lYHzG8R7SIxkUUUAPnhqh5wL1DBtUgy8vchUEZ4wamwjSZIwqcefykatjJVIWFhCtU0g7xjtLCJc9hcOamOSxtkSrUPUKhFveWE6HtHBpUF2GvBhv8AOZL0O082Pc8sNU+L0x9ZtmTet7EMQfFWII+BnL8xVJSN/iS04lFg67UHysbrwPKaGjtEEbxu4/tKzGYVjw+UgnDMPVNpkUrNfEt620lNwdOe8HhbxkJsUjXI5/ZtwlDi6NQ3Ja410At975Bp4p0uCCd/jr+klV+wcq9FrtPFjcBrrryvxlRVxN93DjG1KrNwsNeu+B/CkkkiMm2CbU6+4SVh6fKerREkKPlByFGNBUawgdpvdsMP/U0/mYRTeAwiGtjsNTXUK+c+CC9/lDErmGZ1BhPS1Ty4qk3FqIB/odv/ANTKJV7s1XpbqXxNMezTI82/aYpH0nVg6OUPLwlPEkcZFdp5mkrFRZJiTe4JB5g2PnLzZvbPF0bAVS6j8tTvjzOo9xmTV478SO7Cjpg9JY44db8e/wAeP5YpzT8SKRqP0K2ALRAxl48QJBKSZj04ycDA00AHznpMmlQmGveCcxXjXbQxvoEbb0NX/j3/APbvf+9JutqL+Hi3Q7qgFVPH1XXzAb+uY30LD/ia5/8AKW3S76/ITe9vaJWkmJUd6i+ZutNtHB6Ad7+mYc8eUWi/BLjJMiZRxHh0kCsLG3STaFUOoYH1rWPMEfODxCAzlWdQrmpA8rncPCU2Pwup03S8K23i4+UgYzKeP34RrsCkNK2lvCCCf4kp1ve0Y1O26WJkQdoQCeKkc7W+90LAFVfKplp6NNn56tXFMO6AaadeLEe+w9xmexKPUdKKevUYIONgfWY9ALn3TrOzdnphsOlJNyqBfibDUnqTc++a8EfZk8mf9TlHpP8A+aX/AKf/ANjMes0vb+qWxWvBB8STMyDNqMK6E08vETGwYxwM9vGT28YDoo28UAGrCAQamHBjQB1e4nl4FXhNZNMiPLRrGNnjmDY0dJ9CwtWxB5og8mYzrePpB6bIQCCCCDuIIsfhech9Dz2quOa/IzsF7i0zy7GjmWxHai74Wpe9M2W/FD6h8tPcZemkBuFhw/aV3bzBshXFINUNntxRjqf6W+BM92ftEOisDfTn93nKzw4yv7OphnyiSKtPTSZ/aNEknhf3TRu99DytpK7FAX13ffGUxdF1FBTw1v1hmp26SXWdBeQ6j5pZdiAM3jA4hrAnlJSUt9wffx8JCbDNiK6YdPzsATyXex9ygn3ScFydEZy4qzS+jrY5bPjHHrXSlfggPeb3kW/p6zY7QewtJmGwy00VEGVUUKo5ACwlVtF9T4TpQjSOVOXJtnGu3K/8U3+1ZnBND2ze+JfoFHwmdJlqIR6EYwx08MYzwmIGKNEAHXiiigAwGHXWIJaOBkqA9CiEg7xwMkB7GtPRGNEwOieiZrVW/wBv6zsamcV9Fz5a1ua3+On6zqm1dt0cMmeq1ifVUasx5ASh9gG2rhQ6MrC4YFSDuII3fOcewbNhqr4d/wArd0nih9U+XxvNrsDtm2JxJpuqojqRSHHOCDZm5kX+zKT0i7HYOuJpi+UEOOIXeD4A3/u6SnLDkqZdgy8XaJNLFZt5N/n1jcSxJBUi35hbePHhM9gMZewPQy4FUWnOlBxZ0lJPZ46CeooiQXMbiWCi9vKIYHH4sKpl/wCjTZlw+KcasSidFB77DxPd/pMw7U6uJqClTUszHQDgL6kngAOM65iaqYLDBEUXVMqLv1A3nja9yZtw46MXkZNUWuIeyzPbQfjGbN7TJie4bJUAuUvoQOK/SA2vU7rDiAT8JqSMTejkHaKpnru3NjKdpN2g92J8TIN5aCPYhPJ4TAYmMaIhHARAeRT2KMAhnsUUmAhHxRQARjHiiiYG59Gn/MD/AKf0he29dmqtck5fV6bt0UUr9kJdEOiMuVl0YEEEbwQd86vjO8Ndbpr1uP3iikJ9Bi9nKsVSCV3VRYBjYcpNXcPCKKYMnZ1sf4osMPIW2TpFFKY/kWS6NZ6NMKgoGplGdqli3Egbh4Q23jd3vrYWiinTh0cvL+TOa4+oUqhkOVgQQRvE3e23P4bG/wCT9BFFLEUL2cexG8+MjNFFJk0NEUUUQzyOEUUEA2KKKMD/2Q=="),),
                  )

                ],

              ),
            ),

         Padding(
   padding: const EdgeInsets.all(8.0),
   child: SizedBox(
     height: 45,
     child: ListView.builder(
       primary: false,
       shrinkWrap: true,
       scrollDirection: Axis.horizontal,
       itemCount: series_list.length,
       itemBuilder: (BuildContext context, int index) {

         return GestureDetector(
           onTap: () {
            setState(() {
              seriesNumSelect=index;
            });
           },
           child: Padding(
             padding: const EdgeInsets.all(5.0),
             child: Container(
               height: 45,
               width: 100,
                decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                  color:seriesNumSelect==index? Colors.blue:Colors.blueGrey,
                ),
                child: Center(child: Text(series_list[index],style: TextStyle(color: Colors.white), )),
             ),
           ),
         );
     },

     ),
   ),
 ),
         SizedBox(height: 10,),
         Padding(
       padding: const EdgeInsets.all(9.0),
       child: Text("Available Now",style: TextStyle(color: Colors.blueGrey,fontSize: 20)),
     ) ,


            Stack(
              children: [
                Container(
                  height: 240,
                  width: double.infinity,
                  child: PageView(
                    children: _demo,
controller: _pageController,
                    onPageChanged: (index){
                      setState(() {
                        pageindex=index;
                      });
                    },
                  ),
                ),
                Positioned(
                  bottom: 30,
left: 190,
                  child: CarouselIndicator(
                    color: Colors.white,
                    activeColor: Colors.blue,
                    count: _demo.length,
                    index: pageindex,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
SizedBox(
  height: 270,
  child:   ListView(

    primary: false,

    shrinkWrap: true,

    scrollDirection: Axis.horizontal,

    children: [



      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network("https://hips.hearstapps.com/hmg-prod/images/2020-bmw-m8-competition-gran-coupe-102-1617900094.jpg?crop=0.784xw:0.663xh;0.167xw,0.202xh&resize=1200:*",
              height: 270,
              width: size.width*0.4,
              fit: BoxFit.cover,

              ),
            ),
            Positioned(
                top: 10,
                left:10 ,
                child: Text("X7 M50d",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,),))
          ],
        ),
      ),


      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network("https://hips.hearstapps.com/hmg-prod/images/2023-bmw-m2-14-1665430075.jpg?crop=0.775xw:0.655xh;0.0261xw,0.178xh&resize=1200:*",
                height: 270,
                width: size.width*0.4,
                fit: BoxFit.cover,

              ),
            ),
            Positioned(
                top: 10,
                left:10 ,
                child: Text("530i",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),))
          ],
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network("https://hips.hearstapps.com/hmg-prod/images/2023-bmw-z4-m40i-130-64a6f8c96d505.jpg?crop=0.790xw:0.665xh;0.112xw,0.208xh&resize=1200:*",
                height: 270,
                width: size.width*0.4,
                fit: BoxFit.cover,

              ),
            ),
            Positioned(
                top: 10,
                left:10 ,
                child: Text("Z4 M40i",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo,),))
          ],
        ),
      ),
    ],

  ),
)




          ],
        ),
      ),
    );
  }
}

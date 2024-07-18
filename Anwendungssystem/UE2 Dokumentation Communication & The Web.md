Name: Yilong Wang
Matriknummer: 0483728
Fach: Wirtschaftsingenieurwesen

# Project Structure:
```
├── Assignment2Template.iml
├── Readme.md
├── pom.xml
├── src
│   ├── main
│   │   ├── java
│   │   │   └── de
│   │   │       └── tub
│   │   │           ├── grpc
│   │   │           │   ├── MiniClient.java         <-  Aufgabe 1
│   │   │           │   ├── MiniServer.java         <-  Aufgabe 1
│   │   │           │   ├── SimpleClient.java
│   │   │           │   └── auth
│   │   │           │       └── AuthEncoder.java
│   │   │           ├── weather
│   │   │           │   └── WeatherServer.java      <-  Aufgabe 2
│   │   │           └── web
│   │   │               └── SimpleAPICall.java
│   │   ├── proto
│   │   │   ├── assignment2.proto
│   │   │   └── mini.proto                          <-  Aufgabe 1
│   │   └── resources
│   └── test
│       └── java
└── target
    ├── ,,,
    ├── ,,,
```

# Aufgabe 1
## Overall Architecture

The architecture of the project involves three main components: 
- MINI-CLIENT
- MINI-SERVER
- API SERVER. 

These components interact with each other using gRPC. The MiniClient interacts directly with the user, collecting input and displaying results. The MiniServer handles the core logic and acts as an intermediary between the MiniClient and the API Server. The API Server provides the necessary data or services.

For communication between these components, two protocol buffer files are used:

- Mini.proto is used for communication between the MiniClient and MiniServer.
- assignment2.proto is used for communication between the MiniServer and the API Server.

Below is the examples of some relevant functions call for MathTask:
![](attachment/92d8d10efe60044eae93c95b63d3cf76.png)

## Overview of the Three Main Features
The application allows users to interact through a command-line interface, offering three main features: 
- Math Task 
- Zombie Apocalypse
- Fortune Telling

Users start by entering their name and choosing one of the options.
![](attachment/7ca793cc2ae2271674061309bc1b6f8a.png)

For Math Task Handling, they can either solve tasks manually or have them solved automatically, with solutions validated by the server. 
![](attachment/6088c97b62b04661867f2dc94b0888b2.png)
![](attachment/db7731bb0133b0e2c687575e53cb23c1.png)

- In the Zombie Apocalypse Simulation, users input their strength and abilities, and the server evaluates their survival chances. 
![](attachment/550d77fc0f6b81dcadc8a6c1e6bd9921.png)

- For Fortune Telling, users provide personal details, and the server generates a personalized fortune based on these inputs. 
![](attachment/5e6fe53508f764c789c02ddf7bb0aa9a.png)

## Code Implementation
### Mini.proto
The Mini.proto file used for MiniClient and MiniServer communication. 
![](attachment/e09310b7954392ad39d05693bb563fde.png)
See the source file for more details.
### Client Implementation (MiniClient.java)

#### main

-  this is the entry point of the application, handling the overall flow and user interaction. 
- it prompts the user to enter their name and establishes a connection to the server.
-  the user can choose between three options: math tasks, zombie apocalypse, and fortuneteller.
- calls the corresponding function based on the user's choice.


![](attachment/ce2abc09c8def29dfd023942e5b83ad7.png)

#### handleMathTask

- This function manages the process of fetching and solving math tasks.
- It prompts the user to solve the tasks manually or automatically.
![](attachment/1889f43562050c21c647fed3a5d7c30f.png)

handleMathTask has use 3 Helper Functions:
- solveTasksManually()
- solveTasksAutomatically()
- calculateSolution()
![](attachment/d891555894a0b4c0ce740a35b6e5b7c6.png)
![](attachment/e62979c4e8036cee529794e7a4505ca3.png)

### Server Implementation (MiniServer.java)

#### main

- It initializes a gRPC server and adds service to handle incoming requests.
- starts the server and waits for it to be terminated.

![](attachment/45d38b68429434fda65b189fa64cf35d.png)

#### MiniImplementation
Implements the service methods defined in the `Mini.proto` file.
- Methods:
	- connectToApiServer()
	- connecting()
	- getTask()
	- confirm()
	- zombie()
	- fortune()

![](attachment/cf039bcb4437d58f9edabb22b2801d32.png)
- getTask()
![](attachment/d72271e14c79c38bdfc6ab3c35d9c5f7.png)
![](attachment/81ea7d6cc91ef117f99e7de311c89cae.png)
- confirm()
![](attachment/8e62943d68e59a2ada2eb61157d5836c.png)
![](attachment/7d8908707c3419d533a7b2455661e49b.png)

- zombie()
![](attachment/9ef3239c72f93e3910bfa6806e8094e2.png)

- fortune()
![](attachment/ce7a97a28df9fa038071ca40fca7fa06.png)


# Aufgabe 2


## Overall Architecture

The project architecture involves **three** APIs to fetch and process weather data based on user input. Here is an overview of the workflow:

1. User Input Handling: The application prompts the user to input a city name and the corresponding country code.
   
2. Geolocation API: 
   - The application uses the first API to convert the city and country code into geographical coordinates (latitude and longitude).
   - This API returns the latitude and longitude of the specified location.

3. Weather Data APIs:
   - Current Weather API: The second API uses the latitude and longitude to fetch the current weather data.
   - Weather Forecast API: The third API also uses the latitude and longitude to retrieve the weather forecast.
   - ***This means that the input of the second and the third API is derived from the output of the first API***

After each call to the Current Weather API and Weather Forecast API, users must input the city name and country code again to continue querying.  ***This means the APIs can be called multiple times.***

![](attachment/7bc3205c62f8efa636d1f294dec19567.png)
![](attachment/6add5ee264fa83b04a8c8ef63ee62c6f.png)

## User Perspective Workflow

- user input a city name and the corresponding country code
- this is the current weather
![](attachment/ab226947187277b12f2da84fa3c08999.png)

- users must input the city name and country code again to continue querying.  
- ***This means the APIs can be called multiple times.***
- this is weather forecast
![](attachment/6566e124eae65fbfb6d9709593c5b96d.png)

## Code Implementation
### main
- Prompts user for city and country code.
- Calls sendRequestByCityName() to get latitude and longitude.
- Prompts user to choose 'current' weather or 'forecast'.
- Calls findCurrentWeather() for current weather data.
- Calls findForecastData() for weather forecast data.

![](attachment/303ab9c456d694103a8390ca44e1f84f.png)

### Helper Functions

- sendRequestByCityName():
    - Sends an API request to get result containing latitude and longitude.
![](attachment/ce3c40a39edc9077a3f830de8cd07ae8.png)

- findCurrentWeather():
    - Sends an API request using latitude and longitude to get current weather data.
![](attachment/3e31af51675f577d77968ff61232c24b.png)

-  findForecastData():
    - Sends an API request using latitude and longitude to get weather forecast data.
    - findForecastData() is very similar to findCurrentWeather(). So the code will not be shown here




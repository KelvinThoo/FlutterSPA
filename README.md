# InformationWebsite

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Disclaimer

- Flutter for web is still in beta, the website might face some 'laggy' situation when it runs

## Important
- Make sure to run the springboot backend first before you starts running this website!!

## About the Website

- The website consists of three different pages which is home,chart and about chart.
- The home page act as the bridge for other pages.
- The chart page displays Bar chart and Pie chart with different ways to implement it.
- The about page just display the details of charts.

## Chart Page
- As mentioned there is two ways of implementing the charts into this website.
# First Way
- The first way is using the flutter's very own library to display the charts, it is very lightweight and easy to implement but the drawback is it does not have any interaction functionality yet.
- The flutter library chart file can be found in the charts file, the files' name are: [pieChart.dart], [barChart.dart], [pieChartHardCode].
- The first two file got their data through json fetching from the backend.

# Second Way
- The second way uses javascript to implement.
- For now, flutter cannot have any direct interaction with javascript yet so this website uses [htmlelementview] to display a html page that displays the chart.
- The data is gotten from the backend.

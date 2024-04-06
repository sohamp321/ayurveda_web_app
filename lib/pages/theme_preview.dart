import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Theme Colors Example'),
        ),
        body: ThemeColorsGrid(),
      ),
    );
 }
}

class ThemeColorsGrid extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        _buildColorContainer(themeData.primaryColor, 'Primary Color'),
        _buildColorContainer(themeData.primaryColorLight, 'Primary Color Light'),
        _buildColorContainer(themeData.primaryColorDark, 'Primary Color Dark'),
        // _buildColorContainer(themeData.accentColor, 'Accent Color'),
        _buildColorContainer(themeData.canvasColor, 'Canvas Color'),
        _buildColorContainer(themeData.cardColor, 'Card Color'),
        _buildColorContainer(themeData.dividerColor, 'Divider Color'),
        _buildColorContainer(themeData.backgroundColor, 'Background Color'),
        _buildColorContainer(themeData.errorColor, 'Error Color'),
        // _buildColorContainer(themeData.buttonColor, 'Button Color'),
        // Add more colors as needed
      ],
    );
 }

 Widget _buildColorContainer(Color color, String label) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
    );
 }
}



class ThemesPhind extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Material 3 ColorScheme Colors'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          _buildColorContainer(colorScheme.primary, 'Primary'),
          _buildColorContainer(colorScheme.secondary, 'Secondary'),
          _buildColorContainer(colorScheme.tertiary, 'Tertiary'),
          _buildColorContainer(colorScheme.background, 'Background'),
          _buildColorContainer(colorScheme.surface, 'Surface'),
          _buildColorContainer(colorScheme.error, 'Error'),
          _buildColorContainer(colorScheme.onPrimary, 'On Primary'),
          _buildColorContainer(colorScheme.onSecondary, 'On Secondary'),
          _buildColorContainer(colorScheme.onTertiary, 'On Tertiary'),
          _buildColorContainer(colorScheme.onBackground, 'On Background'),
          _buildColorContainer(colorScheme.onSurface, 'On Surface'),
          _buildColorContainer(colorScheme.onError, 'On Error'),
          // Add more colors as needed
        ],
      ),
    );
 }

 Widget _buildColorContainer(Color color, String label) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
    );
 }
}
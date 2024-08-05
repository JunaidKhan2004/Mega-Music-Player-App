import 'package:flutter/material.dart';

class AppColors {
  // Grey shades
  static const Color greyLight = Color(0xFFF5F5F5); // Light grey
  static const Color greyMedium = Color(0xFFB0B0B0); // Medium grey
  static const Color greyDark = Color(0xFF707070); // Dark grey

// Red shades
  static const Color redLight = Color(0xFFFFCDD2); // Light red
  static const Color red = Color(0xFFE53935); // Standard red
  static const Color redDark = Color(0xFFC62828); // Dark red

// Accent colors
  static const Color redAccent = Color(0xFFFF4081); // Bright red accent
  static const Color greyAccent = Color(0xFF9E9E9E); // Medium grey accent

// Background colors
  static const Color backgroundLight = greyLight; // Light grey for background
  static const Color backgroundDark =
      greyDark; // Dark grey for backgrounds or app bars

// Text colors
  static const Color textPrimary = greyDark; // Dark grey for primary text
  static const Color textSecondary =
      greyMedium; // Medium grey for secondary text
  static const Color textOnRed = Colors.white; // White text on red backgrounds

// Button colors
  static const Color buttonRed = red; // Red for primary buttons
  static const Color buttonRedHover =
      redDark; // Dark red for button hover states
  static const Color buttonGrey = greyMedium; // Grey for secondary buttons
  static const Color buttonGreyHover =
      greyDark; // Dark grey for button hover states

// Border colors
  static const Color borderLight = greyMedium; // Medium grey for light borders
  static const Color borderDark = greyDark; // Dark grey for dark borders

// Error colors
  static const Color errorRed = redDark; // Dark red for error messages

// Success colors
  static const Color successGreen =
      Color(0xFF4CAF50); // Green for success messages
// Additional Grey shades
  static const Color greyExtraLight =
      Color(0xFFFAFAFA); // Extra light grey for subtle backgrounds
  static const Color greyExtraDark =
      Color(0xFF424242); // Extra dark grey for strong contrast

// Additional Red shades
  static const Color redLightAccent =
      Color(0xFFFFAB91); // Light red accent for highlights
  static const Color redDeep = Color(0xFFB71C1C); // Deep red for strong accents

// Additional Accent Colors
  static const Color redSoft = Color(0xFFEF9A9A); // Soft red for subtle accents
  static const Color greySoft =
      Color(0xFFEEEEEE); // Soft grey for lighter elements

// Divider Colors
  static const Color dividerLight = greyMedium; // Medium grey for dividers
  static const Color dividerDark = greyDark; // Dark grey for prominent dividers

// Card Colors
  static const Color cardBackground =
      greyLight; // Light grey for card backgrounds
  static const Color cardShadow =
      Color(0x29000000); // Semi-transparent black for card shadows

// Overlay Colors
  static const Color overlayLight =
      Color(0x80000000); // Semi-transparent black for light overlays
  static const Color overlayDark =
      Color(0x80000000); // Semi-transparent black for dark overlays

// Status Bar Colors
  static const Color statusBarLight = greyLight; // Light grey for status bar
  static const Color statusBarDark = greyDark; // Dark grey for status bar

// Navigation Bar Colors
  static const Color navBarLight = greyLight; // Light grey for navigation bar
  static const Color navBarDark = greyDark; // Dark grey for navigation bar

// Success and Warning Colors
  static const Color warningOrange = Color(0xFFFFA000); // Orange for warnings
  static const Color infoBlue =
      Color(0xFF03A9F4); // Blue for informational messages

// Gradient Colors
  static const List<Color> redGradient = [
    redLight,
    red
  ]; // Gradient from light red to standard red
  static const List<Color> greyGradient = [
    greyLight,
    greyMedium
  ]; // Gradient from light grey to medium grey
}

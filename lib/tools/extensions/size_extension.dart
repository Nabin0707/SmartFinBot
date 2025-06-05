import 'package:flutter/material.dart';
import 'dart:math' as math;

/// Figma reference size (adjust if your figma changes)
const double figmaWidth = 430;
const double figmaHeight = 932;

Size getsize(BuildContext context) {
  return MediaQuery.of(context).size;
}

extension GetSize on double {
  /// Get responsive height based on Figma design
  double h(BuildContext context) => 
    (this / figmaHeight) * MediaQuery.of(context).size.height;

  /// Get responsive width based on Figma design
  double w(BuildContext context) => 
    (this / figmaWidth) * MediaQuery.of(context).size.width;

  /// Get combined responsive value (optional, for general spacing etc.)
  double toRes(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ((this / figmaHeight) * size.height) + ((this / figmaWidth) * size.width);
  }

  /// Responsive text scaling - uses minimum scale factor for consistent behavior
  /// This prevents text from becoming too large on extreme aspect ratios
  double sp(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthScale = size.width / figmaWidth;
    double heightScale = size.height / figmaHeight;
    
    // Use the smaller scale factor to maintain readability across all devices
    double baseScale = math.min(widthScale, heightScale);
    
    // Apply reasonable bounds to prevent extreme scaling
    baseScale = baseScale.clamp(0.75, 1.8);
    
    return this * baseScale;
  }
}
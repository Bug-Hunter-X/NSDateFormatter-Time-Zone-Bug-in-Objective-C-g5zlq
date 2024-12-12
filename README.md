# Objective-C NSDateFormatter Time Zone Bug

This repository demonstrates a common, yet subtle, bug in Objective-C when using `NSDateFormatter` without explicitly setting the time zone.  The bug arises from the formatter's default behavior of using the device's current time zone, leading to incorrect date and time conversions, especially when handling data from multiple time zones.

The `BuggyDateFormatter.m` file shows the problematic code, resulting in incorrect date/time parsing.  The `FixedDateFormatter.m` file provides the corrected version, showing how to explicitly set the time zone for accurate conversions.

## Steps to Reproduce

1. Clone this repository.
2. Open the project in Xcode.
3. Run the `BuggyDateFormatter.m` and observe the incorrect output.
4. Run the `FixedDateFormatter.m` and observe the correct output.

## Solution

Always explicitly set the time zone using `setLocale:` and `setTimeZone:` methods of `NSDateFormatter`. This ensures consistent and correct date/time parsing regardless of the device's time zone settings.
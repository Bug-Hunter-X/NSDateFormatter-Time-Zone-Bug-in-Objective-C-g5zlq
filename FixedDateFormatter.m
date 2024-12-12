To fix this, always specify the time zone explicitly using `setTimeZone:`:

```objectivec
NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
[formatter setDateFormat:@
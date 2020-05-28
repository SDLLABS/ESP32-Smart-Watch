#include <WiFi.h>
#include "time.h"

//Pin Defs
//touch
#define TOUCH_IRQ 4

//LCD CTRL
#define LCD_EN 12
#define LCD_CS 5
#define LCD_RST 13
#define LCD_LED 15
#define LCD_WR 16
#define LCD_RD 17
#define LCD_DC 18

//LCD Data
#define LCD_DB0 27
#define LCD_DB1 26
#define LCD_DB2 25
#define LCD_DB3 33
#define LCD_DB4 32
#define LCD_DB5 14
#define LCD_DB6 21
#define LCD_DB7 19

//I2C
#define I2C_SCL 22
#define I2C_SDA 23

//Battery and reg pins
#define BAT_ALERT 34
#define CHG_STAT 35
#define REG_PG 36
#define LCD_PG 39


RTC_DATA_ATTR int bootCount = 0;
RTC_DATA_ATTR time_t now;
RTC_DATA_ATTR uint64_t Mics = 0;
RTC_DATA_ATTR struct tm * timeinfo;

#define  SleepTime  50000       //we wake the micro-controller up after this many microseconds

#define TEXT_COLOR 0xFFFF
#define INTERFACE_COLOR 0xFFFF

#define SCREEN_WIDTH 160
#define SCREEN_HEIGHT 128

int BACKGROUND_COLOR =  0xFFFF;
int ERROR_COLOR =  0xFFFF;

#define DEBUG

String ssid       = "Bellafaire Family Wifi";
String password   = "cashewbunny";

const char* ntpServer = "pool.ntp.org";
const long  gmtOffset_sec = -5 * 3600;
const int   daylightOffset_sec = 0;

//TimeTracker.h
String getInternetTime();
void drawDate(int x, int y, int textSize);
void drawDateCentered(int y, int textSize);
void drawTime(int x, int y, int textSize);
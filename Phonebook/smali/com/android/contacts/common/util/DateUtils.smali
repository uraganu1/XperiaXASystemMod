.class public Lcom/android/contacts/common/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final DATE:C = 'd'

.field private static final DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final DATE_FORMATS:[Ljava/text/SimpleDateFormat;

.field private static final FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final MONTH:C = 'M'

.field public static final NO_YEAR_DATE_FEB29TH:Ljava/lang/String; = "--02-29"

.field private static final NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final UTC_TIMEZONE:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 43
    const-string/jumbo v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    sput-object v2, Lcom/android/contacts/common/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 52
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "--MM-dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 51
    sput-object v2, Lcom/android/contacts/common/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 54
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 53
    sput-object v2, Lcom/android/contacts/common/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 56
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 55
    sput-object v2, Lcom/android/contacts/common/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 60
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/text/SimpleDateFormat;

    .line 61
    sget-object v3, Lcom/android/contacts/common/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v3, v2, v1

    .line 62
    sget-object v3, Lcom/android/contacts/common/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v3, v2, v6

    .line 63
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 64
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 65
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd\'T\'HHmmssSSS\'Z\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 66
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd\'T\'HHmmss\'Z\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 67
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd\'T\'HHmm\'Z\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 60
    sput-object v2, Lcom/android/contacts/common/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .line 71
    sget-object v2, Lcom/android/contacts/common/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v3, v2

    .local v0, "format":Ljava/text/SimpleDateFormat;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 72
    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 73
    sget-object v4, Lcom/android/contacts/common/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/contacts/common/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "longForm"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 168
    if-nez p1, :cond_0

    .line 169
    return-object v3

    .line 172
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 174
    return-object p1

    .line 176
    :cond_1
    invoke-static {p1, v4}, Lcom/android/contacts/common/util/DateUtils;->parseDate(Ljava/lang/String;Z)Ljava/util/Calendar;

    move-result-object v0

    .line 179
    .local v0, "cal":Ljava/util/Calendar;
    if-nez v0, :cond_2

    .line 180
    return-object p1

    .line 183
    :cond_2
    invoke-static {v0}, Lcom/android/contacts/common/util/DateUtils;->isYearSet(Ljava/util/Calendar;)Z

    move-result v1

    .line 185
    .local v1, "isYearSet":Z
    if-nez v1, :cond_3

    .line 186
    invoke-static {p0}, Lcom/android/contacts/common/util/DateUtils;->getLocalizedDateFormatWithoutYear(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 192
    .local v2, "outFormat":Ljava/text/DateFormat;
    :goto_0
    monitor-enter v2

    .line 193
    :try_start_0
    sget-object v3, Lcom/android/contacts/common/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 194
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit v2

    return-object v3

    .line 189
    .end local v2    # "outFormat":Ljava/text/DateFormat;
    :cond_3
    if-eqz p2, :cond_4

    invoke-static {p0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .restart local v2    # "outFormat":Ljava/text/DateFormat;
    goto :goto_0

    .line 190
    .end local v2    # "outFormat":Ljava/text/DateFormat;
    :cond_4
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .restart local v2    # "outFormat":Ljava/text/DateFormat;
    goto :goto_0

    .line 192
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static getDayDifference(Landroid/text/format/Time;JJ)I
    .locals 5
    .param p0, "time"    # Landroid/text/format/Time;
    .param p1, "date1"    # J
    .param p3, "date2"    # J

    .prologue
    .line 296
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 297
    iget-wide v2, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p1, p2, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 299
    .local v1, "startDay":I
    invoke-virtual {p0, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 300
    iget-wide v2, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p3, p4, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 302
    .local v0, "currentDay":I
    sub-int v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    return v2
.end method

.method public static getLocalizedDateFormatWithoutYear(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    const/4 v3, 0x1

    .line 219
    invoke-static {v3}, Ljava/text/SimpleDateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "pattern":Ljava/lang/String;
    const-string/jumbo v3, "de"

    .line 223
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    const-string/jumbo v2, "[^Mm]*[Yy]+[^Mm]*"

    .line 227
    .local v2, "yearPattern":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 224
    .end local v2    # "yearPattern":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "[^DdMm]*[Yy]+[^DdMm]*"

    .restart local v2    # "yearPattern":Ljava/lang/String;
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 230
    invoke-static {p0}, Lcom/android/contacts/common/util/DateUtils;->isMonthBeforeDay(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "MMMM dd"

    .line 229
    :goto_1
    invoke-direct {v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 230
    :cond_1
    const-string/jumbo v3, "dd MMMM"

    goto :goto_1
.end method

.method public static getNextAnnualDate(Ljava/util/Calendar;)Ljava/util/Date;
    .locals 11
    .param p0, "target"    # Ljava/util/Calendar;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 246
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 247
    .local v7, "today":Ljava/util/Calendar;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 251
    const/16 v8, 0xb

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/16 v8, 0xc

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v8, 0xd

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 254
    const/16 v8, 0xe

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 256
    invoke-static {p0}, Lcom/android/contacts/common/util/DateUtils;->isYearSet(Ljava/util/Calendar;)Z

    move-result v3

    .line 257
    .local v3, "isYearSet":Z
    invoke-virtual {p0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 258
    .local v6, "targetYear":I
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 259
    .local v5, "targetMonth":I
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 260
    .local v4, "targetDay":I
    if-ne v5, v10, :cond_2

    const/16 v8, 0x1d

    if-ne v4, v8, :cond_2

    const/4 v2, 0x1

    .line 261
    .local v2, "isFeb29":Z
    :goto_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 264
    .local v0, "anniversary":Ljava/util/GregorianCalendar;
    if-nez v3, :cond_0

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .end local v6    # "targetYear":I
    :cond_0
    invoke-virtual {v0, v6, v5, v4}, Ljava/util/GregorianCalendar;->set(III)V

    .line 270
    if-nez v3, :cond_1

    .line 271
    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 272
    .local v1, "anniversaryYear":I
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 273
    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 283
    .end local v1    # "anniversaryYear":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v8

    return-object v8

    .line 260
    .end local v0    # "anniversary":Ljava/util/GregorianCalendar;
    .end local v2    # "isFeb29":Z
    .restart local v6    # "targetYear":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isFeb29":Z
    goto :goto_0

    .line 278
    .end local v6    # "targetYear":I
    .restart local v0    # "anniversary":Ljava/util/GregorianCalendar;
    .restart local v1    # "anniversaryYear":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 279
    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 280
    :cond_4
    invoke-virtual {v0, v1, v5, v4}, Ljava/util/GregorianCalendar;->set(III)V

    goto :goto_1
.end method

.method private static final getUtcDate(III)Ljava/util/Calendar;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 128
    sget-object v1, Lcom/android/contacts/common/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 129
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 131
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 132
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 133
    return-object v0
.end method

.method private static final getUtcDate(Ljava/util/Date;Z)Ljava/util/Calendar;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "noYear"    # Z

    .prologue
    .line 119
    sget-object v1, Lcom/android/contacts/common/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 120
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 121
    if-eqz p1, :cond_0

    .line 122
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 124
    :cond_0
    return-object v0
.end method

.method public static isMonthBeforeDay(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    .line 200
    .local v0, "dateFormatOrder":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 201
    aget-char v2, v0, v1

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 202
    return v4

    .line 204
    :cond_0
    aget-char v2, v0, v1

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_1

    .line 205
    const/4 v2, 0x1

    return v2

    .line 200
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_2
    return v4
.end method

.method public static isYearSet(Ljava/util/Calendar;)Z
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDate(Ljava/lang/String;Z)Ljava/util/Calendar;
    .locals 9
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "mustContainYear"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 87
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 89
    .local v4, "parsePosition":Ljava/text/ParsePosition;
    if-nez p1, :cond_2

    .line 92
    const-string/jumbo v5, "--02-29"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    const/16 v5, 0x1d

    invoke-static {v6, v7, v5}, Lcom/android/contacts/common/util/DateUtils;->getUtcDate(III)Ljava/util/Calendar;

    move-result-object v5

    return-object v5

    .line 95
    :cond_0
    sget-object v6, Lcom/android/contacts/common/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v6

    .line 96
    :try_start_0
    sget-object v5, Lcom/android/contacts/common/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, p0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "date":Ljava/util/Date;
    monitor-exit v6

    .line 98
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v3, 0x1

    .line 101
    .local v3, "noYearParsed":Z
    :goto_0
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 102
    invoke-static {v0, v7}, Lcom/android/contacts/common/util/DateUtils;->getUtcDate(Ljava/util/Date;Z)Ljava/util/Calendar;

    move-result-object v5

    return-object v5

    .line 95
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "noYearParsed":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 98
    .restart local v0    # "date":Ljava/util/Date;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "noYearParsed":Z
    goto :goto_0

    .line 105
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "noYearParsed":Z
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v5, Lcom/android/contacts/common/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 106
    sget-object v5, Lcom/android/contacts/common/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    aget-object v1, v5, v2

    .line 107
    .local v1, "f":Ljava/text/SimpleDateFormat;
    monitor-enter v1

    .line 108
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 109
    invoke-virtual {v1, p0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 110
    .restart local v0    # "date":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 111
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/contacts/common/util/DateUtils;->getUtcDate(Ljava/util/Date;Z)Ljava/util/Calendar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    monitor-exit v1

    return-object v5

    :cond_3
    monitor-exit v1

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    .end local v0    # "date":Ljava/util/Date;
    :catchall_1
    move-exception v5

    monitor-exit v1

    throw v5

    .line 115
    .end local v1    # "f":Ljava/text/SimpleDateFormat;
    :cond_4
    return-object v8
.end method

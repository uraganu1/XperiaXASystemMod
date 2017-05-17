.class public Lcom/android/contacts/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final DATE:C = 'd'

.field private static final DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final DATE_FORMATS:[Ljava/text/SimpleDateFormat;

.field private static final FORMAT_WITHOUT_YEAR_DAY_FIRST:Ljava/text/DateFormat;

.field private static final FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

.field private static final FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final MONTH:C = 'M'

.field private static final NO_YEAR_DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

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

    sput-object v2, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 47
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "--MM-dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 46
    sput-object v2, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 54
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 53
    sput-object v2, Lcom/android/contacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 56
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 55
    sput-object v2, Lcom/android/contacts/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 58
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "--MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 57
    sput-object v2, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 62
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/text/SimpleDateFormat;

    .line 63
    sget-object v3, Lcom/android/contacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v3, v2, v1

    .line 64
    sget-object v3, Lcom/android/contacts/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v3, v2, v6

    .line 65
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 66
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 67
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd\'T\'HHmmssSSS\'Z\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 68
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd\'T\'HHmmss\'Z\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 69
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd\'T\'HHmm\'Z\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 62
    sput-object v2, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .line 73
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "MMMM dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 72
    sput-object v2, Lcom/android/contacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

    .line 76
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd MMMM"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 75
    sput-object v2, Lcom/android/contacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_DAY_FIRST:Ljava/text/DateFormat;

    .line 79
    sget-object v2, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v3, v2

    .local v0, "format":Ljava/text/SimpleDateFormat;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 80
    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 81
    sget-object v4, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    sget-object v1, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 84
    sget-object v1, Lcom/android/contacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

    sget-object v2, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 85
    sget-object v1, Lcom/android/contacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_DAY_FIRST:Ljava/text/DateFormat;

    sget-object v2, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 38
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
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 173
    if-nez p1, :cond_0

    .line 174
    return-object v6

    .line 177
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 179
    return-object p1

    .line 182
    :cond_1
    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v8}, Ljava/text/ParsePosition;-><init>(I)V

    .line 188
    .local v5, "parsePosition":Ljava/text/ParsePosition;
    const-string/jumbo v6, "--02-29"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 189
    const/4 v6, 0x1

    const/16 v7, 0x1d

    invoke-static {v8, v6, v7}, Lcom/android/contacts/util/DateUtils;->getUtcDate(III)Ljava/util/Date;

    move-result-object v0

    .line 190
    .local v0, "date":Ljava/util/Date;
    const/4 v3, 0x1

    .line 198
    .local v3, "noYearParsed":Z
    :goto_0
    if-eqz v3, :cond_5

    .line 199
    invoke-static {p0}, Lcom/android/contacts/util/DateUtils;->isMonthBeforeDay(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 200
    sget-object v4, Lcom/android/contacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

    .line 202
    .local v4, "outFormat":Ljava/text/DateFormat;
    :goto_1
    monitor-enter v4

    .line 203
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    monitor-exit v4

    return-object v6

    .line 192
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "noYearParsed":Z
    .end local v4    # "outFormat":Ljava/text/DateFormat;
    :cond_2
    sget-object v7, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v7

    .line 193
    :try_start_1
    sget-object v6, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0    # "date":Ljava/util/Date;
    monitor-exit v7

    .line 195
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_3

    const/4 v3, 0x1

    .restart local v3    # "noYearParsed":Z
    goto :goto_0

    .line 192
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "noYearParsed":Z
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 195
    .restart local v0    # "date":Ljava/util/Date;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "noYearParsed":Z
    goto :goto_0

    .line 201
    :cond_4
    sget-object v4, Lcom/android/contacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_DAY_FIRST:Ljava/text/DateFormat;

    .restart local v4    # "outFormat":Ljava/text/DateFormat;
    goto :goto_1

    .line 202
    :catchall_1
    move-exception v6

    monitor-exit v4

    throw v6

    .line 207
    .end local v4    # "outFormat":Ljava/text/DateFormat;
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sget-object v6, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v6, v6

    if-ge v2, v6, :cond_7

    .line 208
    sget-object v6, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    aget-object v1, v6, v2

    .line 209
    .local v1, "f":Ljava/text/SimpleDateFormat;
    monitor-enter v1

    .line 210
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v5, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 211
    invoke-virtual {v1, p1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_6

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 214
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const/4 v7, 0x3

    .line 213
    invoke-static {v7, v6}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v4

    .line 215
    .restart local v4    # "outFormat":Ljava/text/DateFormat;
    sget-object v6, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 216
    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    monitor-exit v1

    return-object v6

    .end local v4    # "outFormat":Ljava/text/DateFormat;
    :cond_6
    monitor-exit v1

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 209
    :catchall_2
    move-exception v6

    monitor-exit v1

    throw v6

    .line 220
    .end local v1    # "f":Ljava/text/SimpleDateFormat;
    :cond_7
    return-object p1
.end method

.method public static formatDuration(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "elapsedSeconds"    # J

    .prologue
    const-wide/16 v2, 0x3c

    .line 243
    div-long v0, p1, v2

    .line 244
    .local v0, "minutes":J
    rem-long/2addr p1, v2

    .line 246
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const v3, 0x7f0900aa

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDateAndTimeFormat()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "result":Ljava/text/SimpleDateFormat;
    sget-object v2, Lcom/android/contacts/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v2

    .line 122
    :try_start_0
    sget-object v1, Lcom/android/contacts/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/text/SimpleDateFormat;
    check-cast v0, Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "result":Ljava/text/SimpleDateFormat;
    monitor-exit v2

    .line 124
    return-object v0

    .line 121
    .end local v0    # "result":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getFullDateFormat()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "result":Ljava/text/SimpleDateFormat;
    sget-object v2, Lcom/android/contacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v2

    .line 109
    :try_start_0
    sget-object v1, Lcom/android/contacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/text/SimpleDateFormat;
    check-cast v0, Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "result":Ljava/text/SimpleDateFormat;
    monitor-exit v2

    .line 111
    return-object v0

    .line 108
    .end local v0    # "result":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getNoYearDateAndTimeFormat()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "result":Ljava/text/SimpleDateFormat;
    sget-object v2, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v2

    .line 135
    :try_start_0
    sget-object v1, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/text/SimpleDateFormat;
    check-cast v0, Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "result":Ljava/text/SimpleDateFormat;
    monitor-exit v2

    .line 137
    return-object v0

    .line 134
    .end local v0    # "result":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getNoYearDateFormat()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "result":Ljava/text/SimpleDateFormat;
    sget-object v2, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v2

    .line 96
    :try_start_0
    sget-object v1, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/text/SimpleDateFormat;
    check-cast v0, Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "result":Ljava/text/SimpleDateFormat;
    monitor-exit v2

    .line 98
    return-object v0

    .line 95
    .end local v0    # "result":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static final getUtcDate(III)Ljava/util/Date;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 160
    sget-object v1, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 161
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 162
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 163
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 164
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private static isMonthBeforeDay(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 224
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    .line 225
    .local v0, "dateFormatOrder":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 226
    aget-char v2, v0, v1

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 227
    return v4

    .line 229
    :cond_0
    aget-char v2, v0, v1

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_1

    .line 230
    const/4 v2, 0x1

    return v2

    .line 225
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_2
    return v4
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 145
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 146
    .local v3, "parsePosition":Ljava/text/ParsePosition;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 147
    sget-object v4, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    aget-object v1, v4, v2

    .line 148
    .local v1, "f":Ljava/text/SimpleDateFormat;
    monitor-enter v1

    .line 149
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 150
    invoke-virtual {v1, p0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 151
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ne v4, v5, :cond_0

    monitor-exit v1

    .line 152
    return-object v0

    :cond_0
    monitor-exit v1

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "date":Ljava/util/Date;
    :catchall_0
    move-exception v4

    monitor-exit v1

    throw v4

    .line 156
    .end local v1    # "f":Ljava/text/SimpleDateFormat;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

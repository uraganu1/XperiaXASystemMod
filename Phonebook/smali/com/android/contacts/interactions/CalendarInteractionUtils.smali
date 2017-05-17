.class public Lcom/android/contacts/interactions/CalendarInteractionUtils;
.super Ljava/lang/Object;
.source "CalendarInteractionUtils.java"


# static fields
.field private static final NONE:I = 0x0

.field private static final TODAY:I = 0x1

.field private static final TOMORROW:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 3
    .param p0, "recycle"    # Landroid/text/format/Time;
    .param p1, "utcTime"    # J
    .param p3, "tz"    # Ljava/lang/String;

    .prologue
    .line 128
    if-nez p0, :cond_0

    .line 129
    new-instance p0, Landroid/text/format/Time;

    .end local p0    # "recycle":Landroid/text/format/Time;
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 131
    .restart local p0    # "recycle":Landroid/text/format/Time;
    :cond_0
    const-string/jumbo v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 132
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 133
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 190
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_0

    .line 191
    const-string/jumbo v9, "UTC"

    .line 195
    .local v9, "tz":Ljava/lang/String;
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 196
    .local v11, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v3, v11, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 197
    .local v3, "f":Ljava/util/Formatter;
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v2, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    .line 198
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v10

    .line 200
    .local v10, "date":Ljava/lang/String;
    return-object v10

    .line 193
    .end local v3    # "f":Ljava/util/Formatter;
    .end local v9    # "tz":Ljava/lang/String;
    .end local v10    # "date":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "tz":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDisplayedDatetime(JJJLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 32
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "currentMillis"    # J
    .param p6, "localTimezone"    # Ljava/lang/String;
    .param p7, "allDay"    # Z
    .param p8, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/16 v27, 0x12

    .line 53
    .local v27, "flagsDate":I
    const/16 v16, 0x1

    .line 54
    .local v16, "flagsTime":I
    invoke-static/range {p8 .. p8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 55
    const/16 v16, 0x81

    .line 58
    :cond_0
    new-instance v24, Landroid/text/format/Time;

    move-object/from16 v0, v24

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 59
    .local v24, "currentTime":Landroid/text/format/Time;
    move-object/from16 v0, v24

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 60
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 61
    .local v28, "resources":Landroid/content/res/Resources;
    const/16 v26, 0x0

    .line 62
    .local v26, "datetimeString":Ljava/lang/String;
    if-eqz p7, :cond_4

    .line 64
    const/4 v8, 0x0

    move-wide/from16 v0, p0

    move-object/from16 v2, p6

    invoke-static {v8, v0, v1, v2}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v4

    .line 65
    .local v4, "localStartMillis":J
    const/4 v8, 0x0

    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    invoke-static {v8, v0, v1, v2}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v6

    .line 66
    .local v6, "localEndMillis":J
    move-object/from16 v0, v24

    iget-wide v8, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static/range {v4 .. v9}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->singleDayEvent(JJJ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 68
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 69
    move-object/from16 v0, v24

    iget-wide v14, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v10, v4

    move-wide/from16 v12, p4

    .line 68
    invoke-static/range {v9 .. v15}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I

    move-result v30

    .line 70
    .local v30, "todayOrTomorrow":I
    const/4 v8, 0x1

    move/from16 v0, v30

    if-ne v8, v0, :cond_3

    .line 71
    const v8, 0x7f09018a

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 76
    .end local v26    # "datetimeString":Ljava/lang/String;
    .end local v30    # "todayOrTomorrow":I
    :cond_1
    :goto_0
    if-nez v26, :cond_2

    .line 79
    new-instance v9, Ljava/util/Formatter;

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v10, 0x32

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 81
    .local v9, "f":Ljava/util/Formatter;
    const-string/jumbo v15, "UTC"

    move-object/from16 v8, p8

    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    move/from16 v14, v27

    .line 80
    invoke-static/range {v8 .. v15}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v26

    .line 116
    .end local v4    # "localStartMillis":J
    .end local v6    # "localEndMillis":J
    .end local v9    # "f":Ljava/util/Formatter;
    :cond_2
    :goto_1
    return-object v26

    .line 72
    .restart local v4    # "localStartMillis":J
    .restart local v6    # "localEndMillis":J
    .restart local v26    # "datetimeString":Ljava/lang/String;
    .restart local v30    # "todayOrTomorrow":I
    :cond_3
    const/4 v8, 0x2

    move/from16 v0, v30

    if-ne v8, v0, :cond_1

    .line 73
    const v8, 0x7f090189

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .local v26, "datetimeString":Ljava/lang/String;
    goto :goto_0

    .line 84
    .end local v4    # "localStartMillis":J
    .end local v6    # "localEndMillis":J
    .end local v30    # "todayOrTomorrow":I
    .local v26, "datetimeString":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v24

    iget-wide v14, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->singleDayEvent(JJJ)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object/from16 v11, p8

    move-wide/from16 v12, p0

    move-wide/from16 v14, p2

    .line 86
    invoke-static/range {v11 .. v16}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v29

    .line 90
    .local v29, "timeString":Ljava/lang/String;
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 91
    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v22, v0

    move-wide/from16 v18, p0

    move-wide/from16 v20, p4

    .line 90
    invoke-static/range {v17 .. v23}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I

    move-result v30

    .line 92
    .restart local v30    # "todayOrTomorrow":I
    const/4 v8, 0x1

    move/from16 v0, v30

    if-ne v8, v0, :cond_5

    .line 94
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 95
    const/4 v10, 0x0

    aput-object v29, v8, v10

    .line 94
    const v10, 0x7f09018b

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .local v26, "datetimeString":Ljava/lang/String;
    goto :goto_1

    .line 96
    .local v26, "datetimeString":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x2

    move/from16 v0, v30

    if-ne v8, v0, :cond_6

    .line 98
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 99
    const/4 v10, 0x0

    aput-object v29, v8, v10

    .line 98
    const v10, 0x7f09018c

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .local v26, "datetimeString":Ljava/lang/String;
    goto :goto_1

    .local v26, "datetimeString":Ljava/lang/String;
    :cond_6
    move-object/from16 v17, p8

    move-wide/from16 v18, p0

    move-wide/from16 v20, p2

    move/from16 v22, v27

    .line 102
    invoke-static/range {v17 .. v22}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v25

    .line 104
    .local v25, "dateString":Ljava/lang/String;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v25, v8, v10

    .line 105
    const/4 v10, 0x1

    aput-object v29, v8, v10

    .line 104
    const v10, 0x7f09018d

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .local v26, "datetimeString":Ljava/lang/String;
    goto/16 :goto_1

    .line 110
    .end local v25    # "dateString":Ljava/lang/String;
    .end local v29    # "timeString":Ljava/lang/String;
    .end local v30    # "todayOrTomorrow":I
    .local v26, "datetimeString":Ljava/lang/String;
    :cond_7
    or-int/lit8 v8, v16, 0x12

    const/high16 v10, 0x10000

    or-int/2addr v8, v10

    .line 111
    const v10, 0x8000

    .line 110
    or-int v22, v8, v10

    .local v22, "flagsDatetime":I
    move-object/from16 v17, p8

    move-wide/from16 v18, p0

    move-wide/from16 v20, p2

    .line 112
    invoke-static/range {v17 .. v22}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v26

    .local v26, "datetimeString":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private static isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "dayMillis"    # J
    .param p3, "currentMillis"    # J
    .param p5, "localGmtOffset"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    invoke-static {p1, p2, p5, p6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 158
    .local v2, "startDay":I
    invoke-static {p3, p4, p5, p6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 160
    .local v0, "currentDay":I
    sub-int v1, v2, v0

    .line 161
    .local v1, "days":I
    if-ne v1, v4, :cond_0

    .line 162
    const/4 v3, 0x2

    return v3

    .line 163
    :cond_0
    if-nez v1, :cond_1

    .line 164
    return v4

    .line 166
    :cond_1
    return v3
.end method

.method private static singleDayEvent(JJJ)Z
    .locals 6
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "localGmtOffset"    # J

    .prologue
    const/4 v2, 0x1

    .line 141
    cmp-long v3, p0, p2

    if-nez v3, :cond_0

    .line 142
    return v2

    .line 147
    :cond_0
    invoke-static {p0, p1, p4, p5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 148
    .local v1, "startDay":I
    const-wide/16 v4, 0x1

    sub-long v4, p2, v4

    invoke-static {v4, v5, p4, p5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 149
    .local v0, "endDay":I
    if-ne v1, v0, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

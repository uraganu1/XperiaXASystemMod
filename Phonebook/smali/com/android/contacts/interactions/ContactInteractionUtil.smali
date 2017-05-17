.class public Lcom/android/contacts/interactions/ContactInteractionUtil;
.super Ljava/lang/Object;
.source "ContactInteractionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareCalendarDayYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5
    .param p0, "c1"    # Ljava/util/Calendar;
    .param p1, "c2"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 101
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 100
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 101
    goto :goto_0

    :cond_1
    move v0, v1

    .line 100
    goto :goto_0
.end method

.method public static formatDateStringFromTimestamp(JLandroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "timestamp"    # J
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/interactions/ContactInteractionUtil;->formatDateStringFromTimestamp(JLandroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateStringFromTimestamp(JLandroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .param p0, "timestamp"    # J
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "compareCalendar"    # Ljava/util/Calendar;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 73
    .local v0, "interactionCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 76
    invoke-static {v0, p3}, Lcom/android/contacts/interactions/ContactInteractionUtil;->compareCalendarDayYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    .line 78
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 82
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p3, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 83
    invoke-static {v0, p3}, Lcom/android/contacts/interactions/ContactInteractionUtil;->compareCalendarDayYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const v1, 0x7f090188

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 88
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p3, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 89
    invoke-static {v0, p3}, Lcom/android/contacts/interactions/ContactInteractionUtil;->compareCalendarDayYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    const v1, 0x7f090189

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 92
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 93
    const/16 v1, 0x18

    .line 92
    invoke-static {p2, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static questionMarks(I)Ljava/lang/String;
    .locals 3
    .param p0, "count"    # I
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 44
    if-lez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "(?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 47
    const-string/jumbo v2, ",?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

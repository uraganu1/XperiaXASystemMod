.class public Lcom/sonyericsson/conversations/ui/util/DateSeparators;
.super Ljava/lang/Object;
.source "DateSeparators.java"


# instance fields
.field private mDateLimits:[J


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x5

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v1, 0x7

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 45
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 46
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 47
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 48
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 49
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 51
    .local v2, "today":J
    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->roll(II)V

    .line 52
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    aput-wide v4, v1, v6

    .line 54
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 55
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    aput-wide v2, v1, v7

    .line 57
    invoke-virtual {v0, v8, v10}, Ljava/util/Calendar;->roll(II)V

    .line 58
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    aput-wide v4, v1, v9

    .line 61
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 62
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    aget-wide v6, v6, v9

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const/4 v6, 0x3

    aput-wide v4, v1, v6

    .line 65
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 66
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const/4 v6, 0x4

    aput-wide v4, v1, v6

    .line 69
    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->roll(II)V

    .line 70
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    const/4 v7, 0x4

    aget-wide v6, v6, v7

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    aput-wide v4, v1, v8

    .line 72
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 73
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 74
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v9, v1}, Ljava/util/Calendar;->set(II)V

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    aget-wide v6, v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const/4 v6, 0x6

    aput-wide v4, v1, v6

    .line 41
    return-void
.end method

.method public static getStartOfNextDay()J
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 123
    .local v0, "tomorrow":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 124
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 125
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 126
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 127
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 128
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 129
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getYear(J)I
    .locals 2
    .param p0, "date"    # J

    .prologue
    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 140
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 141
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method


# virtual methods
.method public getSeparator(JJ)I
    .locals 7
    .param p1, "date"    # J
    .param p3, "previousDate"    # J

    .prologue
    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    aget-wide v2, v1, v0

    .line 93
    .local v2, "limit":J
    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    cmp-long v1, p3, v2

    if-gez v1, :cond_0

    .line 94
    return v0

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v2    # "limit":J
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    const/4 v4, 0x6

    aget-wide v4, v1, v4

    cmp-long v1, p1, v4

    if-gez v1, :cond_2

    .line 98
    const/4 v1, 0x7

    return v1

    .line 101
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    aget-wide v2, v4, v0

    .line 109
    .local v2, "limit":J
    const-string/jumbo v4, "Separator["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 111
    const-string/jumbo v5, "]: limit = "

    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 112
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 113
    const/16 v5, 0xa

    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v2    # "limit":J
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

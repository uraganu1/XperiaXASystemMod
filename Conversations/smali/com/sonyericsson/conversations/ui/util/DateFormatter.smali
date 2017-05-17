.class public Lcom/sonyericsson/conversations/ui/util/DateFormatter;
.super Ljava/lang/Object;
.source "DateFormatter.java"


# static fields
.field private static sTestTime:J


# instance fields
.field private mFormatters:[Ljava/lang/String;

.field private mIntervals:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->sTestTime:J

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-static {}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->createIntervals()[J

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->mIntervals:[J

    .line 207
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->createFormatters(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->mFormatters:[Ljava/lang/String;

    .line 205
    return-void
.end method

.method private static createFormatters(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const/16 v4, 0xa

    new-array v0, v4, [Ljava/lang/String;

    .line 118
    .local v0, "dateFormats":[Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    check-cast v4, Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "timePattern":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "order":Ljava/lang/String;
    const-string/jumbo v4, "yMd"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    const-string/jumbo v1, "yyyy-MM-d"

    .line 133
    .local v1, "datePattern":Ljava/lang/String;
    :goto_0
    const/16 v4, 0x48

    const/16 v5, 0x6b

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 136
    const v5, 0x7f0b02b3

    .line 135
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    .line 137
    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 140
    const v6, 0x7f0b02b2

    .line 139
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 140
    const-string/jumbo v5, "\' "

    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EEEE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    .line 143
    const/4 v4, 0x0

    const/4 v5, 0x4

    aput-object v4, v0, v5

    .line 145
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "dMMMM"

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v0, v5

    .line 147
    const/4 v4, 0x6

    aput-object v1, v0, v4

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v0, v5

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 153
    const v6, 0x7f0b015e

    .line 152
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 153
    const-string/jumbo v5, "\'"

    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v0, v5

    .line 155
    const-string/jumbo v4, "EEEE"

    const/16 v5, 0x9

    aput-object v4, v0, v5

    .line 157
    return-object v0

    .line 125
    .end local v1    # "datePattern":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "Mdy"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    const-string/jumbo v1, "MM-d-yyyy"

    .restart local v1    # "datePattern":Ljava/lang/String;
    goto/16 :goto_0

    .line 128
    .end local v1    # "datePattern":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "d-MM-yyyy"

    .restart local v1    # "datePattern":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private static createIntervals()[J
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 162
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 164
    new-array v1, v7, [J

    .line 165
    .local v1, "intervals":[J
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 166
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 167
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 168
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 169
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    aput-wide v2, v1, v6

    .line 171
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 172
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    aput-wide v2, v1, v4

    .line 174
    const/4 v2, -0x2

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 175
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    aput-wide v2, v1, v4

    .line 180
    const/4 v2, -0x5

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 181
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    aput-wide v2, v1, v4

    .line 183
    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 184
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v4, 0x4

    aput-wide v2, v1, v4

    .line 186
    const-wide/16 v2, 0x0

    aput-wide v2, v1, v5

    .line 188
    return-object v1
.end method

.method private static getCurrentTimeMillis()J
    .locals 4

    .prologue
    .line 296
    sget-wide v0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->sTestTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->sTestTime:J

    goto :goto_0
.end method

.method public static getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getInterval(J)I
    .locals 5
    .param p1, "date"    # J

    .prologue
    .line 287
    const/4 v0, 0x0

    .local v0, "interval":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->mIntervals:[J

    aget-wide v2, v1, v0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 289
    return v0

    .line 287
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_1
    const/4 v1, 0x5

    return v1
.end method


# virtual methods
.method public format(JZ)Ljava/lang/String;
    .locals 7
    .param p1, "date"    # J
    .param p3, "isDefaultFormatPattern"    # Z

    .prologue
    .line 219
    if-eqz p3, :cond_0

    .line 220
    const/4 v0, 0x7

    .line 246
    .local v0, "formatter":I
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->mFormatters:[Ljava/lang/String;

    aget-object v4, v4, v0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 222
    .end local v0    # "formatter":I
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 223
    .local v2, "now":J
    cmp-long v4, p1, v2

    if-gtz v4, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getStackedMessagesDelayTimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_1

    .line 224
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->mFormatters:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    return-object v4

    .line 226
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getInterval(J)I

    move-result v1

    .line 227
    .local v1, "interval":I
    packed-switch v1, :pswitch_data_0

    .line 241
    const/4 v0, 0x6

    .line 242
    .restart local v0    # "formatter":I
    goto :goto_0

    .line 229
    .end local v0    # "formatter":I
    :pswitch_0
    const/4 v0, 0x1

    .line 230
    .restart local v0    # "formatter":I
    goto :goto_0

    .line 232
    .end local v0    # "formatter":I
    :pswitch_1
    const/4 v0, 0x2

    .line 233
    .restart local v0    # "formatter":I
    goto :goto_0

    .line 235
    .end local v0    # "formatter":I
    :pswitch_2
    const/4 v0, 0x3

    .line 236
    .restart local v0    # "formatter":I
    goto :goto_0

    .line 238
    .end local v0    # "formatter":I
    :pswitch_3
    const/4 v0, 0x5

    .line 239
    .restart local v0    # "formatter":I
    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public formatConversationListDate(J)Ljava/lang/String;
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 265
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getInterval(J)I

    move-result v1

    .line 266
    .local v1, "interval":I
    packed-switch v1, :pswitch_data_0

    .line 280
    const/4 v0, 0x6

    .line 283
    .local v0, "formatter":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->mFormatters:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 268
    .end local v0    # "formatter":I
    :pswitch_0
    const/4 v0, 0x1

    .line 269
    .restart local v0    # "formatter":I
    goto :goto_0

    .line 271
    .end local v0    # "formatter":I
    :pswitch_1
    const/16 v0, 0x8

    .line 272
    .restart local v0    # "formatter":I
    goto :goto_0

    .line 274
    .end local v0    # "formatter":I
    :pswitch_2
    const/16 v0, 0x9

    .line 275
    .restart local v0    # "formatter":I
    goto :goto_0

    .line 277
    .end local v0    # "formatter":I
    :pswitch_3
    const/4 v0, 0x5

    .line 278
    .restart local v0    # "formatter":I
    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

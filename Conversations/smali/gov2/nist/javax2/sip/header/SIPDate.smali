.class public Lgov2/nist/javax2/sip/header/SIPDate;
.super Ljava/lang/Object;
.source "SIPDate.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7692bf68cdf8211dL


# instance fields
.field protected day:I

.field protected hour:I

.field private javaCal:Ljava/util/Calendar;

.field protected minute:I

.field protected month:I

.field protected second:I

.field protected sipMonth:Ljava/lang/String;

.field protected sipWkDay:Ljava/lang/String;

.field protected wkday:I

.field protected year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput v0, p0, Lgov2/nist/javax2/sip/header/SIPDate;->wkday:I

    .line 179
    iput v0, p0, Lgov2/nist/javax2/sip/header/SIPDate;->day:I

    .line 180
    iput v0, p0, Lgov2/nist/javax2/sip/header/SIPDate;->month:I

    .line 181
    iput v0, p0, Lgov2/nist/javax2/sip/header/SIPDate;->year:I

    .line 182
    iput v0, p0, Lgov2/nist/javax2/sip/header/SIPDate;->hour:I

    .line 183
    iput v0, p0, Lgov2/nist/javax2/sip/header/SIPDate;->minute:I

    .line 184
    iput v0, p0, Lgov2/nist/javax2/sip/header/SIPDate;->second:I

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lgov2/nist/javax2/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 186
    return-void
.end method

.method public constructor <init>(J)V
    .locals 5
    .param p1, "timeMillis"    # J

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v1, Ljava/util/GregorianCalendar;

    const-string/jumbo v2, "GMT:0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 195
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 196
    .local v0, "date":Ljava/util/Date;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 197
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->wkday:I

    .line 198
    iget v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->wkday:I

    packed-switch v1, :pswitch_data_0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No date map for wkday "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov2/nist/javax2/sip/header/SIPDate;->wkday:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    .line 224
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->day:I

    .line 225
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->month:I

    .line 226
    iget v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->month:I

    packed-switch v1, :pswitch_data_1

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No date map for month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov2/nist/javax2/sip/header/SIPDate;->month:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    .line 266
    :goto_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->year:I

    .line 268
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->hour:I

    .line 269
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->minute:I

    .line 270
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->second:I

    .line 271
    return-void

    :pswitch_0
    const-string/jumbo v1, "Mon"

    .line 200
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "Tue"

    .line 203
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "Wed"

    .line 206
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "Thu"

    .line 209
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string/jumbo v1, "Fri"

    .line 212
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const-string/jumbo v1, "Sat"

    .line 215
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    const-string/jumbo v1, "Sun"

    .line 218
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v1, "Jan"

    .line 228
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_8
    const-string/jumbo v1, "Feb"

    .line 231
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_9
    const-string/jumbo v1, "Mar"

    .line 234
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_a
    const-string/jumbo v1, "Apr"

    .line 237
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_b
    const-string/jumbo v1, "May"

    .line 240
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_c
    const-string/jumbo v1, "Jun"

    .line 243
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_d
    const-string/jumbo v1, "Jul"

    .line 246
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_e
    const-string/jumbo v1, "Aug"

    .line 249
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_f
    const-string/jumbo v1, "Sep"

    .line 252
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_10
    const-string/jumbo v1, "Oct"

    .line 255
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_11
    const-string/jumbo v1, "Nov"

    .line 258
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_12
    const-string/jumbo v1, "Dec"

    .line 261
    iput-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto/16 :goto_1

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 226
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 536
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/SIPDate;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .local v1, "retval":Lgov2/nist/javax2/sip/header/SIPDate;
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    if-nez v2, :cond_0

    .line 541
    :goto_0
    return-object v1

    .line 539
    .end local v1    # "retval":Lgov2/nist/javax2/sip/header/SIPDate;
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Internal error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 540
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v1    # "retval":Lgov2/nist/javax2/sip/header/SIPDate;
    :cond_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    iput-object v2, v1, Lgov2/nist/javax2/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    goto :goto_0
.end method

.method public encode()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0xa

    .line 281
    iget v5, p0, Lgov2/nist/javax2/sip/header/SIPDate;->day:I

    if-lt v5, v7, :cond_0

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov2/nist/javax2/sip/header/SIPDate;->day:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "dayString":Ljava/lang/String;
    :goto_0
    iget v5, p0, Lgov2/nist/javax2/sip/header/SIPDate;->hour:I

    if-lt v5, v7, :cond_1

    .line 290
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov2/nist/javax2/sip/header/SIPDate;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "hourString":Ljava/lang/String;
    :goto_1
    iget v5, p0, Lgov2/nist/javax2/sip/header/SIPDate;->minute:I

    if-lt v5, v7, :cond_2

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov2/nist/javax2/sip/header/SIPDate;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "minuteString":Ljava/lang/String;
    :goto_2
    iget v5, p0, Lgov2/nist/javax2/sip/header/SIPDate;->second:I

    if-lt v5, v7, :cond_3

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov2/nist/javax2/sip/header/SIPDate;->second:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "secondString":Ljava/lang/String;
    :goto_3
    const-string/jumbo v1, ""

    .line 306
    .local v1, "encoding":Ljava/lang/String;
    iget-object v5, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 308
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    iget-object v5, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 312
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov2/nist/javax2/sip/header/SIPDate;->year:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "GMT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    return-object v1

    .line 282
    .end local v0    # "dayString":Ljava/lang/String;
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v2    # "hourString":Ljava/lang/String;
    .end local v3    # "minuteString":Ljava/lang/String;
    .end local v4    # "secondString":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov2/nist/javax2/sip/header/SIPDate;->day:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "dayString":Ljava/lang/String;
    goto/16 :goto_0

    .line 288
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov2/nist/javax2/sip/header/SIPDate;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "hourString":Ljava/lang/String;
    goto/16 :goto_1

    .line 294
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov2/nist/javax2/sip/header/SIPDate;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "minuteString":Ljava/lang/String;
    goto/16 :goto_2

    .line 300
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov2/nist/javax2/sip/header/SIPDate;->second:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "secondString":Ljava/lang/String;
    goto/16 :goto_3

    .line 306
    .restart local v1    # "encoding":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 310
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lgov2/nist/javax2/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    move-object v0, p1

    .line 168
    check-cast v0, Lgov2/nist/javax2/sip/header/SIPDate;

    .line 169
    .local v0, "other":Lgov2/nist/javax2/sip/header/SIPDate;
    iget v2, p0, Lgov2/nist/javax2/sip/header/SIPDate;->wkday:I

    iget v3, v0, Lgov2/nist/javax2/sip/header/SIPDate;->wkday:I

    if-eq v2, v3, :cond_2

    :cond_0
    :goto_0
    return v1

    .line 167
    .end local v0    # "other":Lgov2/nist/javax2/sip/header/SIPDate;
    :cond_1
    return v1

    .line 169
    .restart local v0    # "other":Lgov2/nist/javax2/sip/header/SIPDate;
    :cond_2
    iget v2, p0, Lgov2/nist/javax2/sip/header/SIPDate;->day:I

    iget v3, v0, Lgov2/nist/javax2/sip/header/SIPDate;->day:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov2/nist/javax2/sip/header/SIPDate;->month:I

    iget v3, v0, Lgov2/nist/javax2/sip/header/SIPDate;->month:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov2/nist/javax2/sip/header/SIPDate;->year:I

    iget v3, v0, Lgov2/nist/javax2/sip/header/SIPDate;->year:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov2/nist/javax2/sip/header/SIPDate;->hour:I

    iget v3, v0, Lgov2/nist/javax2/sip/header/SIPDate;->hour:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov2/nist/javax2/sip/header/SIPDate;->minute:I

    iget v3, v0, Lgov2/nist/javax2/sip/header/SIPDate;->minute:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov2/nist/javax2/sip/header/SIPDate;->second:I

    iget v3, v0, Lgov2/nist/javax2/sip/header/SIPDate;->second:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

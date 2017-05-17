.class public Lcom/sonyericsson/conversations/util/vcalendar/VObject;
.super Ljava/lang/Object;
.source "VObject.java"


# instance fields
.field private mAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/util/vcalendar/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mDCreated:J

.field private mDescription:Ljava/lang/String;

.field private mDue:J

.field private mEnd:J

.field private mLocation:Ljava/lang/String;

.field public mObjectType:I

.field private mPriority:Ljava/lang/String;

.field private mStart:J

.field private mStatus:I

.field private mSubject:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mTransparency:I

.field private mUid:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mObjectType:I

    .line 22
    iput-object v2, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mSummary:Ljava/lang/String;

    .line 23
    iput v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mStatus:I

    .line 24
    iput-object v2, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mSubject:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mDescription:Ljava/lang/String;

    .line 26
    iput-wide v4, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mStart:J

    .line 27
    iput-wide v4, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mEnd:J

    .line 28
    iput-wide v4, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mDue:J

    .line 31
    iput v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mTransparency:I

    .line 32
    iput-object v2, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mPriority:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mLocation:Ljava/lang/String;

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mDCreated:J

    .line 35
    iput-object v2, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mAttendees:Ljava/util/ArrayList;

    .line 43
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 44
    :cond_0
    iput p1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mObjectType:I

    .line 42
    return-void

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to create new vObject of unknown type! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleAAlarm(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 155
    return-void
.end method

.method private handleAttach(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 179
    return-void
.end method

.method private handleAttendee(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mAttendees:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mAttendees:Ljava/util/ArrayList;

    .line 172
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/util/vcalendar/Attendee;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/util/vcalendar/Attendee;-><init>()V

    .line 173
    .local v0, "attendee":Lcom/sonyericsson/conversations/util/vcalendar/Attendee;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/util/vcalendar/Attendee;->setData(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p2}, Lcom/sonyericsson/conversations/util/vcalendar/Attendee;->parseParams(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method private handleCompleted(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 160
    return-void
.end method

.method private handleCreated(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->parseTime(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mDCreated:J

    .line 164
    return-void
.end method

.method private handleDAlarm(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 150
    return-void
.end method

.method private handleDTEnd(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->parseTime(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mEnd:J

    .line 286
    return-void
.end method

.method private handleDTStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->parseTime(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mStart:J

    .line 282
    return-void
.end method

.method private handleDescription(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/vcalendar/QuotedPrintableCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "decoded":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    .end local v0    # "decoded":Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mDescription:Ljava/lang/String;

    .line 337
    return-void
.end method

.method private handleDue(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->parseTime(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mDue:J

    .line 290
    return-void
.end method

.method private handleException(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 140
    return-void
.end method

.method private handleLastModified(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 135
    return-void
.end method

.method private handleLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mLocation:Ljava/lang/String;

    .line 188
    return-void
.end method

.method private handleMAlarm(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 184
    return-void
.end method

.method private handleNumberRecurrences(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 130
    return-void
.end method

.method private handlePAlarm(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 145
    return-void
.end method

.method private handlePriority(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mPriority:Ljava/lang/String;

    .line 125
    return-void
.end method

.method private handleRDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 121
    return-void
.end method

.method private handleRelatedTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 193
    return-void
.end method

.method private handleResources(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 198
    return-void
.end method

.method private handleStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 314
    const-string/jumbo v0, "ACCEPTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mStatus:I

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const-string/jumbo v0, "NEEDS ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mStatus:I

    goto :goto_0

    .line 318
    :cond_2
    const-string/jumbo v0, "SENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    const/16 v0, 0x8

    iput v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mStatus:I

    goto :goto_0

    .line 320
    :cond_3
    const-string/jumbo v0, "TENTATIVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 321
    const/4 v0, 0x4

    iput v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mStatus:I

    goto :goto_0

    .line 322
    :cond_4
    const-string/jumbo v0, "CONFIRMED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 323
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mStatus:I

    goto :goto_0

    .line 324
    :cond_5
    const-string/jumbo v0, "DECLINED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 325
    const/4 v0, 0x5

    iput v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mStatus:I

    goto :goto_0

    .line 326
    :cond_6
    const-string/jumbo v0, "COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 327
    const/4 v0, 0x6

    iput v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mStatus:I

    goto :goto_0

    .line 328
    :cond_7
    const-string/jumbo v0, "DELEGATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const/4 v0, 0x7

    iput v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mStatus:I

    goto :goto_0
.end method

.method private handleSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mSubject:Ljava/lang/String;

    .line 333
    return-void
.end method

.method private handleSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 343
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/vcalendar/QuotedPrintableCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "decoded":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    .end local v0    # "decoded":Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mSummary:Ljava/lang/String;

    .line 342
    return-void
.end method

.method private handleTimeTransparency(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 204
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mTransparency:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "ex":Ljava/lang/NumberFormatException;
    sget-boolean v1, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v1, :cond_1

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TimeTransparency is not a number :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 210
    :cond_1
    const-string/jumbo v1, "OPAQUE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mTransparency:I

    goto :goto_0

    .line 212
    :cond_2
    const-string/jumbo v1, "TRANSPARENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const/4 v1, 0x1

    iput v1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mTransparency:I

    goto :goto_0
.end method

.method private handleUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mUid:Ljava/lang/String;

    .line 222
    return-void
.end method

.method private handleUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mUrl:Ljava/lang/String;

    .line 218
    return-void
.end method

.method private handleVEventTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string/jumbo v0, "ATTACH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleAttach(Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string/jumbo v0, "ATTENDEE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleAttendee(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    const-string/jumbo v0, "DCREATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleCreated(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_3
    const-string/jumbo v0, "STATUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_4
    const-string/jumbo v0, "DTSTART"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleDTStart(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_5
    const-string/jumbo v0, "DTEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleDTEnd(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_6
    const-string/jumbo v0, "SUMMARY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_7
    const-string/jumbo v0, "DESCRIPTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 79
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_8
    const-string/jumbo v0, "DUE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleDue(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_9
    const-string/jumbo v0, "SUBJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 83
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleSubject(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_a
    const-string/jumbo v0, "COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 85
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleCompleted(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    :cond_b
    const-string/jumbo v0, "AALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 87
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleAAlarm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_c
    const-string/jumbo v0, "DALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 89
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleDAlarm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_d
    const-string/jumbo v0, "MALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 91
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleMAlarm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    :cond_e
    const-string/jumbo v0, "PALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 93
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handlePAlarm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_f
    const-string/jumbo v0, "EXRULE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 95
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleException(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_10
    const-string/jumbo v0, "LAST-MODIFIED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 97
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleLastModified(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :cond_11
    const-string/jumbo v0, "LOCATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 99
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleLocation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :cond_12
    const-string/jumbo v0, "RNUM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 101
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleNumberRecurrences(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :cond_13
    const-string/jumbo v0, "PRIORITY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 103
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handlePriority(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :cond_14
    const-string/jumbo v0, "RELATED-TO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 105
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleRelatedTo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_15
    const-string/jumbo v0, "RDATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 107
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleRDate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_16
    const-string/jumbo v0, "RESOURCES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 109
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleResources(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :cond_17
    const-string/jumbo v0, "TRANSP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 111
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleTimeTransparency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :cond_18
    const-string/jumbo v0, "URL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 113
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_19
    const-string/jumbo v0, "UID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleUID(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleVTodoTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 227
    const-string/jumbo v0, "ATTACH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleAttach(Ljava/lang/String;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    const-string/jumbo v0, "ATTENDEE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleAttendee(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_2
    const-string/jumbo v0, "DCREATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleCreated(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_3
    const-string/jumbo v0, "STATUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_4
    const-string/jumbo v0, "DTSTART"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 236
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleDTStart(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_5
    const-string/jumbo v0, "DTEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleDTEnd(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_6
    const-string/jumbo v0, "SUMMARY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 240
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_7
    const-string/jumbo v0, "DESCRIPTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 242
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_8
    const-string/jumbo v0, "DUE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 244
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleDue(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_9
    const-string/jumbo v0, "SUBJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 246
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleSubject(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_a
    const-string/jumbo v0, "COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 248
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleCompleted(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :cond_b
    const-string/jumbo v0, "AALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 250
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleAAlarm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    :cond_c
    const-string/jumbo v0, "DALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 252
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleDAlarm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :cond_d
    const-string/jumbo v0, "MALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 254
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleMAlarm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :cond_e
    const-string/jumbo v0, "PALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 256
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handlePAlarm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :cond_f
    const-string/jumbo v0, "EXRULE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 258
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleException(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :cond_10
    const-string/jumbo v0, "LAST-MODIFIED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 260
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleLastModified(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    :cond_11
    const-string/jumbo v0, "LOCATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 262
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleLocation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :cond_12
    const-string/jumbo v0, "RNUM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 264
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleNumberRecurrences(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    :cond_13
    const-string/jumbo v0, "PRIORITY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 266
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handlePriority(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :cond_14
    const-string/jumbo v0, "RELATED-TO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 268
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleRelatedTo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    :cond_15
    const-string/jumbo v0, "RDATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 270
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleRDate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :cond_16
    const-string/jumbo v0, "RESOURCES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 272
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleResources(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :cond_17
    const-string/jumbo v0, "TRANSP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 274
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleTimeTransparency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :cond_18
    const-string/jumbo v0, "URL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 276
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    :cond_19
    const-string/jumbo v0, "UID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleUID(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private parseTime(Ljava/lang/String;)J
    .locals 8
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 295
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMdd\'T\'HHmmss\'Z\'"

    .line 296
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 295
    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 298
    .local v3, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 299
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    return-wide v6

    .line 300
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Ljava/text/ParseException;
    :try_start_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMdd\'T\'HHmmss"

    .line 304
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 303
    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 305
    .local v4, "format2":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 306
    .restart local v0    # "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    return-wide v6

    .line 307
    .end local v0    # "date":Ljava/util/Date;
    .end local v4    # "format2":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v2

    .line 308
    .local v2, "e2":Ljava/text/ParseException;
    const-wide/16 v6, -0x1

    return-wide v6
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectType()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mObjectType:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public handleTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 55
    iget v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->mObjectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleVEventTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleVTodoTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

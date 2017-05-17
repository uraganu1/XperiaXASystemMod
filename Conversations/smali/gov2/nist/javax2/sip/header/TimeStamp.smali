.class public Lgov2/nist/javax2/sip/header/TimeStamp;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "TimeStamp.java"

# interfaces
.implements Ljavax2/sip/header/Header;


# static fields
.field private static final serialVersionUID:J = -0x3381440765137350L


# instance fields
.field protected delay:I

.field protected delayFloat:F

.field protected timeStamp:J

.field private timeStampFloat:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const-string/jumbo v0, "Timestamp"

    .line 67
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 52
    iput-wide v0, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->timeStamp:J

    .line 57
    iput v3, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->delay:I

    .line 59
    iput v2, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->delayFloat:F

    .line 61
    iput v2, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->timeStampFloat:F

    .line 68
    iput v3, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->delay:I

    .line 69
    return-void
.end method

.method private getDelayAsString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 81
    iget v0, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->delay:I

    if-eq v0, v2, :cond_1

    .line 83
    :cond_0
    iget v0, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->delay:I

    if-ne v0, v2, :cond_2

    .line 86
    iget v0, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->delayFloat:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :cond_1
    iget v0, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->delayFloat:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 82
    return-object v0

    .line 84
    :cond_2
    iget v0, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->delay:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeStampAsString()Ljava/lang/String;
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 72
    iget-wide v0, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->timeStamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->timeStampFloat:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 73
    return-object v0

    .line 74
    :cond_0
    iget-wide v0, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->timeStamp:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 75
    iget-wide v0, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->timeStamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1
    iget v0, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->timeStampFloat:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 4

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v0, "retval":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/TimeStamp;->getTimeStampAsString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "s1":Ljava/lang/String;
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/TimeStamp;->getDelayAsString()Ljava/lang/String;

    move-result-object v2

    .local v2, "s2":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v3, ""

    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    const-string/jumbo v3, ""

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    const-string/jumbo v3, ""

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ""

    return-object v3

    .line 99
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string/jumbo v3, " "

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public setDelay(F)V
    .locals 2
    .param p1, "delay"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 148
    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v1, "JAIN-SIP Exception, TimeStamp, setDelay(), the delay parameter is <0"

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iput p1, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->delayFloat:F

    const/4 v0, -0x1

    .line 152
    iput v0, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->delay:I

    .line 153
    return-void
.end method

.method public setTime(J)V
    .locals 3
    .param p1, "timeStamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 165
    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v1, "Illegal timestamp"

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_1
    iput-wide p1, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->timeStamp:J

    const/high16 v0, -0x40800000    # -1.0f

    .line 167
    iput v0, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->timeStampFloat:F

    .line 169
    return-void
.end method

.method public setTimeStamp(F)V
    .locals 2
    .param p1, "timeStamp"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 122
    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 123
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v1, "JAIN-SIP Exception, TimeStamp, setTimeStamp(), the timeStamp parameter is <0"

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, -0x1

    .line 125
    iput-wide v0, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->timeStamp:J

    .line 126
    iput p1, p0, Lgov2/nist/javax2/sip/header/TimeStamp;->timeStampFloat:F

    .line 127
    return-void
.end method

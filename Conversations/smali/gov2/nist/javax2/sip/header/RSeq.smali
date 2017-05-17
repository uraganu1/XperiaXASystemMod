.class public Lgov2/nist/javax2/sip/header/RSeq;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "RSeq.java"

# interfaces
.implements Ljavax2/sip/header/RSeqHeader;


# static fields
.field private static final serialVersionUID:J = 0x79a63e78c9b0a382L


# instance fields
.field protected sequenceNumber:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "RSeq"

    .line 45
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lgov2/nist/javax2/sip/header/RSeq;->sequenceNumber:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeqNumber()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lgov2/nist/javax2/sip/header/RSeq;->sequenceNumber:J

    return-wide v0
.end method

.method public setSeqNumber(J)V
    .locals 5
    .param p1, "sequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 72
    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_0

    const-wide v2, 0x80000000L

    cmp-long v2, p1, v2

    if-gtz v2, :cond_2

    :goto_1
    if-nez v0, :cond_3

    .line 73
    :cond_0
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad seq number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    .line 72
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 74
    :cond_3
    iput-wide p1, p0, Lgov2/nist/javax2/sip/header/RSeq;->sequenceNumber:J

    .line 76
    return-void
.end method

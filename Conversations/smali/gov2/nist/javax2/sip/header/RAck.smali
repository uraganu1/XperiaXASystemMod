.class public Lgov2/nist/javax2/sip/header/RAck;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "RAck.java"

# interfaces
.implements Ljavax2/sip/header/Header;


# static fields
.field private static final serialVersionUID:J = 0xa533768a7c9b3d6L


# instance fields
.field protected cSeqNumber:J

.field protected method:Ljava/lang/String;

.field protected rSeqNumber:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "RAck"

    .line 57
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-wide v2, p0, Lgov2/nist/javax2/sip/header/RAck;->rSeqNumber:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lgov2/nist/javax2/sip/header/RAck;->cSeqNumber:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/RAck;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCSeqNumberLong()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lgov2/nist/javax2/sip/header/RAck;->cSeqNumber:J

    return-wide v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/RAck;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getRSequenceNumber()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lgov2/nist/javax2/sip/header/RAck;->rSeqNumber:J

    return-wide v0
.end method

.method public setCSequenceNumber(J)V
    .locals 5
    .param p1, "cSeqNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 131
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

    .line 132
    :cond_0
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad CSeq # "

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

    .line 131
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 133
    :cond_3
    iput-wide p1, p0, Lgov2/nist/javax2/sip/header/RAck;->cSeqNumber:J

    .line 135
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 119
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/RAck;->method:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setRSequenceNumber(J)V
    .locals 7
    .param p1, "rSeqNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 146
    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_0

    iget-wide v2, p0, Lgov2/nist/javax2/sip/header/RAck;->cSeqNumber:J

    const-wide v4, 0x80000000L

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    :goto_1
    if-nez v0, :cond_3

    .line 147
    :cond_0
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad rSeq # "

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

    .line 146
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 148
    :cond_3
    iput-wide p1, p0, Lgov2/nist/javax2/sip/header/RAck;->rSeqNumber:J

    .line 149
    return-void
.end method

.class public Lgov2/nist/javax2/sip/header/CSeq;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "CSeq.java"

# interfaces
.implements Ljavax2/sip/header/CSeqHeader;


# static fields
.field private static final serialVersionUID:J = -0x4b0540b6704c4dfeL


# instance fields
.field protected method:Ljava/lang/String;

.field protected seqno:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "CSeq"

    .line 68
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "seqno"    # J
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/CSeq;-><init>()V

    .line 79
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/CSeq;->seqno:Ljava/lang/Long;

    .line 80
    invoke-static {p3}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/CSeq;->method:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/CSeq;->headerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/CSeq;->encodeBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/CSeq;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 118
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/CSeq;->seqno:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/CSeq;->method:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 91
    instance-of v2, p1, Ljavax2/sip/header/CSeqHeader;

    if-nez v2, :cond_0

    .line 96
    return v1

    :cond_0
    move-object v0, p1

    .line 92
    check-cast v0, Ljavax2/sip/header/CSeqHeader;

    .line 93
    .local v0, "o":Ljavax2/sip/header/CSeqHeader;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/CSeq;->getSeqNumber()J

    move-result-wide v2

    invoke-interface {v0}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/CSeq;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getSeqNumber()J
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/CSeq;->seqno:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/CSeq;->seqno:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/CSeq;->seqno:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 169
    return v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "meth"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 160
    invoke-static {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/CSeq;->method:Ljava/lang/String;

    .line 161
    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception, CSeq, setMethod(), the meth parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 135
    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    .line 136
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JAIN-SIP Exception, CSeq, setSequenceNumber(), the sequence number parameter is < 0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 135
    goto :goto_0

    :cond_1
    const-wide v2, 0x80000000L

    .line 138
    cmp-long v2, p1, v2

    if-gtz v2, :cond_2

    :goto_1
    if-nez v0, :cond_3

    .line 139
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JAIN-SIP Exception, CSeq, setSequenceNumber(), the sequence number parameter is too large : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    .line 138
    goto :goto_1

    .line 142
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/CSeq;->seqno:Ljava/lang/Long;

    .line 143
    return-void
.end method

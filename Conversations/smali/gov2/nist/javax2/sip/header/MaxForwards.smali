.class public Lgov2/nist/javax2/sip/header/MaxForwards;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "MaxForwards.java"

# interfaces
.implements Ljavax2/sip/header/MaxForwardsHeader;


# static fields
.field private static final serialVersionUID:J = -0x2afa4eca0522fa07L


# instance fields
.field protected maxForwards:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Max-Forwards"

    .line 58
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "m"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "Max-Forwards"

    .line 62
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/header/MaxForwards;->setMaxForwards(I)V

    .line 64
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/MaxForwards;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 96
    iget v0, p0, Lgov2/nist/javax2/sip/header/MaxForwards;->maxForwards:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    if-eq p0, p1, :cond_0

    .line 120
    instance-of v3, p1, Ljavax2/sip/header/MaxForwardsHeader;

    if-nez v3, :cond_1

    .line 124
    return v1

    .line 119
    :cond_0
    return v2

    :cond_1
    move-object v0, p1

    .line 121
    check-cast v0, Ljavax2/sip/header/MaxForwardsHeader;

    .line 122
    .local v0, "o":Ljavax2/sip/header/MaxForwardsHeader;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/MaxForwards;->getMaxForwards()I

    move-result v3

    invoke-interface {v0}, Ljavax2/sip/header/MaxForwardsHeader;->getMaxForwards()I

    move-result v4

    if-eq v3, v4, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getMaxForwards()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lgov2/nist/javax2/sip/header/MaxForwards;->maxForwards:I

    return v0
.end method

.method public setMaxForwards(I)V
    .locals 3
    .param p1, "maxForwards"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 81
    if-gez p1, :cond_1

    .line 82
    :cond_0
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad max forwards value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0xff

    .line 81
    if-gt p1, v0, :cond_0

    .line 83
    iput p1, p0, Lgov2/nist/javax2/sip/header/MaxForwards;->maxForwards:I

    .line 84
    return-void
.end method

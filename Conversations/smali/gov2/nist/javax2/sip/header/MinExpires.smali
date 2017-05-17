.class public Lgov2/nist/javax2/sip/header/MinExpires;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "MinExpires.java"

# interfaces
.implements Ljavax2/sip/header/MinExpiresHeader;


# static fields
.field private static final serialVersionUID:J = 0x612b7da8cbe173b9L


# instance fields
.field protected expires:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Min-Expires"

    .line 59
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lgov2/nist/javax2/sip/header/MinExpires;->expires:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpires()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lgov2/nist/javax2/sip/header/MinExpires;->expires:I

    return v0
.end method

.method public setExpires(I)V
    .locals 3
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 89
    if-ltz p1, :cond_0

    .line 90
    iput p1, p0, Lgov2/nist/javax2/sip/header/MinExpires;->expires:I

    .line 91
    return-void

    .line 89
    :cond_0
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

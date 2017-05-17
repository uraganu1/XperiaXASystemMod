.class public Lgov2/nist/javax2/sip/header/MimeVersion;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "MimeVersion.java"

# interfaces
.implements Ljavax2/sip/header/Header;


# static fields
.field private static final serialVersionUID:J = -0x6e59b8a2cb581754L


# instance fields
.field protected majorVersion:I

.field protected minorVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "MIME-Version"

    .line 64
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lgov2/nist/javax2/sip/header/MimeVersion;->majorVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgov2/nist/javax2/sip/header/MimeVersion;->minorVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMajorVersion(I)V
    .locals 2
    .param p1, "majorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 107
    if-ltz p1, :cond_0

    .line 110
    iput p1, p0, Lgov2/nist/javax2/sip/header/MimeVersion;->majorVersion:I

    .line 111
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v1, "JAIN-SIP Exception, MimeVersion, setMajorVersion(), the majorVersion parameter is null"

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinorVersion(I)V
    .locals 2
    .param p1, "minorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 93
    if-ltz p1, :cond_0

    .line 96
    iput p1, p0, Lgov2/nist/javax2/sip/header/MimeVersion;->minorVersion:I

    .line 97
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v1, "JAIN-SIP Exception, MimeVersion, setMinorVersion(), the minorVersion parameter is null"

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lgov2/nist/javax2/sip/header/SIPETag;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "SIPETag.java"

# interfaces
.implements Ljavax2/sip/header/SIPETagHeader;
.implements Ljavax2/sip/header/ExtensionHeader;


# static fields
.field private static final serialVersionUID:J = 0x3541b15bf9044cbbL


# instance fields
.field protected entityTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "SIP-ETag"

    .line 57
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPETag;->entityTag:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPETag;->entityTag:Ljava/lang/String;

    return-object v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 2
    .param p1, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 92
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/SIPETag;->entityTag:Ljava/lang/String;

    .line 93
    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception,SIP-ETag, setETag(), the etag parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/header/SIPETag;->setETag(Ljava/lang/String;)V

    .line 104
    return-void
.end method

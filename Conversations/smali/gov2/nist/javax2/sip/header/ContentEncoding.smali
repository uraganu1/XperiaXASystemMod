.class public Lgov2/nist/javax2/sip/header/ContentEncoding;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "ContentEncoding.java"

# interfaces
.implements Ljavax2/sip/header/Header;


# static fields
.field private static final serialVersionUID:J = 0x1c3b09a8a2de85c9L


# instance fields
.field protected contentEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Content-Encoding"

    .line 96
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ContentEncoding;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 135
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/ContentEncoding;->contentEncoding:Ljava/lang/String;

    .line 136
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception,  encoding is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

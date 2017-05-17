.class public final Lgov2/nist/javax2/sip/header/ContentDisposition;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "ContentDisposition.java"

# interfaces
.implements Ljavax2/sip/header/Header;
.implements Ljavax2/sip/header/Parameters;


# static fields
.field private static final serialVersionUID:J = 0xb98a29610197d1bL


# instance fields
.field protected dispositionType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Content-Disposition"

    .line 58
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ContentDisposition;->dispositionType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "encoding":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ContentDisposition;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, ";"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/ContentDisposition;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public setDispositionType(Ljava/lang/String;)V
    .locals 2
    .param p1, "dispositionType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/ContentDisposition;->dispositionType:Ljava/lang/String;

    .line 85
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception, ContentDisposition, setDispositionType(), the dispositionType parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

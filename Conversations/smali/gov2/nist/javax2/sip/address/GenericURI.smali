.class public Lgov2/nist/javax2/sip/address/GenericURI;
.super Lgov2/nist/javax2/sip/address/NetObject;
.source "GenericURI.java"

# interfaces
.implements Ljavax2/sip/address/URI;


# static fields
.field private static final serialVersionUID:J = 0x2cee91964ebc9436L


# instance fields
.field protected scheme:Ljava/lang/String;

.field protected uriString:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lgov2/nist/javax2/sip/address/NetObject;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-direct {p0}, Lgov2/nist/javax2/sip/address/NetObject;-><init>()V

    .line 84
    :try_start_0
    iput-object p1, p0, Lgov2/nist/javax2/sip/address/GenericURI;->uriString:Ljava/lang/String;

    const-string/jumbo v2, ":"

    .line 85
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "i":I
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgov2/nist/javax2/sip/address/GenericURI;->scheme:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 89
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/text/ParseException;

    const-string/jumbo v3, "GenericURI, Bad URI format"

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/GenericURI;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 102
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/GenericURI;->uriString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 136
    if-eq p0, p1, :cond_0

    .line 138
    instance-of v1, p1, Ljavax2/sip/address/URI;

    if-nez v1, :cond_1

    .line 145
    return v2

    .line 137
    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    move-object v0, p1

    .line 139
    check-cast v0, Ljavax2/sip/address/URI;

    .line 143
    .local v0, "o":Ljavax2/sip/address/URI;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljavax2/sip/address/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/GenericURI;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSipURI()Z
    .locals 1

    .prologue
    .line 131
    instance-of v0, p0, Lgov2/nist/javax2/sip/address/SipUri;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/address/GenericURI;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

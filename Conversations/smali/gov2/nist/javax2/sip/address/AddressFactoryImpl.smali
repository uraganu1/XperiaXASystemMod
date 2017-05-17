.class public Lgov2/nist/javax2/sip/address/AddressFactoryImpl;
.super Ljava/lang/Object;
.source "AddressFactoryImpl.java"

# interfaces
.implements Ljavax2/sip/address/AddressFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 167
    if-eqz p1, :cond_0

    const-string/jumbo v3, "*"

    .line 169
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    new-instance v1, Lgov2/nist/javax2/sip/parser/StringMsgParser;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/parser/StringMsgParser;-><init>()V

    .line 178
    .local v1, "smp":Lgov2/nist/javax2/sip/parser/StringMsgParser;
    invoke-virtual {v1, p1}, Lgov2/nist/javax2/sip/parser/StringMsgParser;->parseAddress(Ljava/lang/String;)Lgov2/nist/javax2/sip/address/AddressImpl;

    move-result-object v3

    return-object v3

    .line 167
    .end local v1    # "smp":Lgov2/nist/javax2/sip/parser/StringMsgParser;
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "null address"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 170
    :cond_1
    new-instance v0, Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/address/AddressImpl;-><init>()V

    .local v0, "addressImpl":Lgov2/nist/javax2/sip/address/AddressImpl;
    const/4 v3, 0x3

    .line 171
    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/address/AddressImpl;->setAddressType(I)V

    .line 172
    new-instance v2, Lgov2/nist/javax2/sip/address/SipUri;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/address/SipUri;-><init>()V

    .local v2, "uri":Ljavax2/sip/address/SipURI;
    const-string/jumbo v3, "*"

    .line 173
    invoke-interface {v2, v3}, Ljavax2/sip/address/SipURI;->setUser(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/address/AddressImpl;->setURI(Ljavax2/sip/address/URI;)V

    .line 175
    return-object v0
.end method

.method public createAddress(Ljavax2/sip/address/URI;)Ljavax2/sip/address/Address;
    .locals 3
    .param p1, "uri"    # Ljavax2/sip/address/URI;

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    new-instance v0, Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/address/AddressImpl;-><init>()V

    .line 152
    .local v0, "addressImpl":Lgov2/nist/javax2/sip/address/AddressImpl;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/AddressImpl;->setURI(Ljavax2/sip/address/URI;)V

    .line 153
    return-object v0

    .line 150
    .end local v0    # "addressImpl":Lgov2/nist/javax2/sip/address/AddressImpl;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null address"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createSipURI(Ljava/lang/String;)Ljavax2/sip/address/SipURI;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 89
    :try_start_0
    new-instance v2, Lgov2/nist/javax2/sip/parser/StringMsgParser;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/parser/StringMsgParser;-><init>()V

    .line 90
    .local v2, "smp":Lgov2/nist/javax2/sip/parser/StringMsgParser;
    invoke-virtual {v2, p1}, Lgov2/nist/javax2/sip/parser/StringMsgParser;->parseSIPUrl(Ljava/lang/String;)Lgov2/nist/javax2/sip/address/SipUri;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    .local v1, "sipUri":Lgov2/nist/javax2/sip/address/SipUri;
    return-object v1

    .line 87
    .end local v1    # "sipUri":Lgov2/nist/javax2/sip/address/SipUri;
    .end local v2    # "smp":Lgov2/nist/javax2/sip/parser/StringMsgParser;
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "null URI"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v3, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/address/SipURI;
    .locals 8
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5b

    const/16 v5, 0x3a

    const/4 v6, 0x0

    .line 106
    if-eqz p2, :cond_1

    .line 108
    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "sip:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 109
    .local v3, "uriString":Ljava/lang/StringBuffer;
    if-nez p1, :cond_2

    .line 115
    :goto_0
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 118
    :cond_0
    :goto_1
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    new-instance v2, Lgov2/nist/javax2/sip/parser/StringMsgParser;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/parser/StringMsgParser;-><init>()V

    .line 123
    .local v2, "smp":Lgov2/nist/javax2/sip/parser/StringMsgParser;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgov2/nist/javax2/sip/parser/StringMsgParser;->parseSIPUrl(Ljava/lang/String;)Lgov2/nist/javax2/sip/address/SipUri;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 124
    .local v1, "sipUri":Lgov2/nist/javax2/sip/address/SipUri;
    return-object v1

    .line 106
    .end local v1    # "sipUri":Lgov2/nist/javax2/sip/address/SipUri;
    .end local v2    # "smp":Lgov2/nist/javax2/sip/parser/StringMsgParser;
    .end local v3    # "uriString":Ljava/lang/StringBuffer;
    :cond_1
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "null host"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 110
    .restart local v3    # "uriString":Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, "@"

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_0

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 124
    .restart local v2    # "smp":Lgov2/nist/javax2/sip/parser/StringMsgParser;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v4, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method

.method public createURI(Ljava/lang/String;)Ljavax2/sip/address/URI;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 192
    if-eqz p1, :cond_0

    .line 194
    :try_start_0
    new-instance v2, Lgov2/nist/javax2/sip/parser/URLParser;

    invoke-direct {v2, p1}, Lgov2/nist/javax2/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/parser/URLParser;->peekScheme()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v3, "sip"

    .line 197
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "sips"

    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "tel"

    .line 201
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_4

    .line 207
    new-instance v3, Lgov2/nist/javax2/sip/address/GenericURI;

    invoke-direct {v3, p1}, Lgov2/nist/javax2/sip/address/GenericURI;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 192
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "null arg"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v2    # "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/text/ParseException;

    const-string/jumbo v4, "bad scheme"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v3, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 198
    .end local v0    # "ex":Ljava/text/ParseException;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v2    # "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    :cond_2
    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {v2, v3}, Lgov2/nist/javax2/sip/parser/URLParser;->sipURL(Z)Lgov2/nist/javax2/sip/address/SipUri;

    move-result-object v3

    return-object v3

    .line 200
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov2/nist/javax2/sip/parser/URLParser;->sipURL(Z)Lgov2/nist/javax2/sip/address/SipUri;

    move-result-object v3

    return-object v3

    .line 202
    :cond_4
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov2/nist/javax2/sip/parser/URLParser;->telURL(Z)Lgov2/nist/javax2/sip/address/TelURLImpl;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    return-object v3
.end method

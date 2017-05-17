.class public Lgov2/nist/javax2/sip/message/MessageFactoryImpl;
.super Ljava/lang/Object;
.source "MessageFactoryImpl.java"

# interfaces
.implements Ljavax2/sip/message/MessageFactory;


# static fields
.field private static defaultContentEncodingCharset:Ljava/lang/String;

.field private static server:Ljavax2/sip/header/ServerHeader;

.field private static userAgent:Ljavax2/sip/header/UserAgentHeader;


# instance fields
.field private strict:Z

.field private testing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "UTF-8"

    .line 59
    sput-object v0, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->defaultContentEncodingCharset:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->testing:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->strict:Z

    .line 87
    return-void
.end method

.method public static getDefaultContentEncodingCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 727
    sget-object v0, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->defaultContentEncodingCharset:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultServerHeader()Ljavax2/sip/header/ServerHeader;
    .locals 1

    .prologue
    .line 711
    sget-object v0, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->server:Ljavax2/sip/header/ServerHeader;

    return-object v0
.end method

.method public static getDefaultUserAgentHeader()Ljavax2/sip/header/UserAgentHeader;
    .locals 1

    .prologue
    .line 702
    sget-object v0, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->userAgent:Ljavax2/sip/header/UserAgentHeader;

    return-object v0
.end method


# virtual methods
.method public createRequest(Ljavax2/sip/address/URI;Ljava/lang/String;Ljavax2/sip/header/CallIdHeader;Ljavax2/sip/header/CSeqHeader;Ljavax2/sip/header/FromHeader;Ljavax2/sip/header/ToHeader;Ljava/util/List;Ljavax2/sip/header/MaxForwardsHeader;)Ljavax2/sip/message/Request;
    .locals 4
    .param p1, "requestURI"    # Ljavax2/sip/address/URI;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "callId"    # Ljavax2/sip/header/CallIdHeader;
    .param p4, "cSeq"    # Ljavax2/sip/header/CSeqHeader;
    .param p5, "from"    # Ljavax2/sip/header/FromHeader;
    .param p6, "to"    # Ljavax2/sip/header/ToHeader;
    .param p7, "via"    # Ljava/util/List;
    .param p8, "maxForwards"    # Ljavax2/sip/header/MaxForwardsHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 208
    if-nez p1, :cond_1

    .line 210
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    const-string/jumbo v2, "JAIN-SIP Exception, some parameters are missing, unable to create the request"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 208
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    .line 213
    new-instance v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;-><init>()V

    .line 214
    .local v0, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->setRequestURI(Ljavax2/sip/address/URI;)V

    .line 215
    invoke-virtual {v0, p2}, Lgov2/nist/javax2/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p3}, Lgov2/nist/javax2/sip/message/SIPRequest;->setCallId(Ljavax2/sip/header/CallIdHeader;)V

    .line 217
    invoke-virtual {v0, p4}, Lgov2/nist/javax2/sip/message/SIPRequest;->setCSeq(Ljavax2/sip/header/CSeqHeader;)V

    .line 218
    invoke-virtual {v0, p5}, Lgov2/nist/javax2/sip/message/SIPRequest;->setFrom(Ljavax2/sip/header/FromHeader;)V

    .line 219
    invoke-virtual {v0, p6}, Lgov2/nist/javax2/sip/message/SIPRequest;->setTo(Ljavax2/sip/header/ToHeader;)V

    .line 220
    invoke-virtual {v0, p7}, Lgov2/nist/javax2/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    .line 221
    invoke-virtual {v0, p8}, Lgov2/nist/javax2/sip/message/SIPRequest;->setMaxForwards(Ljavax2/sip/header/MaxForwardsHeader;)V

    .line 222
    sget-object v1, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->userAgent:Ljavax2/sip/header/UserAgentHeader;

    if-nez v1, :cond_2

    .line 226
    :goto_0
    return-object v0

    .line 223
    :cond_2
    sget-object v1, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->userAgent:Ljavax2/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    goto :goto_0
.end method

.method public createResponse(ILjavax2/sip/message/Request;)Ljavax2/sip/message/Response;
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "request"    # Ljavax2/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 442
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 447
    check-cast v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 448
    .local v0, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(I)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v1

    .line 451
    .local v1, "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPResponse;->removeContent()V

    const-string/jumbo v2, "Content-Type"

    .line 452
    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/message/SIPResponse;->removeHeader(Ljava/lang/String;)V

    .line 453
    sget-object v2, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->server:Ljavax2/sip/header/ServerHeader;

    if-nez v2, :cond_1

    .line 456
    :goto_0
    return-object v1

    .line 442
    .end local v0    # "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    .end local v1    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "null parameters"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 454
    .restart local v0    # "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    .restart local v1    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :cond_1
    sget-object v2, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->server:Ljavax2/sip/header/ServerHeader;

    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/message/SIPResponse;->setHeader(Ljavax2/sip/header/Header;)V

    goto :goto_0
.end method

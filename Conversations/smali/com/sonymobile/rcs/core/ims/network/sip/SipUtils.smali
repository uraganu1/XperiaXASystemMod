.class public Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;
.super Ljava/lang/Object;
.source "SipUtils.java"


# static fields
.field public static ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

.field public static HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

.field public static MSG_FACTORY:Ljavax2/sip/message/MessageFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput-object v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    .line 74
    sput-object v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    .line 79
    sput-object v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAllowHeader(Ljavax2/sip/message/Message;)V
    .locals 2
    .param p0, "msg"    # Ljavax2/sip/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    sget-object v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v1, "INVITE"

    invoke-interface {v0, v1}, Ljavax2/sip/header/HeaderFactory;->createAllowHeader(Ljava/lang/String;)Ljavax2/sip/header/AllowHeader;

    move-result-object v0

    invoke-interface {p0, v0}, Ljavax2/sip/message/Message;->addHeader(Ljavax2/sip/header/Header;)V

    .line 264
    sget-object v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v1, "UPDATE"

    invoke-interface {v0, v1}, Ljavax2/sip/header/HeaderFactory;->createAllowHeader(Ljava/lang/String;)Ljavax2/sip/header/AllowHeader;

    move-result-object v0

    invoke-interface {p0, v0}, Ljavax2/sip/message/Message;->addHeader(Ljavax2/sip/header/Header;)V

    .line 265
    sget-object v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v1, "ACK"

    invoke-interface {v0, v1}, Ljavax2/sip/header/HeaderFactory;->createAllowHeader(Ljava/lang/String;)Ljavax2/sip/header/AllowHeader;

    move-result-object v0

    invoke-interface {p0, v0}, Ljavax2/sip/message/Message;->addHeader(Ljavax2/sip/header/Header;)V

    .line 266
    sget-object v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v1, "CANCEL"

    invoke-interface {v0, v1}, Ljavax2/sip/header/HeaderFactory;->createAllowHeader(Ljava/lang/String;)Ljavax2/sip/header/AllowHeader;

    move-result-object v0

    invoke-interface {p0, v0}, Ljavax2/sip/message/Message;->addHeader(Ljavax2/sip/header/Header;)V

    .line 267
    sget-object v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v1, "BYE"

    invoke-interface {v0, v1}, Ljavax2/sip/header/HeaderFactory;->createAllowHeader(Ljava/lang/String;)Ljavax2/sip/header/AllowHeader;

    move-result-object v0

    invoke-interface {p0, v0}, Ljavax2/sip/message/Message;->addHeader(Ljavax2/sip/header/Header;)V

    .line 268
    sget-object v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v1, "NOTIFY"

    invoke-interface {v0, v1}, Ljavax2/sip/header/HeaderFactory;->createAllowHeader(Ljava/lang/String;)Ljavax2/sip/header/AllowHeader;

    move-result-object v0

    invoke-interface {p0, v0}, Ljavax2/sip/message/Message;->addHeader(Ljavax2/sip/header/Header;)V

    .line 269
    sget-object v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v1, "OPTIONS"

    invoke-interface {v0, v1}, Ljavax2/sip/header/HeaderFactory;->createAllowHeader(Ljava/lang/String;)Ljavax2/sip/header/AllowHeader;

    move-result-object v0

    invoke-interface {p0, v0}, Ljavax2/sip/message/Message;->addHeader(Ljavax2/sip/header/Header;)V

    .line 270
    sget-object v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v1, "MESSAGE"

    invoke-interface {v0, v1}, Ljavax2/sip/header/HeaderFactory;->createAllowHeader(Ljava/lang/String;)Ljavax2/sip/header/AllowHeader;

    move-result-object v0

    invoke-interface {p0, v0}, Ljavax2/sip/message/Message;->addHeader(Ljavax2/sip/header/Header;)V

    .line 271
    sget-object v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v1, "REFER"

    invoke-interface {v0, v1}, Ljavax2/sip/header/HeaderFactory;->createAllowHeader(Ljava/lang/String;)Ljavax2/sip/header/AllowHeader;

    move-result-object v0

    invoke-interface {p0, v0}, Ljavax2/sip/message/Message;->addHeader(Ljavax2/sip/header/Header;)V

    .line 272
    return-void
.end method

.method public static buildMaxForwardsHeader()Ljavax2/sip/header/MaxForwardsHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 281
    sget-object v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const/16 v1, 0x46

    invoke-interface {v0, v1}, Ljavax2/sip/header/HeaderFactory;->createMaxForwardsHeader(I)Ljavax2/sip/header/MaxForwardsHeader;

    move-result-object v0

    return-object v0
.end method

.method public static buildServerHeader()Ljavax2/sip/header/Header;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IM-client/OMA1.0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sonymobile/rcs/core/TerminalInfo;->getProductInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "value":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGsmaExtToExtSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    sget-object v1, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v2, "Server"

    invoke-interface {v1, v2, v0}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    return-object v1

    .line 231
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isEnrichedCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExttoExt-serv/Ext1.0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static buildUserAgentHeader()Ljavax2/sip/header/Header;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    sget-object v1, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v2, "User-Agent"

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->userAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    .line 219
    .local v0, "userAgentHeader":Ljavax2/sip/header/Header;
    return-object v0
.end method

.method public static constructNTPtime(J)Ljava/lang/String;
    .locals 6
    .param p0, "date"    # J

    .prologue
    const-wide/16 v2, 0x3e8

    .line 206
    div-long v2, p0, v2

    const-wide v4, 0x83aa7e80L

    add-long v0, v2, v4

    .line 207
    .local v0, "startTime":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static extractParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 307
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v3, v4

    .line 308
    .local v0, "begin":I
    if-ne v0, v5, :cond_0

    .line 327
    return-object p2

    :cond_0
    const-string/jumbo v3, " "

    .line 309
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 312
    .local v2, "end":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    .line 321
    :goto_0
    if-eq v2, v5, :cond_2

    .line 324
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 317
    :cond_1
    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v3, "\""

    .line 318
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 327
    .end local v0    # "begin":I
    .end local v2    # "end":I
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    return-object p2
.end method

.method public static extractUriFromAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "addr"    # Ljava/lang/String;

    .prologue
    .line 187
    move-object v1, p0

    .local v1, "uri":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "<"

    .line 189
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    const/4 v2, -0x1

    .line 190
    if-ne v0, v2, :cond_0

    .line 195
    .end local v0    # "index":I
    :goto_0
    return-object v1

    .line 191
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, ">"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 194
    .end local v0    # "index":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;
    .locals 6
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const-string/jumbo v4, "P-Asserted-Identity"

    .line 372
    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "assertedHeaderList":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/Header;>;"
    const/4 v2, 0x0

    .local v2, "assertedIdentity":Ljava/lang/String;
    const/4 v0, 0x0

    .line 379
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 387
    .end local v2    # "assertedIdentity":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_2

    const-string/jumbo v4, "P-Asserted-Identity"

    .line 390
    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ExtensionHeader;

    .line 391
    .local v0, "assertedHeader":Ljavax2/sip/header/ExtensionHeader;
    if-nez v0, :cond_3

    .line 394
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getFromUri()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 380
    .end local v0    # "assertedHeader":Ljavax2/sip/header/ExtensionHeader;
    .restart local v2    # "assertedIdentity":Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ExtensionHeader;

    .line 381
    .restart local v0    # "assertedHeader":Ljavax2/sip/header/ExtensionHeader;
    invoke-interface {v0}, Ljavax2/sip/header/ExtensionHeader;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .local v3, "index1":I
    const/4 v4, -0x1

    .line 382
    if-eq v3, v4, :cond_0

    .line 383
    invoke-interface {v0}, Ljavax2/sip/header/ExtensionHeader;->getValue()Ljava/lang/String;

    move-result-object v2

    .local v2, "assertedIdentity":Ljava/lang/String;
    goto :goto_0

    .line 388
    .end local v0    # "assertedHeader":Ljavax2/sip/header/ExtensionHeader;
    .end local v2    # "assertedIdentity":Ljava/lang/String;
    .end local v3    # "index1":I
    :cond_2
    return-object v2

    .line 392
    .restart local v0    # "assertedHeader":Ljavax2/sip/header/ExtensionHeader;
    :cond_3
    invoke-interface {v0}, Ljavax2/sip/header/ExtensionHeader;->getValue()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getDisplayNameFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 704
    if-eqz p0, :cond_1

    :try_start_0
    const-string/jumbo v3, "\""

    .line 708
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "index0":I
    const/4 v3, -0x1

    .line 709
    if-ne v1, v3, :cond_2

    .line 715
    :cond_0
    return-object v5

    .line 705
    .end local v1    # "index0":I
    :cond_1
    return-object v5

    .restart local v1    # "index0":I
    :cond_2
    const-string/jumbo v3, "\""

    .line 710
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 711
    .local v2, "index1":I
    if-lez v2, :cond_0

    .line 712
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 715
    .end local v1    # "index0":I
    .end local v2    # "index1":I
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/Exception;
    return-object v5
.end method

.method public static getInstanceID(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;
    .locals 7
    .param p0, "message"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    .prologue
    const/4 v2, 0x0

    .local v2, "instanceId":Ljava/lang/String;
    const-string/jumbo v4, "Accept-Contact"

    .line 618
    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ExtensionHeader;

    .line 620
    .local v0, "acceptHeader":Ljavax2/sip/header/ExtensionHeader;
    if-eqz v0, :cond_1

    .line 624
    :goto_0
    if-nez v0, :cond_2

    .line 637
    .end local v2    # "instanceId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    .restart local v2    # "instanceId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "a"

    .line 622
    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    .end local v0    # "acceptHeader":Ljavax2/sip/header/ExtensionHeader;
    check-cast v0, Ljavax2/sip/header/ExtensionHeader;

    .restart local v0    # "acceptHeader":Ljavax2/sip/header/ExtensionHeader;
    goto :goto_0

    .line 625
    :cond_2
    invoke-interface {v0}, Ljavax2/sip/header/ExtensionHeader;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "pnames":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    const/4 v1, 0x1

    .line 628
    .local v1, "i":I
    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 629
    aget-object v4, v3, v1

    const-string/jumbo v5, "+sip.instance"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 628
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 630
    :cond_3
    aget-object v4, v3, v1

    const-string/jumbo v5, "+sip.instance"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "instanceId":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getIpAddressFromHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const-string/jumbo v2, "["

    .line 730
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 731
    .local v0, "index0":I
    if-ne v0, v3, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string/jumbo v2, "]"

    .line 732
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 733
    .local v1, "index1":I
    if-eq v1, v3, :cond_0

    .line 734
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getMinExpiresPeriod(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)I
    .locals 2
    .param p0, "message"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    .prologue
    const-string/jumbo v1, "Min-Expires"

    .line 340
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/MinExpiresHeader;

    .line 341
    .local v0, "minHeader":Ljavax2/sip/header/MinExpiresHeader;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 344
    return v1

    .line 342
    :cond_0
    invoke-interface {v0}, Ljavax2/sip/header/MinExpiresHeader;->getExpires()I

    move-result v1

    return v1
.end method

.method public static getMinSessionExpirePeriod(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)I
    .locals 3
    .param p0, "message"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    .prologue
    const-string/jumbo v2, "Min-SE"

    .line 355
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ExtensionHeader;

    .line 356
    .local v0, "minSeHeader":Ljavax2/sip/header/ExtensionHeader;
    if-nez v0, :cond_0

    const/4 v2, -0x1

    .line 360
    return v2

    .line 357
    :cond_0
    invoke-interface {v0}, Ljavax2/sip/header/ExtensionHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getPublicGruu(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;
    .locals 7
    .param p0, "message"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    .prologue
    const/4 v3, 0x0

    .local v3, "publicGruu":Ljava/lang/String;
    const-string/jumbo v4, "Accept-Contact"

    .line 648
    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ExtensionHeader;

    .line 650
    .local v0, "acceptHeader":Ljavax2/sip/header/ExtensionHeader;
    if-eqz v0, :cond_1

    .line 654
    :goto_0
    if-nez v0, :cond_2

    .line 667
    .end local v3    # "publicGruu":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v3

    .restart local v3    # "publicGruu":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "a"

    .line 652
    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    .end local v0    # "acceptHeader":Ljavax2/sip/header/ExtensionHeader;
    check-cast v0, Ljavax2/sip/header/ExtensionHeader;

    .restart local v0    # "acceptHeader":Ljavax2/sip/header/ExtensionHeader;
    goto :goto_0

    .line 655
    :cond_2
    invoke-interface {v0}, Ljavax2/sip/header/ExtensionHeader;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, "pnames":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    const/4 v1, 0x1

    .line 658
    .local v1, "i":I
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 659
    aget-object v4, v2, v1

    const-string/jumbo v5, "pub-gruu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 660
    :cond_3
    aget-object v4, v2, v1

    const-string/jumbo v5, "pub-gruu"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "publicGruu":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getReferredByHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;
    .locals 9
    .param p0, "message"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    .prologue
    const/4 v8, 0x0

    const-string/jumbo v6, "Referred-By"

    .line 565
    invoke-virtual {p0, v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v5

    check-cast v5, Ljavax2/sip/header/ExtensionHeader;

    .line 567
    .local v5, "referredByHeader":Ljavax2/sip/header/ExtensionHeader;
    if-eqz v5, :cond_0

    .line 591
    invoke-interface {v5}, Ljavax2/sip/header/ExtensionHeader;->getValue()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_0
    const-string/jumbo v6, "b"

    .line 569
    invoke-virtual {p0, v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v5

    .end local v5    # "referredByHeader":Ljavax2/sip/header/ExtensionHeader;
    check-cast v5, Ljavax2/sip/header/ExtensionHeader;

    .line 570
    .restart local v5    # "referredByHeader":Ljavax2/sip/header/ExtensionHeader;
    if-eqz v5, :cond_1

    .line 588
    invoke-interface {v5}, Ljavax2/sip/header/ExtensionHeader;->getValue()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 574
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getStackMessage()Ljavax2/sip/message/Message;

    move-result-object v6

    invoke-interface {v6}, Ljavax2/sip/message/Message;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "msg":Ljava/lang/String;
    const-string/jumbo v6, "\r\nb:"

    .line 575
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .local v3, "index":I
    const/4 v6, -0x1

    .line 576
    if-ne v3, v6, :cond_2

    .line 585
    return-object v8

    .line 578
    :cond_2
    add-int/lit8 v0, v3, 0x4

    .local v0, "begin":I
    :try_start_0
    const-string/jumbo v6, "\r\n"

    .line 579
    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 580
    .local v2, "end":I
    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .end local v2    # "end":I
    :catch_0
    move-exception v1

    .line 582
    .local v1, "e":Ljava/lang/Exception;
    return-object v8
.end method

.method public static getRemoteInstanceID(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    .prologue
    const/4 v1, 0x0

    .local v1, "instanceId":Ljava/lang/String;
    const-string/jumbo v2, "Contact"

    .line 603
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ContactHeader;

    .line 604
    .local v0, "contactHeader":Ljavax2/sip/header/ContactHeader;
    if-nez v0, :cond_0

    .line 607
    .end local v1    # "instanceId":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "instanceId":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "+sip.instance"

    .line 605
    invoke-interface {v0, v2}, Ljavax2/sip/header/ContactHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "instanceId":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z
    .locals 4
    .param p0, "msg"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;
    .param p1, "featureTag"    # Ljava/lang/String;

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 437
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getFeatureTags()Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 438
    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 444
    :goto_1
    return v1

    .line 439
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static routeProcessing(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Z)Ljava/util/Vector;
    .locals 7
    .param p0, "msg"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;
    .param p1, "invert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;",
            "Z)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 408
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .local v2, "result":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const-string/jumbo v4, "Record-Route"

    .line 409
    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v0

    .line 410
    .local v0, "list":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/Header;>;"
    if-eqz v0, :cond_0

    .line 415
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 425
    return-object v2

    .line 412
    :cond_0
    return-object v5

    .line 416
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/RecordRouteHeader;

    .line 417
    .local v1, "record":Ljavax2/sip/header/RecordRouteHeader;
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-interface {v1}, Ljavax2/sip/header/RecordRouteHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax2/sip/header/HeaderFactory;->createRouteHeader(Ljavax2/sip/address/Address;)Ljavax2/sip/header/RouteHeader;

    move-result-object v3

    .line 418
    .local v3, "route":Ljavax2/sip/header/RouteHeader;
    if-nez p1, :cond_2

    .line 421
    invoke-interface {v3}, Ljavax2/sip/header/RouteHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 419
    :cond_2
    invoke-interface {v3}, Ljavax2/sip/header/RouteHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public static setAcceptContactFeatureTags(Ljavax2/sip/message/Message;Ljava/util/List;)V
    .locals 6
    .param p0, "message"    # Ljavax2/sip/message/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax2/sip/message/Message;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 520
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 521
    :cond_0
    return-void

    .line 520
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "*"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v0, "acceptTags":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 526
    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 531
    sget-object v3, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v4, "Accept-Contact"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    .line 533
    .local v1, "header":Ljavax2/sip/header/Header;
    invoke-interface {p0, v1}, Ljavax2/sip/message/Message;->addHeader(Ljavax2/sip/header/Header;)V

    .line 534
    return-void

    .line 527
    .end local v1    # "header":Ljavax2/sip/header/Header;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static setContactFeatureTags(Ljavax2/sip/message/Message;Ljava/util/List;)V
    .locals 4
    .param p0, "message"    # Ljavax2/sip/message/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax2/sip/message/Message;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 544
    if-nez p1, :cond_1

    .line 545
    :cond_0
    return-void

    .line 544
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Contact"

    .line 549
    invoke-interface {p0, v2}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ContactHeader;

    .local v0, "contact":Ljavax2/sip/header/ContactHeader;
    const/4 v1, 0x0

    .line 550
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 555
    return-void

    .line 551
    :cond_2
    if-nez v0, :cond_3

    .line 550
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljavax2/sip/header/ContactHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setFeatureTags(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;[Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;
    .param p1, "tags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getStackMessage()Ljavax2/sip/message/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setFeatureTags(Ljavax2/sip/message/Message;[Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public static setFeatureTags(Ljavax2/sip/message/Message;Ljava/util/List;)V
    .locals 0
    .param p0, "message"    # Ljavax2/sip/message/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax2/sip/message/Message;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setFeatureTags(Ljavax2/sip/message/Message;Ljava/util/List;Ljava/util/List;)V

    .line 509
    return-void
.end method

.method public static setFeatureTags(Ljavax2/sip/message/Message;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p0, "message"    # Ljavax2/sip/message/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax2/sip/message/Message;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "acceptTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setContactFeatureTags(Ljavax2/sip/message/Message;Ljava/util/List;)V

    .line 495
    instance-of v0, p0, Ljavax2/sip/message/Response;

    if-eqz v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-static {p0, p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setAcceptContactFeatureTags(Ljavax2/sip/message/Message;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static setFeatureTags(Ljavax2/sip/message/Message;[Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljavax2/sip/message/Message;
    .param p1, "tags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 466
    invoke-static {p0, p1, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setFeatureTags(Ljavax2/sip/message/Message;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public static setFeatureTags(Ljavax2/sip/message/Message;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljavax2/sip/message/Message;
    .param p1, "tags"    # [Ljava/lang/String;
    .param p2, "acceptTags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 479
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 480
    .local v1, "listTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 481
    .local v0, "listAcceptTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, v1, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setFeatureTags(Ljavax2/sip/message/Message;Ljava/util/List;Ljava/util/List;)V

    .line 482
    return-void
.end method

.method public static setRemoteInstanceID(Ljavax2/sip/message/Message;Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Ljavax2/sip/message/Message;
    .param p1, "instanceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 680
    if-nez p1, :cond_0

    .line 695
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "Accept-Contact"

    .line 681
    invoke-interface {p0, v2}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ExtensionHeader;

    .line 683
    .local v0, "acceptHeader":Ljavax2/sip/header/ExtensionHeader;
    if-nez v0, :cond_1

    .line 689
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v3, "Accept-Contact"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "*;+sip.instance=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    .line 692
    .local v1, "header":Ljavax2/sip/header/Header;
    invoke-interface {p0, v1}, Ljavax2/sip/message/Message;->addHeader(Ljavax2/sip/header/Header;)V

    goto :goto_0

    .line 685
    .end local v1    # "header":Ljavax2/sip/header/Header;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljavax2/sip/header/ExtensionHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "+sip.instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljavax2/sip/header/ExtensionHeader;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static userAgentString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IM-client/OMA1.0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sonymobile/rcs/core/TerminalInfo;->getBuildInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sonymobile/rcs/core/TerminalInfo;->getProductInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sonymobile/rcs/core/TerminalInfo;->getStackVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "userAgent":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGsmaExtToExtSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isEnrichedCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExttoExt-client/Ext1.0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

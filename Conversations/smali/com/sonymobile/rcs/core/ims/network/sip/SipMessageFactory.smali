.class public Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;
.super Ljava/lang/Object;
.source "SipMessageFactory.java"


# static fields
.field private static logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create200OkInviteResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .locals 12
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "featureTags"    # [Ljava/lang/String;
    .param p2, "sdp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 686
    :try_start_0
    sget-object v8, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    const/16 v9, 0xc8

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljavax2/sip/message/MessageFactory;->createResponse(ILjavax2/sip/message/Request;)Ljavax2/sip/message/Response;

    move-result-object v5

    .local v5, "response":Ljavax2/sip/message/Response;
    const-string/jumbo v8, "To"

    .line 690
    invoke-interface {v5, v8}, Ljavax2/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v7

    check-cast v7, Ljavax2/sip/header/ToHeader;

    .line 691
    .local v7, "to":Ljavax2/sip/header/ToHeader;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljavax2/sip/header/ToHeader;->setTag(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v8

    invoke-interface {v5, v8}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V

    .line 697
    invoke-static {v5, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setFeatureTags(Ljavax2/sip/message/Message;[Ljava/lang/String;)V

    .line 700
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildAllowHeader(Ljavax2/sip/message/Message;)V

    .line 703
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildServerHeader()Ljavax2/sip/header/Header;

    move-result-object v8

    invoke-interface {v5, v8}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V

    .line 706
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v8

    const/16 v9, 0x5a

    if-ge v8, v9, :cond_0

    .line 720
    :goto_0
    sget-object v8, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v9, "application"

    const-string/jumbo v10, "sdp"

    invoke-interface {v8, v9, v10}, Ljavax2/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ContentTypeHeader;

    move-result-object v1

    .line 722
    .local v1, "contentTypeHeader":Ljavax2/sip/header/ContentTypeHeader;
    invoke-interface {v5, p2, v1}, Ljavax2/sip/message/Response;->setContent(Ljava/lang/Object;Ljavax2/sip/header/ContentTypeHeader;)V

    .line 725
    sget-object v8, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    invoke-interface {v8, v9}, Ljavax2/sip/header/HeaderFactory;->createContentLengthHeader(I)Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v0

    .line 727
    .local v0, "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    invoke-interface {v5, v0}, Ljavax2/sip/message/Response;->setContentLength(Ljavax2/sip/header/ContentLengthHeader;)V

    .line 729
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;-><init>(Ljavax2/sip/message/Response;)V

    .line 730
    .local v4, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackTransaction()Ljavax2/sip/Transaction;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->setStackTransaction(Ljavax2/sip/Transaction;)V

    .line 731
    return-object v4

    .line 708
    .end local v0    # "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    .end local v1    # "contentTypeHeader":Ljavax2/sip/header/ContentTypeHeader;
    .end local v4    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    sget-object v8, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v9, "Require"

    const-string/jumbo v10, "timer"

    invoke-interface {v8, v9, v10}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v3

    .line 710
    .local v3, "requireHeader":Ljavax2/sip/header/Header;
    invoke-interface {v5, v3}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V

    .line 713
    sget-object v8, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v9, "Session-Expires"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";refresher="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getSessionTimerRefresher()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v6

    .line 716
    .local v6, "sessionExpiresHeader":Ljavax2/sip/header/Header;
    invoke-interface {v5, v6}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 731
    .end local v3    # "requireHeader":Ljavax2/sip/header/Header;
    .end local v5    # "response":Ljavax2/sip/message/Response;
    .end local v6    # "sessionExpiresHeader":Ljavax2/sip/header/Header;
    .end local v7    # "to":Ljavax2/sip/header/ToHeader;
    :catch_0
    move-exception v2

    .line 733
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_1

    .line 736
    :goto_1
    new-instance v8, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v9, "Can\'t create SIP response"

    invoke-direct {v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 734
    :cond_1
    sget-object v8, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Can\'t create SIP message"

    invoke-virtual {v8, v9, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static create200OkOptionsResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljavax2/sip/header/ContactHeader;Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .locals 9
    .param p0, "options"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p1, "contact"    # Ljavax2/sip/header/ContactHeader;
    .param p3, "sdp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;",
            "Ljavax2/sip/header/ContactHeader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1065
    .local p2, "featureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v6, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    const/16 v7, 0xc8

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljavax2/sip/message/MessageFactory;->createResponse(ILjavax2/sip/message/Request;)Ljavax2/sip/message/Response;

    move-result-object v4

    .local v4, "response":Ljavax2/sip/message/Response;
    const-string/jumbo v6, "To"

    .line 1069
    invoke-interface {v4, v6}, Ljavax2/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v5

    check-cast v5, Ljavax2/sip/header/ToHeader;

    .line 1070
    .local v5, "to":Ljavax2/sip/header/ToHeader;
    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavax2/sip/header/ToHeader;->setTag(Ljava/lang/String;)V

    .line 1073
    invoke-interface {v4, p1}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1076
    invoke-static {v4, p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setFeatureTags(Ljavax2/sip/message/Message;Ljava/util/List;)V

    .line 1079
    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildAllowHeader(Ljavax2/sip/message/Message;)V

    .line 1082
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildServerHeader()Ljavax2/sip/header/Header;

    move-result-object v6

    invoke-interface {v4, v6}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1085
    if-nez p3, :cond_0

    .line 1097
    :goto_0
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;-><init>(Ljavax2/sip/message/Response;)V

    .line 1098
    .local v3, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackTransaction()Ljavax2/sip/Transaction;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->setStackTransaction(Ljavax2/sip/Transaction;)V

    .line 1099
    return-object v3

    .line 1087
    .end local v3    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    sget-object v6, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v7, "application"

    const-string/jumbo v8, "sdp"

    invoke-interface {v6, v7, v8}, Ljavax2/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ContentTypeHeader;

    move-result-object v1

    .line 1089
    .local v1, "contentTypeHeader":Ljavax2/sip/header/ContentTypeHeader;
    invoke-interface {v4, p3, v1}, Ljavax2/sip/message/Response;->setContent(Ljava/lang/Object;Ljavax2/sip/header/ContentTypeHeader;)V

    .line 1092
    sget-object v6, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    invoke-interface {v6, v7}, Ljavax2/sip/header/HeaderFactory;->createContentLengthHeader(I)Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v0

    .line 1094
    .local v0, "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    invoke-interface {v4, v0}, Ljavax2/sip/message/Response;->setContentLength(Ljavax2/sip/header/ContentLengthHeader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1099
    .end local v0    # "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    .end local v1    # "contentTypeHeader":Ljavax2/sip/header/ContentTypeHeader;
    .end local v4    # "response":Ljavax2/sip/message/Response;
    .end local v5    # "to":Ljavax2/sip/header/ToHeader;
    :catch_0
    move-exception v2

    .line 1101
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1104
    :goto_1
    new-instance v6, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v7, "Can\'t create SIP response"

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1102
    :cond_1
    sget-object v6, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Can\'t create SIP message"

    invoke-virtual {v6, v7, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static create200OkReInviteResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .locals 10
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "sdp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1462
    :try_start_0
    sget-object v7, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    const/16 v8, 0xc8

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljavax2/sip/message/MessageFactory;->createResponse(ILjavax2/sip/message/Request;)Ljavax2/sip/message/Response;

    move-result-object v5

    .line 1466
    .local v5, "response":Ljavax2/sip/message/Response;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v7

    invoke-interface {v5, v7}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1469
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildServerHeader()Ljavax2/sip/header/Header;

    move-result-object v7

    invoke-interface {v5, v7}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1472
    sget-object v7, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v8, "Require"

    const-string/jumbo v9, "timer"

    invoke-interface {v7, v8, v9}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v3

    .line 1474
    .local v3, "requireHeader":Ljavax2/sip/header/Header;
    invoke-interface {v5, v3}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V

    const-string/jumbo v7, "Session-Expires"

    .line 1477
    invoke-virtual {p1, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v6

    .line 1478
    .local v6, "sessionExpiresHeader":Ljavax2/sip/header/Header;
    if-nez v6, :cond_0

    .line 1482
    :goto_0
    if-nez p2, :cond_1

    .line 1493
    :goto_1
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;-><init>(Ljavax2/sip/message/Response;)V

    .line 1494
    .local v4, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackTransaction()Ljavax2/sip/Transaction;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->setStackTransaction(Ljavax2/sip/Transaction;)V

    .line 1495
    return-object v4

    .line 1479
    .end local v4    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    invoke-interface {v5, v6}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1495
    .end local v3    # "requireHeader":Ljavax2/sip/header/Header;
    .end local v5    # "response":Ljavax2/sip/message/Response;
    .end local v6    # "sessionExpiresHeader":Ljavax2/sip/header/Header;
    :catch_0
    move-exception v2

    .line 1497
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1500
    :goto_2
    new-instance v7, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v8, "Can\'t create SIP response"

    invoke-direct {v7, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1484
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "requireHeader":Ljavax2/sip/header/Header;
    .restart local v5    # "response":Ljavax2/sip/message/Response;
    .restart local v6    # "sessionExpiresHeader":Ljavax2/sip/header/Header;
    :cond_1
    :try_start_1
    sget-object v7, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v8, "application"

    const-string/jumbo v9, "sdp"

    invoke-interface {v7, v8, v9}, Ljavax2/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ContentTypeHeader;

    move-result-object v1

    .line 1486
    .local v1, "contentTypeHeader":Ljavax2/sip/header/ContentTypeHeader;
    invoke-interface {v5, p2, v1}, Ljavax2/sip/message/Response;->setContent(Ljava/lang/Object;Ljavax2/sip/header/ContentTypeHeader;)V

    .line 1489
    sget-object v7, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    invoke-interface {v7, v8}, Ljavax2/sip/header/HeaderFactory;->createContentLengthHeader(I)Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v0

    .line 1491
    .local v0, "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    invoke-interface {v5, v0}, Ljavax2/sip/message/Response;->setContentLength(Ljavax2/sip/header/ContentLengthHeader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1498
    .end local v0    # "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    .end local v1    # "contentTypeHeader":Ljavax2/sip/header/ContentTypeHeader;
    .end local v3    # "requireHeader":Ljavax2/sip/header/Header;
    .end local v5    # "response":Ljavax2/sip/message/Response;
    .end local v6    # "sessionExpiresHeader":Ljavax2/sip/header/Header;
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v7, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Can\'t create SIP message"

    invoke-virtual {v7, v8, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static create200OkReInviteResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .locals 12
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "featureTags"    # [Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1517
    :try_start_0
    sget-object v8, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    const/16 v9, 0xc8

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljavax2/sip/message/MessageFactory;->createResponse(ILjavax2/sip/message/Request;)Ljavax2/sip/message/Response;

    move-result-object v5

    .local v5, "response":Ljavax2/sip/message/Response;
    const-string/jumbo v8, "To"

    .line 1520
    invoke-interface {v5, v8}, Ljavax2/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v7

    check-cast v7, Ljavax2/sip/header/ToHeader;

    .line 1521
    .local v7, "to":Ljavax2/sip/header/ToHeader;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljavax2/sip/header/ToHeader;->setTag(Ljava/lang/String;)V

    .line 1524
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v8

    invoke-interface {v5, v8}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1527
    invoke-static {v5, p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setFeatureTags(Ljavax2/sip/message/Message;[Ljava/lang/String;)V

    .line 1530
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildAllowHeader(Ljavax2/sip/message/Message;)V

    .line 1533
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildServerHeader()Ljavax2/sip/header/Header;

    move-result-object v8

    invoke-interface {v5, v8}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1536
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v8

    const/16 v9, 0x5a

    if-ge v8, v9, :cond_0

    .line 1548
    :goto_0
    sget-object v8, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v9, "application"

    const-string/jumbo v10, "sdp"

    invoke-interface {v8, v9, v10}, Ljavax2/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ContentTypeHeader;

    move-result-object v1

    .line 1549
    .local v1, "contentTypeHeader":Ljavax2/sip/header/ContentTypeHeader;
    invoke-interface {v5, p3, v1}, Ljavax2/sip/message/Response;->setContent(Ljava/lang/Object;Ljavax2/sip/header/ContentTypeHeader;)V

    .line 1552
    sget-object v8, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    invoke-interface {v8, v9}, Ljavax2/sip/header/HeaderFactory;->createContentLengthHeader(I)Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v0

    .line 1553
    .local v0, "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    invoke-interface {v5, v0}, Ljavax2/sip/message/Response;->setContentLength(Ljavax2/sip/header/ContentLengthHeader;)V

    .line 1555
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;-><init>(Ljavax2/sip/message/Response;)V

    .line 1556
    .local v4, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackTransaction()Ljavax2/sip/Transaction;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->setStackTransaction(Ljavax2/sip/Transaction;)V

    .line 1557
    return-object v4

    .line 1538
    .end local v0    # "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    .end local v1    # "contentTypeHeader":Ljavax2/sip/header/ContentTypeHeader;
    .end local v4    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    sget-object v8, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v9, "Require"

    const-string/jumbo v10, "timer"

    invoke-interface {v8, v9, v10}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v3

    .line 1539
    .local v3, "requireHeader":Ljavax2/sip/header/Header;
    invoke-interface {v5, v3}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1542
    sget-object v8, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v9, "Session-Expires"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";refresher="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getSessionTimerRefresher()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v6

    .line 1544
    .local v6, "sessionExpiresHeader":Ljavax2/sip/header/Header;
    invoke-interface {v5, v6}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1557
    .end local v3    # "requireHeader":Ljavax2/sip/header/Header;
    .end local v5    # "response":Ljavax2/sip/message/Response;
    .end local v6    # "sessionExpiresHeader":Ljavax2/sip/header/Header;
    .end local v7    # "to":Ljavax2/sip/header/ToHeader;
    :catch_0
    move-exception v2

    .line 1559
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1562
    :goto_1
    new-instance v8, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v9, "Can\'t create SIP response"

    invoke-direct {v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1560
    :cond_1
    sget-object v8, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Can\'t create SIP message"

    invoke-virtual {v8, v9, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static create200OkUpdateResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .locals 8
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1613
    :try_start_0
    sget-object v5, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    const/16 v6, 0xc8

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax2/sip/message/MessageFactory;->createResponse(ILjavax2/sip/message/Request;)Ljavax2/sip/message/Response;

    move-result-object v3

    .line 1617
    .local v3, "response":Ljavax2/sip/message/Response;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v5

    invoke-interface {v3, v5}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1620
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildServerHeader()Ljavax2/sip/header/Header;

    move-result-object v5

    invoke-interface {v3, v5}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1623
    sget-object v5, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v6, "Require"

    const-string/jumbo v7, "timer"

    invoke-interface {v5, v6, v7}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    .line 1625
    .local v1, "requireHeader":Ljavax2/sip/header/Header;
    invoke-interface {v3, v1}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V

    const-string/jumbo v5, "Session-Expires"

    .line 1628
    invoke-virtual {p1, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v4

    .line 1629
    .local v4, "sessionExpiresHeader":Ljavax2/sip/header/Header;
    if-nez v4, :cond_0

    .line 1633
    :goto_0
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;-><init>(Ljavax2/sip/message/Response;)V

    .line 1634
    .local v2, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackTransaction()Ljavax2/sip/Transaction;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->setStackTransaction(Ljavax2/sip/Transaction;)V

    .line 1635
    return-object v2

    .line 1630
    .end local v2    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    invoke-interface {v3, v4}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1635
    .end local v1    # "requireHeader":Ljavax2/sip/header/Header;
    .end local v3    # "response":Ljavax2/sip/message/Response;
    .end local v4    # "sessionExpiresHeader":Ljavax2/sip/header/Header;
    :catch_0
    move-exception v0

    .line 1637
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1640
    :goto_1
    new-instance v5, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v6, "Can\'t create SIP response"

    invoke-direct {v5, v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1638
    :cond_1
    sget-object v5, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Can\'t create SIP message"

    invoke-virtual {v5, v6, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static createAck(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 22
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 752
    .local v11, "ack":Ljavax2/sip/message/Request;
    :try_start_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createURI(Ljava/lang/String;)Ljavax2/sip/address/URI;

    move-result-object v3

    .line 755
    .local v3, "requestURI":Ljavax2/sip/address/URI;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/header/HeaderFactory;->createCallIdHeader(Ljava/lang/String;)Ljavax2/sip/header/CallIdHeader;

    move-result-object v5

    .line 759
    .local v5, "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCseq()J

    move-result-wide v20

    const-string/jumbo v4, "ACK"

    move-wide/from16 v0, v20

    invoke-interface {v2, v0, v1, v4}, Ljavax2/sip/header/HeaderFactory;->createCSeqHeader(JLjava/lang/String;)Ljavax2/sip/header/CSeqHeader;

    move-result-object v6

    .line 763
    .local v6, "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalParty()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;

    move-result-object v13

    .line 764
    .local v13, "fromAddress":Ljavax2/sip/address/Address;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v13, v4}, Ljavax2/sip/header/HeaderFactory;->createFromHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/FromHeader;

    move-result-object v7

    .line 768
    .local v7, "fromHeader":Ljavax2/sip/header/FromHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;

    move-result-object v17

    .line 769
    .local v17, "toAddress":Ljavax2/sip/address/Address;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteTag()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v2, v0, v4}, Ljavax2/sip/header/HeaderFactory;->createToHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/ToHeader;

    move-result-object v8

    .line 773
    .local v8, "toHeader":Ljavax2/sip/header/ToHeader;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getViaHeaders()Ljava/util/ArrayList;

    move-result-object v9

    .local v9, "vias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax2/sip/header/ViaHeader;>;"
    const/4 v2, 0x0

    .line 774
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax2/sip/header/ViaHeader;

    invoke-static {}, Lgov2/nist/javax2/sip/Utils;->getInstance()Lgov2/nist/javax2/sip/Utils;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/header/ViaHeader;->setBranch(Ljava/lang/String;)V

    .line 777
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    const-string/jumbo v4, "ACK"

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildMaxForwardsHeader()Ljavax2/sip/header/MaxForwardsHeader;

    move-result-object v10

    invoke-interface/range {v2 .. v10}, Ljavax2/sip/message/MessageFactory;->createRequest(Ljavax2/sip/address/URI;Ljava/lang/String;Ljavax2/sip/header/CallIdHeader;Ljavax2/sip/header/CSeqHeader;Ljavax2/sip/header/FromHeader;Ljavax2/sip/header/ToHeader;Ljava/util/List;Ljavax2/sip/header/MaxForwardsHeader;)Ljavax2/sip/message/Request;

    move-result-object v11

    .line 781
    .local v11, "ack":Ljavax2/sip/message/Request;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRoute()Ljava/util/Vector;

    move-result-object v15

    .local v15, "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 782
    .local v14, "i":I
    :goto_0
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v14, v2, :cond_0

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v2

    invoke-interface {v11, v2}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 792
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildUserAgentHeader()Ljavax2/sip/header/Header;

    move-result-object v2

    invoke-interface {v11, v2}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 795
    invoke-static {v11}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildAllowHeader(Ljavax2/sip/message/Message;)V

    const-string/jumbo v2, "Via"

    .line 798
    invoke-interface {v11, v2}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v18

    check-cast v18, Ljavax2/sip/header/ViaHeader;

    .line 799
    .local v18, "viaHeader":Ljavax2/sip/header/ViaHeader;
    invoke-interface/range {v18 .. v18}, Ljavax2/sip/header/ViaHeader;->setRPort()V

    .line 801
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    invoke-direct {v2, v11}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;-><init>(Ljavax2/sip/message/Request;)V

    return-object v2

    .line 783
    .end local v18    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    :cond_0
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v10, "Route"

    invoke-virtual {v15, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v10, v2}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v16

    .line 785
    .local v16, "routeHeader":Ljavax2/sip/header/Header;
    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 801
    .end local v3    # "requestURI":Ljavax2/sip/address/URI;
    .end local v5    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .end local v6    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .end local v7    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .end local v8    # "toHeader":Ljavax2/sip/header/ToHeader;
    .end local v9    # "vias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax2/sip/header/ViaHeader;>;"
    .end local v11    # "ack":Ljavax2/sip/message/Request;
    .end local v13    # "fromAddress":Ljavax2/sip/address/Address;
    .end local v14    # "i":I
    .end local v15    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v16    # "routeHeader":Ljavax2/sip/header/Header;
    .end local v17    # "toAddress":Ljavax2/sip/address/Address;
    :catch_0
    move-exception v12

    .line 803
    .local v12, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 806
    :goto_1
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v4, "Can\'t create SIP ACK message"

    invoke-direct {v2, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 804
    :cond_1
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t create SIP message"

    invoke-virtual {v2, v4, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static createBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 8
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 908
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getStackDialog()Ljavax2/sip/Dialog;

    move-result-object v5

    const-string/jumbo v6, "BYE"

    invoke-interface {v5, v6}, Ljavax2/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax2/sip/message/Request;

    move-result-object v0

    .local v0, "bye":Ljavax2/sip/message/Request;
    const-string/jumbo v5, "Accept-Contact"

    .line 913
    invoke-interface {v0, v5}, Ljavax2/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionTerminationReasonCode()I

    move-result v2

    .local v2, "reasonCode":I
    const/4 v5, -0x1

    .line 917
    if-ne v2, v5, :cond_0

    :goto_0
    const-string/jumbo v5, "Via"

    .line 924
    invoke-interface {v0, v5}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v4

    check-cast v4, Ljavax2/sip/header/ViaHeader;

    .line 925
    .local v4, "viaHeader":Ljavax2/sip/header/ViaHeader;
    invoke-interface {v4}, Ljavax2/sip/header/ViaHeader;->setRPort()V

    .line 927
    new-instance v5, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    invoke-direct {v5, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;-><init>(Ljavax2/sip/message/Request;)V

    return-object v5

    .line 918
    .end local v4    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    :cond_0
    sget-object v5, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v6, "SIP"

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionTerminationReasonPhrase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v2, v7}, Ljavax2/sip/header/HeaderFactory;->createReasonHeader(Ljava/lang/String;ILjava/lang/String;)Ljavax2/sip/header/ReasonHeader;

    move-result-object v3

    .line 920
    .local v3, "reasonHeader":Ljavax2/sip/header/ReasonHeader;
    invoke-interface {v0, v3}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 927
    .end local v0    # "bye":Ljavax2/sip/message/Request;
    .end local v2    # "reasonCode":I
    .end local v3    # "reasonHeader":Ljavax2/sip/header/ReasonHeader;
    :catch_0
    move-exception v1

    .line 929
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 932
    :goto_1
    new-instance v5, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v6, "Can\'t create SIP BYE message"

    invoke-direct {v5, v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 930
    :cond_1
    sget-object v5, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Can\'t create SIP message"

    invoke-virtual {v5, v6, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static createCancel(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 9
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 946
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackTransaction()Ljavax2/sip/Transaction;

    move-result-object v4

    check-cast v4, Ljavax2/sip/ClientTransaction;

    .line 948
    .local v4, "transaction":Ljavax2/sip/ClientTransaction;
    invoke-interface {v4}, Ljavax2/sip/ClientTransaction;->createCancel()Ljavax2/sip/message/Request;

    move-result-object v0

    .line 951
    .local v0, "cancel":Ljavax2/sip/message/Request;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionTerminationReasonCode()I

    move-result v2

    .local v2, "reasonCode":I
    const/4 v6, -0x1

    .line 952
    if-ne v2, v6, :cond_0

    :goto_0
    const-string/jumbo v6, "Via"

    .line 958
    invoke-interface {v0, v6}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v5

    check-cast v5, Ljavax2/sip/header/ViaHeader;

    .line 959
    .local v5, "viaHeader":Ljavax2/sip/header/ViaHeader;
    invoke-interface {v5}, Ljavax2/sip/header/ViaHeader;->setRPort()V

    .line 960
    new-instance v6, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    invoke-direct {v6, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;-><init>(Ljavax2/sip/message/Request;)V

    return-object v6

    .line 953
    .end local v5    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    :cond_0
    sget-object v6, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v7, "SIP"

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionTerminationReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v2, v8}, Ljavax2/sip/header/HeaderFactory;->createReasonHeader(Ljava/lang/String;ILjava/lang/String;)Ljavax2/sip/header/ReasonHeader;

    move-result-object v3

    .line 955
    .local v3, "reasonHeader":Ljavax2/sip/header/ReasonHeader;
    invoke-interface {v0, v3}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 960
    .end local v0    # "cancel":Ljavax2/sip/message/Request;
    .end local v2    # "reasonCode":I
    .end local v3    # "reasonHeader":Ljavax2/sip/header/ReasonHeader;
    .end local v4    # "transaction":Ljavax2/sip/ClientTransaction;
    :catch_0
    move-exception v1

    .line 962
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_1

    .line 965
    :goto_1
    new-instance v6, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v7, "Can\'t create SIP BYE message"

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 963
    :cond_1
    sget-object v6, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Can\'t create SIP message"

    invoke-virtual {v6, v7, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 5
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "featureTags"    # [Ljava/lang/String;
    .param p2, "sdp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 470
    :try_start_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v3, "application"

    const-string/jumbo v4, "sdp"

    invoke-interface {v2, v3, v4}, Ljavax2/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ContentTypeHeader;

    move-result-object v0

    .line 474
    .local v0, "contentType":Ljavax2/sip/header/ContentTypeHeader;
    invoke-static {p0, p1, p2, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;Ljavax2/sip/header/ContentTypeHeader;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .end local v0    # "contentType":Ljavax2/sip/header/ContentTypeHeader;
    :catch_0
    move-exception v1

    .line 476
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 479
    :goto_0
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v3, "Can\'t create SIP INVITE message"

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 477
    :cond_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t create SIP message"

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;Ljavax2/sip/header/ContentTypeHeader;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 1
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "featureTags"    # [Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljavax2/sip/header/ContentTypeHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-static {p0, p1, p1, p2, p3}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljavax2/sip/header/ContentTypeHeader;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    return-object v0
.end method

.method public static createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 5
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "featureTags"    # [Ljava/lang/String;
    .param p2, "featureTagsAccept"    # [Ljava/lang/String;
    .param p3, "sdp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 498
    :try_start_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v3, "application"

    const-string/jumbo v4, "sdp"

    invoke-interface {v2, v3, v4}, Ljavax2/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ContentTypeHeader;

    move-result-object v0

    .line 502
    .local v0, "contentType":Ljavax2/sip/header/ContentTypeHeader;
    invoke-static {p0, p1, p2, p3, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljavax2/sip/header/ContentTypeHeader;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .end local v0    # "contentType":Ljavax2/sip/header/ContentTypeHeader;
    :catch_0
    move-exception v1

    .line 504
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 507
    :goto_0
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v3, "Can\'t create SIP INVITE message"

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    :cond_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t create SIP message"

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljavax2/sip/header/ContentTypeHeader;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 30
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "featureTags"    # [Ljava/lang/String;
    .param p2, "featureTagsAccept"    # [Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljavax2/sip/header/ContentTypeHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 575
    .local v5, "requestURI":Ljavax2/sip/address/URI;
    :try_start_0
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getTarget()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljavax2/sip/address/AddressFactory;->createURI(Ljava/lang/String;)Ljavax2/sip/address/URI;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 581
    .local v5, "requestURI":Ljavax2/sip/address/URI;
    :goto_0
    :try_start_1
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljavax2/sip/header/HeaderFactory;->createCallIdHeader(Ljava/lang/String;)Ljavax2/sip/header/CallIdHeader;

    move-result-object v7

    .line 585
    .local v7, "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCseq()J

    move-result-wide v28

    const-string/jumbo v6, "INVITE"

    move-wide/from16 v0, v28

    invoke-interface {v4, v0, v1, v6}, Ljavax2/sip/header/HeaderFactory;->createCSeqHeader(JLjava/lang/String;)Ljavax2/sip/header/CSeqHeader;

    move-result-object v8

    .line 589
    .local v8, "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalParty()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;

    move-result-object v16

    .line 590
    .local v16, "fromAddress":Ljavax2/sip/address/Address;
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-interface {v4, v0, v6}, Ljavax2/sip/header/HeaderFactory;->createFromHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/FromHeader;

    move-result-object v9

    .line 594
    .local v9, "fromHeader":Ljavax2/sip/header/FromHeader;
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;

    move-result-object v25

    .line 595
    .local v25, "toAddress":Ljavax2/sip/address/Address;
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-interface {v4, v0, v6}, Ljavax2/sip/header/HeaderFactory;->createToHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/ToHeader;

    move-result-object v10

    .line 599
    .local v10, "toHeader":Ljavax2/sip/header/ToHeader;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getViaHeaders()Ljava/util/ArrayList;

    move-result-object v11

    .line 600
    .local v11, "viaHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax2/sip/header/ViaHeader;>;"
    if-nez v11, :cond_1

    .line 606
    :cond_0
    :goto_1
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    const-string/jumbo v6, "INVITE"

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildMaxForwardsHeader()Ljavax2/sip/header/MaxForwardsHeader;

    move-result-object v12

    invoke-interface/range {v4 .. v12}, Ljavax2/sip/message/MessageFactory;->createRequest(Ljavax2/sip/address/URI;Ljava/lang/String;Ljavax2/sip/header/CallIdHeader;Ljavax2/sip/header/CSeqHeader;Ljavax2/sip/header/FromHeader;Ljavax2/sip/header/ToHeader;Ljava/util/List;Ljavax2/sip/header/MaxForwardsHeader;)Ljavax2/sip/message/Request;

    move-result-object v18

    .line 611
    .local v18, "invite":Ljavax2/sip/message/Request;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 614
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setFeatureTags(Ljavax2/sip/message/Message;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 617
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildAllowHeader(Ljavax2/sip/message/Message;)V

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRoute()Ljava/util/Vector;

    move-result-object v21

    .local v21, "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 621
    .local v17, "i":I
    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v17

    if-lt v0, v4, :cond_2

    .line 628
    sget-object v4, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPreferredUri()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 636
    :goto_3
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildUserAgentHeader()Ljavax2/sip/header/Header;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v4

    const/16 v6, 0x5a

    if-ge v4, v6, :cond_4

    .line 653
    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Ljavax2/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax2/sip/header/ContentTypeHeader;)V

    .line 656
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-interface {v4, v6}, Ljavax2/sip/header/HeaderFactory;->createContentLengthHeader(I)Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v13

    .line 658
    .local v13, "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljavax2/sip/message/Request;->setContentLength(Ljavax2/sip/header/ContentLengthHeader;)V

    const-string/jumbo v4, "Via"

    .line 661
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v26

    check-cast v26, Ljavax2/sip/header/ViaHeader;

    .line 662
    .local v26, "viaHeader":Ljavax2/sip/header/ViaHeader;
    invoke-interface/range {v26 .. v26}, Ljavax2/sip/header/ViaHeader;->setRPort()V

    .line 664
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;-><init>(Ljavax2/sip/message/Request;)V

    return-object v4

    .line 578
    .end local v7    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .end local v8    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .end local v9    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .end local v10    # "toHeader":Ljavax2/sip/header/ToHeader;
    .end local v11    # "viaHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax2/sip/header/ViaHeader;>;"
    .end local v13    # "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    .end local v16    # "fromAddress":Ljavax2/sip/address/Address;
    .end local v17    # "i":I
    .end local v18    # "invite":Ljavax2/sip/message/Request;
    .end local v21    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v25    # "toAddress":Ljavax2/sip/address/Address;
    .end local v26    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    .local v5, "requestURI":Ljavax2/sip/address/URI;
    :catch_0
    move-exception v14

    .line 577
    .local v14, "e":Landroid/net/ParseException;
    new-instance v20, Lgov2/nist/javax2/sip/address/GenericURI;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getTarget()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lgov2/nist/javax2/sip/address/GenericURI;-><init>(Ljava/lang/String;)V

    .local v20, "requestURI":Ljavax2/sip/address/URI;
    move-object/from16 v5, v20

    .end local v20    # "requestURI":Ljavax2/sip/address/URI;
    .local v5, "requestURI":Ljavax2/sip/address/URI;
    goto/16 :goto_0

    .line 600
    .end local v14    # "e":Landroid/net/ParseException;
    .restart local v7    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .restart local v8    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .restart local v9    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .restart local v10    # "toHeader":Ljavax2/sip/header/ToHeader;
    .restart local v11    # "viaHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax2/sip/header/ViaHeader;>;"
    .restart local v16    # "fromAddress":Ljavax2/sip/address/Address;
    .restart local v25    # "toAddress":Ljavax2/sip/address/Address;
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 601
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljavax2/sip/header/ViaHeader;

    .line 602
    .restart local v26    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    new-instance v4, Lgov2/nist/core/NameValue;

    const-string/jumbo v6, "keep"

    const/4 v12, 0x0

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-direct {v4, v6, v12, v0}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljavax2/sip/header/ViaHeader;->setParameter(Lgov2/nist/core/NameValue;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 664
    .end local v5    # "requestURI":Ljavax2/sip/address/URI;
    .end local v7    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .end local v8    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .end local v9    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .end local v10    # "toHeader":Ljavax2/sip/header/ToHeader;
    .end local v11    # "viaHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax2/sip/header/ViaHeader;>;"
    .end local v16    # "fromAddress":Ljavax2/sip/address/Address;
    .end local v25    # "toAddress":Ljavax2/sip/address/Address;
    .end local v26    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    :catch_1
    move-exception v15

    .line 666
    .local v15, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_5

    .line 669
    :goto_5
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v6, "Can\'t create SIP INVITE message"

    invoke-direct {v4, v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 622
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v5    # "requestURI":Ljavax2/sip/address/URI;
    .restart local v7    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .restart local v8    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .restart local v9    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .restart local v10    # "toHeader":Ljavax2/sip/header/ToHeader;
    .restart local v11    # "viaHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax2/sip/header/ViaHeader;>;"
    .restart local v16    # "fromAddress":Ljavax2/sip/address/Address;
    .restart local v17    # "i":I
    .restart local v18    # "invite":Ljavax2/sip/message/Request;
    .restart local v21    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v25    # "toAddress":Ljavax2/sip/address/Address;
    :cond_2
    :try_start_2
    sget-object v6, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v12, "Route"

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v6, v12, v4}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v22

    .line 624
    .local v22, "routeHeader":Ljavax2/sip/header/Header;
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 621
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 629
    .end local v22    # "routeHeader":Ljavax2/sip/header/Header;
    :cond_3
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v6, "P-Preferred-Identity"

    sget-object v12, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPreferredUri()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v6, v12}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v19

    .line 632
    .local v19, "prefHeader":Ljavax2/sip/header/Header;
    invoke-interface/range {v18 .. v19}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    goto/16 :goto_3

    .line 641
    .end local v19    # "prefHeader":Ljavax2/sip/header/Header;
    :cond_4
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v6, "Supported"

    const-string/jumbo v12, "timer"

    invoke-interface {v4, v6, v12}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v24

    .line 643
    .local v24, "supportedHeader":Ljavax2/sip/header/Header;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 646
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v6, "Session-Expires"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, ""

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v27, ";refresher="

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v27, "uac"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v6, v12}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v23

    .line 649
    .local v23, "sessionExpiresHeader":Ljavax2/sip/header/Header;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 667
    .end local v5    # "requestURI":Ljavax2/sip/address/URI;
    .end local v7    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .end local v8    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .end local v9    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .end local v10    # "toHeader":Ljavax2/sip/header/ToHeader;
    .end local v11    # "viaHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax2/sip/header/ViaHeader;>;"
    .end local v16    # "fromAddress":Ljavax2/sip/address/Address;
    .end local v17    # "i":I
    .end local v18    # "invite":Ljavax2/sip/message/Request;
    .end local v21    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v23    # "sessionExpiresHeader":Ljavax2/sip/header/Header;
    .end local v24    # "supportedHeader":Ljavax2/sip/header/Header;
    .end local v25    # "toAddress":Ljavax2/sip/address/Address;
    .restart local v15    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Can\'t create SIP message"

    invoke-virtual {v4, v6, v15}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5
.end method

.method public static createMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 1
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-static {p0, v0, p1, p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    return-object v0
.end method

.method public static createMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 26
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 283
    :try_start_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createURI(Ljava/lang/String;)Ljavax2/sip/address/URI;

    move-result-object v3

    .line 286
    .local v3, "requestURI":Ljavax2/sip/address/URI;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/header/HeaderFactory;->createCallIdHeader(Ljava/lang/String;)Ljavax2/sip/header/CallIdHeader;

    move-result-object v5

    .line 290
    .local v5, "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCseq()J

    move-result-wide v24

    const-string/jumbo v4, "MESSAGE"

    move-wide/from16 v0, v24

    invoke-interface {v2, v0, v1, v4}, Ljavax2/sip/header/HeaderFactory;->createCSeqHeader(JLjava/lang/String;)Ljavax2/sip/header/CSeqHeader;

    move-result-object v6

    .line 294
    .local v6, "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalParty()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;

    move-result-object v14

    .line 295
    .local v14, "fromAddress":Ljavax2/sip/address/Address;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v14, v4}, Ljavax2/sip/header/HeaderFactory;->createFromHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/FromHeader;

    move-result-object v7

    .line 299
    .local v7, "fromHeader":Ljavax2/sip/header/FromHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;

    move-result-object v20

    .line 300
    .local v20, "toAddress":Ljavax2/sip/address/Address;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteTag()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v2, v0, v4}, Ljavax2/sip/header/HeaderFactory;->createToHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/ToHeader;

    move-result-object v8

    .line 304
    .local v8, "toHeader":Ljavax2/sip/header/ToHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    const-string/jumbo v4, "MESSAGE"

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getViaHeaders()Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildMaxForwardsHeader()Ljavax2/sip/header/MaxForwardsHeader;

    move-result-object v10

    invoke-interface/range {v2 .. v10}, Ljavax2/sip/message/MessageFactory;->createRequest(Ljavax2/sip/address/URI;Ljava/lang/String;Ljavax2/sip/header/CallIdHeader;Ljavax2/sip/header/CSeqHeader;Ljavax2/sip/header/FromHeader;Ljavax2/sip/header/ToHeader;Ljava/util/List;Ljavax2/sip/header/MaxForwardsHeader;)Ljavax2/sip/message/Request;

    move-result-object v16

    .line 309
    .local v16, "message":Ljavax2/sip/message/Request;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRoute()Ljava/util/Vector;

    move-result-object v18

    .local v18, "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 310
    .local v15, "i":I
    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v15, v2, :cond_0

    .line 317
    sget-object v2, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPreferredUri()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 325
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 328
    if-nez p1, :cond_2

    .line 335
    :goto_2
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildUserAgentHeader()Ljavax2/sip/header/Header;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    const-string/jumbo v2, "/"

    .line 338
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 339
    .local v21, "type":[Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const/4 v4, 0x0

    aget-object v4, v21, v4

    const/4 v9, 0x1

    aget-object v9, v21, v9

    invoke-interface {v2, v4, v9}, Ljavax2/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ContentTypeHeader;

    move-result-object v12

    .line 341
    .local v12, "contentTypeHeader":Ljavax2/sip/header/ContentTypeHeader;
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-interface {v0, v1, v12}, Ljavax2/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax2/sip/header/ContentTypeHeader;)V

    .line 344
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-interface {v2, v4}, Ljavax2/sip/header/HeaderFactory;->createContentLengthHeader(I)Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v11

    .line 346
    .local v11, "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljavax2/sip/message/Request;->setContentLength(Ljavax2/sip/header/ContentLengthHeader;)V

    const-string/jumbo v2, "Via"

    .line 349
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v22

    check-cast v22, Ljavax2/sip/header/ViaHeader;

    .line 350
    .local v22, "viaHeader":Ljavax2/sip/header/ViaHeader;
    invoke-interface/range {v22 .. v22}, Ljavax2/sip/header/ViaHeader;->setRPort()V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteSipInstance()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setRemoteInstanceID(Ljavax2/sip/message/Message;Ljava/lang/String;)V

    .line 355
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;-><init>(Ljavax2/sip/message/Request;)V

    return-object v2

    .line 311
    .end local v11    # "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    .end local v12    # "contentTypeHeader":Ljavax2/sip/header/ContentTypeHeader;
    .end local v21    # "type":[Ljava/lang/String;
    .end local v22    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    :cond_0
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v9, "Route"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v9, v2}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v19

    .line 313
    .local v19, "routeHeader":Ljavax2/sip/header/Header;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 310
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 318
    .end local v19    # "routeHeader":Ljavax2/sip/header/Header;
    :cond_1
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v4, "P-Preferred-Identity"

    sget-object v9, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPreferredUri()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v4, v9}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v17

    .line 321
    .local v17, "prefHeader":Ljavax2/sip/header/Header;
    invoke-interface/range {v16 .. v17}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 355
    .end local v3    # "requestURI":Ljavax2/sip/address/URI;
    .end local v5    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .end local v6    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .end local v7    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .end local v8    # "toHeader":Ljavax2/sip/header/ToHeader;
    .end local v14    # "fromAddress":Ljavax2/sip/address/Address;
    .end local v15    # "i":I
    .end local v16    # "message":Ljavax2/sip/message/Request;
    .end local v17    # "prefHeader":Ljavax2/sip/header/Header;
    .end local v18    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v20    # "toAddress":Ljavax2/sip/address/Address;
    :catch_0
    move-exception v13

    .line 357
    .local v13, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_3

    .line 360
    :goto_3
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v4, "Can\'t create SIP MESSAGE message"

    invoke-direct {v2, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v3    # "requestURI":Ljavax2/sip/address/URI;
    .restart local v5    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .restart local v6    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .restart local v7    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .restart local v8    # "toHeader":Ljavax2/sip/header/ToHeader;
    .restart local v14    # "fromAddress":Ljavax2/sip/address/Address;
    .restart local v15    # "i":I
    .restart local v16    # "message":Ljavax2/sip/message/Request;
    .restart local v18    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v20    # "toAddress":Ljavax2/sip/address/Address;
    :cond_2
    const/4 v2, 0x1

    .line 329
    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setFeatureTags(Ljavax2/sip/message/Message;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 358
    .end local v3    # "requestURI":Ljavax2/sip/address/URI;
    .end local v5    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .end local v6    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .end local v7    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .end local v8    # "toHeader":Ljavax2/sip/header/ToHeader;
    .end local v14    # "fromAddress":Ljavax2/sip/address/Address;
    .end local v15    # "i":I
    .end local v16    # "message":Ljavax2/sip/message/Request;
    .end local v18    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v20    # "toAddress":Ljavax2/sip/address/Address;
    .restart local v13    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t create SIP message"

    invoke-virtual {v2, v4, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static createMultipartInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 5
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "featureTags"    # [Ljava/lang/String;
    .param p2, "multipart"    # Ljava/lang/String;
    .param p3, "boundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 525
    :try_start_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v3, "multipart"

    const-string/jumbo v4, "mixed"

    invoke-interface {v2, v3, v4}, Ljavax2/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ContentTypeHeader;

    move-result-object v0

    .local v0, "contentType":Ljavax2/sip/header/ContentTypeHeader;
    const-string/jumbo v2, "boundary"

    .line 527
    invoke-interface {v0, v2, p3}, Ljavax2/sip/header/ContentTypeHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-static {p0, p1, p2, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;Ljavax2/sip/header/ContentTypeHeader;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .end local v0    # "contentType":Ljavax2/sip/header/ContentTypeHeader;
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 535
    :goto_0
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v3, "Can\'t create SIP INVITE message"

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 533
    :cond_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t create SIP message"

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static createOptions(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/util/List;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 24
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 981
    .local p1, "featureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createURI(Ljava/lang/String;)Ljavax2/sip/address/URI;

    move-result-object v3

    .line 984
    .local v3, "requestURI":Ljavax2/sip/address/URI;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/header/HeaderFactory;->createCallIdHeader(Ljava/lang/String;)Ljavax2/sip/header/CallIdHeader;

    move-result-object v5

    .line 988
    .local v5, "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCseq()J

    move-result-wide v22

    const-string/jumbo v4, "OPTIONS"

    move-wide/from16 v0, v22

    invoke-interface {v2, v0, v1, v4}, Ljavax2/sip/header/HeaderFactory;->createCSeqHeader(JLjava/lang/String;)Ljavax2/sip/header/CSeqHeader;

    move-result-object v6

    .line 992
    .local v6, "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalParty()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;

    move-result-object v13

    .line 993
    .local v13, "fromAddress":Ljavax2/sip/address/Address;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v13, v4}, Ljavax2/sip/header/HeaderFactory;->createFromHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/FromHeader;

    move-result-object v7

    .line 997
    .local v7, "fromHeader":Ljavax2/sip/header/FromHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;

    move-result-object v19

    .line 998
    .local v19, "toAddress":Ljavax2/sip/address/Address;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v2, v0, v4}, Ljavax2/sip/header/HeaderFactory;->createToHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/ToHeader;

    move-result-object v8

    .line 1001
    .local v8, "toHeader":Ljavax2/sip/header/ToHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    const-string/jumbo v4, "OPTIONS"

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getViaHeaders()Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildMaxForwardsHeader()Ljavax2/sip/header/MaxForwardsHeader;

    move-result-object v10

    invoke-interface/range {v2 .. v10}, Ljavax2/sip/message/MessageFactory;->createRequest(Ljavax2/sip/address/URI;Ljava/lang/String;Ljavax2/sip/header/CallIdHeader;Ljavax2/sip/header/CSeqHeader;Ljavax2/sip/header/FromHeader;Ljavax2/sip/header/ToHeader;Ljava/util/List;Ljavax2/sip/header/MaxForwardsHeader;)Ljavax2/sip/message/Request;

    move-result-object v15

    .line 1006
    .local v15, "options":Ljavax2/sip/message/Request;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v2

    invoke-interface {v15, v2}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1009
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v4, "Accept"

    const-string/jumbo v9, "application/sdp"

    invoke-interface {v2, v4, v9}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v11

    .line 1011
    .local v11, "acceptHeader":Ljavax2/sip/header/Header;
    invoke-interface {v15, v11}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1014
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setFeatureTags(Ljavax2/sip/message/Message;Ljava/util/List;)V

    .line 1017
    invoke-static {v15}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildAllowHeader(Ljavax2/sip/message/Message;)V

    .line 1020
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRoute()Ljava/util/Vector;

    move-result-object v17

    .local v17, "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 1021
    .local v14, "i":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v14, v2, :cond_0

    .line 1028
    sget-object v2, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPreferredUri()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1036
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildUserAgentHeader()Ljavax2/sip/header/Header;

    move-result-object v2

    invoke-interface {v15, v2}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    const-string/jumbo v2, "Via"

    .line 1039
    invoke-interface {v15, v2}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v20

    check-cast v20, Ljavax2/sip/header/ViaHeader;

    .line 1040
    .local v20, "viaHeader":Ljavax2/sip/header/ViaHeader;
    invoke-interface/range {v20 .. v20}, Ljavax2/sip/header/ViaHeader;->setRPort()V

    .line 1042
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    invoke-direct {v2, v15}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;-><init>(Ljavax2/sip/message/Request;)V

    return-object v2

    .line 1022
    .end local v20    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    :cond_0
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v9, "Route"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v9, v2}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v18

    .line 1024
    .local v18, "routeHeader":Ljavax2/sip/header/Header;
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1021
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1029
    .end local v18    # "routeHeader":Ljavax2/sip/header/Header;
    :cond_1
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v4, "P-Preferred-Identity"

    sget-object v9, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPreferredUri()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v4, v9}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v16

    .line 1032
    .local v16, "prefHeader":Ljavax2/sip/header/Header;
    invoke-interface/range {v15 .. v16}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1042
    .end local v3    # "requestURI":Ljavax2/sip/address/URI;
    .end local v5    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .end local v6    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .end local v7    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .end local v8    # "toHeader":Ljavax2/sip/header/ToHeader;
    .end local v11    # "acceptHeader":Ljavax2/sip/header/Header;
    .end local v13    # "fromAddress":Ljavax2/sip/address/Address;
    .end local v14    # "i":I
    .end local v15    # "options":Ljavax2/sip/message/Request;
    .end local v16    # "prefHeader":Ljavax2/sip/header/Header;
    .end local v17    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v19    # "toAddress":Ljavax2/sip/address/Address;
    :catch_0
    move-exception v12

    .line 1044
    .local v12, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1047
    :goto_2
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v4, "Can\'t create SIP OPTIONS message"

    invoke-direct {v2, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1045
    :cond_2
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t create SIP message"

    invoke-virtual {v2, v4, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static createPublish(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;ILjava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 26
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "expirePeriod"    # I
    .param p2, "entityTag"    # Ljava/lang/String;
    .param p3, "sdp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 378
    :try_start_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createURI(Ljava/lang/String;)Ljavax2/sip/address/URI;

    move-result-object v3

    .line 381
    .local v3, "requestURI":Ljavax2/sip/address/URI;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/header/HeaderFactory;->createCallIdHeader(Ljava/lang/String;)Ljavax2/sip/header/CallIdHeader;

    move-result-object v5

    .line 385
    .local v5, "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCseq()J

    move-result-wide v24

    const-string/jumbo v4, "PUBLISH"

    move-wide/from16 v0, v24

    invoke-interface {v2, v0, v1, v4}, Ljavax2/sip/header/HeaderFactory;->createCSeqHeader(JLjava/lang/String;)Ljavax2/sip/header/CSeqHeader;

    move-result-object v6

    .line 389
    .local v6, "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalParty()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;

    move-result-object v15

    .line 390
    .local v15, "fromAddress":Ljavax2/sip/address/Address;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v15, v4}, Ljavax2/sip/header/HeaderFactory;->createFromHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/FromHeader;

    move-result-object v7

    .line 394
    .local v7, "fromHeader":Ljavax2/sip/header/FromHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;

    move-result-object v22

    .line 395
    .local v22, "toAddress":Ljavax2/sip/address/Address;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteTag()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v2, v0, v4}, Ljavax2/sip/header/HeaderFactory;->createToHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/ToHeader;

    move-result-object v8

    .line 399
    .local v8, "toHeader":Ljavax2/sip/header/ToHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    const-string/jumbo v4, "PUBLISH"

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getViaHeaders()Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildMaxForwardsHeader()Ljavax2/sip/header/MaxForwardsHeader;

    move-result-object v10

    invoke-interface/range {v2 .. v10}, Ljavax2/sip/message/MessageFactory;->createRequest(Ljavax2/sip/address/URI;Ljava/lang/String;Ljavax2/sip/header/CallIdHeader;Ljavax2/sip/header/CSeqHeader;Ljavax2/sip/header/FromHeader;Ljavax2/sip/header/ToHeader;Ljava/util/List;Ljavax2/sip/header/MaxForwardsHeader;)Ljavax2/sip/message/Request;

    move-result-object v18

    .line 404
    .local v18, "publish":Ljavax2/sip/message/Request;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRoute()Ljava/util/Vector;

    move-result-object v19

    .local v19, "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 405
    .local v16, "i":I
    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v0, v16

    if-lt v0, v2, :cond_0

    .line 412
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljavax2/sip/header/HeaderFactory;->createExpiresHeader(I)Ljavax2/sip/header/ExpiresHeader;

    move-result-object v14

    .line 413
    .local v14, "expHeader":Ljavax2/sip/header/ExpiresHeader;
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 416
    if-nez p2, :cond_1

    .line 423
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildUserAgentHeader()Ljavax2/sip/header/Header;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 426
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v4, "Event"

    const-string/jumbo v9, "presence"

    invoke-interface {v2, v4, v9}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 429
    if-nez p3, :cond_2

    :goto_2
    const/16 v17, 0x0

    .line 437
    .local v17, "length":I
    if-nez p3, :cond_3

    .line 440
    :goto_3
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljavax2/sip/header/HeaderFactory;->createContentLengthHeader(I)Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v11

    .line 442
    .local v11, "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljavax2/sip/message/Request;->setContentLength(Ljavax2/sip/header/ContentLengthHeader;)V

    const-string/jumbo v2, "Via"

    .line 445
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v23

    check-cast v23, Ljavax2/sip/header/ViaHeader;

    .line 446
    .local v23, "viaHeader":Ljavax2/sip/header/ViaHeader;
    invoke-interface/range {v23 .. v23}, Ljavax2/sip/header/ViaHeader;->setRPort()V

    .line 448
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;-><init>(Ljavax2/sip/message/Request;)V

    return-object v2

    .line 406
    .end local v11    # "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    .end local v14    # "expHeader":Ljavax2/sip/header/ExpiresHeader;
    .end local v17    # "length":I
    .end local v23    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    :cond_0
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v9, "Route"

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v9, v2}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v20

    .line 408
    .local v20, "routeHeader":Ljavax2/sip/header/Header;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 405
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 417
    .end local v20    # "routeHeader":Ljavax2/sip/header/Header;
    .restart local v14    # "expHeader":Ljavax2/sip/header/ExpiresHeader;
    :cond_1
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v4, "SIP-If-Match"

    move-object/from16 v0, p2

    invoke-interface {v2, v4, v0}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v21

    .line 419
    .local v21, "sipIfMatchHeader":Ljavax2/sip/header/Header;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 448
    .end local v3    # "requestURI":Ljavax2/sip/address/URI;
    .end local v5    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .end local v6    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .end local v7    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .end local v8    # "toHeader":Ljavax2/sip/header/ToHeader;
    .end local v14    # "expHeader":Ljavax2/sip/header/ExpiresHeader;
    .end local v15    # "fromAddress":Ljavax2/sip/address/Address;
    .end local v16    # "i":I
    .end local v18    # "publish":Ljavax2/sip/message/Request;
    .end local v19    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v21    # "sipIfMatchHeader":Ljavax2/sip/header/Header;
    .end local v22    # "toAddress":Ljavax2/sip/address/Address;
    :catch_0
    move-exception v13

    .line 450
    .local v13, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 453
    :goto_4
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v4, "Can\'t create SIP PUBLISH message"

    invoke-direct {v2, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 430
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v3    # "requestURI":Ljavax2/sip/address/URI;
    .restart local v5    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .restart local v6    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .restart local v7    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .restart local v8    # "toHeader":Ljavax2/sip/header/ToHeader;
    .restart local v14    # "expHeader":Ljavax2/sip/header/ExpiresHeader;
    .restart local v15    # "fromAddress":Ljavax2/sip/address/Address;
    .restart local v16    # "i":I
    .restart local v18    # "publish":Ljavax2/sip/message/Request;
    .restart local v19    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v22    # "toAddress":Ljavax2/sip/address/Address;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v4, "application"

    const-string/jumbo v9, "pidf+xml"

    invoke-interface {v2, v4, v9}, Ljavax2/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ContentTypeHeader;

    move-result-object v12

    .line 432
    .local v12, "contentTypeHeader":Ljavax2/sip/header/ContentTypeHeader;
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-interface {v0, v1, v12}, Ljavax2/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax2/sip/header/ContentTypeHeader;)V

    goto :goto_2

    .line 438
    .end local v12    # "contentTypeHeader":Ljavax2/sip/header/ContentTypeHeader;
    .restart local v17    # "length":I
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v0, v2

    move/from16 v17, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 451
    .end local v3    # "requestURI":Ljavax2/sip/address/URI;
    .end local v5    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .end local v6    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .end local v7    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .end local v8    # "toHeader":Ljavax2/sip/header/ToHeader;
    .end local v14    # "expHeader":Ljavax2/sip/header/ExpiresHeader;
    .end local v15    # "fromAddress":Ljavax2/sip/address/Address;
    .end local v16    # "i":I
    .end local v17    # "length":I
    .end local v18    # "publish":Ljavax2/sip/message/Request;
    .end local v19    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v22    # "toAddress":Ljavax2/sip/address/Address;
    .restart local v13    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t create SIP message"

    invoke-virtual {v2, v4, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public static createReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/lang/String;Ljavax2/sip/header/ContentTypeHeader;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 11
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljavax2/sip/header/ContentTypeHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1298
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getStackDialog()Ljavax2/sip/Dialog;

    move-result-object v7

    const-string/jumbo v8, "INVITE"

    invoke-interface {v7, v8}, Ljavax2/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax2/sip/message/Request;

    move-result-object v3

    .line 1299
    .local v3, "reInvite":Ljavax2/sip/message/Request;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v2

    .local v2, "firstInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    const-string/jumbo v7, "CSeq"

    .line 1302
    invoke-interface {v3, v7}, Ljavax2/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 1303
    sget-object v7, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCseq()J

    move-result-wide v8

    const-string/jumbo v10, "INVITE"

    invoke-interface {v7, v8, v9, v10}, Ljavax2/sip/header/HeaderFactory;->createCSeqHeader(JLjava/lang/String;)Ljavax2/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v3, v7}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    const-string/jumbo v7, "Contact"

    .line 1307
    invoke-interface {v3, v7}, Ljavax2/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    const-string/jumbo v7, "Contact"

    .line 1308
    invoke-virtual {v2, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v7

    invoke-interface {v3, v7}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    const-string/jumbo v7, "Accept-Contact"

    .line 1309
    invoke-interface {v3, v7}, Ljavax2/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    const-string/jumbo v7, "Accept-Contact"

    .line 1310
    invoke-virtual {v2, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v7

    invoke-interface {v3, v7}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1313
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildAllowHeader(Ljavax2/sip/message/Message;)V

    const-string/jumbo v7, "Route"

    .line 1316
    invoke-virtual {v2, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v7

    invoke-interface {v3, v7}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    const-string/jumbo v7, "P-Preferred-Identity"

    .line 1319
    invoke-virtual {v2, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v7

    invoke-interface {v3, v7}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    const-string/jumbo v7, "User-Agent"

    .line 1322
    invoke-virtual {v2, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v7

    invoke-interface {v3, v7}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1325
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v7

    const/16 v8, 0x5a

    if-ge v7, v8, :cond_0

    .line 1338
    :goto_0
    invoke-interface {v3, p1, p2}, Ljavax2/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax2/sip/header/ContentTypeHeader;)V

    .line 1341
    sget-object v7, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    invoke-interface {v7, v8}, Ljavax2/sip/header/HeaderFactory;->createContentLengthHeader(I)Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v0

    .line 1343
    .local v0, "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    invoke-interface {v3, v0}, Ljavax2/sip/message/Request;->setContentLength(Ljavax2/sip/header/ContentLengthHeader;)V

    const-string/jumbo v7, "Via"

    .line 1346
    invoke-interface {v3, v7}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v6

    check-cast v6, Ljavax2/sip/header/ViaHeader;

    .line 1347
    .local v6, "viaHeader":Ljavax2/sip/header/ViaHeader;
    invoke-interface {v6}, Ljavax2/sip/header/ViaHeader;->setRPort()V

    .line 1350
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteSipInstance()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setRemoteInstanceID(Ljavax2/sip/message/Message;Ljava/lang/String;)V

    .line 1352
    new-instance v7, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    invoke-direct {v7, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;-><init>(Ljavax2/sip/message/Request;)V

    return-object v7

    .line 1327
    .end local v0    # "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    .end local v6    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    :cond_0
    sget-object v7, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v8, "Supported"

    const-string/jumbo v9, "timer"

    invoke-interface {v7, v8, v9}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v5

    .line 1329
    .local v5, "supportedHeader":Ljavax2/sip/header/Header;
    invoke-interface {v3, v5}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1332
    sget-object v7, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v8, "Session-Expires"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v4

    .line 1334
    .local v4, "sessionExpiresHeader":Ljavax2/sip/header/Header;
    invoke-interface {v3, v4}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1352
    .end local v2    # "firstInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v3    # "reInvite":Ljavax2/sip/message/Request;
    .end local v4    # "sessionExpiresHeader":Ljavax2/sip/header/Header;
    .end local v5    # "supportedHeader":Ljavax2/sip/header/Header;
    :catch_0
    move-exception v1

    .line 1354
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1357
    :goto_1
    new-instance v7, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v8, "Can\'t create SIP RE-INVITE message"

    invoke-direct {v7, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1355
    :cond_1
    sget-object v7, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Can\'t create SIP message"

    invoke-virtual {v7, v8, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static createReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 16
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "featureTags"    # [Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1374
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getStackDialog()Ljavax2/sip/Dialog;

    move-result-object v12

    const-string/jumbo v13, "INVITE"

    invoke-interface {v12, v13}, Ljavax2/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax2/sip/message/Request;

    move-result-object v8

    .line 1377
    .local v8, "reInvite":Ljavax2/sip/message/Request;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v6

    .line 1380
    .local v6, "firstInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    sget-object v12, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCseq()J

    move-result-wide v14

    const-string/jumbo v13, "INVITE"

    invoke-interface {v12, v14, v15, v13}, Ljavax2/sip/header/HeaderFactory;->createCSeqHeader(JLjava/lang/String;)Ljavax2/sip/header/CSeqHeader;

    move-result-object v4

    .local v4, "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    const-string/jumbo v12, "CSeq"

    .line 1381
    invoke-interface {v8, v12}, Ljavax2/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 1382
    invoke-interface {v8, v4}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    const-string/jumbo v12, "Contact"

    .line 1385
    invoke-interface {v8, v12}, Ljavax2/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    const-string/jumbo v12, "Accept-Contact"

    .line 1386
    invoke-interface {v8, v12}, Ljavax2/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 1387
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v12

    invoke-interface {v8, v12}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1390
    move-object/from16 v0, p1

    invoke-static {v8, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setFeatureTags(Ljavax2/sip/message/Message;[Ljava/lang/String;)V

    .line 1393
    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteSipInstance()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setRemoteInstanceID(Ljavax2/sip/message/Message;Ljava/lang/String;)V

    .line 1396
    invoke-static {v8}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildAllowHeader(Ljavax2/sip/message/Message;)V

    const-string/jumbo v12, "Route"

    .line 1399
    invoke-interface {v8, v12}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v12

    if-eqz v12, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v12, "P-Preferred-Identity"

    .line 1404
    invoke-virtual {v6, v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v12

    if-nez v12, :cond_2

    .line 1407
    sget-object v12, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPreferredUri()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    :goto_1
    const-string/jumbo v12, "User-Agent"

    .line 1414
    invoke-virtual {v6, v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v12

    invoke-interface {v8, v12}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1418
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v12

    const/16 v13, 0x5a

    if-ge v12, v13, :cond_4

    :goto_2
    const-string/jumbo v12, "Via"

    .line 1430
    invoke-interface {v8, v12}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v11

    check-cast v11, Ljavax2/sip/header/ViaHeader;

    .line 1431
    .local v11, "viaHeader":Ljavax2/sip/header/ViaHeader;
    invoke-interface {v11}, Ljavax2/sip/header/ViaHeader;->setRPort()V

    .line 1434
    sget-object v12, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v13, "application"

    const-string/jumbo v14, "sdp"

    invoke-interface {v12, v13, v14}, Ljavax2/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ContentTypeHeader;

    move-result-object v3

    .line 1435
    .local v3, "contentType":Ljavax2/sip/header/ContentTypeHeader;
    move-object/from16 v0, p2

    invoke-interface {v8, v0, v3}, Ljavax2/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax2/sip/header/ContentTypeHeader;)V

    .line 1438
    sget-object v12, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    invoke-interface {v12, v13}, Ljavax2/sip/header/HeaderFactory;->createContentLengthHeader(I)Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v2

    .line 1439
    .local v2, "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    invoke-interface {v8, v2}, Ljavax2/sip/message/Request;->setContentLength(Ljavax2/sip/header/ContentLengthHeader;)V

    .line 1440
    new-instance v12, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    invoke-direct {v12, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;-><init>(Ljavax2/sip/message/Request;)V

    return-object v12

    .end local v2    # "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    .end local v3    # "contentType":Ljavax2/sip/header/ContentTypeHeader;
    .end local v11    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    :cond_1
    const-string/jumbo v12, "Route"

    .line 1399
    invoke-virtual {v6, v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "Route"

    .line 1400
    invoke-virtual {v6, v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v12

    invoke-interface {v8, v12}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1440
    .end local v4    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .end local v6    # "firstInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v8    # "reInvite":Ljavax2/sip/message/Request;
    :catch_0
    move-exception v5

    .line 1442
    .local v5, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_5

    .line 1445
    :goto_3
    new-instance v12, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v13, "Can\'t create SIP RE-INVITE message"

    invoke-direct {v12, v13}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v12

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .restart local v6    # "firstInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .restart local v8    # "reInvite":Ljavax2/sip/message/Request;
    :cond_2
    :try_start_1
    const-string/jumbo v12, "P-Preferred-Identity"

    .line 1405
    invoke-virtual {v6, v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v12

    invoke-interface {v8, v12}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    goto :goto_1

    .line 1408
    :cond_3
    sget-object v12, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v13, "P-Preferred-Identity"

    sget-object v14, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPreferredUri()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v7

    .line 1409
    .local v7, "prefHeader":Ljavax2/sip/header/Header;
    invoke-interface {v8, v7}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    goto/16 :goto_1

    .line 1420
    .end local v7    # "prefHeader":Ljavax2/sip/header/Header;
    :cond_4
    sget-object v12, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v13, "Supported"

    const-string/jumbo v14, "timer"

    invoke-interface {v12, v13, v14}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v10

    .line 1421
    .local v10, "supportedHeader":Ljavax2/sip/header/Header;
    invoke-interface {v8, v10}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1424
    sget-object v12, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v13, "Session-Expires"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v9

    .line 1426
    .local v9, "sessionExpiresHeader":Ljavax2/sip/header/Header;
    invoke-interface {v8, v9}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1443
    .end local v4    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .end local v6    # "firstInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v8    # "reInvite":Ljavax2/sip/message/Request;
    .end local v9    # "sessionExpiresHeader":Ljavax2/sip/header/Header;
    .end local v10    # "supportedHeader":Ljavax2/sip/header/Header;
    .restart local v5    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v12, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v13, "Can\'t create SIP message"

    invoke-virtual {v12, v13, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static createRefer(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 12
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "toContact"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "contributionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1121
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getStackDialog()Ljavax2/sip/Dialog;

    move-result-object v9

    const-string/jumbo v10, "REFER"

    invoke-interface {v9, v10}, Ljavax2/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax2/sip/message/Request;

    move-result-object v3

    .local v3, "refer":Ljavax2/sip/message/Request;
    const/4 v9, 0x1

    .line 1124
    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "+g.oma.sip-im"

    aput-object v10, v7, v9

    .line 1127
    .local v7, "tags":[Ljava/lang/String;
    invoke-static {v3, v7}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setFeatureTags(Ljavax2/sip/message/Message;[Ljava/lang/String;)V

    .line 1130
    sget-object v9, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v10, "Refer-To"

    invoke-interface {v9, v10, p1}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v5

    .line 1131
    .local v5, "referTo":Ljavax2/sip/header/Header;
    invoke-interface {v3, v5}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    const-string/jumbo v9, "Refer-Sub"

    .line 1133
    invoke-interface {v3, v9}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1141
    :goto_0
    sget-object v9, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPreferredUri()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    .line 1148
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1157
    :cond_0
    :goto_2
    sget-object v9, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v10, "Contribution-ID"

    invoke-interface {v9, v10, p3}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    .line 1160
    .local v0, "cid":Ljavax2/sip/header/Header;
    invoke-interface {v3, v0}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1163
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildUserAgentHeader()Ljavax2/sip/header/Header;

    move-result-object v9

    invoke-interface {v3, v9}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    const-string/jumbo v9, "Via"

    .line 1166
    invoke-interface {v3, v9}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v8

    check-cast v8, Ljavax2/sip/header/ViaHeader;

    .line 1167
    .local v8, "viaHeader":Ljavax2/sip/header/ViaHeader;
    invoke-interface {v8}, Ljavax2/sip/header/ViaHeader;->setRPort()V

    .line 1170
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteSipInstance()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setRemoteInstanceID(Ljavax2/sip/message/Message;Ljava/lang/String;)V

    .line 1172
    new-instance v9, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    invoke-direct {v9, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;-><init>(Ljavax2/sip/message/Request;)V

    return-object v9

    .line 1135
    .end local v0    # "cid":Ljavax2/sip/header/Header;
    .end local v8    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    :cond_1
    sget-object v9, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v10, "Refer-Sub"

    const-string/jumbo v11, "false"

    invoke-interface {v9, v10, v11}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v4

    .line 1137
    .local v4, "referSub":Ljavax2/sip/header/Header;
    invoke-interface {v3, v4}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1172
    .end local v3    # "refer":Ljavax2/sip/message/Request;
    .end local v4    # "referSub":Ljavax2/sip/header/Header;
    .end local v5    # "referTo":Ljavax2/sip/header/Header;
    .end local v7    # "tags":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1174
    .local v1, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1177
    :goto_3
    new-instance v9, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v10, "Can\'t create SIP REFER message"

    invoke-direct {v9, v10}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1142
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "refer":Ljavax2/sip/message/Request;
    .restart local v5    # "referTo":Ljavax2/sip/header/Header;
    .restart local v7    # "tags":[Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v9, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v10, "P-Preferred-Identity"

    sget-object v11, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPreferredUri()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v2

    .line 1145
    .local v2, "prefHeader":Ljavax2/sip/header/Header;
    invoke-interface {v3, v2}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    goto :goto_1

    .line 1150
    .end local v2    # "prefHeader":Ljavax2/sip/header/Header;
    :cond_3
    if-eqz p2, :cond_0

    .line 1151
    sget-object v9, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v10, "Subject"

    invoke-interface {v9, v10, p2}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v6

    .line 1152
    .local v6, "sub":Ljavax2/sip/header/Header;
    invoke-interface {v3, v6}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1175
    .end local v3    # "refer":Ljavax2/sip/message/Request;
    .end local v5    # "referTo":Ljavax2/sip/header/Header;
    .end local v6    # "sub":Ljavax2/sip/header/Header;
    .end local v7    # "tags":[Ljava/lang/String;
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v9, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "Can\'t create SIP message"

    invoke-virtual {v9, v10, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static createRefer(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 24
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "contributionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1194
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getStackDialog()Ljavax2/sip/Dialog;

    move-result-object v20

    const-string/jumbo v21, "REFER"

    invoke-interface/range {v20 .. v21}, Ljavax2/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax2/sip/message/Request;

    move-result-object v12

    .line 1197
    .local v12, "refer":Ljavax2/sip/message/Request;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Id_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "listID":Ljava/lang/String;
    const/16 v20, 0x1

    .line 1200
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "+g.oma.sip-im"

    aput-object v21, v18, v20

    .line 1203
    .local v18, "tags":[Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-static {v12, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setFeatureTags(Ljavax2/sip/message/Message;[Ljava/lang/String;)V

    .line 1206
    sget-object v20, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v21, "Require"

    const-string/jumbo v22, "multiple-refer"

    invoke-interface/range {v20 .. v22}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v15

    .line 1208
    .local v15, "require":Ljavax2/sip/header/Header;
    invoke-interface {v12, v15}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1209
    sget-object v20, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v21, "Require"

    const-string/jumbo v22, "norefersub"

    invoke-interface/range {v20 .. v22}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v15

    .line 1210
    invoke-interface {v12, v15}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1213
    sget-object v20, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v21, "Refer-To"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "<cid:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "@"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getHomeDomain()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ">"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v14

    .line 1215
    .local v14, "referTo":Ljavax2/sip/header/Header;
    invoke-interface {v12, v14}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    const-string/jumbo v20, "Refer-Sub"

    .line 1218
    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 1225
    :goto_0
    sget-object v20, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPreferredUri()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_1

    .line 1232
    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1239
    :goto_2
    sget-object v20, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v21, "Contribution-ID"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v4

    .line 1242
    .local v4, "cid":Ljavax2/sip/header/Header;
    invoke-interface {v12, v4}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1245
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildUserAgentHeader()Ljavax2/sip/header/Header;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1248
    sget-object v20, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v21, "Content-ID"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "<"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "@"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getHomeDomain()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ">"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v6

    .line 1251
    .local v6, "contentIdHeader":Ljavax2/sip/header/Header;
    invoke-interface {v12, v6}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 1254
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateChatResourceList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    .line 1257
    .local v16, "resourceList":Ljava/lang/String;
    sget-object v20, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v21, "application"

    const-string/jumbo v22, "resource-lists+xml"

    invoke-interface/range {v20 .. v22}, Ljavax2/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ContentTypeHeader;

    move-result-object v8

    .line 1259
    .local v8, "contentTypeHeader":Ljavax2/sip/header/ContentTypeHeader;
    move-object/from16 v0, v16

    invoke-interface {v12, v0, v8}, Ljavax2/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax2/sip/header/ContentTypeHeader;)V

    .line 1262
    sget-object v20, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljavax2/sip/header/HeaderFactory;->createContentLengthHeader(I)Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v7

    .line 1264
    .local v7, "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    invoke-interface {v12, v7}, Ljavax2/sip/message/Request;->setContentLength(Ljavax2/sip/header/ContentLengthHeader;)V

    .line 1267
    sget-object v20, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v21, "Content-Disposition"

    const-string/jumbo v22, "recipient-list"

    invoke-interface/range {v20 .. v22}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v5

    .line 1269
    .local v5, "contentDispoHeader":Ljavax2/sip/header/Header;
    invoke-interface {v12, v5}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    const-string/jumbo v20, "Via"

    .line 1272
    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v19

    check-cast v19, Ljavax2/sip/header/ViaHeader;

    .line 1273
    .local v19, "viaHeader":Ljavax2/sip/header/ViaHeader;
    invoke-interface/range {v19 .. v19}, Ljavax2/sip/header/ViaHeader;->setRPort()V

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteSipInstance()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setRemoteInstanceID(Ljavax2/sip/message/Message;Ljava/lang/String;)V

    .line 1278
    new-instance v20, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;-><init>(Ljavax2/sip/message/Request;)V

    return-object v20

    .line 1219
    .end local v4    # "cid":Ljavax2/sip/header/Header;
    .end local v5    # "contentDispoHeader":Ljavax2/sip/header/Header;
    .end local v6    # "contentIdHeader":Ljavax2/sip/header/Header;
    .end local v7    # "contentLengthHeader":Ljavax2/sip/header/ContentLengthHeader;
    .end local v8    # "contentTypeHeader":Ljavax2/sip/header/ContentTypeHeader;
    .end local v16    # "resourceList":Ljava/lang/String;
    .end local v19    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    :cond_0
    sget-object v20, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v21, "Refer-Sub"

    const-string/jumbo v22, "false"

    invoke-interface/range {v20 .. v22}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v13

    .line 1221
    .local v13, "referSub":Ljavax2/sip/header/Header;
    invoke-interface {v12, v13}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1278
    .end local v10    # "listID":Ljava/lang/String;
    .end local v12    # "refer":Ljavax2/sip/message/Request;
    .end local v13    # "referSub":Ljavax2/sip/header/Header;
    .end local v14    # "referTo":Ljavax2/sip/header/Header;
    .end local v15    # "require":Ljavax2/sip/header/Header;
    .end local v18    # "tags":[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1280
    .local v9, "e":Ljava/lang/Exception;
    sget-object v20, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v20

    if-nez v20, :cond_3

    .line 1283
    :goto_3
    new-instance v20, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v21, "Can\'t create SIP REFER message"

    invoke-direct/range {v20 .. v21}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1226
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "listID":Ljava/lang/String;
    .restart local v12    # "refer":Ljavax2/sip/message/Request;
    .restart local v14    # "referTo":Ljavax2/sip/header/Header;
    .restart local v15    # "require":Ljavax2/sip/header/Header;
    .restart local v18    # "tags":[Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v20, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v21, "P-Preferred-Identity"

    sget-object v22, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPreferredUri()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v11

    .line 1229
    .local v11, "prefHeader":Ljavax2/sip/header/Header;
    invoke-interface {v12, v11}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    goto/16 :goto_1

    .line 1234
    .end local v11    # "prefHeader":Ljavax2/sip/header/Header;
    :cond_2
    sget-object v20, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v21, "Subject"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v17

    .line 1235
    .local v17, "s":Ljavax2/sip/header/Header;
    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1281
    .end local v10    # "listID":Ljava/lang/String;
    .end local v12    # "refer":Ljavax2/sip/message/Request;
    .end local v14    # "referTo":Ljavax2/sip/header/Header;
    .end local v15    # "require":Ljavax2/sip/header/Header;
    .end local v17    # "s":Ljavax2/sip/header/Header;
    .end local v18    # "tags":[Ljava/lang/String;
    .restart local v9    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v20, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v21, "Can\'t create SIP message"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static createRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/util/List;ILjava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 22
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p2, "expirePeriod"    # I
    .param p3, "instanceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "featureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createURI(Ljava/lang/String;)Ljavax2/sip/address/URI;

    move-result-object v3

    .line 100
    .local v3, "requestURI":Ljavax2/sip/address/URI;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/header/HeaderFactory;->createCallIdHeader(Ljava/lang/String;)Ljavax2/sip/header/CallIdHeader;

    move-result-object v5

    .line 104
    .local v5, "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCseq()J

    move-result-wide v20

    const-string/jumbo v4, "REGISTER"

    move-wide/from16 v0, v20

    invoke-interface {v2, v0, v1, v4}, Ljavax2/sip/header/HeaderFactory;->createCSeqHeader(JLjava/lang/String;)Ljavax2/sip/header/CSeqHeader;

    move-result-object v6

    .line 108
    .local v6, "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalParty()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;

    move-result-object v14

    .line 109
    .local v14, "fromAddress":Ljavax2/sip/address/Address;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v14, v4}, Ljavax2/sip/header/HeaderFactory;->createFromHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/FromHeader;

    move-result-object v7

    .line 113
    .local v7, "fromHeader":Ljavax2/sip/header/FromHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;

    move-result-object v18

    .line 114
    .local v18, "toAddress":Ljavax2/sip/address/Address;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v2, v0, v4}, Ljavax2/sip/header/HeaderFactory;->createToHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/ToHeader;

    move-result-object v8

    .line 118
    .local v8, "toHeader":Ljavax2/sip/header/ToHeader;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getViaHeaders()Ljava/util/ArrayList;

    move-result-object v9

    .line 119
    .local v9, "viaHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax2/sip/header/ViaHeader;>;"
    if-nez v9, :cond_1

    .line 125
    :cond_0
    :goto_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    const-string/jumbo v4, "REGISTER"

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildMaxForwardsHeader()Ljavax2/sip/header/MaxForwardsHeader;

    move-result-object v10

    invoke-interface/range {v2 .. v10}, Ljavax2/sip/message/MessageFactory;->createRequest(Ljavax2/sip/address/URI;Ljava/lang/String;Ljavax2/sip/header/CallIdHeader;Ljavax2/sip/header/CSeqHeader;Ljavax2/sip/header/FromHeader;Ljavax2/sip/header/ToHeader;Ljava/util/List;Ljavax2/sip/header/MaxForwardsHeader;)Ljavax2/sip/message/Request;

    move-result-object v15

    .line 130
    .local v15, "register":Ljavax2/sip/message/Request;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v11

    .line 131
    .local v11, "contact":Ljavax2/sip/header/ContactHeader;
    if-nez p3, :cond_2

    .line 134
    :goto_1
    invoke-interface {v15, v11}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 138
    if-nez p3, :cond_3

    const-string/jumbo v16, "path"

    .line 143
    .local v16, "supported":Ljava/lang/String;
    :goto_2
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljavax2/sip/header/HeaderFactory;->createSupportedHeader(Ljava/lang/String;)Ljavax2/sip/header/SupportedHeader;

    move-result-object v17

    .line 145
    .local v17, "supportedHeader":Ljavax2/sip/header/SupportedHeader;
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 148
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setContactFeatureTags(Ljavax2/sip/message/Message;Ljava/util/List;)V

    .line 151
    invoke-static {v15}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildAllowHeader(Ljavax2/sip/message/Message;)V

    .line 165
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Ljavax2/sip/header/HeaderFactory;->createExpiresHeader(I)Ljavax2/sip/header/ExpiresHeader;

    move-result-object v13

    .line 166
    .local v13, "expHeader":Ljavax2/sip/header/ExpiresHeader;
    invoke-interface {v15, v13}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 169
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildUserAgentHeader()Ljavax2/sip/header/Header;

    move-result-object v2

    invoke-interface {v15, v2}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    const-string/jumbo v2, "Via"

    .line 172
    invoke-interface {v15, v2}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v19

    check-cast v19, Ljavax2/sip/header/ViaHeader;

    .line 173
    .local v19, "viaHeader":Ljavax2/sip/header/ViaHeader;
    invoke-interface/range {v19 .. v19}, Ljavax2/sip/header/ViaHeader;->setRPort()V

    .line 175
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    invoke-direct {v2, v15}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;-><init>(Ljavax2/sip/message/Request;)V

    return-object v2

    .line 119
    .end local v11    # "contact":Ljavax2/sip/header/ContactHeader;
    .end local v13    # "expHeader":Ljavax2/sip/header/ExpiresHeader;
    .end local v15    # "register":Ljavax2/sip/message/Request;
    .end local v16    # "supported":Ljava/lang/String;
    .end local v17    # "supportedHeader":Ljavax2/sip/header/SupportedHeader;
    .end local v19    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 120
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljavax2/sip/header/ViaHeader;

    .line 121
    .restart local v19    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    new-instance v2, Lgov2/nist/core/NameValue;

    const-string/jumbo v4, "keep"

    const/4 v10, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v2, v4, v10, v0}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljavax2/sip/header/ViaHeader;->setParameter(Lgov2/nist/core/NameValue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v3    # "requestURI":Ljavax2/sip/address/URI;
    .end local v5    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .end local v6    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .end local v7    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .end local v8    # "toHeader":Ljavax2/sip/header/ToHeader;
    .end local v9    # "viaHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax2/sip/header/ViaHeader;>;"
    .end local v14    # "fromAddress":Ljavax2/sip/address/Address;
    .end local v18    # "toAddress":Ljavax2/sip/address/Address;
    .end local v19    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    :catch_0
    move-exception v12

    .line 177
    .local v12, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 180
    :goto_3
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v4, "Can\'t create SIP REGISTER message"

    invoke-direct {v2, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v3    # "requestURI":Ljavax2/sip/address/URI;
    .restart local v5    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .restart local v6    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .restart local v7    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .restart local v8    # "toHeader":Ljavax2/sip/header/ToHeader;
    .restart local v9    # "viaHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax2/sip/header/ViaHeader;>;"
    .restart local v11    # "contact":Ljavax2/sip/header/ContactHeader;
    .restart local v14    # "fromAddress":Ljavax2/sip/address/Address;
    .restart local v15    # "register":Ljavax2/sip/message/Request;
    .restart local v18    # "toAddress":Ljavax2/sip/address/Address;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "+sip.instance"

    .line 132
    move-object/from16 v0, p3

    invoke-interface {v11, v2, v0}, Ljavax2/sip/header/ContactHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v16, "path, gruu"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    .restart local v16    # "supported":Ljava/lang/String;
    goto :goto_2

    .line 178
    .end local v3    # "requestURI":Ljavax2/sip/address/URI;
    .end local v5    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .end local v6    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .end local v7    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .end local v8    # "toHeader":Ljavax2/sip/header/ToHeader;
    .end local v9    # "viaHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax2/sip/header/ViaHeader;>;"
    .end local v11    # "contact":Ljavax2/sip/header/ContactHeader;
    .end local v14    # "fromAddress":Ljavax2/sip/address/Address;
    .end local v15    # "register":Ljavax2/sip/message/Request;
    .end local v16    # "supported":Ljava/lang/String;
    .end local v18    # "toAddress":Ljavax2/sip/address/Address;
    .restart local v12    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t create SIP message"

    invoke-virtual {v2, v4, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/lang/String;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .locals 6
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "localTag"    # Ljava/lang/String;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 878
    :try_start_0
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Ljavax2/sip/message/MessageFactory;->createResponse(ILjavax2/sip/message/Request;)Ljavax2/sip/message/Response;

    move-result-object v2

    .line 881
    .local v2, "response":Ljavax2/sip/message/Response;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/message/Response;->addHeader(Ljavax2/sip/header/Header;)V

    .line 883
    if-nez p1, :cond_0

    .line 887
    :goto_0
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;-><init>(Ljavax2/sip/message/Response;)V

    .line 888
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackTransaction()Ljavax2/sip/Transaction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->setStackTransaction(Ljavax2/sip/Transaction;)V

    .line 889
    return-object v1

    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    const-string/jumbo v4, "To"

    .line 884
    invoke-interface {v2, v4}, Ljavax2/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v3

    check-cast v3, Ljavax2/sip/header/ToHeader;

    .line 885
    .local v3, "to":Ljavax2/sip/header/ToHeader;
    invoke-interface {v3, p1}, Ljavax2/sip/header/ToHeader;->setTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 889
    .end local v2    # "response":Ljavax2/sip/message/Response;
    .end local v3    # "to":Ljavax2/sip/header/ToHeader;
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 894
    :goto_1
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v5, "Can\'t create SIP response"

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 892
    :cond_1
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t create SIP message: "

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .locals 5
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 821
    :try_start_0
    sget-object v3, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljavax2/sip/message/MessageFactory;->createResponse(ILjavax2/sip/message/Request;)Ljavax2/sip/message/Response;

    move-result-object v2

    .line 823
    .local v2, "response":Ljavax2/sip/message/Response;
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;-><init>(Ljavax2/sip/message/Response;)V

    .line 824
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackTransaction()Ljavax2/sip/Transaction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->setStackTransaction(Ljavax2/sip/Transaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    return-object v1

    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v2    # "response":Ljavax2/sip/message/Response;
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 830
    :goto_0
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v4, "Can\'t create SIP response"

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 828
    :cond_0
    sget-object v3, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t create SIP message"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .locals 6
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p1, "localTag"    # Ljava/lang/String;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 846
    :try_start_0
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Ljavax2/sip/message/MessageFactory;->createResponse(ILjavax2/sip/message/Request;)Ljavax2/sip/message/Response;

    move-result-object v2

    .line 850
    .local v2, "response":Ljavax2/sip/message/Response;
    if-nez p1, :cond_0

    .line 855
    :goto_0
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;-><init>(Ljavax2/sip/message/Response;)V

    .line 856
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackTransaction()Ljavax2/sip/Transaction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->setStackTransaction(Ljavax2/sip/Transaction;)V

    .line 857
    return-object v1

    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    const-string/jumbo v4, "To"

    .line 851
    invoke-interface {v2, v4}, Ljavax2/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v3

    check-cast v3, Ljavax2/sip/header/ToHeader;

    .line 852
    .local v3, "to":Ljavax2/sip/header/ToHeader;
    invoke-interface {v3, p1}, Ljavax2/sip/header/ToHeader;->setTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 857
    .end local v2    # "response":Ljavax2/sip/message/Response;
    .end local v3    # "to":Ljavax2/sip/header/ToHeader;
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 862
    :goto_1
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v5, "Can\'t create SIP response"

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 860
    :cond_1
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t create SIP message: "

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 22
    .param p0, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p1, "expirePeriod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createURI(Ljava/lang/String;)Ljavax2/sip/address/URI;

    move-result-object v3

    .line 199
    .local v3, "requestURI":Ljavax2/sip/address/URI;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/header/HeaderFactory;->createCallIdHeader(Ljava/lang/String;)Ljavax2/sip/header/CallIdHeader;

    move-result-object v5

    .line 203
    .local v5, "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCseq()J

    move-result-wide v20

    const-string/jumbo v4, "SUBSCRIBE"

    move-wide/from16 v0, v20

    invoke-interface {v2, v0, v1, v4}, Ljavax2/sip/header/HeaderFactory;->createCSeqHeader(JLjava/lang/String;)Ljavax2/sip/header/CSeqHeader;

    move-result-object v6

    .line 207
    .local v6, "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalParty()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;

    move-result-object v13

    .line 208
    .local v13, "fromAddress":Ljavax2/sip/address/Address;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v13, v4}, Ljavax2/sip/header/HeaderFactory;->createFromHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/FromHeader;

    move-result-object v7

    .line 212
    .local v7, "fromHeader":Ljavax2/sip/header/FromHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;

    move-result-object v18

    .line 213
    .local v18, "toAddress":Ljavax2/sip/address/Address;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteTag()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v2, v0, v4}, Ljavax2/sip/header/HeaderFactory;->createToHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/ToHeader;

    move-result-object v8

    .line 217
    .local v8, "toHeader":Ljavax2/sip/header/ToHeader;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    const-string/jumbo v4, "SUBSCRIBE"

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getViaHeaders()Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildMaxForwardsHeader()Ljavax2/sip/header/MaxForwardsHeader;

    move-result-object v10

    invoke-interface/range {v2 .. v10}, Ljavax2/sip/message/MessageFactory;->createRequest(Ljavax2/sip/address/URI;Ljava/lang/String;Ljavax2/sip/header/CallIdHeader;Ljavax2/sip/header/CSeqHeader;Ljavax2/sip/header/FromHeader;Ljavax2/sip/header/ToHeader;Ljava/util/List;Ljavax2/sip/header/MaxForwardsHeader;)Ljavax2/sip/message/Request;

    move-result-object v17

    .line 222
    .local v17, "subscribe":Ljavax2/sip/message/Request;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRoute()Ljava/util/Vector;

    move-result-object v15

    .local v15, "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 223
    .local v14, "i":I
    :goto_0
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v14, v2, :cond_0

    .line 230
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljavax2/sip/header/HeaderFactory;->createExpiresHeader(I)Ljavax2/sip/header/ExpiresHeader;

    move-result-object v12

    .line 231
    .local v12, "expHeader":Ljavax2/sip/header/ExpiresHeader;
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 234
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildUserAgentHeader()Ljavax2/sip/header/Header;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 240
    invoke-static/range {v17 .. v17}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->buildAllowHeader(Ljavax2/sip/message/Message;)V

    const-string/jumbo v2, "Via"

    .line 243
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v19

    check-cast v19, Ljavax2/sip/header/ViaHeader;

    .line 244
    .local v19, "viaHeader":Ljavax2/sip/header/ViaHeader;
    invoke-interface/range {v19 .. v19}, Ljavax2/sip/header/ViaHeader;->setRPort()V

    .line 246
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;-><init>(Ljavax2/sip/message/Request;)V

    return-object v2

    .line 224
    .end local v12    # "expHeader":Ljavax2/sip/header/ExpiresHeader;
    .end local v19    # "viaHeader":Ljavax2/sip/header/ViaHeader;
    :cond_0
    sget-object v4, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v9, "Route"

    invoke-virtual {v15, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v9, v2}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v16

    .line 226
    .local v16, "routeHeader":Ljavax2/sip/header/Header;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 246
    .end local v3    # "requestURI":Ljavax2/sip/address/URI;
    .end local v5    # "callIdHeader":Ljavax2/sip/header/CallIdHeader;
    .end local v6    # "cseqHeader":Ljavax2/sip/header/CSeqHeader;
    .end local v7    # "fromHeader":Ljavax2/sip/header/FromHeader;
    .end local v8    # "toHeader":Ljavax2/sip/header/ToHeader;
    .end local v13    # "fromAddress":Ljavax2/sip/address/Address;
    .end local v14    # "i":I
    .end local v15    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v16    # "routeHeader":Ljavax2/sip/header/Header;
    .end local v17    # "subscribe":Ljavax2/sip/message/Request;
    .end local v18    # "toAddress":Ljavax2/sip/address/Address;
    :catch_0
    move-exception v11

    .line 248
    .local v11, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    :goto_1
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v4, "Can\'t create SIP SUBSCRIBE message"

    invoke-direct {v2, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 249
    :cond_1
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t create SIP message"

    invoke-virtual {v2, v4, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

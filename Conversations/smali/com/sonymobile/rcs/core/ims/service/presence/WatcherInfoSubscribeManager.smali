.class public Lcom/sonymobile/rcs/core/ims/service/presence/WatcherInfoSubscribeManager;
.super Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;
.source "WatcherInfoSubscribeManager.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/WatcherInfoSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 55
    return-void
.end method


# virtual methods
.method public createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 3
    .param p1, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p2, "expirePeriod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {p1, p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .local v0, "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    const-string/jumbo v1, "Event"

    const-string/jumbo v2, "presence.winfo"

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Accept"

    const-string/jumbo v2, "application/watcherinfo+xml"

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v0
.end method

.method public getPresentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public receiveNotification(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 13
    .param p1, "notify"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/presence/WatcherInfoSubscribeManager;->isNotifyForThisSubscriber(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 98
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/presence/WatcherInfoSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v11

    if-nez v11, :cond_3

    .line 103
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentBytes()[B

    move-result-object v1

    .line 104
    .local v1, "content":[B
    if-nez v1, :cond_4

    :cond_0
    :goto_1
    const-string/jumbo v11, "Subscription-State"

    .line 137
    invoke-virtual {p1, v11}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v7

    check-cast v7, Ljavax2/sip/header/SubscriptionStateHeader;

    .line 139
    .local v7, "stateHeader":Ljavax2/sip/header/SubscriptionStateHeader;
    if-nez v7, :cond_8

    .line 145
    :cond_1
    :goto_2
    return-void

    .line 95
    .end local v1    # "content":[B
    .end local v7    # "stateHeader":Ljavax2/sip/header/SubscriptionStateHeader;
    :cond_2
    return-void

    .line 99
    :cond_3
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/presence/WatcherInfoSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v12, "New watcher-info notification received"

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .restart local v1    # "content":[B
    :cond_4
    :try_start_0
    new-instance v5, Lorg/xml/sax/InputSource;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v11}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 107
    .local v5, "input":Lorg/xml/sax/InputSource;
    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;

    invoke-direct {v6, v5}, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 108
    .local v6, "parser":Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;
    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->getWatcherInfo()Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;

    move-result-object v10

    .line 109
    .local v10, "watcherinfo":Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;
    if-eqz v10, :cond_0

    const/4 v4, 0x0

    .line 110
    .local v4, "i":I
    :goto_3
    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;->getWatcherList()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-ge v4, v11, :cond_0

    .line 111
    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;->getWatcherList()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;

    .line 112
    .local v9, "w":Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;
    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "contact":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;->getStatus()Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "status":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;->getEvent()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "event":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 110
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 116
    :cond_6
    if-eqz v8, :cond_5

    if-eqz v3, :cond_5

    const-string/jumbo v11, "pending"

    .line 117
    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 124
    :goto_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/WatcherInfoSubscribeManager;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v11

    invoke-interface {v11, v0, v8, v3}, Lcom/sonymobile/rcs/core/CoreListener;->handlePresenceSharingNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 133
    .end local v0    # "contact":Ljava/lang/String;
    .end local v3    # "event":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "input":Lorg/xml/sax/InputSource;
    .end local v6    # "parser":Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;
    .end local v8    # "status":Ljava/lang/String;
    .end local v9    # "w":Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;
    .end local v10    # "watcherinfo":Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/presence/WatcherInfoSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 131
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/presence/WatcherInfoSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v12, "Can\'t parse watcher-info notification"

    invoke-virtual {v11, v12, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 119
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "contact":Ljava/lang/String;
    .restart local v3    # "event":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "input":Lorg/xml/sax/InputSource;
    .restart local v6    # "parser":Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;
    .restart local v8    # "status":Ljava/lang/String;
    .restart local v9    # "w":Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;
    .restart local v10    # "watcherinfo":Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/WatcherInfoSubscribeManager;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v11

    invoke-interface {v11, v0}, Lcom/sonymobile/rcs/core/CoreListener;->handlePresenceSharingInvitation(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 139
    .end local v0    # "contact":Ljava/lang/String;
    .end local v3    # "event":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "input":Lorg/xml/sax/InputSource;
    .end local v6    # "parser":Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;
    .end local v8    # "status":Ljava/lang/String;
    .end local v9    # "w":Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;
    .end local v10    # "watcherinfo":Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;
    .restart local v7    # "stateHeader":Ljavax2/sip/header/SubscriptionStateHeader;
    :cond_8
    invoke-interface {v7}, Ljavax2/sip/header/SubscriptionStateHeader;->getState()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "terminated"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 140
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/presence/WatcherInfoSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v11

    if-nez v11, :cond_9

    .line 143
    :goto_6
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/WatcherInfoSubscribeManager;->terminatedByServer()V

    goto/16 :goto_2

    .line 141
    :cond_9
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/presence/WatcherInfoSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v12, "Watcher-info subscription has been terminated by server"

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_6
.end method

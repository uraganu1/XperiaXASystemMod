.class public abstract Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
.super Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
.source "ChatSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;
    }
.end annotation


# static fields
.field private static mimeTypes:Ljava/lang/String;

.field protected static sBackgroundExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private acceptTypes:Ljava/lang/String;

.field private activityMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;

.field private contributionId:Ljava/lang/String;

.field private featureTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private firstMessage:Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

.field private ftSupportedByRemote:Z

.field private geolocSupportedByRemote:Z

.field private isComposingMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private maxParticipants:I

.field private msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

.field private participants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

.field private subject:Ljava/lang/String;

.field private wrappedTypes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x14

    .line 159
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->sBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V
    .locals 5
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "participants"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;)V

    .line 86
    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->subject:Ljava/lang/String;

    .line 91
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    invoke-direct {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->participants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    .line 96
    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->firstMessage:Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    .line 101
    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    .line 106
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;

    invoke-direct {v2, p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isComposingMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;

    .line 111
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;

    invoke-direct {v2, p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->activityMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;

    .line 116
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxChatParticipants()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->maxParticipants:I

    .line 121
    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->contributionId:Ljava/lang/String;

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->featureTags:Ljava/util/List;

    .line 147
    iput-boolean v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->geolocSupportedByRemote:Z

    .line 152
    iput-boolean v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->ftSupportedByRemote:Z

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 177
    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->participants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    .line 180
    invoke-static {}, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->generateLocalMsrpPort()I

    move-result v1

    .line 181
    .local v1, "localMsrpPort":I
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "localIpAddress":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-direct {v2, v0, v1, p1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;-><init>(Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/ImsService;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    .line 184
    return-void
.end method

.method private receiveGeoloc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Ljava/lang/String;)V
    .locals 11
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "geolocDoc"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "imdnDisplayedRequested"    # Z
    .param p5, "date"    # Ljava/util/Date;
    .param p6, "displayName"    # Ljava/lang/String;

    .prologue
    .line 635
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isComposingMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->receiveIsComposingEvent(Ljava/lang/String;Z)V

    .line 638
    :try_start_0
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->parseGeolocDocument(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    move-result-object v3

    .line 639
    .local v3, "geoloc":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    if-nez v3, :cond_1

    .line 652
    .end local v3    # "geoloc":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    :cond_0
    :goto_0
    return-void

    .line 641
    .restart local v3    # "geoloc":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    :cond_1
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    const/4 v8, 0x0

    move-object v1, p3

    move-object v2, p1

    move v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;ZLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "geolocMsg":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    const/4 v10, 0x0

    .line 643
    .local v10, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    invoke-interface {v1, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleReceiveGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 651
    .end local v0    # "geolocMsg":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    .end local v3    # "geoloc":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    .end local v10    # "i":I
    :catch_0
    move-exception v9

    .line 648
    .local v9, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Problem while receiving geolocation"

    invoke-virtual {v1, v2, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private receiveHttpFileTransfer(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 12
    .param p1, "fileInfo"    # Ljava/lang/String;
    .param p2, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "isGroupChat"    # Z
    .param p5, "contact"    # Ljava/lang/String;
    .param p6, "psuedo"    # Ljava/lang/String;
    .param p7, "sentDate"    # Ljava/util/Date;

    .prologue
    .line 857
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->parseFileTransferHttpDocument([B)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    move-result-object v6

    .line 858
    .local v6, "fileTransferInfo":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    if-eqz p5, :cond_0

    .line 861
    :goto_0
    if-eqz p6, :cond_1

    .line 864
    :goto_1
    if-nez v6, :cond_2

    .line 932
    :goto_2
    return-void

    .line 859
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    .line 862
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object p6

    goto :goto_1

    .line 867
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isFtBlockedForContact(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 880
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getMaxFileSharingSize()I

    move-result v11

    .line 881
    .local v11, "maxSize":I
    if-gtz v11, :cond_7

    .line 893
    :cond_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxFileTransferSessions()I

    move-result v11

    .line 894
    if-gtz v11, :cond_9

    .line 907
    :cond_4
    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileSize()I

    move-result v2

    int-to-long v4, v2

    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->getExternalAvailableSpaceInBytes()J

    move-result-wide v8

    cmp-long v2, v4, v8

    if-gtz v2, :cond_b

    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_d

    .line 908
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_c

    .line 911
    :goto_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    const/16 v5, 0x14

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v7, p3

    move/from16 v8, p4

    move-object v9, p0

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedHTTPFileTransferInvite(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;Ljava/lang/String;ZLcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/util/Date;)V

    .line 915
    return-void

    .line 868
    .end local v11    # "maxSize":I
    :cond_5
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_6

    .line 872
    :goto_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    const/16 v5, 0x25

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v7, p3

    move/from16 v8, p4

    move-object v9, p0

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedHTTPFileTransferInvite(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;Ljava/lang/String;ZLcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/util/Date;)V

    .line 876
    return-void

    .line 869
    :cond_6
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is blocked: automatically reject the HTTP transfer invitation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 881
    .restart local v11    # "maxSize":I
    :cond_7
    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileSize()I

    move-result v2

    if-le v2, v11, :cond_3

    .line 882
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_8

    .line 885
    :goto_6
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    const/16 v5, 0x15

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v7, p3

    move/from16 v8, p4

    move-object v9, p0

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedHTTPFileTransferInvite(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;Ljava/lang/String;ZLcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/util/Date;)V

    .line 889
    return-void

    .line 883
    :cond_8
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "File is too big, reject the HTTP File transfer"

    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 894
    :cond_9
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getInstantMessagingService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getFileTransferSessions()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, v11, :cond_4

    .line 897
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_a

    .line 900
    :goto_7
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    const/16 v5, 0x24

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v7, p3

    move/from16 v8, p4

    move-object v9, p0

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedHTTPFileTransferInvite(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;Ljava/lang/String;ZLcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/util/Date;)V

    .line 904
    return-void

    .line 898
    :cond_a
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Max number of File Tranfer reached, rejecting the HTTP File transfer"

    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_7

    .line 907
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 909
    :cond_c
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "No enough space to receive file, reject file transfer invitation"

    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 919
    :cond_d
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    move-object v5, p0

    move-object v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .local v3, "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->setSentDate(Ljava/util/Date;)V

    .line 924
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->startSession()V

    .line 928
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCoreListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v2

    move/from16 v0, p4

    invoke-interface {v2, v3, v0}, Lcom/sonymobile/rcs/core/CoreListener;->handleFileTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;Z)V

    goto/16 :goto_2
.end method

.method private receiveIsComposing(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "event"    # [B

    .prologue
    .line 828
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isComposingMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->receiveIsComposingEvent(Ljava/lang/String;[B)V

    .line 829
    return-void
.end method

.method private receiveText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "txt"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "imdnDisplayedRequested"    # Z
    .param p5, "serverDate"    # Ljava/util/Date;
    .param p6, "displayName"    # Ljava/lang/String;
    .param p7, "route"    # Ljava/lang/String;

    .prologue
    .line 794
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 795
    .local v6, "currentDate":Ljava/util/Date;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->isNewMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isImBlockedForContact(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 809
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isComposingMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->receiveIsComposingEvent(Ljava/lang/String;Z)V

    const/4 v9, 0x0

    .line 812
    .local v9, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 813
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-object v1, p3

    move-object v2, p1

    move-object/from16 v3, p6

    move-object v4, p2

    move v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    invoke-interface {v10, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleReceiveMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V

    .line 812
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 797
    .end local v9    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 803
    :goto_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v10

    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getMessageId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addSpamMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V

    goto :goto_0

    .line 798
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Contact "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is blocked: move the message to Spam message box"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public abstract addParticipant(Ljava/lang/String;)V
.end method

.method public abstract addParticipants(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public closeMsrpSession()V
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->closeSession()V

    .line 408
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "MSRP session has been closed"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAcceptTypes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->acceptTypes:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->activityMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;

    return-object v0
.end method

.method public abstract getConnectedParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
.end method

.method public getContributionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->contributionId:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureTags()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->featureTags:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->firstMessage:Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    return-object v0
.end method

.method public getImSessionIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 350
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    if-nez v0, :cond_0

    .line 353
    return-object v1

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getTarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    move-result-object v0

    return-object v0
.end method

.method public getMaxParticipants()I
    .locals 1

    .prologue
    .line 1189
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->maxParticipants:I

    return v0
.end method

.method public getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    return-object v0
.end method

.method public getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->participants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getWrappedTypes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->wrappedTypes:Ljava/lang/String;

    return-object v0
.end method

.method public handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 2
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    const/4 v0, 0x0

    .line 1254
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    const-string/jumbo v1, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    .line 1257
    invoke-static {p1, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->setGeolocSupportedByRemote(Z)V

    const-string/jumbo v1, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft"

    .line 1261
    invoke-static {p1, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->setFileTransferSupportedByRemote(Z)V

    .line 1263
    return-void

    :cond_1
    const-string/jumbo v1, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    .line 1261
    invoke-static {p1, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public handle480Unavailable(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 3
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 445
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    const/16 v1, 0x66

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 446
    return-void
.end method

.method public handle486Busy(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 3
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 454
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    const/16 v1, 0x66

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 455
    return-void
.end method

.method public handle603Declined(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 0
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->handleDefaultError(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 464
    return-void
.end method

.method public handleChatInactivityEvent()V
    .locals 2

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x2

    .line 1245
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->abortSession(I)V

    .line 1246
    return-void

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Chat inactivity event"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    .locals 4
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;

    .prologue
    .line 421
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 426
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->closeMediaSession()V

    .line 429
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 432
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    :cond_0
    return-void

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Session error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 433
    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    invoke-direct {v2, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    invoke-interface {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleImError(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;)V

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1092
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1095
    return-void

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isFileTransferSupportedByRemote()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->ftSupportedByRemote:Z

    return v0
.end method

.method public isGeolocSupportedByRemote()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->geolocSupportedByRemote:Z

    return v0
.end method

.method public abstract isGroupChat()Z
.end method

.method public isMediaEstablished()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1271
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->isEstablished()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->isSessionTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStoreAndForward()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 975
    instance-of v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;

    if-eqz v0, :cond_1

    .line 977
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 975
    :cond_1
    instance-of v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;

    if-nez v0, :cond_0

    .line 979
    return v1
.end method

.method public isStoreAndForwardNotif()Z
    .locals 1

    .prologue
    .line 990
    instance-of v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;

    return v0
.end method

.method public msrpDataReceived(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 38
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 493
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->activityMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->updateActivity()V

    .line 495
    if-nez p2, :cond_2

    .line 497
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 500
    :goto_1
    return-void

    .line 489
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Data received (type "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_2
    move-object/from16 v0, p2

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 503
    invoke-static/range {p3 .. p3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isApplicationIsComposingType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 506
    invoke-static/range {p3 .. p3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isTextPlainType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 509
    invoke-static/range {p3 .. p3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isMessageCpimType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_15

    .line 619
    :cond_3
    :goto_2
    return-void

    .line 498
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "By-pass received empty data"

    invoke-virtual {v2, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 505
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->receiveIsComposing(Ljava/lang/String;[B)V

    goto :goto_2

    .line 508
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/sonymobile/rcs/utils/StringUtils;->decodeUTF8([B)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->receiveText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 512
    :cond_7
    :try_start_0
    new-instance v32, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;-><init>([B)V

    .line 513
    .local v32, "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    invoke-virtual/range {v32 .. v32}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;->getCpimMessage()Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;

    move-result-object v31

    .line 514
    .local v31, "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    if-eqz v31, :cond_3

    .line 515
    invoke-virtual/range {v31 .. v31}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getMessageDate()Ljava/util/Date;

    move-result-object v15

    .local v15, "date":Ljava/util/Date;
    const-string/jumbo v2, "imdn.Message-ID"

    .line 516
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, "cpimMsgId":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 520
    :goto_3
    invoke-virtual/range {v31 .. v31}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getContentType()Ljava/lang/String;

    move-result-object v30

    .local v30, "contentType":Ljava/lang/String;
    const-string/jumbo v2, "From"

    .line 522
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, "from":Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractDisplayNameFromHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, "pseudo":Ljava/lang/String;
    const-string/jumbo v2, "anonymous@anonymous.invalid"

    .line 524
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_9

    .line 529
    :goto_4
    const/16 v20, 0x0

    .local v20, "imdnDisplayedRequested":Z
    const-string/jumbo v2, "imdn.Disposition-Notification"

    .line 530
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 532
    .local v33, "dispositionNotification":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isFileTransferHttpType(Ljava/lang/String;)Z

    move-result v36

    .line 533
    .local v36, "isFToHTTP":Z
    invoke-virtual/range {v31 .. v31}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getIMDNRoute()Ljava/lang/String;

    move-result-object v7

    .line 534
    .local v7, "route":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 537
    :goto_5
    if-nez v36, :cond_b

    .line 555
    invoke-static/range {v30 .. v30}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isTextPlainType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 586
    invoke-static/range {v30 .. v30}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isApplicationIsComposingType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 589
    invoke-static/range {v30 .. v30}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isMessageImdnType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 602
    invoke-static/range {v30 .. v30}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isGeolocType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 604
    invoke-virtual/range {v31 .. v31}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/StringUtils;->decodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 529
    const/16 v27, 0x0

    move-object/from16 v23, p0

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v15

    move-object/from16 v29, v22

    .line 604
    invoke-direct/range {v23 .. v29}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->receiveGeoloc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 612
    .end local v3    # "from":Ljava/lang/String;
    .end local v4    # "cpimMsgId":Ljava/lang/String;
    .end local v7    # "route":Ljava/lang/String;
    .end local v15    # "date":Ljava/util/Date;
    .end local v20    # "imdnDisplayedRequested":Z
    .end local v22    # "pseudo":Ljava/lang/String;
    .end local v30    # "contentType":Ljava/lang/String;
    .end local v31    # "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    .end local v32    # "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    .end local v33    # "dispositionNotification":Ljava/lang/String;
    .end local v36    # "isFToHTTP":Z
    :catch_0
    move-exception v34

    .line 609
    .local v34, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t parse the CPIM message"

    move-object/from16 v0, v34

    invoke-virtual {v2, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 518
    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v4    # "cpimMsgId":Ljava/lang/String;
    .restart local v15    # "date":Ljava/util/Date;
    .restart local v31    # "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    .restart local v32    # "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    :cond_8
    move-object/from16 v4, p1

    goto/16 :goto_3

    .line 525
    .restart local v3    # "from":Ljava/lang/String;
    .restart local v22    # "pseudo":Ljava/lang/String;
    .restart local v30    # "contentType":Ljava/lang/String;
    :cond_9
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 535
    .restart local v7    # "route":Ljava/lang/String;
    .restart local v20    # "imdnDisplayedRequested":Z
    .restart local v33    # "dispositionNotification":Ljava/lang/String;
    .restart local v36    # "isFToHTTP":Z
    :cond_a
    move-object/from16 v4, p1

    goto :goto_5

    :cond_b
    const-string/jumbo v5, "delivered"

    .line 539
    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->sendMsrpMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_c

    .line 550
    invoke-virtual/range {v31 .. v31}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/StringUtils;->decodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v20

    .end local v20    # "imdnDisplayedRequested":Z
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, p0

    move-object/from16 v19, v4

    move-object/from16 v23, v15

    invoke-direct/range {v16 .. v23}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->receiveHttpFileTransfer(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    goto/16 :goto_2

    .restart local v20    # "imdnDisplayedRequested":Z
    :cond_c
    const-string/jumbo v2, "From"

    .line 542
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 543
    .local v35, "fromHeaderValue":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 544
    .local v13, "contact":Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractDisplayNameFromHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 545
    .local v14, "pseudoName":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/StringUtils;->decodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v12

    move-object/from16 v8, p0

    move-object v11, v4

    invoke-direct/range {v8 .. v15}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->receiveHttpFileTransfer(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    goto/16 :goto_2

    .line 560
    .end local v13    # "contact":Ljava/lang/String;
    .end local v14    # "pseudoName":Ljava/lang/String;
    .end local v35    # "fromHeaderValue":Ljava/lang/String;
    :cond_d
    if-nez v33, :cond_f

    .line 575
    :cond_e
    :goto_6
    invoke-virtual/range {v31 .. v31}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/StringUtils;->decodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, p0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v15

    move-object/from16 v23, v7

    invoke-direct/range {v16 .. v23}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->receiveText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    if-eqz v20, :cond_3

    .line 582
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isReadNotification()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 583
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryRequested(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v2, "positive-delivery"

    .line 561
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    :goto_7
    const-string/jumbo v2, "display"

    .line 570
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 571
    const/16 v20, 0x1

    goto :goto_6

    .line 564
    :cond_10
    invoke-static/range {v30 .. v30}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isFileTransferHttpType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v6, 0x0

    .local v6, "addDeliveryStatusToDatabase":Z
    :goto_8
    const-string/jumbo v5, "delivered"

    move-object/from16 v2, p0

    .line 566
    invoke-virtual/range {v2 .. v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->sendMsrpMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_7

    .end local v6    # "addDeliveryStatusToDatabase":Z
    :cond_11
    const/4 v6, 0x1

    .line 564
    goto :goto_8

    .line 588
    :cond_12
    invoke-virtual/range {v31 .. v31}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->receiveIsComposing(Ljava/lang/String;[B)V

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v2, "From"

    .line 591
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .restart local v35    # "fromHeaderValue":Ljava/lang/String;
    const-string/jumbo v2, "To"

    .line 592
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 593
    .local v37, "toHeaderValue":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_14

    .line 600
    invoke-virtual/range {v31 .. v31}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->receiveMessageDeliveryStatus(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 594
    :cond_14
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getUserProfileImsUserName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 596
    invoke-virtual/range {v31 .. v31}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v2, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->receiveGroupMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 616
    .end local v3    # "from":Ljava/lang/String;
    .end local v4    # "cpimMsgId":Ljava/lang/String;
    .end local v7    # "route":Ljava/lang/String;
    .end local v15    # "date":Ljava/util/Date;
    .end local v20    # "imdnDisplayedRequested":Z
    .end local v22    # "pseudo":Ljava/lang/String;
    .end local v30    # "contentType":Ljava/lang/String;
    .end local v31    # "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    .end local v32    # "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    .end local v33    # "dispositionNotification":Ljava/lang/String;
    .end local v35    # "fromHeaderValue":Ljava/lang/String;
    .end local v36    # "isFToHTTP":Z
    .end local v37    # "toHeaderValue":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Not supported content "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " in chat session"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public msrpDataTransfered(Ljava/lang/String;)V
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->activityMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->updateActivity()V

    .line 478
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Data transfered"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public msrpTransferAborted()V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

.method public msrpTransferError(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "typeMsrpChunk"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isSessionInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 696
    :cond_0
    return-void

    .line 695
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 699
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 706
    :goto_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->MessageDeliveredReport:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {v2, p3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 715
    sget-object v2, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->MessageDisplayedReport:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {v2, p3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 725
    if-nez p1, :cond_9

    .line 735
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_a

    .line 745
    :cond_3
    :goto_1
    if-nez p2, :cond_b

    :goto_2
    const/16 v0, 0x6f

    .local v0, "errorCode":I
    :goto_3
    const/4 v1, 0x0

    .line 774
    .local v1, "i":I
    :goto_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_e

    .line 778
    return-void

    .line 700
    .end local v0    # "errorCode":I
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Data transfer error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (MSRP chunk type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 707
    :cond_5
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_6

    .line 713
    :goto_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "delivered"

    invoke-virtual {v2, v3, p1, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->sendMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 708
    :cond_6
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to send delivered message via MSRP, so try to send via SIP message to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". (msgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_5

    .line 716
    :cond_7
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_8

    .line 722
    :goto_6
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "displayed"

    invoke-virtual {v2, v3, p1, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->sendMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 717
    :cond_8
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to send displayed message via MSRP, so try to send via SIP message to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". (msgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_6

    .line 725
    :cond_9
    sget-object v2, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->TextMessage:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {v2, p3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 728
    .restart local v1    # "i":I
    :goto_7
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 729
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    const-string/jumbo v3, "failed"

    invoke-interface {v2, p1, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 736
    .end local v1    # "i":I
    :cond_a
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "MSRP transfer error not handled!"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v2, "413"

    .line 745
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    const/16 v0, 0x74

    .line 762
    .restart local v0    # "errorCode":I
    goto/16 :goto_3

    .end local v0    # "errorCode":I
    :cond_d
    const-string/jumbo v2, "408"

    .line 745
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_2

    .line 775
    .restart local v0    # "errorCode":I
    .restart local v1    # "i":I
    :cond_e
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    invoke-direct {v3, v0, p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleImError(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;)V

    .line 774
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4
.end method

.method public msrpTransferProgress(JJ)V
    .locals 0
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 662
    return-void
.end method

.method public msrpTransferProgress(JJ[B)Z
    .locals 1
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J
    .param p5, "data"    # [B

    .prologue
    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method public prepareMediaSession()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1210
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1213
    .local v0, "sdp":[B
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpSession([BLcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v1

    .line 1214
    .local v1, "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    invoke-virtual {v1, v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setFailureReportOption(Z)V

    .line 1215
    invoke-virtual {v1, v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setSuccessReportOption(Z)V

    .line 1216
    return-void
.end method

.method public receiveGroupMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "xml"    # Ljava/lang/String;
    .param p2, "contact"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v3, "0"

    .line 1153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getGsmaRelease()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1158
    :try_start_0
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->parseDeliveryReport(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    move-result-object v1

    .line 1159
    .local v1, "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    if-nez v1, :cond_2

    .line 1181
    .end local v1    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    :cond_0
    :goto_0
    return-void

    .line 1155
    :cond_1
    return-void

    .line 1160
    .restart local v1    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    :cond_2
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "failed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "forbidden"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1163
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getMessageType(Ljava/lang/String;)I

    move-result v2

    .local v2, "type":I
    const/16 v3, 0x13

    .line 1166
    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    .line 1169
    if-ne v2, v3, :cond_0

    .line 1170
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getMsgId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, p2, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveGroupMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1180
    .end local v1    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    .end local v2    # "type":I
    :catch_0
    move-exception v0

    .line 1177
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1178
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t parse IMDN document"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1167
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    .restart local v2    # "type":I
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getMsgId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, p2, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveGroupFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public receiveMessageDeliveryStatus(Ljava/lang/String;)V
    .locals 8
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 1104
    :try_start_0
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->parseDeliveryReport(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    move-result-object v1

    .line 1105
    .local v1, "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    if-nez v1, :cond_1

    .line 1144
    .end local v1    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1105
    .restart local v1    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    :cond_1
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getMsgId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1107
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getMessageInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/messaging/MessageInfo;

    move-result-object v2

    .line 1108
    .local v2, "msgInfo":Lcom/sonymobile/rcs/provider/messaging/MessageInfo;
    if-eqz v2, :cond_2

    .line 1111
    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1127
    :pswitch_1
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1143
    .end local v1    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    .end local v2    # "msgInfo":Lcom/sonymobile/rcs/provider/messaging/MessageInfo;
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1141
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t parse IMDN document"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1109
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    .restart local v2    # "msgInfo":Lcom/sonymobile/rcs/provider/messaging/MessageInfo;
    :cond_2
    return-void

    :pswitch_2
    :try_start_1
    const-string/jumbo v3, "0"

    .line 1117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getGsmaRelease()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1122
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1131
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->getMsgId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->getSessionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveOne2OneFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public abstract rejectSession()V
.end method

.method public sendDataChunks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    .locals 8
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "typeMsrpChunk"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 949
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 951
    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v4, v2

    move-object v2, p1

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->sendChunks(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;JLcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    return-void

    .line 959
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v7

    .line 955
    .local v7, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-direct {v0, v7}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Problem while sending data chunks"

    invoke-virtual {v0, v2, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendEmptyDataChunk()V
    .locals 3

    .prologue
    .line 836
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->sendEmptyChunk()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 841
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Problem while sending empty data chunk"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public abstract sendGeolocMessage(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Ljava/lang/String;
.end method

.method public abstract sendIsComposingStatus(Z)V
.end method

.method public abstract sendMsrpMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract sendTextMessage(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;)Ljava/lang/String;
.end method

.method public setAcceptTypes(Ljava/lang/String;)V
    .locals 0
    .param p1, "types"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->acceptTypes:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setContributionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->contributionId:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setFeatureTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->featureTags:Ljava/util/List;

    .line 218
    return-void
.end method

.method public setFileTransferSupportedByRemote(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->ftSupportedByRemote:Z

    .line 400
    return-void
.end method

.method protected setFirstMesssage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V
    .locals 0
    .param p1, "firstMessage"    # Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->firstMessage:Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    .line 263
    return-void
.end method

.method public setGeolocSupportedByRemote(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->geolocSupportedByRemote:Z

    .line 382
    return-void
.end method

.method public setMaxParticipants(I)V
    .locals 0
    .param p1, "maxParticipants"    # I

    .prologue
    .line 1198
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->maxParticipants:I

    .line 1199
    return-void
.end method

.method public setMimeTypes(Ljava/lang/String;)V
    .locals 0
    .param p1, "types"    # Ljava/lang/String;

    .prologue
    .line 200
    sput-object p1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->mimeTypes:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->subject:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setWrappedTypes(Ljava/lang/String;)V
    .locals 0
    .param p1, "types"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->wrappedTypes:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public startMediaSession()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->openMsrpSession()V

    .line 1228
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->sendEmptyDataChunk()V

    .line 1229
    return-void
.end method

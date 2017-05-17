.class public Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;
.super Lcom/sonymobile/rcs/core/ims/service/ImsService;
.source "InstantMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService$TerminatingHttpThumbnailDownloader;
    }
.end annotation


# static fields
.field public static final CHAT_FEATURE_TAGS:[Ljava/lang/String;

.field public static final FT_FEATURE_TAGS:[Ljava/lang/String;


# instance fields
.field private imdnMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private maxChatSessions:I

.field private maxFtSessions:I

.field private maxFtSize:I

.field private resumeManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;

.field private storeAndFwdMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "+g.oma.sip-im"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->CHAT_FEATURE_TAGS:[Ljava/lang/String;

    .line 113
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "+g.oma.sip-im"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->FT_FEATURE_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;Z)V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->imdnMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    .line 147
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->storeAndFwdMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 163
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxChatSessions()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxChatSessions:I

    .line 164
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxFileTransferSessions()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxFtSessions:I

    .line 165
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getMaxFileSharingSize()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxFtSize:I

    .line 166
    return-void
.end method

.method private isFileSizeExceeded(J)Z
    .locals 7
    .param p1, "size"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1652
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getMaxFileSharingSize()I

    move-result v0

    .line 1653
    .local v0, "maxSize":I
    if-gtz v0, :cond_1

    .line 1656
    :cond_0
    return v3

    .line 1653
    :cond_1
    int-to-long v4, v0

    cmp-long v1, p1, v4

    if-gtz v1, :cond_2

    move v1, v2

    :goto_0
    if-nez v1, :cond_0

    .line 1654
    return v2

    :cond_2
    move v1, v3

    .line 1653
    goto :goto_0
.end method


# virtual methods
.method public backupGroupChatSessions()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1402
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getSessions()Ljava/util/Enumeration;

    move-result-object v2

    .line 1403
    .local v2, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1404
    .local v0, "contributionIDs":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1415
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1419
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "RCS"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1422
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "GroupChatSessionsBackup"

    .line 1423
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1424
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1426
    return-void

    .line 1405
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 1406
    .local v4, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    instance-of v5, v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    if-eqz v5, :cond_0

    move-object v5, v4

    .line 1407
    check-cast v5, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1408
    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .end local v4    # "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1409
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, ";"

    .line 1410
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1416
    :cond_2
    return-void
.end method

.method public broadcastRejectedChatInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;ILcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;Z)V
    .locals 7
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "rejectReason"    # I
    .param p3, "msg"    # Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .param p4, "isStoreAndForward"    # Z

    .prologue
    const/4 v6, 0x0

    .line 938
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v3

    .line 939
    .local v3, "remote":Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 940
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getDisplayNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "displayName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.sonymobile.rcs.messaging.CHAT_INVITATION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "contact"

    .line 945
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "contactDisplayname"

    .line 946
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "sessionId"

    const/4 v5, 0x0

    .line 947
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "isGroupChat"

    .line 948
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "isStoreAndForward"

    .line 949
    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "firstMessage"

    .line 950
    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "autoAccept"

    .line 951
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "autoReject"

    .line 952
    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "autoRejectReason"

    .line 953
    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    .line 954
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 955
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 957
    return-void
.end method

.method public broadcastRejectedHTTPFileTransferInvite(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;Ljava/lang/String;ZLcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/util/Date;)V
    .locals 18
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "rejectReason"    # I
    .param p4, "ftInfo"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    .param p5, "msgId"    # Ljava/lang/String;
    .param p6, "isGroupChat"    # Z
    .param p7, "chatSession"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .param p8, "sentDate"    # Ljava/util/Date;

    .prologue
    .line 670
    if-eqz p5, :cond_1

    :goto_0
    const/16 v16, 0x0

    .line 674
    .local v16, "thumbnail":[B
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileSize()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromFilename(Ljava/lang/String;Ljava/lang/String;J)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v8

    .line 676
    .local v8, "content":Lcom/sonymobile/rcs/core/content/MmContent;
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileSize()I

    move-result v2

    int-to-long v12, v2

    .line 677
    .local v12, "fileSize":J
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileThumbnail()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    move-result-object v14

    .line 678
    .local v14, "fileTransferHttpThumbnail":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;
    new-instance v17, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService$TerminatingHttpThumbnailDownloader;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService$TerminatingHttpThumbnailDownloader;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;Lcom/sonymobile/rcs/core/content/MmContent;)V

    .line 680
    .local v17, "thumbnailDownloader":Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService$TerminatingHttpThumbnailDownloader;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService$TerminatingHttpThumbnailDownloader;->downloadThumbnail(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;)[B

    move-result-object v16

    .line 682
    .local v16, "thumbnail":[B
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 685
    .local v10, "date":Ljava/util/Date;
    if-nez p7, :cond_2

    .line 694
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p5

    move/from16 v9, p3

    move-object/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addIncomingFileTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;ILjava/util/Date;Ljava/util/Date;)V

    :goto_1
    const/16 v2, 0x25

    .line 697
    move/from16 v0, p3

    if-eq v0, v2, :cond_4

    .line 702
    :goto_2
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.rcs.messaging.FILE_TRANSFER_INVITATION"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v15, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "contact"

    .line 703
    move-object/from16 v0, p1

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "contactDisplayname"

    .line 704
    move-object/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "msgId"

    .line 705
    move-object/from16 v0, p5

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "sessionId"

    const/4 v3, 0x0

    .line 706
    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    if-nez p7, :cond_5

    :cond_0
    :goto_3
    const-string/jumbo v2, "validity"

    .line 713
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getTransferValidity()J

    move-result-wide v4

    invoke-virtual {v15, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "filename"

    .line 714
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "filesize"

    .line 715
    invoke-virtual {v15, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "filetype"

    .line 716
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "thumbnail"

    .line 717
    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v2, "autoAccept"

    .line 718
    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "autoReject"

    .line 719
    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "autoRejectReason"

    .line 720
    move/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "isGroupTransfer"

    .line 721
    move/from16 v0, p6

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "timestamp"

    .line 722
    invoke-virtual {v15, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v2, "timestamp_sent"

    .line 723
    move-object/from16 v0, p8

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 724
    invoke-virtual {v15, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 726
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 727
    return-void

    .line 671
    .end local v8    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v10    # "date":Ljava/util/Date;
    .end local v12    # "fileSize":J
    .end local v14    # "fileTransferHttpThumbnail":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "thumbnail":[B
    .end local v17    # "thumbnailDownloader":Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService$TerminatingHttpThumbnailDownloader;
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_0

    .line 686
    .restart local v8    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .restart local v10    # "date":Ljava/util/Date;
    .restart local v12    # "fileSize":J
    .restart local v14    # "fileTransferHttpThumbnail":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;
    .restart local v16    # "thumbnail":[B
    .restart local v17    # "thumbnailDownloader":Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService$TerminatingHttpThumbnailDownloader;
    :cond_2
    if-nez p6, :cond_3

    .line 690
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual/range {p7 .. p7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p5

    move/from16 v9, p3

    move-object/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addIncomingFileTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;ILjava/util/Date;Ljava/util/Date;)V

    goto/16 :goto_1

    .line 687
    :cond_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual/range {p7 .. p7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p5

    move/from16 v9, p3

    move-object/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addIncomingGroupFileTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;ILjava/util/Date;Ljava/util/Date;)V

    goto/16 :goto_1

    .line 698
    :cond_4
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v2, v0, v3}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markChatMessageAsSpam(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .restart local v15    # "intent":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v2, "chatSessionId"

    .line 708
    invoke-virtual/range {p7 .. p7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    if-eqz p6, :cond_0

    const-string/jumbo v2, "chatId"

    .line 710
    invoke-virtual/range {p7 .. p7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3
.end method

.method public broadcastRejectedMSRPFileTransferInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;ILcom/sonymobile/rcs/core/content/MmContent;)V
    .locals 13
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "rejectReason"    # I
    .param p3, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;

    .prologue
    const/4 v12, 0x0

    .line 619
    .local v12, "thumbnail":[B
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v11

    .line 620
    .local v11, "remote":Ljava/lang/String;
    invoke-static {v11}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getDisplayNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "displayName":Ljava/lang/String;
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->extractFileThumbnail(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)[B

    move-result-object v12

    .line 623
    .local v12, "thumbnail":[B
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v5

    .line 625
    .local v5, "msgId":Ljava/lang/String;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 628
    .local v8, "date":Ljava/util/Date;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v6, p3

    move v7, p2

    move-object v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addIncomingFileTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;ILjava/util/Date;Ljava/util/Date;)V

    const/16 v0, 0x25

    .line 630
    if-eq p2, v0, :cond_0

    .line 635
    :goto_0
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "com.sonymobile.rcs.messaging.FILE_TRANSFER_INVITATION"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "contact"

    .line 636
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "contactDisplayname"

    .line 637
    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "msgId"

    .line 638
    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "sessionId"

    const/4 v3, 0x0

    .line 639
    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "filename"

    .line 640
    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "filesize"

    .line 641
    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v6

    invoke-virtual {v10, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v0, "filetype"

    .line 642
    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "thumbnail"

    .line 643
    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v0, "autoAccept"

    .line 644
    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "autoReject"

    .line 645
    const/4 v3, 0x1

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "autoRejectReason"

    .line 646
    invoke-virtual {v10, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "timestamp"

    .line 647
    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v0, "timestamp_sent"

    .line 648
    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 649
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 650
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 652
    return-void

    .line 631
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v5, v3}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markChatMessageAsSpam(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public clearGroupChatSessions()V
    .locals 5

    .prologue
    .line 1463
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "RCS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1466
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "GroupChatSessionsBackup"

    const-string/jumbo v3, ""

    .line 1467
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1468
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1469
    return-void
.end method

.method public getFileTransferSessions()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 326
    .local v1, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;>;"
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getSessions()Ljava/util/Enumeration;

    move-result-object v0

    .line 327
    .local v0, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 334
    return-object v1

    .line 328
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 329
    .local v2, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    instance-of v3, v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    if-eqz v3, :cond_0

    .line 330
    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    .end local v2    # "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFileTransferSessionsWith(Ljava/lang/String;)Ljava/util/Vector;
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 307
    .local v1, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;>;"
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getSessions()Ljava/util/Enumeration;

    move-result-object v0

    .line 308
    .local v0, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 316
    return-object v1

    .line 309
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 310
    .local v2, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    instance-of v3, v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    .end local v2    # "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getGroupChatSessionsForAutoRejoin()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    .local v0, "activeContributionIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "RCS"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v10, "GroupChatSessionsBackup"

    .line 1439
    invoke-interface {v8, v10, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1440
    .local v5, "groupChatSessions":Ljava/lang/String;
    new-array v3, v12, [Ljava/lang/String;

    .line 1443
    .local v3, "contributionIDs":[Ljava/lang/String;
    if-nez v5, :cond_1

    .line 1447
    :cond_0
    :goto_0
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-lt v6, v7, :cond_2

    .line 1456
    return-object v0

    .line 1443
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    const-string/jumbo v10, ";"

    .line 1444
    invoke-virtual {v5, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1447
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_2
    aget-object v2, v1, v6

    .line 1448
    .local v2, "contributionID":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;

    move-result-object v4

    .line 1450
    .local v4, "groupChatInfo":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatStatus(Ljava/lang/String;)I

    move-result v9

    .local v9, "status":I
    const/16 v10, 0xc

    .line 1451
    if-ne v9, v10, :cond_4

    .line 1447
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1451
    :cond_4
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->getRejoinId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1453
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getImSessions()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 233
    .local v1, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;>;"
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getSessions()Ljava/util/Enumeration;

    move-result-object v0

    .line 234
    .local v0, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 241
    return-object v1

    .line 235
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 236
    .local v2, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    instance-of v3, v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    if-eqz v3, :cond_0

    .line 237
    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .end local v2    # "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getImSessionsWith(Ljava/lang/String;)Ljava/util/Vector;
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 253
    .local v1, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;>;"
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getSessions()Ljava/util/Enumeration;

    move-result-object v0

    .line 254
    .local v0, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 262
    return-object v1

    .line 255
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 256
    .local v2, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    instance-of v3, v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .end local v2    # "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;
    .locals 1

    .prologue
    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->imdnMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStoreAndForwardManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->storeAndFwdMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;

    return-object v0
.end method

.method public initiateAdhocGroupChatSession(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .locals 3
    .param p2, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 969
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 974
    :goto_0
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxChatSessions:I

    if-nez v1, :cond_2

    .line 982
    :cond_0
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;

    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getImConferenceUri()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    invoke-direct {v2, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;-><init>(Ljava/util/List;)V

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V

    .line 987
    .local v0, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->startSession()V

    .line 988
    return-object v0

    .line 970
    .end local v0    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Initiate an ad-hoc group chat session"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 974
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImSessions()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxChatSessions:I

    if-lt v1, v2, :cond_0

    .line 975
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 978
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v2, "Max chat sessions achieved"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 976
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "The max number of chat sessions is achieved: cancel the initiation"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public initiateFileTransferSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .locals 14
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "thumbnail"    # Z
    .param p4, "chatSessionId"    # Ljava/lang/String;
    .param p5, "chatContributionId"    # Ljava/lang/String;
    .param p6, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_4

    .line 358
    :goto_0
    iget v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxFtSessions:I

    if-nez v3, :cond_5

    .line 366
    :cond_0
    iget v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxFtSize:I

    if-gtz v3, :cond_7

    .line 374
    :cond_1
    const/4 v11, 0x0

    .line 376
    .local v11, "isFToHttpSupportedByRemote":Z
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v10

    .line 378
    .local v10, "capability":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    if-nez v10, :cond_a

    .end local v11    # "isFToHttpSupportedByRemote":Z
    :goto_1
    const/4 v6, 0x0

    .line 382
    .local v6, "thumbnailImage":[B
    if-nez p3, :cond_b

    .line 401
    .end local v6    # "thumbnailImage":[B
    :cond_2
    :goto_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMyCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v13

    .line 403
    .local v13, "myCapability":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    const/4 v12, 0x0

    .line 404
    .local v12, "isHttpProtocol":Z
    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v3

    if-nez v3, :cond_f

    .line 412
    :cond_3
    :goto_3
    if-nez v12, :cond_10

    .line 419
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-direct {v2, p0, v0, v3, v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[B)V

    .line 421
    .local v2, "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->setMessageID(Ljava/lang/String;)V

    .line 425
    :goto_4
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->startSession()V

    .line 426
    return-object v2

    .line 353
    .end local v2    # "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .end local v10    # "capability":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v12    # "isHttpProtocol":Z
    .end local v13    # "myCapability":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Initiate a file transfer session with contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getFileTransferSessions()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iget v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxFtSessions:I

    if-lt v3, v4, :cond_0

    .line 359
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_6

    .line 362
    :goto_5
    new-instance v3, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v4, "Max file transfer sessions achieved"

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 360
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "The max number of file transfer sessions is achieved: cancel the initiation"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 366
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v4

    iget v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxFtSize:I

    int-to-long v8, v3

    cmp-long v3, v4, v8

    if-gtz v3, :cond_8

    const/4 v3, 0x1

    :goto_6
    if-nez v3, :cond_1

    .line 367
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_9

    .line 370
    :goto_7
    new-instance v3, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v4, "File exceeds max size"

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 366
    :cond_8
    const/4 v3, 0x0

    goto :goto_6

    .line 368
    :cond_9
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "File exceeds max size: cancel the initiation"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_7

    .line 379
    .restart local v10    # "capability":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .restart local v11    # "isFToHttpSupportedByRemote":Z
    :cond_a
    invoke-virtual {v10}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v11

    .local v11, "isFToHttpSupportedByRemote":Z
    goto/16 :goto_1

    .line 383
    .end local v11    # "isFToHttpSupportedByRemote":Z
    .restart local v6    # "thumbnailImage":[B
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "image/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 390
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 391
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->hasUri()Z

    move-result v3

    if-nez v3, :cond_e

    .line 394
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 395
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v6

    .local v6, "thumbnailImage":[B
    goto/16 :goto_2

    .line 385
    .local v6, "thumbnailImage":[B
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->hasUri()Z

    move-result v3

    if-nez v3, :cond_d

    .line 388
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->createFileThumbnail(Ljava/lang/String;)[B

    move-result-object v6

    .local v6, "thumbnailImage":[B
    goto/16 :goto_2

    .line 386
    .local v6, "thumbnailImage":[B
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->createThumbnail(Landroid/net/Uri;)[B

    move-result-object v6

    .local v6, "thumbnailImage":[B
    goto/16 :goto_2

    .line 392
    .local v6, "thumbnailImage":[B
    :cond_e
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v6

    .local v6, "thumbnailImage":[B
    goto/16 :goto_2

    .line 404
    .end local v6    # "thumbnailImage":[B
    .restart local v12    # "isHttpProtocol":Z
    .restart local v13    # "myCapability":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_f
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFtProtocol()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "HTTP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v11, :cond_3

    .line 407
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 414
    :cond_10
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    goto/16 :goto_4
.end method

.method public initiateGroupFileTransferSession(Ljava/util/List;Lcom/sonymobile/rcs/core/content/MmContent;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .locals 14
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "thumbnail"    # Z
    .param p4, "chatSessionId"    # Ljava/lang/String;
    .param p5, "chatContributionId"    # Ljava/lang/String;
    .param p6, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sonymobile/rcs/core/content/MmContent;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "contactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMyCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 453
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v10, "contactsString":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 460
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_8

    .line 466
    :goto_1
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxFtSessions:I

    if-nez v1, :cond_9

    .line 474
    :cond_1
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxFtSize:I

    if-gtz v1, :cond_b

    :cond_2
    const/4 v5, 0x0

    .line 482
    .local v5, "thumbnailImage":[B
    if-nez p3, :cond_e

    .line 508
    .end local v5    # "thumbnailImage":[B
    :cond_3
    :goto_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMyCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v13

    .line 509
    .local v13, "myCapability":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    const/4 v12, 0x0

    .line 510
    .local v12, "isHttpProtocol":Z
    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v1

    if-nez v1, :cond_14

    .line 516
    :cond_4
    :goto_3
    if-nez v12, :cond_15

    .line 528
    new-instance v1, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v2, "Group file transfer over MSRP not possible outside of a group chat session"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 447
    .end local v10    # "contactsString":Ljava/lang/StringBuilder;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "isHttpProtocol":Z
    .end local v13    # "myCapability":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_6

    .line 450
    :goto_4
    new-instance v1, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v2, "File transfer Http not supported"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 448
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Group file transfer not supported"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 454
    .restart local v10    # "contactsString":Ljava/lang/StringBuilder;
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 455
    .local v9, "contact":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 461
    .end local v9    # "contact":Ljava/lang/String;
    :cond_8
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initiate a group file transfer session with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 466
    :cond_9
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getFileTransferSessions()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxFtSessions:I

    if-lt v1, v2, :cond_1

    .line 467
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_a

    .line 470
    :goto_5
    new-instance v1, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v2, "Max file transfer sessions achieved"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_a
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "The max number of file transfer sessions is achieved: cancel the initiation"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 474
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v2

    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxFtSize:I

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-gtz v1, :cond_c

    const/4 v1, 0x1

    :goto_6
    if-nez v1, :cond_2

    .line 475
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_d

    .line 478
    :goto_7
    new-instance v1, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v2, "File exceeds max size"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    :cond_c
    const/4 v1, 0x0

    goto :goto_6

    .line 476
    :cond_d
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "File exceeds max size: cancel the initiation"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_7

    .line 483
    .restart local v5    # "thumbnailImage":[B
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 496
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 497
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->hasUri()Z

    move-result v1

    if-nez v1, :cond_13

    .line 500
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 501
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v5

    .local v5, "thumbnailImage":[B
    goto/16 :goto_2

    .line 485
    .local v5, "thumbnailImage":[B
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->hasUri()Z

    move-result v1

    if-nez v1, :cond_10

    .line 491
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_12

    .line 494
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->createFileThumbnail(Ljava/lang/String;)[B

    move-result-object v5

    .local v5, "thumbnailImage":[B
    goto/16 :goto_2

    .line 486
    .local v5, "thumbnailImage":[B
    :cond_10
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_11

    .line 489
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->createThumbnail(Landroid/net/Uri;)[B

    move-result-object v5

    .local v5, "thumbnailImage":[B
    goto/16 :goto_2

    .line 487
    .local v5, "thumbnailImage":[B
    :cond_11
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating thumbnail with URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_9

    .line 492
    :cond_12
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating thumbnail with URL    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_8

    .line 498
    :cond_13
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v5

    .local v5, "thumbnailImage":[B
    goto/16 :goto_2

    .line 511
    .end local v5    # "thumbnailImage":[B
    .restart local v12    # "isHttpProtocol":Z
    .restart local v13    # "myCapability":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_14
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFtProtocol()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "HTTP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 512
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 518
    :cond_15
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getImConferenceUri()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    invoke-direct {v4, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;-><init>(Ljava/util/List;)V

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .local v0, "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->startSession()V

    .line 526
    return-object v0
.end method

.method public initiateOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "firstMsg"    # Ljava/lang/String;
    .param p3, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 774
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->initiateOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-result-object v0

    return-object v0
.end method

.method public initiateOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "firstMsg"    # Ljava/lang/String;
    .param p3, "messageId"    # Ljava/lang/String;
    .param p4, "isFileTransferInit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 789
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 794
    :goto_0
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxChatSessions:I

    if-nez v1, :cond_2

    .line 802
    :cond_0
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 806
    .local v0, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->startSession()V

    .line 807
    return-object v0

    .line 790
    .end local v0    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initiate 1-1 chat session with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 794
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImSessions()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxChatSessions:I

    if-lt v1, v2, :cond_0

    .line 795
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 798
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v2, "Max chat sessions achieved"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 796
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "The max number of chat sessions is achieved: cancel the initiation"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public receiveAdhocGroupChatSession(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 6
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/16 v5, 0x1e6

    .line 997
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1002
    :goto_0
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getReferredIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1003
    .local v0, "remote":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isImBlockedForContact(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1015
    iget v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxChatSessions:I

    if-nez v2, :cond_4

    .line 1026
    :cond_0
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 1030
    .local v1, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->startSession()V

    .line 1033
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sonymobile/rcs/core/CoreListener;->handleAdhocGroupChatSessionInvitation(Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;)V

    .line 1034
    return-void

    .line 998
    .end local v0    # "remote":Ljava/lang/String;
    .end local v1    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Receive an ad-hoc group chat session invitation"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1004
    .restart local v0    # "remote":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1010
    :goto_1
    invoke-virtual {p0, p1, v5}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 1011
    return-void

    .line 1005
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Contact "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is blocked: automatically reject the chat invitation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 1015
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImSessions()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxChatSessions:I

    if-lt v2, v3, :cond_0

    .line 1016
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1021
    :goto_2
    invoke-virtual {p0, p1, v5}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 1022
    return-void

    .line 1017
    :cond_5
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "The max number of chat sessions is achieved: reject the invitation"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public receiveConferenceNotification(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 5
    .param p1, "notify"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 1153
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImSessions()Ljava/util/Vector;

    move-result-object v3

    .local v3, "sessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;>;"
    const/4 v1, 0x0

    .line 1154
    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 1164
    return-void

    .line 1155
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .line 1156
    .local v2, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    instance-of v4, v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    if-nez v4, :cond_2

    .line 1154
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 1157
    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    .line 1158
    .local v0, "groupChatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getConferenceEventSubscriber()Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->isNotifyForThisSubscriber(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1160
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getConferenceEventSubscriber()Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->receiveNotification(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto :goto_1
.end method

.method public receiveFileTransferInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 11
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v8, 0x0

    const/16 v10, 0x25b

    const/4 v6, 0x0

    .line 538
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 543
    :goto_0
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "remote":Ljava/lang/String;
    invoke-static {p1}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromSdp(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v0

    .line 545
    .local v0, "content":Lcom/sonymobile/rcs/core/content/MmContent;
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isFtBlockedForContact(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 559
    iget v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxFtSessions:I

    if-nez v5, :cond_4

    .line 572
    :cond_0
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->isFileSizeExceeded(J)Z

    move-result v5

    if-nez v5, :cond_6

    .line 586
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v2

    .line 587
    .local v2, "ftFileSize":J
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->getExternalAvailableSpaceInBytes()J

    move-result-wide v8

    cmp-long v5, v2, v8

    if-gtz v5, :cond_8

    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_a

    .line 588
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_9

    .line 592
    :goto_2
    invoke-virtual {p0, p1, v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    const/16 v5, 0x14

    .line 593
    invoke-virtual {p0, p1, v5, v0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedMSRPFileTransferInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;ILcom/sonymobile/rcs/core/content/MmContent;)V

    .line 595
    return-void

    .line 539
    .end local v0    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v1    # "remote":Ljava/lang/String;
    .end local v2    # "ftFileSize":J
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Receive a file transfer session invitation"

    invoke-virtual {v5, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    .restart local v0    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .restart local v1    # "remote":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_3

    .line 552
    :goto_3
    invoke-virtual {p0, p1, v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    const/16 v5, 0x25

    .line 553
    invoke-virtual {p0, p1, v5, v8}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedMSRPFileTransferInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;ILcom/sonymobile/rcs/core/content/MmContent;)V

    .line 555
    return-void

    .line 547
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Contact "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is blocked: automatically reject the file transfer invitation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 559
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getFileTransferSessions()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    iget v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxFtSessions:I

    if-lt v5, v7, :cond_0

    .line 560
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_5

    .line 565
    :goto_4
    invoke-virtual {p0, p1, v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    const/16 v5, 0x24

    .line 566
    invoke-virtual {p0, p1, v5, v8}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedMSRPFileTransferInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;ILcom/sonymobile/rcs/core/content/MmContent;)V

    .line 568
    return-void

    .line 561
    :cond_5
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "The max number of file transfer sessions is achieved: reject the invitation"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 573
    :cond_6
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_7

    .line 578
    :goto_5
    invoke-virtual {p0, p1, v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    const/16 v5, 0x15

    .line 579
    invoke-virtual {p0, p1, v5, v0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedMSRPFileTransferInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;ILcom/sonymobile/rcs/core/content/MmContent;)V

    .line 581
    return-void

    .line 574
    :cond_7
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "File is too big, reject file transfer invitation"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .restart local v2    # "ftFileSize":J
    :cond_8
    move v5, v6

    .line 587
    goto/16 :goto_1

    .line 589
    :cond_9
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "No enough space to receive file, reject file transfer invitation"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 599
    :cond_a
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;

    invoke-direct {v4, p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 602
    .local v4, "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->startSession()V

    .line 605
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v5

    invoke-interface {v5, v4, v6}, Lcom/sonymobile/rcs/core/CoreListener;->handleFileTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;Z)V

    .line 606
    return-void
.end method

.method public receiveGroupFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "groupChatId"    # Ljava/lang/String;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;

    .prologue
    .line 1281
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/core/CoreListener;->handleGroupFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    return-void
.end method

.method public receiveGroupMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "groupChatId"    # Ljava/lang/String;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/core/CoreListener;->handleGroupMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    return-void
.end method

.method public receiveHttpFileTranferInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;)V
    .locals 19
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "ftinfo"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    .prologue
    .line 1479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1483
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v16

    .line 1484
    .local v16, "remote":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1485
    .local v3, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getDisplayNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "displayName":Ljava/lang/String;
    const-string/jumbo v2, "rcse-standfw"

    .line 1486
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 1487
    .local v18, "isStoreAndForwardMsg":Z
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getServerDate(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/util/Date;

    move-result-object v10

    .line 1490
    .local v10, "sentDate":Ljava/util/Date;
    if-nez v18, :cond_2

    .line 1493
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isFtBlockedForContact(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1507
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxFtSessions:I

    if-nez v2, :cond_5

    .line 1520
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileSize()I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->isFileSizeExceeded(J)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1532
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileSize()I

    move-result v2

    int-to-long v6, v2

    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->getExternalAvailableSpaceInBytes()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-gtz v2, :cond_9

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_b

    .line 1533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_a

    :goto_3
    const/16 v2, 0x25b

    .line 1538
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    const/16 v5, 0x14

    const/4 v7, 0x0

    .line 1539
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedHTTPFileTransferInvite(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;Ljava/lang/String;ZLcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/util/Date;)V

    .line 1541
    return-void

    .line 1480
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "displayName":Ljava/lang/String;
    .end local v10    # "sentDate":Ljava/util/Date;
    .end local v16    # "remote":Ljava/lang/String;
    .end local v18    # "isStoreAndForwardMsg":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Receive a single HTTP file transfer invitation"

    invoke-virtual {v2, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1491
    .restart local v3    # "number":Ljava/lang/String;
    .restart local v4    # "displayName":Ljava/lang/String;
    .restart local v10    # "sentDate":Ljava/util/Date;
    .restart local v16    # "remote":Ljava/lang/String;
    .restart local v18    # "isStoreAndForwardMsg":Z
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getReferredIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    .line 1494
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_4
    const/16 v2, 0x25b

    .line 1500
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    const/16 v5, 0x25

    const/4 v7, 0x0

    .line 1501
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedHTTPFileTransferInvite(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;Ljava/lang/String;ZLcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/util/Date;)V

    .line 1503
    return-void

    .line 1495
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Contact "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is blocked, automatically reject the HTTP File transfer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 1507
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getFileTransferSessions()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxFtSessions:I

    if-lt v2, v5, :cond_0

    .line 1508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_6

    :goto_5
    const/16 v2, 0x25b

    .line 1513
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    const/16 v5, 0x24

    const/4 v7, 0x0

    .line 1514
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedHTTPFileTransferInvite(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;Ljava/lang/String;ZLcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/util/Date;)V

    .line 1516
    return-void

    .line 1509
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "The max number of FT sessions is achieved, reject the HTTP File transfer"

    invoke-virtual {v2, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 1521
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_8

    :goto_6
    const/16 v2, 0x25b

    .line 1526
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    const/16 v5, 0x15

    const/4 v7, 0x0

    .line 1527
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedHTTPFileTransferInvite(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;Ljava/lang/String;ZLcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/util/Date;)V

    .line 1529
    return-void

    .line 1522
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "File is too big, reject the HTTP File transfer"

    invoke-virtual {v2, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 1532
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1534
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "No enough space to receive file, reject file transfer invitation"

    invoke-virtual {v2, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1545
    :cond_b
    new-instance v13, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingOne2OneChatSession;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingOne2OneChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 1547
    .local v13, "one2oneChatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingOne2OneChatSession;
    invoke-virtual {v13}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingOne2OneChatSession;->startSession()V

    .line 1550
    new-instance v11, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getMessageId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingOne2OneChatSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v14, p2

    invoke-direct/range {v11 .. v17}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    .local v11, "httpFiletransferSession":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;
    invoke-virtual {v11, v10}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->setSentDate(Ljava/util/Date;)V

    .line 1555
    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->startSession()V

    .line 1558
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v2

    invoke-interface {v2, v11, v13}, Lcom/sonymobile/rcs/core/CoreListener;->handle1to1FileTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;)V

    .line 1560
    return-void
.end method

.method public receiveMessageDeliveryStatus(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 13
    .param p1, "message"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 1174
    :try_start_0
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1177
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xc8

    invoke-static {p1, v10, v11}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v6

    .line 1179
    .local v6, "response":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->parseCpimDeliveryReport(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    move-result-object v3

    .line 1189
    .local v3, "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    if-nez v3, :cond_3

    .line 1253
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 1175
    .end local v3    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    .end local v6    # "response":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v11, "Send 200 OK"

    invoke-virtual {v10, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1185
    :catch_0
    move-exception v1

    .line 1181
    .local v1, "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1184
    :goto_2
    return-void

    .line 1182
    :cond_2
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v11, "Can\'t send 200 OK response"

    invoke-virtual {v10, v11, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1189
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    .restart local v6    # "response":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_3
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getMsgId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1190
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, "contact":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v9

    .line 1192
    .local v9, "status":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getMsgId()Ljava/lang/String;

    move-result-object v4

    .line 1195
    .local v4, "msgId":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getMessageInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/messaging/MessageInfo;

    move-result-object v5

    .line 1196
    .local v5, "msgInfo":Lcom/sonymobile/rcs/provider/messaging/MessageInfo;
    if-eqz v5, :cond_4

    .line 1199
    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->getType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 1231
    :pswitch_1
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImSessionsWith(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v8

    .line 1233
    .local v8, "sessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;>;"
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v10

    if-gtz v10, :cond_5

    .line 1242
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v10

    invoke-interface {v10, v0, v4, v9}, Lcom/sonymobile/rcs/core/CoreListener;->handleOne2OneMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1197
    .end local v8    # "sessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;>;"
    :cond_4
    return-void

    :pswitch_2
    const-string/jumbo v10, "0"

    .line 1204
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getGsmaRelease()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1208
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v10

    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v11

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->getSessionId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v0, v4, v9}, Lcom/sonymobile/rcs/core/CoreListener;->handleGroupMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    const-string/jumbo v10, "0"

    .line 1218
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getGsmaRelease()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1223
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v10

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->getSessionId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v0, v4, v9}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveGroupFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v8    # "sessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;>;"
    :cond_5
    const/4 v2, 0x0

    .line 1235
    .local v2, "i":I
    :goto_3
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v2, v10, :cond_0

    .line 1236
    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .line 1237
    .local v7, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    invoke-virtual {v7, v4, v9}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1248
    .end local v2    # "i":I
    .end local v7    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .end local v8    # "sessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;>;"
    :pswitch_4
    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->getSessionId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v0, v4, v10, v9}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveOne2OneFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public receiveOne2OneChatSession(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 12
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 816
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_3

    .line 821
    :goto_0
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getFirstMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v0

    .line 822
    .local v0, "firstMsg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    if-eqz v0, :cond_4

    .line 835
    if-nez v0, :cond_5

    .line 847
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getReferredIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v5

    .line 848
    .local v5, "remote":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isImBlockedForContact(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 886
    iget v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxChatSessions:I

    if-nez v9, :cond_c

    .line 905
    :cond_1
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getReferredIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImSessionsWith(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 907
    .local v2, "imSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;>;"
    if-nez v2, :cond_f

    .line 918
    :cond_2
    new-instance v8, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingOne2OneChatSession;

    invoke-direct {v8, p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingOne2OneChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 921
    .local v8, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingOne2OneChatSession;
    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingOne2OneChatSession;->startSession()V

    .line 924
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/sonymobile/rcs/core/CoreListener;->handleOneOneChatSessionInvitation(Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingOne2OneChatSession;)V

    .line 925
    return-void

    .line 817
    .end local v0    # "firstMsg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .end local v2    # "imSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;>;"
    .end local v5    # "remote":Ljava/lang/String;
    .end local v8    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingOne2OneChatSession;
    :cond_3
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "Receive a 1-1 chat session invitation"

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "firstMsg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    :cond_4
    const/16 v9, 0x25b

    .line 832
    invoke-virtual {p0, p1, v9}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 833
    return-void

    .line 836
    :cond_5
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getMessageId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v4

    .line 837
    .local v4, "msgId":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 838
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->doesMessageIdAlreadyExist(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x25b

    .line 840
    invoke-virtual {p0, p1, v9}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 841
    return-void

    .line 849
    .end local v4    # "msgId":Ljava/lang/String;
    .restart local v5    # "remote":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_8

    .line 855
    :goto_1
    if-nez v0, :cond_9

    .line 860
    :goto_2
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isImdnDeliveredRequested(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_7
    :goto_3
    const/16 v9, 0x1e6

    .line 879
    invoke-virtual {p0, p1, v9}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    const/16 v9, 0x25

    .line 880
    const/4 v10, 0x0

    invoke-virtual {p0, p1, v9, v0, v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedChatInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;ILcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;Z)V

    .line 882
    return-void

    .line 850
    :cond_8
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Contact "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is blocked: automatically reject the chat invitation"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 856
    :cond_9
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addSpamMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V

    goto :goto_2

    .line 862
    :cond_a
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getMessageId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v4

    .line 863
    .restart local v4    # "msgId":Ljava/lang/String;
    if-eqz v4, :cond_7

    const/4 v6, 0x0

    .local v6, "remoteInstanceId":Ljava/lang/String;
    const-string/jumbo v9, "Contact"

    .line 865
    invoke-virtual {p1, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v3

    check-cast v3, Ljavax2/sip/header/ContactHeader;

    .line 867
    .local v3, "inviteContactHeader":Ljavax2/sip/header/ContactHeader;
    if-nez v3, :cond_b

    .line 872
    .end local v6    # "remoteInstanceId":Ljava/lang/String;
    :goto_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    move-result-object v9

    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "delivered"

    invoke-virtual {v9, v10, v4, v11, v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->sendMessageDeliveryStatusImmediately(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .restart local v6    # "remoteInstanceId":Ljava/lang/String;
    :cond_b
    const-string/jumbo v9, "+sip.instance"

    .line 868
    invoke-interface {v3, v9}, Ljavax2/sip/header/ContactHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "remoteInstanceId":Ljava/lang/String;
    goto :goto_4

    .line 886
    .end local v3    # "inviteContactHeader":Ljavax2/sip/header/ContactHeader;
    .end local v4    # "msgId":Ljava/lang/String;
    .end local v6    # "remoteInstanceId":Ljava/lang/String;
    :cond_c
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImSessions()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    iget v10, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxChatSessions:I

    if-lt v9, v10, :cond_1

    .line 887
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_d

    .line 892
    :goto_5
    if-nez v0, :cond_e

    :goto_6
    const/16 v9, 0x1e6

    .line 899
    invoke-virtual {p0, p1, v9}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    const/16 v9, 0x26

    .line 900
    const/4 v10, 0x0

    invoke-virtual {p0, p1, v9, v0, v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedChatInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;ILcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;Z)V

    .line 902
    return-void

    .line 888
    :cond_d
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "The max number of chat sessions is achieved: reject the invitation"

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 893
    :cond_e
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v9

    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getContributionId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x26

    invoke-virtual {v9, v0, v10, v11}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addIncomingChatMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;Ljava/lang/String;I)V

    goto :goto_6

    .line 908
    .restart local v2    # "imSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;>;"
    :cond_f
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .line 910
    .local v7, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isRemoteOriginated()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-static {v7}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->getSessionState(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v10, v9, :cond_10

    .line 912
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->rejectSession()V

    goto :goto_7
.end method

.method public receiveOne2OneFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "ftSessionId"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;

    .prologue
    .line 1266
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/core/CoreListener;->handleOne2OneFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    return-void
.end method

.method public receiveStoredAndForwardHttpFileTranferInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;)V
    .locals 18
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "ftinfo"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    .prologue
    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1573
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getReferredIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v16

    .line 1574
    .local v16, "remote":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1575
    .local v3, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getDisplayNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1576
    .local v4, "displayName":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getServerDate(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/util/Date;

    move-result-object v10

    .line 1578
    .local v10, "sentDate":Ljava/util/Date;
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isFtBlockedForContact(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1592
    new-instance v13, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 1594
    .local v13, "one2oneChatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;
    invoke-virtual {v13}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->startSession()V

    .line 1597
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileSize()I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->isFileSizeExceeded(J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1614
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileSize()I

    move-result v2

    int-to-long v6, v2

    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->getExternalAvailableSpaceInBytes()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-gtz v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_7

    .line 1615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1620
    :goto_2
    invoke-virtual {v13}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x25b

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v2, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)V

    .line 1624
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v5, 0x7b

    invoke-direct {v2, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    invoke-virtual {v13, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    const/16 v5, 0x15

    const/4 v7, 0x0

    .line 1626
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedHTTPFileTransferInvite(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;Ljava/lang/String;ZLcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/util/Date;)V

    .line 1628
    return-void

    .line 1571
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "displayName":Ljava/lang/String;
    .end local v10    # "sentDate":Ljava/util/Date;
    .end local v13    # "one2oneChatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;
    .end local v16    # "remote":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Receive a single S&F HTTP file transfer invitation"

    invoke-virtual {v2, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1579
    .restart local v3    # "number":Ljava/lang/String;
    .restart local v4    # "displayName":Ljava/lang/String;
    .restart local v10    # "sentDate":Ljava/util/Date;
    .restart local v16    # "remote":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_3
    const/16 v2, 0x25b

    .line 1585
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    const/16 v5, 0x25

    const/4 v7, 0x0

    .line 1586
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedHTTPFileTransferInvite(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;Ljava/lang/String;ZLcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/util/Date;)V

    .line 1588
    return-void

    .line 1580
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Contact "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is blocked, automatically reject the HTTP File transfer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 1598
    .restart local v13    # "one2oneChatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1604
    :goto_4
    invoke-virtual {v13}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x25b

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v2, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)V

    .line 1608
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v5, 0x7b

    invoke-direct {v2, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    invoke-virtual {v13, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    const/16 v5, 0x15

    const/4 v7, 0x0

    .line 1610
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedHTTPFileTransferInvite(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;Ljava/lang/String;ZLcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/util/Date;)V

    .line 1612
    return-void

    .line 1599
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "File is too big, reject file transfer invitation"

    invoke-virtual {v2, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 1614
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1616
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "No enough space to receive file, reject file transfer invitation"

    invoke-virtual {v2, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1632
    :cond_7
    new-instance v11, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getMessageId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v14, p2

    invoke-direct/range {v11 .. v17}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    .local v11, "httpFiletransferSession":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;
    invoke-virtual {v11, v10}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->setSentDate(Ljava/util/Date;)V

    .line 1636
    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->startSession()V

    .line 1639
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v2

    invoke-interface {v2, v11, v13}, Lcom/sonymobile/rcs/core/CoreListener;->handle1to1FileTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;)V

    .line 1642
    return-void
.end method

.method public receiveStoredAndForwardPushMessages(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 6
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 1319
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1323
    :goto_0
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getFirstMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v0

    .line 1324
    .local v0, "firstMsg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    if-eqz v0, :cond_2

    .line 1338
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getReferredIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v2

    .line 1339
    .local v2, "remote":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 1353
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isImBlockedForContact(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1367
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getStoreAndForwardManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;->receiveStoredMessages(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 1368
    return-void

    .line 1320
    .end local v0    # "firstMsg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .end local v2    # "remote":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Receive S&F push messages invitation"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "firstMsg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    :cond_2
    const/16 v3, 0x25b

    .line 1334
    invoke-virtual {p0, p1, v3}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 1335
    return-void

    .line 1340
    .restart local v2    # "remote":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getMessageId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v1

    .line 1341
    .local v1, "msgId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1342
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->doesMessageIdAlreadyExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1345
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    move-result-object v3

    const-string/jumbo v4, "delivered"

    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getRemoteInstanceID(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->sendMessageDeliveryStatusImmediately(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    return-void

    .line 1354
    .end local v1    # "msgId":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1358
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addSpamMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V

    const/16 v3, 0x1e6

    .line 1360
    invoke-virtual {p0, p1, v3}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    const/16 v3, 0x25

    .line 1361
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v0, v4}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->broadcastRejectedChatInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;ILcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;Z)V

    .line 1363
    return-void

    .line 1355
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is blocked: automatically reject the S&F invitation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public receiveStoredAndForwardPushNotifications(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 4
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 1376
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1381
    :goto_0
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getReferredIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1382
    .local v0, "remote":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isImBlockedForContact(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1394
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getStoreAndForwardManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;->receiveStoredNotifications(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 1395
    return-void

    .line 1377
    .end local v0    # "remote":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Receive S&F push notifications invitation"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1383
    .restart local v0    # "remote":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    const/16 v1, 0x1e6

    .line 1389
    invoke-virtual {p0, p1, v1}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 1390
    return-void

    .line 1384
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is blocked: automatically reject the S&F invitation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public rejoinGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .locals 8
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1049
    :goto_0
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxChatSessions:I

    if-nez v1, :cond_2

    .line 1057
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;

    move-result-object v6

    .line 1058
    .local v6, "groupChat":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    if-eqz v6, :cond_4

    .line 1064
    invoke-virtual {v6}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->getRejoinId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1070
    invoke-virtual {v6}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->getParticipants()Ljava/util/List;

    move-result-object v7

    .line 1073
    .local v7, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_8

    .line 1080
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1085
    :goto_1
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->getRejoinId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->getContributionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->getParticipants()Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1089
    .local v0, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->startSession()V

    .line 1090
    return-object v0

    .line 1045
    .end local v0    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;
    .end local v6    # "groupChat":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    .end local v7    # "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Rejoin group chat session"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1049
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImSessions()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxChatSessions:I

    if-lt v1, v2, :cond_0

    .line 1050
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1053
    :goto_2
    new-instance v1, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v2, "Max chat sessions achieved"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1051
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "The max number of chat sessions is achieved: cancel the initiation"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 1059
    .restart local v6    # "groupChat":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1062
    :goto_3
    new-instance v1, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v2, "Group chat conversation not found in database"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1060
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Group chat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " can\'t be rejoined: conversation not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_3

    .line 1065
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1068
    :goto_4
    new-instance v1, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v2, "Rejoin ID not found in database"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1066
    :cond_7
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Group chat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " can\'t be rejoined: rejoin ID not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_4

    .line 1074
    .restart local v7    # "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1077
    :goto_5
    new-instance v1, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v2, "Group chat participants not found in database"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1075
    :cond_9
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Group chat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " can\'t be rejoined: participants not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_5

    .line 1081
    :cond_a
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Rejoin group chat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public restartGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .locals 8
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1106
    :goto_0
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxChatSessions:I

    if-nez v1, :cond_2

    .line 1114
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;

    move-result-object v6

    .line 1115
    .local v6, "groupChat":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    if-eqz v6, :cond_4

    .line 1123
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatConnectedParticipants(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1126
    .local v7, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1134
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1137
    :goto_1
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/RestartGroupChatSession;

    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getImConferenceUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->getSubject()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    invoke-direct {v4, v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;-><init>(Ljava/util/List;)V

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RestartGroupChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;Ljava/lang/String;)V

    .line 1142
    .local v0, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/RestartGroupChatSession;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RestartGroupChatSession;->startSession()V

    .line 1143
    return-object v0

    .line 1102
    .end local v0    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/RestartGroupChatSession;
    .end local v6    # "groupChat":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    .end local v7    # "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Restart group chat session"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1106
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImSessions()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->maxChatSessions:I

    if-lt v1, v2, :cond_0

    .line 1107
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1110
    :goto_2
    new-instance v1, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v2, "Max chat sessions achieved"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1108
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "The max number of chat sessions is achieved: cancel the initiation"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 1116
    .restart local v6    # "groupChat":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1119
    :goto_3
    new-instance v1, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v2, "Group chat conversation not found in database"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1117
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Group chat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " can\'t be restarted: conversation not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_3

    .line 1127
    .restart local v7    # "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1130
    :goto_4
    new-instance v1, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v2, "Group chat participants not found in database"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1128
    :cond_7
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Group chat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " can\'t be restarted: participants not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_4

    .line 1135
    :cond_8
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Restart group chat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 172
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->isServiceStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->setServiceStarted(Z)V

    .line 179
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->imdnMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    .line 180
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->imdnMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->start()V

    .line 182
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->resumeManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 183
    return-void

    :cond_0
    monitor-exit p0

    .line 174
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->isServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->setServiceStarted(Z)V

    .line 196
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->imdnMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->terminate()V

    .line 197
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->imdnMgr:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->interrupt()V

    .line 198
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->resumeManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :goto_0
    monitor-exit p0

    .line 201
    return-void

    :cond_0
    monitor-exit p0

    .line 191
    return-void

    .line 199
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->resumeManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->terminate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

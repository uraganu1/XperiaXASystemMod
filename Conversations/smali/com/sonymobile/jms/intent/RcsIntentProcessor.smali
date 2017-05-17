.class public Lcom/sonymobile/jms/intent/RcsIntentProcessor;
.super Ljava/lang/Object;
.source "RcsIntentProcessor.java"


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String;

.field private static final UNDELIVERED_MESSAGE_TIMEOUT_ACTION:Ljava/lang/String;


# instance fields
.field private mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

.field private mIntentProcessorExecutor:Ljava/util/concurrent/Executor;

.field private mRcsIntentServiceApi:Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

.field private mRcsIntentsPendingProcessing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-class v0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->PACKAGE_NAME:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".MESSAGE_DELIVERY_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->UNDELIVERED_MESSAGE_TIMEOUT_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/jms/intent/RcsIntentServiceApi;Lcom/sonymobile/jms/ApiStatusReader;)V
    .locals 1
    .param p1, "rcsIntentServiceApi"    # Lcom/sonymobile/jms/intent/RcsIntentServiceApi;
    .param p2, "imApiStatusReader"    # Lcom/sonymobile/jms/ApiStatusReader;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentServiceApi:Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    .line 169
    iput-object p2, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentsPendingProcessing:Ljava/util/List;

    .line 171
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mIntentProcessorExecutor:Ljava/util/concurrent/Executor;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/jms/intent/RcsIntentProcessor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/jms/intent/RcsIntentProcessor;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentsPendingProcessing:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/jms/intent/RcsIntentProcessor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/jms/intent/RcsIntentProcessor;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->tryToProcessRcsIntents()V

    return-void
.end method

.method public static createUndeliveredMessageAlarm(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Ljava/lang/String;Lcom/sonymobile/jms/message/ImUserMessage$Status;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "conversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->UNDELIVERED_MESSAGE_TIMEOUT_ACTION:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "contact"

    .line 177
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v2, "msgId"

    .line 178
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "status"

    .line 179
    invoke-virtual {p3}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .local v1, "requestCode":I
    const/high16 v2, 0x40000000    # 2.0f

    .line 181
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private onImsProvisioningChange(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentServiceApi:Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    invoke-interface {v0}, Lcom/sonymobile/jms/intent/RcsIntentServiceApi;->onImsProvisioningChange()V

    .line 256
    return-void
.end method

.method private onImsStatusChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "status"

    .line 259
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "imsRegistrationStatus":Z
    const-string/jumbo v2, "reason"

    const/4 v3, -0x1

    .line 260
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 262
    .local v1, "rcsDisconnectReason":I
    iget-object v2, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentServiceApi:Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    invoke-interface {v2, v0, v1}, Lcom/sonymobile/jms/intent/RcsIntentServiceApi;->onImsConnectionStatusChanged(ZI)V

    .line 264
    return-void
.end method

.method private onRcsChatInvitationReceived(Landroid/content/Intent;)V
    .locals 21
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "contact"

    .line 186
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "inviterNumber":Ljava/lang/String;
    const-string/jumbo v1, "contactDisplayname"

    .line 187
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "inviterDisplayName":Ljava/lang/String;
    const-string/jumbo v1, "sessionId"

    .line 188
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "rcsChatSessionId":Ljava/lang/String;
    const-string/jumbo v1, "replacedSessionId"

    .line 189
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "replacedRcsChatSessionId":Ljava/lang/String;
    const-string/jumbo v1, "isGroupChat"

    .line 191
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .local v20, "isGroupChat":Z
    const-string/jumbo v1, "autoAccept"

    .line 192
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, "autoAcceptByStack":Z
    const-string/jumbo v1, "autoReject"

    .line 193
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .local v5, "autoRejectByStack":Z
    const-string/jumbo v1, "autoRejectReason"

    const/4 v11, -0x1

    .line 194
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 197
    .local v6, "rcsAutoRejectByStackReason":I
    if-nez v20, :cond_0

    const-string/jumbo v1, "firstMessage"

    .line 206
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    .line 208
    .local v19, "iMsg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    invoke-static/range {v19 .. v19}, Lcom/sonymobile/jms/util/RcsStackBugUtil;->assertInstantMessageNotNull(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V

    .line 209
    if-nez v19, :cond_1

    .line 215
    .end local v19    # "iMsg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "subject"

    .line 198
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "subject":Ljava/lang/String;
    const-string/jumbo v1, "isRestart"

    .line 199
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 201
    .local v10, "isRestart":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentServiceApi:Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    invoke-interface/range {v1 .. v10}, Lcom/sonymobile/jms/intent/RcsIntentServiceApi;->onRcsGroupChatInvitationReceived(Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 210
    .end local v9    # "subject":Ljava/lang/String;
    .end local v10    # "isRestart":Z
    .restart local v19    # "iMsg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentServiceApi:Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    move-object v12, v2

    move-object v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-interface/range {v11 .. v19}, Lcom/sonymobile/jms/intent/RcsIntentServiceApi;->onRcsOne2OneChatSessionInvitationReceived(Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V

    goto :goto_0
.end method

.method private onRcsChatMessageReceived(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "sessionId"

    .line 334
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "rcsChatSessionId":Ljava/lang/String;
    const-string/jumbo v0, "isGroupChat"

    .line 335
    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .local v3, "isGroupChat":Z
    const-string/jumbo v0, "chatId"

    .line 336
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "rcsChatId":Ljava/lang/String;
    const-string/jumbo v0, "contact"

    .line 337
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "remoteContact":Ljava/lang/String;
    const-string/jumbo v0, "instantMessage"

    .line 338
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    .line 341
    .local v5, "rcsInstantMessage":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    invoke-static {v5}, Lcom/sonymobile/jms/util/RcsStackBugUtil;->assertInstantMessageNotNull(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V

    .line 342
    iget-object v0, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentServiceApi:Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/jms/intent/RcsIntentServiceApi;->onRcsChatSessionReceivedTextMessage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V

    .line 344
    return-void
.end method

.method private onRcsChatSessionAborted(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-string/jumbo v0, "sessionId"

    .line 302
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "rcsChatSessionId":Ljava/lang/String;
    const-string/jumbo v0, "reason"

    .line 303
    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "rcsErrorCode":I
    const-string/jumbo v0, "isGroupChat"

    .line 304
    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, "isGroupChat":Z
    const-string/jumbo v0, "chatId"

    .line 305
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "rcsChatId":Ljava/lang/String;
    const-string/jumbo v0, "contact"

    .line 306
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "remoteContact":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentServiceApi:Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/jms/intent/RcsIntentServiceApi;->onRcsChatSessionAborted(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 310
    return-void
.end method

.method private onRcsChatSessionImError(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-string/jumbo v0, "sessionId"

    .line 313
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "rcsChatSessionId":Ljava/lang/String;
    const-string/jumbo v0, "reason"

    .line 314
    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "rcsErrorCode":I
    const-string/jumbo v0, "isGroupChat"

    .line 315
    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, "isGroupChat":Z
    const-string/jumbo v0, "chatId"

    .line 316
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "rcsChatId":Ljava/lang/String;
    const-string/jumbo v0, "contact"

    .line 317
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, "remoteContact":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentServiceApi:Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/jms/intent/RcsIntentServiceApi;->onRcsChatSessionImError(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 321
    return-void
.end method

.method private onRcsChatSessionReplaced(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "sessionId"

    .line 218
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "rcsChatSessionId":Ljava/lang/String;
    const-string/jumbo v2, "replacedSessionId"

    .line 219
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "replacedRcsChatSessionId":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentServiceApi:Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    invoke-interface {v2, v0, v1}, Lcom/sonymobile/jms/intent/RcsIntentServiceApi;->onRcsChatSessionReplaced(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method private onRcsChatSessionTerminatedByRemote(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v4, "sessionId"

    .line 324
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "rcsChatSessionId":Ljava/lang/String;
    const-string/jumbo v4, "isGroupChat"

    .line 325
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "isGroupChat":Z
    const-string/jumbo v4, "chatId"

    .line 326
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "rcsChatId":Ljava/lang/String;
    const-string/jumbo v4, "contact"

    .line 327
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "remoteContact":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentServiceApi:Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    invoke-interface {v4, v2, v1, v0, v3}, Lcom/sonymobile/jms/intent/RcsIntentServiceApi;->onRcsChatSessionTerminatedByRemote(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 331
    return-void
.end method

.method private onRcsFileTransferAborted(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string/jumbo v0, "sessionId"

    .line 267
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "rcsFileTransferSessionId":Ljava/lang/String;
    const-string/jumbo v0, "reason"

    .line 268
    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "rcsErrorCode":I
    const-string/jumbo v0, "isGroupTransfer"

    .line 269
    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, "isGroupFile":Z
    const-string/jumbo v0, "chatId"

    .line 270
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "rcsChatId":Ljava/lang/String;
    const-string/jumbo v0, "contact"

    .line 271
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "remoteContact":Ljava/lang/String;
    const-string/jumbo v0, "messageId"

    .line 272
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, "rcsMsgId":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentServiceApi:Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    invoke-interface/range {v0 .. v6}, Lcom/sonymobile/jms/intent/RcsIntentServiceApi;->onRcsFileTransferSessionAborted(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private onRcsFileTransferError(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string/jumbo v0, "sessionId"

    .line 279
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "rcsFileTransferSessionId":Ljava/lang/String;
    const-string/jumbo v0, "reason"

    .line 280
    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "rcsErrorCode":I
    const-string/jumbo v0, "isGroupTransfer"

    .line 281
    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, "isGroupFile":Z
    const-string/jumbo v0, "chatId"

    .line 282
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "rcsChatId":Ljava/lang/String;
    const-string/jumbo v0, "contact"

    .line 283
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "remoteContact":Ljava/lang/String;
    const-string/jumbo v0, "messageId"

    .line 284
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, "rcsMsgId":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentServiceApi:Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    invoke-interface/range {v0 .. v6}, Lcom/sonymobile/jms/intent/RcsIntentServiceApi;->onRcsFileTransferError(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method private onRcsFileTransferInvitationReceived(Landroid/content/Intent;)V
    .locals 26
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v4, "contact"

    .line 225
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "inviterRcsNumber":Ljava/lang/String;
    const-string/jumbo v4, "contactDisplayname"

    .line 226
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "inviterRcsDisplayName":Ljava/lang/String;
    const-string/jumbo v4, "sessionId"

    .line 228
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "rcsFileTransferSessionId":Ljava/lang/String;
    const-string/jumbo v4, "chatSessionId"

    .line 230
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "rcsChatSessionId":Ljava/lang/String;
    const-string/jumbo v4, "chatId"

    .line 231
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "rcsChatId":Ljava/lang/String;
    const-string/jumbo v4, "isGroupTransfer"

    .line 232
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .local v8, "isGroupFile":Z
    const-string/jumbo v4, "filename"

    .line 234
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "filename":Ljava/lang/String;
    const-string/jumbo v4, "filesize"

    const-wide v24, 0x7fffffffffffffffL

    .line 235
    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .local v15, "fileSize":J
    const-string/jumbo v4, "filetype"

    .line 236
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, "mimeType":Ljava/lang/String;
    const-string/jumbo v4, "thumbnail"

    .line 237
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v18

    .local v18, "thumbnail":[B
    const-string/jumbo v4, "msgId"

    .line 238
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "msgId":Ljava/lang/String;
    const-string/jumbo v4, "timestamp"

    const-wide/16 v24, 0x0

    .line 239
    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    .local v20, "localTimestamp":J
    const-string/jumbo v4, "timestamp_sent"

    const-wide/16 v24, 0x0

    .line 240
    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    .local v22, "sentTimestamp":J
    const-string/jumbo v4, "autoAccept"

    .line 241
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .local v9, "autoAcceptByStack":Z
    const-string/jumbo v4, "autoReject"

    .line 243
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .local v10, "autoRejectByStack":Z
    const-string/jumbo v4, "autoRejectReason"

    const/16 v24, -0x1

    .line 245
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 248
    .local v11, "rcsAutoRejectByStackReason":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentServiceApi:Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    invoke-interface/range {v4 .. v23}, Lcom/sonymobile/jms/intent/RcsIntentServiceApi;->onRcsFileTransferInvitationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[BLjava/lang/String;JJ)V

    .line 252
    return-void
.end method

.method private onRcsFileTransferTerminatedByRemote(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "sessionId"

    .line 291
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "rcsFileTransferSessionId":Ljava/lang/String;
    const-string/jumbo v0, "isGroupTransfer"

    .line 292
    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .local v3, "isGroupFile":Z
    const-string/jumbo v0, "chatId"

    .line 293
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "rcsChatId":Ljava/lang/String;
    const-string/jumbo v0, "contact"

    .line 294
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "remoteContact":Ljava/lang/String;
    const-string/jumbo v0, "messageId"

    .line 295
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, "rcsMsgId":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentServiceApi:Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/jms/intent/RcsIntentServiceApi;->onRcsFileTransferSessionTerminatedByRemote(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method private onUndeliveredMessageTimeout(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v3, "contact"

    .line 347
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/contact/ImContactNumber;

    .local v0, "contact":Lcom/sonymobile/jms/contact/ImContactNumber;
    const-string/jumbo v3, "msgId"

    .line 349
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "msgId":Ljava/lang/String;
    const-string/jumbo v3, "status"

    .line 350
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "status":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentServiceApi:Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    invoke-interface {v3, v0, v1, v2}, Lcom/sonymobile/jms/intent/RcsIntentServiceApi;->onUndeliveredMessageTimeout(Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method private tryToProcessRcsIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "rcsIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "rcsIntentAction":Ljava/lang/String;
    const-string/jumbo v1, "com.sonymobile.rcs.IMS_STATUS"

    .line 360
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.sonymobile.rcs.PROVISIONING_CHANGED"

    .line 363
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 366
    sget-object v1, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->UNDELIVERED_MESSAGE_TIMEOUT_ACTION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 372
    iget-object v1, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v1}, Lcom/sonymobile/jms/ApiStatusReader;->assertRcsApisConnected()V

    const-string/jumbo v1, "com.sonymobile.rcs.messaging.CHAT_MESSAGE_RECEIVED"

    .line 373
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "com.sonymobile.rcs.messaging.FILE_TRANSFER_INVITATION"

    .line 375
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "com.sonymobile.rcs.messaging.CHAT_INVITATION"

    .line 377
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "com.sonymobile.rcs.messaging.CHAT_IM_ERROR"

    .line 379
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "com.sonymobile.rcs.messaging.FILE_TRANSFER_ERROR"

    .line 381
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "com.sonymobile.rcs.messaging.FILE_TRANSFER_SESSION_TERMINATED_BY_REMOTE"

    .line 383
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "com.sonymobile.rcs.messaging.FILE_TRANSFER_ABORTED"

    .line 386
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "com.sonymobile.rcs.messaging.CHAT_SESSION_ABORTED"

    .line 388
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "com.sonymobile.rcs.messaging.CHAT_SESSION_TERMINATED_BY_REMOTE"

    .line 390
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "com.sonymobile.rcs.messaging.CHAT_SESSION_REPLACED"

    .line 392
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown intent received \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' ignoring it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 398
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->onImsStatusChanged(Landroid/content/Intent;)V

    .line 362
    return-void

    .line 364
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->onImsProvisioningChange(Landroid/content/Intent;)V

    .line 365
    return-void

    .line 367
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->onUndeliveredMessageTimeout(Landroid/content/Intent;)V

    .line 368
    return-void

    .line 374
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->onRcsChatMessageReceived(Landroid/content/Intent;)V

    goto :goto_0

    .line 376
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->onRcsFileTransferInvitationReceived(Landroid/content/Intent;)V

    goto :goto_0

    .line 378
    :cond_5
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->onRcsChatInvitationReceived(Landroid/content/Intent;)V

    goto :goto_0

    .line 380
    :cond_6
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->onRcsChatSessionImError(Landroid/content/Intent;)V

    goto :goto_0

    .line 382
    :cond_7
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->onRcsFileTransferError(Landroid/content/Intent;)V

    goto :goto_0

    .line 385
    :cond_8
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->onRcsFileTransferTerminatedByRemote(Landroid/content/Intent;)V

    goto :goto_0

    .line 387
    :cond_9
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->onRcsFileTransferAborted(Landroid/content/Intent;)V

    goto :goto_0

    .line 389
    :cond_a
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->onRcsChatSessionAborted(Landroid/content/Intent;)V

    goto :goto_0

    .line 391
    :cond_b
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->onRcsChatSessionTerminatedByRemote(Landroid/content/Intent;)V

    goto :goto_0

    .line 393
    :cond_c
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->onRcsChatSessionReplaced(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private tryToProcessRcsIntents()V
    .locals 9

    .prologue
    .line 401
    iget-object v7, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentsPendingProcessing:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 402
    .local v4, "nrOfUnprocessedRcsIntents":I
    if-eqz v4, :cond_1

    .line 412
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 414
    .local v5, "processedRcsIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentsPendingProcessing:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 425
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_3

    .line 434
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    return-void

    .line 406
    .end local v5    # "processedRcsIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :cond_1
    return-void

    .line 414
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v5    # "processedRcsIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 415
    .local v6, "rcsIntent":Landroid/content/Intent;
    invoke-direct {p0, v6}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->tryToProcessRcsIntent(Landroid/content/Intent;)V

    .line 416
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 426
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "rcsIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 420
    .local v2, "nrOfProcessedRcsIntents":I
    sub-int v3, v4, v2

    .local v3, "nrOfRemainingUnprocessedRcsIntents":I
    const-string/jumbo v7, "Unable to process the last "

    .line 422
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, " remaining rcs intents right now!"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 426
    iget-object v7, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentsPendingProcessing:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .end local v2    # "nrOfProcessedRcsIntents":I
    .end local v3    # "nrOfRemainingUnprocessedRcsIntents":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentsPendingProcessing:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    .line 425
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_4

    .line 426
    :goto_2
    throw v7

    :cond_4
    iget-object v8, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentsPendingProcessing:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method


# virtual methods
.method public pushRcsIntentForProcessing(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rcsIntent"    # Landroid/content/Intent;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mIntentProcessorExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sonymobile/jms/intent/RcsIntentProcessor$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor$1;-><init>(Lcom/sonymobile/jms/intent/RcsIntentProcessor;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 448
    return-void
.end method

.method public tryToProcessPushedRcsIntents()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mIntentProcessorExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sonymobile/jms/intent/RcsIntentProcessor$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/jms/intent/RcsIntentProcessor$2;-><init>(Lcom/sonymobile/jms/intent/RcsIntentProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 461
    return-void
.end method

.class public Lcom/sonymobile/jms/message/RcsMessageEventHandler;
.super Ljava/lang/Object;
.source "RcsMessageEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/message/RcsMessageEventHandler$1;
    }
.end annotation


# instance fields
.field private mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

.field private mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

.field private mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

.field private mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

.field private mImUndeliveredMessageManager:Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;Lcom/sonymobile/jms/setting/ImSettingManager;Lcom/sonymobile/jms/permission/ImPermissionManager;Lcom/sonymobile/jms/contact/ImContactManager;)V
    .locals 0
    .param p1, "imUndeliveredMessageManager"    # Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;
    .param p2, "imSettingManager"    # Lcom/sonymobile/jms/setting/ImSettingManager;
    .param p3, "imPermissionManager"    # Lcom/sonymobile/jms/permission/ImPermissionManager;
    .param p4, "imContactManager"    # Lcom/sonymobile/jms/contact/ImContactManager;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImUndeliveredMessageManager:Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;

    .line 43
    iput-object p2, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    .line 44
    iput-object p3, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    .line 45
    iput-object p4, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    .line 46
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImUndeliveredMessageManager:Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;

    .line 54
    iput-object v0, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    .line 55
    iput-object v0, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    .line 56
    iput-object v0, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    .line 57
    iput-object v0, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    .line 58
    return-void
.end method

.method public init(Lcom/sonymobile/jms/message/ImMessageStorageManager;)V
    .locals 0
    .param p1, "imMessageStorageManager"    # Lcom/sonymobile/jms/message/ImMessageStorageManager;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    .line 50
    return-void
.end method

.method public onFileMessageAccepted(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 5
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;

    .prologue
    const-string/jumbo v3, "ImConversation \'"

    .line 261
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' msg \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 263
    iget-object v3, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    const-class v4, Lcom/sonymobile/jms/message/ImFileMessageAcceptRejectListener;

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getMessageEventListeners(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 265
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImFileMessageAcceptRejectListener;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    return-void

    .line 265
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/message/ImFileMessageAcceptRejectListener;

    .line 266
    .local v1, "listener":Lcom/sonymobile/jms/message/ImFileMessageAcceptRejectListener;
    invoke-interface {v1, p1, p2}, Lcom/sonymobile/jms/message/ImFileMessageAcceptRejectListener;->onImFileMessageAccepted(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V

    goto :goto_0
.end method

.method public onFileMessageProgress(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;J)V
    .locals 5
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "currentSize"    # J

    .prologue
    .line 143
    iget-object v3, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p3, p4}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setOngoingFileTransferSize(Ljava/lang/String;J)V

    .line 144
    iget-object v3, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    const-class v4, Lcom/sonymobile/jms/message/ImFileMessageEventListener;

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getMessageEventListeners(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 146
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImFileMessageEventListener;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-eq v3, v4, :cond_2

    .line 154
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 158
    :cond_0
    return-void

    .line 147
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void

    .line 150
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/message/ImFileMessageEventListener;

    .line 151
    .local v1, "listener":Lcom/sonymobile/jms/message/ImFileMessageEventListener;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sonymobile/jms/message/ImFileMessageEventListener;->onImFileMessageReceiveProgress(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;J)V

    goto :goto_1

    .line 154
    .end local v1    # "listener":Lcom/sonymobile/jms/message/ImFileMessageEventListener;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/message/ImFileMessageEventListener;

    .line 155
    .restart local v1    # "listener":Lcom/sonymobile/jms/message/ImFileMessageEventListener;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sonymobile/jms/message/ImFileMessageEventListener;->onImFileMessageDeliveryProgress(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;J)V

    goto :goto_0
.end method

.method public onFileMessageRejected(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 5
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;

    .prologue
    const-string/jumbo v3, "ImConversation \'"

    .line 271
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' msg \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 273
    iget-object v3, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    const-class v4, Lcom/sonymobile/jms/message/ImFileMessageAcceptRejectListener;

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getMessageEventListeners(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 275
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImFileMessageAcceptRejectListener;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 278
    return-void

    .line 275
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/message/ImFileMessageAcceptRejectListener;

    .line 276
    .local v1, "listener":Lcom/sonymobile/jms/message/ImFileMessageAcceptRejectListener;
    invoke-interface {v1, p1, p2}, Lcom/sonymobile/jms/message/ImFileMessageAcceptRejectListener;->onImFileMessageRejected(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V

    goto :goto_0
.end method

.method onImMessageDisplayed(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImUserMessage;

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 191
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-interface {p2}, Lcom/sonymobile/jms/message/ImUserMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' rcsMsgDeliveryStatus \'displayed\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 193
    invoke-interface {p2}, Lcom/sonymobile/jms/message/ImUserMessage;->getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-eq v0, v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    sget-object v0, Lcom/sonymobile/jms/message/RcsMessageEventHandler$1;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ClientMode:[I

    iget-object v1, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingManager;->getClientMode()Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 197
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImUndeliveredMessageManager:Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->handleOutgoingImMessageDisplayed(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onImMessageReceived(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V
    .locals 12
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "instantMessage"    # Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    .prologue
    .line 161
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getRemote()Ljava/lang/String;

    move-result-object v11

    .line 162
    .local v11, "rcsNumber":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    .local v10, "rcsContactDisplayName":Ljava/lang/String;
    const-string/jumbo v1, "ImConversationId \'"

    .line 163
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' msg \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcsNumber \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcsContactDisplayName \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' status "

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 167
    invoke-static {v11}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v6

    .line 168
    .local v6, "author":Lcom/sonymobile/jms/contact/ImContactNumber;
    iget-object v1, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v1, v6, v10}, Lcom/sonymobile/jms/contact/ImContactManager;->storeDisplayName(Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getServerDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "text/plain"

    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asIncomingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/jms/message/ImTextMessage;

    move-result-object v0

    .line 173
    .local v0, "msg":Lcom/sonymobile/jms/message/ImTextMessage;
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 174
    return-void
.end method

.method public onImUserMessageDeliveryStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;Ljava/lang/String;)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImUserMessage;
    .param p3, "rcsMsgDeliveryStatus"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 208
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-interface {p2}, Lcom/sonymobile/jms/message/ImUserMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' rcsMsgDeliveryStatus \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const-string/jumbo v0, "delivered"

    .line 210
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "failed"

    .line 212
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "error"

    .line 214
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "forbidden"

    .line 216
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "displayed"

    .line 218
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ImConversation \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' - Unknown message delivery status update for msgId \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/sonymobile/jms/message/ImUserMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' detected rcsMsgDeliveryStatus -> \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 211
    :cond_0
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DELIVERED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_0

    .line 213
    :cond_1
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_0

    .line 215
    :cond_2
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ERROR:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_0

    .line 217
    :cond_3
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FORBIDDEN:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_0

    .line 219
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImMessageDisplayed(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V

    goto :goto_0
.end method

.method public onImUserMessageDeliveryTimeOut(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v4, "ImConversation \'"

    .line 231
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' msg \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 233
    iget-object v4, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImUndeliveredMessageManager:Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;

    invoke-virtual {v4, p2}, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->ensureThatNoTimeoutTaskIsScheduled(Ljava/lang/String;)V

    .line 235
    :try_start_0
    sget-object v4, Lcom/sonymobile/jms/message/ImUserMessage$Status;->QUEUED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v4}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 238
    iget-object v4, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v4, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->markImUserMessageAsUndelivered(Ljava/lang/String;)V

    .line 240
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v4, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->hasUnprocessedUndeliveredImUserMessages(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 258
    :cond_0
    :goto_1
    return-void

    .line 236
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v4, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->markImUserMessageAsQueuedAndUndelivered(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ImConversation \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - Unable to handle undelivered message timeout for msg \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 242
    .end local v0    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    invoke-virtual {v4, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->tryToRequestUpdatedImPermissions(Lcom/sonymobile/jms/contact/ImContactNumber;)V

    .line 243
    iget-object v4, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    const-class v5, Lcom/sonymobile/jms/message/ImUndeliveredMessageEventListener;

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getMessageEventListeners(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 245
    .local v3, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUndeliveredMessageEventListener;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 248
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/jms/message/ImUndeliveredMessageEventListener;

    .line 249
    .local v2, "listener":Lcom/sonymobile/jms/message/ImUndeliveredMessageEventListener;
    invoke-interface {v2, p1}, Lcom/sonymobile/jms/message/ImUndeliveredMessageEventListener;->onUndeliveredImUserMessagesDetected(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    :try_end_1
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 246
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/sonymobile/jms/message/ImUndeliveredMessageEventListener;
    :cond_3
    return-void
.end method

.method public onImUserMessageReceived(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Landroid/net/Uri;)V
    .locals 3
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "receivedFileUri"    # Landroid/net/Uri;

    .prologue
    const-string/jumbo v1, "ImConversationId \'"

    .line 178
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' msg \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' status "

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, " receivedFileUri \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 183
    iget-object v1, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v1, p2, p3}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asReceivedMessage(Lcom/sonymobile/jms/message/ImFileMessage;Landroid/net/Uri;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v0

    .line 185
    .local v0, "receivedMsg":Lcom/sonymobile/jms/message/ImFileMessage;
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 186
    iget-object v1, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ensureFileIconRemovedForMessageId(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 10
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    const-string/jumbo v0, "ImConversationId \'"

    .line 94
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' file-msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' status "

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 96
    sget-object v0, Lcom/sonymobile/jms/message/RcsMessageEventHandler$1;->$SwitchMap$com$sonymobile$jms$message$ImUserMessage$Status:[I

    invoke-virtual {p3}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 101
    iget-object v0, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->clearOngoingFileTransferSize(Ljava/lang/String;)V

    .line 104
    :pswitch_0
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v6

    .line 105
    .local v6, "direction":Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-eq v6, v0, :cond_2

    .line 116
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    const-class v1, Lcom/sonymobile/jms/message/ImFileMessageEventListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getMessageEventListeners(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    .line 118
    .local v9, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImFileMessageEventListener;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 121
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-eq v6, v0, :cond_4

    .line 126
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 130
    :cond_1
    return-void

    .line 105
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImFileMessageEventListener;>;"
    :cond_2
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/setting/ImSettingManager;->isFtHttpAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    sget-object v0, Lcom/sonymobile/jms/message/RcsMessageEventHandler$1;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ClientMode:[I

    iget-object v1, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingManager;->getClientMode()Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImUndeliveredMessageManager:Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;

    iget-object v1, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->handleOutgoingImMessageStatusUpdate(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/message/RcsMessageEventHandler;Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_0

    .line 119
    .restart local v9    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImFileMessageEventListener;>;"
    :cond_3
    return-void

    .line 122
    :cond_4
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/jms/message/ImFileMessageEventListener;

    .line 123
    .local v8, "listener":Lcom/sonymobile/jms/message/ImFileMessageEventListener;
    invoke-interface {v8, p1, p2, p3}, Lcom/sonymobile/jms/message/ImFileMessageEventListener;->onImFileMessageReceiveStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_2

    .line 126
    .end local v8    # "listener":Lcom/sonymobile/jms/message/ImFileMessageEventListener;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/jms/message/ImFileMessageEventListener;

    .line 127
    .restart local v8    # "listener":Lcom/sonymobile/jms/message/ImFileMessageEventListener;
    invoke-interface {v8, p1, p2, p3}, Lcom/sonymobile/jms/message/ImFileMessageEventListener;->onImFileMessageDeliveryStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_1

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 106
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 10
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .param p3, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    const-string/jumbo v0, "ImConversationId \'"

    .line 62
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' text-msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' status "

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 64
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v6

    .line 65
    .local v6, "direction":Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-eq v6, v0, :cond_2

    .line 76
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    const-class v1, Lcom/sonymobile/jms/message/ImTextMessageEventListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getMessageEventListeners(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    .line 78
    .local v9, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImTextMessageEventListener;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 81
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-eq v6, v0, :cond_4

    .line 86
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 90
    :cond_1
    return-void

    .line 65
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImTextMessageEventListener;>;"
    :cond_2
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/setting/ImSettingManager;->isImAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/sonymobile/jms/message/RcsMessageEventHandler$1;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ClientMode:[I

    iget-object v1, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingManager;->getClientMode()Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImUndeliveredMessageManager:Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;

    iget-object v1, p0, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->handleOutgoingImMessageStatusUpdate(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/message/RcsMessageEventHandler;Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_0

    .line 79
    .restart local v9    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImTextMessageEventListener;>;"
    :cond_3
    return-void

    .line 82
    :cond_4
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/jms/message/ImTextMessageEventListener;

    .line 83
    .local v8, "listener":Lcom/sonymobile/jms/message/ImTextMessageEventListener;
    invoke-interface {v8, p1, p2, p3}, Lcom/sonymobile/jms/message/ImTextMessageEventListener;->onImTextMessageReceiveStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_2

    .line 86
    .end local v8    # "listener":Lcom/sonymobile/jms/message/ImTextMessageEventListener;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/jms/message/ImTextMessageEventListener;

    .line 87
    .restart local v8    # "listener":Lcom/sonymobile/jms/message/ImTextMessageEventListener;
    invoke-interface {v8, p1, p2, p3}, Lcom/sonymobile/jms/message/ImTextMessageEventListener;->onImTextMessageDeliveryStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 1
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImUserMessage;
    .param p3, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    .line 134
    instance-of v0, p2, Lcom/sonymobile/jms/message/ImTextMessage;

    if-nez v0, :cond_0

    .line 136
    instance-of v0, p2, Lcom/sonymobile/jms/message/ImFileMessage;

    if-nez v0, :cond_1

    .line 139
    .end local p2    # "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    :goto_0
    return-void

    .line 135
    .restart local p2    # "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    :cond_0
    check-cast p2, Lcom/sonymobile/jms/message/ImTextMessage;

    .end local p2    # "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_0

    .line 137
    .restart local p2    # "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    :cond_1
    check-cast p2, Lcom/sonymobile/jms/message/ImFileMessage;

    .end local p2    # "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_0
.end method

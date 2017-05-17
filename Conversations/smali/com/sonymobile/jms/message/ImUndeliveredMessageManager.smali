.class public Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;
.super Ljava/lang/Object;
.source "ImUndeliveredMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/message/ImUndeliveredMessageManager$1;
    }
.end annotation


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppCtx:Landroid/content/Context;

.field private mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

.field private mUndeliveredImMessageAlarms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/sonymobile/jms/setting/ImSettingManager;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "imSettingManager"    # Lcom/sonymobile/jms/setting/ImSettingManager;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mUndeliveredImMessageAlarms:Ljava/util/Map;

    const-string/jumbo v0, "alarm"

    .line 35
    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 36
    iput-object p1, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mAppCtx:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private cancelTimeOutAlarm(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const-string/jumbo v0, "msg \'"

    .line 40
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' - Delivery timeout canceled."

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 41
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 42
    return-void
.end method

.method private ensureThatATimeoutAlarmIsScheduled(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Ljava/lang/String;JLcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 9
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "timeout"    # J
    .param p5, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    .line 57
    iget-object v4, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mUndeliveredImMessageAlarms:Ljava/util/Map;

    monitor-enter v4

    .line 58
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mUndeliveredImMessageAlarms:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    :goto_0
    monitor-exit v4

    .line 71
    return-void

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mAppCtx:Landroid/content/Context;

    invoke-static {v3, p1, p2, p5}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->createUndeliveredMessageAlarm(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Ljava/lang/String;Lcom/sonymobile/jms/message/ImUserMessage$Status;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 61
    .local v2, "undeliveredMessageAlarm":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mUndeliveredImMessageAlarms:Ljava/util/Map;

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v0, v6, p3

    .line 64
    .local v0, "triggerTime":J
    iget-object v3, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string/jumbo v3, "ImConversation \'"

    .line 66
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v5, "\' msg \'"

    invoke-virtual {v3, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v5, "\' - Delivery timeout scheduled in "

    invoke-virtual {v3, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Lcom/sonymobile/jms/util/LogUtil;->add(J)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v5, " ms."

    invoke-virtual {v3, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    goto :goto_0

    .line 70
    .end local v0    # "triggerTime":J
    .end local v2    # "undeliveredMessageAlarm":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 45
    iget-object v3, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mUndeliveredImMessageAlarms:Ljava/util/Map;

    monitor-enter v3

    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mUndeliveredImMessageAlarms:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mUndeliveredImMessageAlarms:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    .line 50
    iput-object v2, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mUndeliveredImMessageAlarms:Ljava/util/Map;

    .line 51
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iput-object v4, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    .line 53
    return-void

    .line 46
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    .local v1, "msgId":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mUndeliveredImMessageAlarms:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->cancelTimeOutAlarm(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 51
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "msgId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method ensureThatNoTimeoutTaskIsScheduled(Ljava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v2, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mUndeliveredImMessageAlarms:Ljava/util/Map;

    monitor-enter v2

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mUndeliveredImMessageAlarms:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 76
    .local v0, "undeliveredMessageAlarm":Landroid/app/PendingIntent;
    if-nez v0, :cond_0

    .line 79
    :goto_0
    monitor-exit v2

    .line 80
    return-void

    .line 77
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->cancelTimeOutAlarm(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 79
    .end local v0    # "undeliveredMessageAlarm":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handleOutgoingImMessageDisplayed(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    .locals 4
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImUserMessage;

    .prologue
    .line 131
    iget-object v2, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v2}, Lcom/sonymobile/jms/setting/ImSettingManager;->getImOne2OneMessageDeliveryTimeout()J

    move-result-wide v0

    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    .line 132
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    invoke-interface {p2}, Lcom/sonymobile/jms/message/ImUserMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->ensureThatNoTimeoutTaskIsScheduled(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method handleOutgoingImMessageStatusUpdate(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/message/RcsMessageEventHandler;Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 7
    .param p1, "imMessageStorageManager"    # Lcom/sonymobile/jms/message/ImMessageStorageManager;
    .param p2, "rcsMessageEventHandler"    # Lcom/sonymobile/jms/message/RcsMessageEventHandler;
    .param p3, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p4, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p5, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/setting/ImSettingManager;->getImOne2OneMessageDeliveryTimeout()J

    move-result-wide v4

    .local v4, "timeout":J
    const-wide/16 v0, 0x0

    .line 111
    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    sget-object v0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager$1;->$SwitchMap$com$sonymobile$jms$message$ImUserMessage$Status:[I

    invoke-virtual {p5}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    :pswitch_0
    return-void

    .line 117
    :pswitch_1
    invoke-virtual {p4}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->ensureThatATimeoutAlarmIsScheduled(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Ljava/lang/String;JLcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_0

    .line 122
    :pswitch_2
    invoke-virtual {p4}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->ensureThatNoTimeoutTaskIsScheduled(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method handleOutgoingImMessageStatusUpdate(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/message/RcsMessageEventHandler;Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 7
    .param p1, "imMessageStorageManager"    # Lcom/sonymobile/jms/message/ImMessageStorageManager;
    .param p2, "rcsMessageEventHandler"    # Lcom/sonymobile/jms/message/RcsMessageEventHandler;
    .param p3, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p4, "msg"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .param p5, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/setting/ImSettingManager;->getImOne2OneMessageDeliveryTimeout()J

    move-result-wide v4

    .local v4, "timeout":J
    const-wide/16 v0, 0x0

    .line 88
    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager$1;->$SwitchMap$com$sonymobile$jms$message$ImUserMessage$Status:[I

    invoke-virtual {p5}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 94
    :pswitch_0
    invoke-virtual {p4}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->ensureThatATimeoutAlarmIsScheduled(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Ljava/lang/String;JLcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-virtual {p4}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->ensureThatNoTimeoutTaskIsScheduled(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

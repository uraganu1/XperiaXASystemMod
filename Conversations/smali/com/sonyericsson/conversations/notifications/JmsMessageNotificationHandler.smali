.class Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;
.super Ljava/lang/Object;
.source "JmsMessageNotificationHandler.java"

# interfaces
.implements Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;
    }
.end annotation


# static fields
.field private static synthetic -com_sonymobile_jms_environment_ImEnvironmentApi$ConnectionStatusSwitchesValues:[I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

.field private mImNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationManager:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

.field private mPushNotificationTask:Ljava/lang/Runnable;

.field private mQueueMode:Z

.field private mStopQueueTask:Ljava/lang/Runnable;

.field private mTimeWhenFirstMessageReceived:J


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mImNotifications:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mNotificationManager:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mPushNotificationTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mQueueMode:Z

    return v0
.end method

.method private static synthetic -getcom_sonymobile_jms_environment_ImEnvironmentApi$ConnectionStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-com_sonymobile_jms_environment_ImEnvironmentApi$ConnectionStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-com_sonymobile_jms_environment_ImEnvironmentApi$ConnectionStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->values()[Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISABLED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-com_sonymobile_jms_environment_ImEnvironmentApi$ConnectionStatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mQueueMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mTimeWhenFirstMessageReceived:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->hasReachedMaxQueueDuration()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->pushQueuedNotifications()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->reschedulePushNotificationTask()V

    return-void
.end method

.method constructor <init>(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi;)V
    .locals 0
    .param p1, "notificationManager"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;
    .param p2, "imEnvironmentApi"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mNotificationManager:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    .line 66
    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    .line 67
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->init()V

    .line 64
    return-void
.end method

.method private hasReachedMaxQueueDuration()Z
    .locals 4

    .prologue
    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mTimeWhenFirstMessageReceived:J

    sub-long/2addr v0, v2

    .line 195
    const-wide/16 v2, 0x2710

    .line 194
    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mImNotifications:Ljava/util/List;

    .line 72
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "JmsMessageHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "mHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 74
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 75
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 76
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mHandler:Landroid/os/Handler;

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    invoke-interface {v2, p0}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->registerImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V

    .line 81
    :cond_1
    new-instance v2, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$1;-><init>(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mPushNotificationTask:Ljava/lang/Runnable;

    .line 86
    new-instance v2, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$2;-><init>(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mStopQueueTask:Ljava/lang/Runnable;

    .line 70
    return-void
.end method

.method private pushQueuedNotifications()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 171
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mImNotifications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 173
    .local v3, "queueLastIndex":I
    if-nez v3, :cond_1

    .line 174
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mImNotifications:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;

    .line 175
    .local v0, "holder":Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mNotificationManager:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    iget-object v5, v0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;->mNotification:Lcom/sonyericsson/conversations/notifications/ImNotification;

    iget-object v6, v0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;->mType:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    iget-boolean v7, v0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;->mIsSilent:Z

    invoke-interface {v4, v5, v6, v7}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    .line 190
    .end local v0    # "holder":Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mImNotifications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 170
    return-void

    .line 176
    :cond_1
    if-lt v3, v7, :cond_0

    .line 179
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mImNotifications:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;

    iget-boolean v2, v4, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;->mIsSilent:Z

    .line 180
    .local v2, "isSilent":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 181
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mImNotifications:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;

    .line 182
    .restart local v0    # "holder":Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mNotificationManager:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    iget-object v5, v0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;->mNotification:Lcom/sonyericsson/conversations/notifications/ImNotification;

    iget-object v6, v0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;->mType:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-interface {v4, v5, v6, v7}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    .line 183
    iget-boolean v4, v0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;->mIsSilent:Z

    if-nez v4, :cond_2

    .line 184
    iget-boolean v2, v0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;->mIsSilent:Z

    .line 180
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    .end local v0    # "holder":Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mImNotifications:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;

    .line 188
    .restart local v0    # "holder":Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mNotificationManager:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    iget-object v5, v0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;->mNotification:Lcom/sonyericsson/conversations/notifications/ImNotification;

    iget-object v6, v0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;->mType:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-interface {v4, v5, v6, v2}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0
.end method

.method private reschedulePushNotificationTask()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mPushNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mPushNotificationTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    return-void
.end method


# virtual methods
.method declared-synchronized addItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V
    .locals 2
    .param p1, "imNotification"    # Lcom/sonyericsson/conversations/notifications/ImNotification;
    .param p2, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .param p3, "isSilent"    # Z

    .prologue
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;-><init>(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 137
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method cleanup()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    invoke-interface {v0, p0}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->unregisterImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onImApiConnectionStatusChange(Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V
    .locals 2
    .param p1, "imEnvironmentApi"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    .param p2, "imApiConnectionStatus"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .prologue
    .line 96
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-getcom_sonymobile_jms_environment_ImEnvironmentApi$ConnectionStatusSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 98
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->startQueue()V

    goto :goto_0

    .line 102
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->stopQueue()V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method declared-synchronized startQueue()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$3;-><init>(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mStopQueueTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 109
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stopQueue()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mStopQueueTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$4;-><init>(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 119
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

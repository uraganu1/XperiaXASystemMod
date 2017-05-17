.class public Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;
.super Ljava/lang/Object;
.source "CallPlusConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;,
        Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$1;,
        Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallPlusConnectorListener:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

.field private mCallPlusService:Lcom/sonymobile/holla/ICallPlusService;

.field private final mCapabilitiesReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsReceiverRegistered:Z

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mCallPlusConnectorListener:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;Lcom/sonymobile/holla/ICallPlusService;)Lcom/sonymobile/holla/ICallPlusService;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mCallPlusService:Lcom/sonymobile/holla/ICallPlusService;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mIsReceiverRegistered:Z

    .line 36
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$1;-><init>(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 56
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$2;-><init>(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mCapabilitiesReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mCallPlusConnectorListener:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    .line 65
    return-void
.end method


# virtual methods
.method public declared-synchronized connect()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sonymobile/holla/CallPlusIntents;->getBindIntent()Landroid/content/Intent;

    move-result-object v3

    .line 95
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    .line 94
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 96
    .local v1, "successfullyBound":Z
    if-eqz v1, :cond_0

    .line 97
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mIsReceiverRegistered:Z

    if-nez v2, :cond_0

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "action_callplus_capabilities"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mCapabilitiesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mIsReceiverRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    .line 93
    return-void

    .end local v1    # "successfullyBound":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized disconnect()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 107
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mCapabilitiesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mIsReceiverRegistered:Z

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mCallPlusService:Lcom/sonymobile/holla/ICallPlusService;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mCallPlusService:Lcom/sonymobile/holla/ICallPlusService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 106
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCachedCapability(Ljava/lang/String;)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 82
    return v1

    .line 86
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mCallPlusService:Lcom/sonymobile/holla/ICallPlusService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mCallPlusService:Lcom/sonymobile/holla/ICallPlusService;

    invoke-interface {v2, p1}, Lcom/sonymobile/holla/ICallPlusService;->getCachedCapability(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_1
    monitor-exit p0

    return v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error while getting cached capabilities for number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 89
    return v1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized requestCapability(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mCallPlusService:Lcom/sonymobile/holla/ICallPlusService;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->mCallPlusService:Lcom/sonymobile/holla/ICallPlusService;

    invoke-interface {v1, p1}, Lcom/sonymobile/holla/ICallPlusService;->requestCapability(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 70
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error while requesting capabilities for number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

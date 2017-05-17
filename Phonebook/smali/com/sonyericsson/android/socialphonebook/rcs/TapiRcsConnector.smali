.class public Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;
.super Ljava/lang/Object;
.source "TapiRcsConnector.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;,
        Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ClientCallbackHandler;,
        Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$1;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_rcs_TapiRcsConnector$ConnectorStateSwitchesValues:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClient:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;

.field private mClientHandler:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ClientCallbackHandler;

.field private mClientMessenger:Landroid/os/Messenger;

.field private mConnectorState:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

.field private final mContext:Landroid/content/Context;

.field private final mMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mMessageQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mServiceMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_rcs_TapiRcsConnector$ConnectorStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->-com_sonyericsson_android_socialphonebook_rcs_TapiRcsConnector$ConnectorStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->-com_sonyericsson_android_socialphonebook_rcs_TapiRcsConnector$ConnectorStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;->values()[Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;->BOUND_CONNECTED:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;->BOUND_DISCONNECTED:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;->UNBOUND:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->-com_sonyericsson_android_socialphonebook_rcs_TapiRcsConnector$ConnectorStateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;)Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mConnectorState:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mMessageQueue:Ljava/util/Queue;

    .line 219
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$1;-><init>(Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mClient:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;

    .line 82
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;->UNBOUND:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mConnectorState:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    .line 79
    return-void
.end method

.method public static buildRcsServiceIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/RcsContactsContract;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 213
    return-object v0
.end method

.method private send(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->send(ILandroid/os/Bundle;)V

    .line 180
    return-void
.end method

.method private send(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "messageId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 185
    const/4 v2, 0x0

    invoke-static {v2, p1, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 186
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mClientMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 187
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 189
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->-getcom_sonyericsson_android_socialphonebook_rcs_TapiRcsConnector$ConnectorStateSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mConnectorState:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 203
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot send message to unbound service!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to send queued message!"

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public connect()V
    .locals 6

    .prologue
    .line 91
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "connect() called"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->buildRcsServiceIntent()Landroid/content/Intent;

    move-result-object v3

    .line 94
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    .line 93
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 95
    .local v0, "isBindSuccessfull":Z
    if-nez v0, :cond_0

    .line 96
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unable to bind with RCS service!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;->BOUND_DISCONNECTED:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mConnectorState:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    .line 100
    new-instance v2, Landroid/os/HandlerThread;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mThread:Landroid/os/HandlerThread;

    .line 101
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 102
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 103
    .local v1, "looper":Landroid/os/Looper;
    if-nez v1, :cond_1

    .line 104
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Thread.getLooper() returned null."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_1
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ClientCallbackHandler;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mClient:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;

    invoke-direct {v2, v1, v3}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ClientCallbackHandler;-><init>(Landroid/os/Looper;Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mClientHandler:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ClientCallbackHandler;

    .line 107
    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mClientHandler:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ClientCallbackHandler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mClientMessenger:Landroid/os/Messenger;

    .line 90
    .end local v0    # "isBindSuccessfull":Z
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_2
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disconnect() called"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 120
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;->UNBOUND:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mConnectorState:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mServiceMessenger:Landroid/os/Messenger;

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 116
    :cond_0
    return-void
.end method

.method public extractCapableNumbers(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "extractCapableNumbers(ArrayList) called"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "contactNumbers"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 177
    const/16 v1, 0x7d2

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->send(ILandroid/os/Bundle;)V

    .line 173
    return-void
.end method

.method final getClientMessenger()Landroid/os/Messenger;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mClientMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method final getConnectionState()Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mConnectorState:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    return-object v0
.end method

.method final getQueuedMessages()Ljava/util/Queue;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mMessageQueue:Ljava/util/Queue;

    return-object v0
.end method

.method final getTag()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 272
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;->UNBOUND:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mConnectorState:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestCapabilitiesRefresh(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestCapabilitiesRefresh(ArrayList) called"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "contactNumbers"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 162
    const/16 v1, 0x7d0

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->send(ILandroid/os/Bundle;)V

    .line 158
    return-void
.end method

.method public varargs requestCapabilitiesRefresh([Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneNumbers"    # [Ljava/lang/String;

    .prologue
    .line 142
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestCapabilitiesRefresh(String...) called"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    array-length v0, p1

    if-nez v0, :cond_0

    .line 144
    const/16 v0, 0x7d1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->send(I)V

    .line 141
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->requestCapabilitiesRefresh(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method final setServiceMessenger(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 292
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->mServiceMessenger:Landroid/os/Messenger;

    .line 291
    return-void
.end method

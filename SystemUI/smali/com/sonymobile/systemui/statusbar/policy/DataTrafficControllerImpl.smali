.class public Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "DataTrafficControllerImpl.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Z

.field private final mHandler:Landroid/os/Handler;

.field private mNumberOfPollTries:I

.field private final mPollRunnable:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mCurrentState:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)I
    .locals 1

    iget v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mNumberOfPollTries:I

    return v0
.end method

.method static synthetic -get3(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mPollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mCurrentState:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mNumberOfPollTries:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->dataTrafficSettingsChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mCurrentState:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 59
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 63
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mContext:Landroid/content/Context;

    .line 64
    const-string/jumbo v1, "connectivity"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 66
    new-instance v0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$1;-><init>(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$2;-><init>(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mPollRunnable:Ljava/lang/Runnable;

    .line 58
    return-void
.end method

.method private dataTrafficSettingsChanged()V
    .locals 4

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->isDataTrafficEnabled()Z

    move-result v2

    .line 111
    .local v2, "isEnabled":Z
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;

    .line 112
    .local v0, "cb":Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;
    invoke-interface {v0, v2}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;->onDataTrafficSettingsChanged(Z)V

    goto :goto_0

    .line 109
    .end local v0    # "cb":Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;
    :cond_0
    return-void
.end method

.method private dataTrafficSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->isDataTrafficEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;->onDataTrafficSettingsChanged(Z)V

    .line 116
    return-void
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->dataTrafficSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;)V

    .line 104
    return-void
.end method

.method public isAvailiable()Z
    .locals 3

    .prologue
    .line 148
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mContext:Landroid/content/Context;

    .line 149
    const-string/jumbo v2, "connectivity"

    .line 148
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 150
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method public isDataTrafficEnabled()Z
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 126
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mContext:Landroid/content/Context;

    .line 130
    const-string/jumbo v2, "connectivity"

    .line 129
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 131
    .restart local v0    # "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    return-void
.end method

.method public registerDataTrafficBroadcast()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.sonyericsson.net.conn.MOBILE_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    return-void
.end method

.method public removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public setDataTrafficEnabled(Z)Z
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.phone.intent.ACTION_DATA_TRAFFIC_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mPollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mNumberOfPollTries:I

    .line 142
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mPollRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    const/4 v1, 0x1

    return v1
.end method

.method public unregisterDataTrafficBroadcast()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    return-void
.end method

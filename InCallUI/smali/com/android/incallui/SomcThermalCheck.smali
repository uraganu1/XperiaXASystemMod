.class public final Lcom/android/incallui/SomcThermalCheck;
.super Ljava/lang/Object;
.source "SomcThermalCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcThermalCheck$ThermalCheckListener;,
        Lcom/android/incallui/SomcThermalCheck$1;,
        Lcom/android/incallui/SomcThermalCheck$2;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/incallui/SomcThermalCheck;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSysmonServiceConnection:Landroid/content/ServiceConnection;

.field private final mThermalCheckListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/SomcThermalCheck$ThermalCheckListener;",
            ">;"
        }
    .end annotation
.end field

.field private mThermalLevel:I

.field private final mThermalReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/SomcThermalCheck;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/SomcThermalCheck;->mThermalLevel:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/incallui/SomcThermalCheck;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/SomcThermalCheck;->mThermalLevel:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/SomcThermalCheck;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SomcThermalCheck;->notifyThermalCritical()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/incallui/SomcThermalCheck;->mThermalLevel:I

    .line 37
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SomcThermalCheck;->mThermalCheckListeners:Ljava/util/List;

    .line 92
    new-instance v0, Lcom/android/incallui/SomcThermalCheck$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SomcThermalCheck$1;-><init>(Lcom/android/incallui/SomcThermalCheck;)V

    iput-object v0, p0, Lcom/android/incallui/SomcThermalCheck;->mSysmonServiceConnection:Landroid/content/ServiceConnection;

    .line 124
    new-instance v0, Lcom/android/incallui/SomcThermalCheck$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/SomcThermalCheck$2;-><init>(Lcom/android/incallui/SomcThermalCheck;)V

    iput-object v0, p0, Lcom/android/incallui/SomcThermalCheck;->mThermalReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    return-void
.end method

.method private createSysmonService()V
    .locals 6

    .prologue
    .line 114
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.sonyericsson.psm.sysmonservice"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v3, p0, Lcom/android/incallui/SomcThermalCheck;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/incallui/SomcThermalCheck;->mSysmonServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 118
    .local v0, "bound":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SysmonService bound request : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "bound":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignoring ISysmonService class not found exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/SomcThermalCheck;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/SomcThermalCheck;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/android/incallui/SomcThermalCheck;->sInstance:Lcom/android/incallui/SomcThermalCheck;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/incallui/SomcThermalCheck;

    invoke-direct {v0}, Lcom/android/incallui/SomcThermalCheck;-><init>()V

    sput-object v0, Lcom/android/incallui/SomcThermalCheck;->sInstance:Lcom/android/incallui/SomcThermalCheck;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/incallui/SomcThermalCheck;->sInstance:Lcom/android/incallui/SomcThermalCheck;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyThermalCritical()V
    .locals 3

    .prologue
    .line 174
    iget-object v2, p0, Lcom/android/incallui/SomcThermalCheck;->mThermalCheckListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcThermalCheck$ThermalCheckListener;

    .line 175
    .local v0, "listener":Lcom/android/incallui/SomcThermalCheck$ThermalCheckListener;
    invoke-interface {v0}, Lcom/android/incallui/SomcThermalCheck$ThermalCheckListener;->onThermalCritical()V

    goto :goto_0

    .line 173
    .end local v0    # "listener":Lcom/android/incallui/SomcThermalCheck$ThermalCheckListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addThermalCheckListener(Lcom/android/incallui/SomcThermalCheck$ThermalCheckListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/SomcThermalCheck$ThermalCheckListener;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/incallui/SomcThermalCheck;->mThermalCheckListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/incallui/SomcThermalCheck;->mThermalCheckListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    return-void
.end method

.method public isThermalCritical()Z
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/android/incallui/SomcThermalCheck;->mThermalLevel:I

    const/16 v1, 0x321

    if-ne v0, v1, :cond_0

    .line 143
    const/4 v0, 0x1

    return v0

    .line 145
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeThermalCheckListener(Lcom/android/incallui/SomcThermalCheck$ThermalCheckListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/SomcThermalCheck$ThermalCheckListener;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/incallui/SomcThermalCheck;->mThermalCheckListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/incallui/SomcThermalCheck;->mThermalCheckListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    return-void
.end method

.method public setUp(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const-string/jumbo v1, "SomcThermalCheck setUp"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/android/incallui/SomcThermalCheck;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sonyericsson.psm.action.TEL_STATUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/incallui/SomcThermalCheck;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/SomcThermalCheck;->mThermalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    invoke-direct {p0}, Lcom/android/incallui/SomcThermalCheck;->createSysmonService()V

    .line 71
    return-void
.end method

.method public tearDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    const-string/jumbo v0, "SomcThermalCheck tearDown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/incallui/SomcThermalCheck;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/incallui/SomcThermalCheck;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/SomcThermalCheck;->mSysmonServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 86
    iget-object v0, p0, Lcom/android/incallui/SomcThermalCheck;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/SomcThermalCheck;->mThermalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    iget-object v0, p0, Lcom/android/incallui/SomcThermalCheck;->mThermalCheckListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    iput-object v2, p0, Lcom/android/incallui/SomcThermalCheck;->mContext:Landroid/content/Context;

    .line 82
    :cond_0
    return-void
.end method

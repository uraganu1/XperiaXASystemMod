.class public Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "ScreenMirroringControllerImpl.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentState:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -set0(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->mCurrentState:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->screenMirroringSettingsChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->mCurrentState:Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 74
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl$1;-><init>(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    return-void
.end method

.method private screenMirroringSettingsChanged()V
    .locals 4

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->isScreenMirroringEnabled()Z

    move-result v2

    .line 143
    .local v2, "isEnabled":Z
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;

    .line 144
    .local v0, "cb":Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;
    invoke-interface {v0, v2}, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;->onScreenMirroringSettingsChanged(Z)V

    goto :goto_0

    .line 141
    .end local v0    # "cb":Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;
    :cond_0
    return-void
.end method

.method private screenMirroringSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->isScreenMirroringEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;->onScreenMirroringSettingsChanged(Z)V

    .line 148
    return-void
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->screenMirroringSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;)V

    .line 136
    return-void
.end method

.method public isScreenMirroringEnabled()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->mCurrentState:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    return-void
.end method

.method public registerScreenMirroringBroadcast()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 157
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 158
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.sonymobile.tvout.wifidisplay.intent.action.WIFI_DISPLAY_STATE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    .line 157
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 156
    return-void
.end method

.method public removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method public setScreenMirroringEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.tvout.wifidisplay.intent.action.CONTROL_FROM_QUICK_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.tvout.wifidisplay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 130
    const/4 v1, 0x1

    return v1
.end method

.method public unregisterScreenMirroringBroadcast()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    return-void
.end method

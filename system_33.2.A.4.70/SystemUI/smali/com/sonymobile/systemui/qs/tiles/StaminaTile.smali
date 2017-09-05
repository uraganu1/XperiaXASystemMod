.class public Lcom/sonymobile/systemui/qs/tiles/StaminaTile;
.super Lcom/android/systemui/qs/QSTile;
.source "StaminaTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;

.field private final mController:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

.field private mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mListening:Z


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/systemui/qs/tiles/StaminaTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->refreshState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mListening:Z

    .line 24
    iput-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    .line 28
    new-instance v0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/StaminaTile;Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;

    .line 34
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getStaminaController()Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    .line 35
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 32
    return-void
.end method

.method private collapseOnNewDialog()V
    .locals 4

    .prologue
    .line 60
    new-instance v1, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;-><init>(Lcom/android/systemui/qs/QSTile$Host;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    .line 61
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    if-eqz v1, :cond_0

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 63
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method private setEnabled()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->collapseOnNewDialog()V

    .line 56
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    invoke-interface {v0}, Lcom/sonymobile/systemui/statusbar/policy/StaminaController;->setStaminaActivationNextState()V

    .line 54
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, -0x1

    return v0
.end method

.method public handleClick()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.superstamina"

    .line 47
    const-string/jumbo v2, "com.sonymobile.superstamina.ga.GaObserverService"

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string/jumbo v1, "root"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->setEnabled()V

    .line 44
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v4, 0x7f090071

    .line 69
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    invoke-interface {v3}, Lcom/sonymobile/systemui/statusbar/policy/StaminaController;->isStaminaEnabled()Z

    move-result v0

    .line 70
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    invoke-interface {v3}, Lcom/sonymobile/systemui/statusbar/policy/StaminaController;->getStaminaActivationState()I

    move-result v2

    .line 71
    .local v2, "staminaState":I
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 72
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 73
    const v1, 0x7f020005

    .line 74
    .local v1, "iconId":I
    packed-switch v2, :pswitch_data_0

    .line 90
    :goto_0
    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 68
    return-void

    .line 76
    :pswitch_0
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 77
    const v1, 0x7f020005

    .line 78
    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mContext:Landroid/content/Context;

    .line 81
    const v4, 0x7f090085

    .line 80
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 82
    const v1, 0x7f020004

    .line 83
    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 86
    const v1, 0x7f020006

    .line 87
    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 101
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mListening:Z

    .line 102
    if-eqz p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/StaminaController;->addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;)V

    .line 104
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    .line 99
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/StaminaController;->removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;)V

    .line 107
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    goto :goto_0
.end method

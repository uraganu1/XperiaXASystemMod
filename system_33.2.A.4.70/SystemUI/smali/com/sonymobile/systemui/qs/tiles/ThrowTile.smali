.class public Lcom/sonymobile/systemui/qs/tiles/ThrowTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ThrowTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;
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
.field private final mCallback:Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;

.field private final mController:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mListening:Z


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/systemui/qs/tiles/ThrowTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->refreshState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 25
    new-instance v0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/ThrowTile;Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mListening:Z

    .line 31
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getThrowController()Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    .line 32
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 29
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, -0x1

    return v0
.end method

.method public handleClick()V
    .locals 2

    .prologue
    .line 43
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowController;->setThrowEnabled(Z)Z

    .line 44
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 41
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 49
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    invoke-interface {v2}, Lcom/sonymobile/systemui/statusbar/policy/ThrowController;->isThrowEnabled()Z

    move-result v0

    .line 50
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 51
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 52
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mContext:Landroid/content/Context;

    const v3, 0x7f090073

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 53
    if-eqz v0, :cond_1

    const v1, 0x7f0200bd

    .line 55
    .local v1, "iconId":I
    :goto_1
    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 48
    return-void

    .line 50
    .end local v1    # "iconId":I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 54
    :cond_1
    const v1, 0x7f0200bc

    .restart local v1    # "iconId":I
    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 66
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mListening:Z

    .line 67
    if-eqz p1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/ThrowController;->addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;)V

    .line 69
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    .line 64
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/ThrowController;->removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;)V

    .line 72
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    goto :goto_0
.end method

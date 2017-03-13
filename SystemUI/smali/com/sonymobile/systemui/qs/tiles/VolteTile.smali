.class public Lcom/sonymobile/systemui/qs/tiles/VolteTile;
.super Lcom/android/systemui/qs/QSTile;
.source "VolteTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/tiles/VolteTile$Callback;
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
.field private final mCallback:Lcom/sonymobile/systemui/qs/tiles/VolteTile$Callback;

.field private final mController:Lcom/sonymobile/systemui/statusbar/policy/VolteController;

.field private mListening:Z


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/systemui/qs/tiles/VolteTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->refreshState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->mListening:Z

    .line 26
    new-instance v0, Lcom/sonymobile/systemui/qs/tiles/VolteTile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/qs/tiles/VolteTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/VolteTile;Lcom/sonymobile/systemui/qs/tiles/VolteTile$Callback;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/VolteTile$Callback;

    .line 30
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getVolteController()Lcom/sonymobile/systemui/statusbar/policy/VolteController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/VolteController;

    .line 28
    return-void
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 45
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 46
    .local v0, "selected":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/VolteController;

    invoke-interface {v1, v0}, Lcom/sonymobile/systemui/statusbar/policy/VolteController;->setVolteEnabled(I)Z

    .line 44
    return-void

    .line 45
    .end local v0    # "selected":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "selected":I
    goto :goto_0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, -0x1

    return v0
.end method

.method public handleClick()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->setEnabled(Z)V

    .line 39
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 51
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/VolteController;

    invoke-interface {v2}, Lcom/sonymobile/systemui/statusbar/policy/VolteController;->isVolteEnabled()Z

    move-result v0

    .line 52
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 53
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 54
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->mContext:Landroid/content/Context;

    const v3, 0x7f090074

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 55
    if-eqz v0, :cond_0

    const v1, 0x7f0200bf

    .line 57
    .local v1, "iconId":I
    :goto_0
    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 50
    return-void

    .line 56
    .end local v1    # "iconId":I
    :cond_0
    const v1, 0x7f0200be

    .restart local v1    # "iconId":I
    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 68
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->mListening:Z

    .line 69
    if-eqz p1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/VolteController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/VolteTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/VolteController;->addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;)V

    .line 71
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/VolteController;

    invoke-interface {v0}, Lcom/sonymobile/systemui/statusbar/policy/VolteController;->registerVolteContentObserver()V

    .line 66
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/VolteController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/VolteTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/VolteController;->removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;)V

    .line 74
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/VolteController;

    invoke-interface {v0}, Lcom/sonymobile/systemui/statusbar/policy/VolteController;->unregisterVolteContentObserver()V

    goto :goto_0
.end method

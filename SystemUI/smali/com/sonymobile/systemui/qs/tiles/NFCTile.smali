.class public Lcom/sonymobile/systemui/qs/tiles/NFCTile;
.super Lcom/android/systemui/qs/QSTile;
.source "NFCTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/tiles/NFCTile$Callback;
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
.field private final mClickEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

# instance fields
.field private final mClickDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

# instance fields
.field private final mCallback:Lcom/sonymobile/systemui/qs/tiles/NFCTile$Callback;

.field private final mController:Lcom/sonymobile/systemui/statusbar/policy/NFCController;

.field private mListening:Z


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/systemui/qs/tiles/NFCTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->refreshState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f020294

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mClickEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f020295

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mClickDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mListening:Z

    .line 28
    new-instance v0, Lcom/sonymobile/systemui/qs/tiles/NFCTile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/qs/tiles/NFCTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/NFCTile;Lcom/sonymobile/systemui/qs/tiles/NFCTile$Callback;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/NFCTile$Callback;

    .line 32
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNFCController()Lcom/sonymobile/systemui/statusbar/policy/NFCController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/NFCController;

    .line 30
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, -0x1

    return v0
.end method

.method public handleClick()V
    .locals 2

    .prologue
    .line 43
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/NFCController;

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/sonymobile/systemui/statusbar/policy/NFCController;->setNFCEnabled(Z)Z

    .line 41
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mClickEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mClickDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

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
    .line 52
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/NFCController;

    invoke-interface {v2}, Lcom/sonymobile/systemui/statusbar/policy/NFCController;->isNFCEnabled()Z

    move-result v0

    .line 53
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/NFCController;

    invoke-interface {v2}, Lcom/sonymobile/systemui/statusbar/policy/NFCController;->isAvailable()Z

    move-result v2

    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 54
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 55
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mContext:Landroid/content/Context;

    const v3, 0x7f09006f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 56
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mClickEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 58
    .local v1, "iconId":I
    :goto_0
    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 51
    return-void

    .line 57
    .end local v1    # "iconId":I
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mClickDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .restart local v1    # "iconId":I
    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

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
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 69
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mListening:Z

    .line 70
    if-eqz p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/NFCController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/NFCTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/NFCController;->addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;)V

    .line 67
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/NFCController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/NFCTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/NFCController;->removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;)V

    goto :goto_0
.end method

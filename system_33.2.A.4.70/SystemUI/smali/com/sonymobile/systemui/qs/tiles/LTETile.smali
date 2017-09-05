.class public Lcom/sonymobile/systemui/qs/tiles/LTETile;
.super Lcom/android/systemui/qs/QSTile;
.source "LTETile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;
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
.field private final mCallback:Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;

.field private final mController:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

.field private mListening:Z


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/systemui/qs/tiles/LTETile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/LTETile;->refreshState()V

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

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mListening:Z

    .line 26
    new-instance v0, Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/LTETile;Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;

    .line 30
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getLTEController()Lcom/sonymobile/systemui/statusbar/policy/LTEController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mController:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

    .line 28
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, -0x1

    return v0
.end method

.method public handleClick()V
    .locals 2

    .prologue
    .line 41
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mController:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/sonymobile/systemui/statusbar/policy/LTEController;->setLTEEnabled(Z)Z

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
    .line 46
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mController:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

    invoke-interface {v2}, Lcom/sonymobile/systemui/statusbar/policy/LTEController;->isLTEEnabled()Z

    move-result v0

    .line 47
    .local v0, "enabled":Z
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 48
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 49
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mContext:Landroid/content/Context;

    const v3, 0x7f090070

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 50
    if-eqz v0, :cond_0

    const v1, 0x7f02007e

    .line 51
    .local v1, "iconId":I
    :goto_0
    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 45
    return-void

    .line 50
    .end local v1    # "iconId":I
    :cond_0
    const v1, 0x7f02007d

    .restart local v1    # "iconId":I
    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/qs/tiles/LTETile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

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
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/LTETile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 63
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mListening:Z

    .line 64
    if-eqz p1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mController:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/LTEController;->addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;)V

    .line 61
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mController:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/LTEController;->removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;)V

    goto :goto_0
.end method

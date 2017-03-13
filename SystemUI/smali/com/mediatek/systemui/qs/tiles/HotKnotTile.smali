.class public Lcom/mediatek/systemui/qs/tiles/HotKnotTile;
.super Lcom/android/systemui/qs/QSTile;
.source "HotKnotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/systemui/qs/tiles/HotKnotTile$1;
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
.field private final mController:Lcom/mediatek/systemui/statusbar/policy/HotKnotController;

.field private final mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mListening:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/mediatek/systemui/qs/tiles/HotKnotTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->refreshState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 36
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 37
    const v1, 0x7f0200dc

    .line 36
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 38
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 39
    const v1, 0x7f0200da

    .line 38
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 105
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile$1;

    invoke-direct {v0, p0}, Lcom/mediatek/systemui/qs/tiles/HotKnotTile$1;-><init>(Lcom/mediatek/systemui/qs/tiles/HotKnotTile;)V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getHotKnotController()Lcom/mediatek/systemui/statusbar/policy/HotKnotController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mController:Lcom/mediatek/systemui/statusbar/policy/HotKnotController;

    .line 43
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x6f

    return v0
.end method

.method protected handleClick()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 68
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mController:Lcom/mediatek/systemui/statusbar/policy/HotKnotController;

    invoke-interface {v2}, Lcom/mediatek/systemui/statusbar/policy/HotKnotController;->getAdapter()Lcom/mediatek/hotknot/HotKnotAdapter;

    move-result-object v0

    .line 69
    .local v0, "adapter":Lcom/mediatek/hotknot/HotKnotAdapter;
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mController:Lcom/mediatek/systemui/statusbar/policy/HotKnotController;

    invoke-interface {v2}, Lcom/mediatek/systemui/statusbar/policy/HotKnotController;->isHotKnotOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 70
    .local v1, "desiredState":Z
    :goto_0
    const-string/jumbo v2, "HotKnotTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hotknot desiredState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 72
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 73
    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->enable()Z

    .line 67
    :goto_1
    return-void

    .line 69
    .end local v1    # "desiredState":Z
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "desiredState":Z
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->disable()Z

    goto :goto_1
.end method

.method protected handleLongClick()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mediatek.settings.HOTKNOT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 89
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mContext:Landroid/content/Context;

    const v2, 0x7f090058

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 92
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mController:Lcom/mediatek/systemui/statusbar/policy/HotKnotController;

    invoke-interface {v1}, Lcom/mediatek/systemui/statusbar/policy/HotKnotController;->isHotKnotOn()Z

    move-result v0

    .line 93
    .local v0, "desiredState":Z
    const-string/jumbo v1, "HotKnotTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HotKnot UpdateState desiredState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 88
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 88
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 55
    iget-boolean v1, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mListening:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 56
    :cond_0
    iput-boolean p1, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mListening:Z

    .line 57
    if-eqz p1, :cond_1

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.mediatek.hotknot.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

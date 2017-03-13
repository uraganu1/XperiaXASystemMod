.class public Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SimDataConnectionTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;,
        Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;,
        Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;
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


# static fields
.field private static final TAG:Ljava/lang/String; = "SimDataConnectionTile"


# instance fields
.field private final mSimConnectionIcon:Lcom/android/systemui/qs/QSTile$Icon;

.field private final mSimConnectionIconWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

.field private mSimDataSwitchStateMachine:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;


# direct methods
.method static synthetic -get0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->isWifiOnlyDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->refreshState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 39
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;-><init>()V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->mSimConnectionIconWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 40
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/QsIconWrapper;

    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->mSimConnectionIconWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v0, v1}, Lcom/mediatek/systemui/qs/tiles/ext/QsIconWrapper;-><init>(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->mSimConnectionIcon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 50
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 51
    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->init()V

    .line 48
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-direct {v0, p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;-><init>(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->mSimDataSwitchStateMachine:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    .line 59
    return-void
.end method

.method private isWifiOnlyDevice()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 599
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->mContext:Landroid/content/Context;

    .line 600
    const-string/jumbo v3, "connectivity"

    .line 599
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 601
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;-><init>(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;Landroid/content/Context;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x6f

    return v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->mSimDataSwitchStateMachine:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-virtual {v0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->mSimDataSwitchStateMachine:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->toggleState(Landroid/content/Context;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->refreshState()V

    .line 69
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 91
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {v1}, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->getQuickSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;

    move-result-object v0

    .line 93
    .local v0, "quickSettingsPlugin":Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->mSimDataSwitchStateMachine:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-virtual {v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->getCurrentSimConnState()Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->ordinal()I

    move-result v1

    .line 94
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->mSimConnectionIconWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 92
    invoke-interface {v0, v1, v2}, Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;->customizeSimDataConnectionTile(ILcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V

    .line 95
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->mSimConnectionIcon:Lcom/android/systemui/qs/QSTile$Icon;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 87
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 87
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 77
    return-void
.end method

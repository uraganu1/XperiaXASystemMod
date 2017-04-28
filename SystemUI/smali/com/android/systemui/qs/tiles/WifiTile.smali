.class public Lcom/android/systemui/qs/tiles/WifiTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WifiTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;,
        Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;,
        Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$SignalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final WIFI_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

.field private final mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

.field private final mStateBeforeClick:Lcom/android/systemui/qs/QSTile$SignalState;

.field private final mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/qs/QSTile$SignalState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/qs/QSTile$SignalState;

    .line 55
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    .line 59
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    .line 61
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    .line 57
    return-void
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 192
    if-nez p0, :cond_0

    return-object v1

    .line 193
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 194
    .local v0, "length":I
    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 195
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 197
    :cond_1
    return-object p0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090122

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    new-instance v0, Lcom/android/systemui/qs/SignalTileView;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/SignalTileView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0x7e

    return v0
.end method

.method protected handleClick()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/qs/QSTile$SignalState;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    .line 105
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->getMetricsCategory()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 106
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-interface {v3, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    .line 103
    return-void

    :cond_0
    move v0, v2

    .line 105
    goto :goto_0

    :cond_1
    move v1, v2

    .line 106
    goto :goto_1
.end method

.method protected handleSecondaryClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->canConfigWifi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 113
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iput-boolean v1, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    .line 119
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->showDetail(Z)V

    .line 110
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 10
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$SignalState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 124
    const/4 v7, 0x1

    iput-boolean v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->visible:Z

    .line 125
    sget-boolean v7, Lcom/android/systemui/qs/tiles/WifiTile;->DEBUG:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleUpdateState arg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p2

    .line 126
    check-cast v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 127
    .local v0, "cb":Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;
    if-nez v0, :cond_1

    .line 128
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v0, v7, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 131
    :cond_1
    iget-boolean v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v7, :cond_4

    iget-object v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-eqz v7, :cond_4

    const/4 v4, 0x1

    .line 132
    .local v4, "wifiConnected":Z
    :goto_0
    iget v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v7, :cond_5

    iget-object v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-nez v7, :cond_5

    const/4 v6, 0x1

    .line 133
    .local v6, "wifiNotConnected":Z
    :goto_1
    iget-boolean v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    iget-boolean v8, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eq v7, v8, :cond_6

    const/4 v1, 0x1

    .line 134
    .local v1, "enabledChanging":Z
    :goto_2
    if-eqz v1, :cond_2

    .line 135
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-boolean v8, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    .line 136
    iget-boolean v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/tiles/WifiTile;->fireToggleStateChanged(Z)V

    .line 138
    :cond_2
    iget-boolean v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    iput-boolean v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    .line 139
    iget-boolean v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connected:Z

    iput-boolean v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    .line 140
    iget-boolean v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v7, :cond_7

    iget-boolean v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    :goto_3
    iput-boolean v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    .line 141
    iget-boolean v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v7, :cond_8

    iget-boolean v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    :goto_4
    iput-boolean v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    .line 142
    const/4 v7, 0x1

    iput-boolean v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    .line 144
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 145
    .local v2, "r":Landroid/content/res/Resources;
    iget-boolean v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-nez v7, :cond_9

    .line 146
    const v7, 0x7f0202a1

    invoke-static {v7}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 147
    const v7, 0x7f090176

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 148
    const v7, 0x7f09003b

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "signalContentDescription":Ljava/lang/String;
    :goto_5
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 164
    const/4 v9, 0x0

    aput-object v3, v8, v9

    .line 163
    const v9, 0x7f090120

    .line 162
    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->contentDescription:Ljava/lang/String;

    .line 165
    iget-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 166
    .local v5, "wifiName":Ljava/lang/String;
    iget-boolean v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    if-eqz v7, :cond_3

    .line 167
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f0900e3

    invoke-virtual {v2, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 169
    :cond_3
    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->dualLabelContentDescription:Ljava/lang/String;

    .line 123
    return-void

    .line 131
    .end local v1    # "enabledChanging":Z
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "signalContentDescription":Ljava/lang/String;
    .end local v4    # "wifiConnected":Z
    .end local v5    # "wifiName":Ljava/lang/String;
    .end local v6    # "wifiNotConnected":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "wifiConnected":Z
    goto/16 :goto_0

    .line 132
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "wifiNotConnected":Z
    goto :goto_1

    .line 133
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "enabledChanging":Z
    goto :goto_2

    .line 140
    :cond_7
    const/4 v7, 0x0

    goto :goto_3

    .line 141
    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    .line 149
    .restart local v2    # "r":Landroid/content/res/Resources;
    :cond_9
    if-eqz v4, :cond_a

    .line 150
    iget v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    invoke-static {v7}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 151
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 152
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    .restart local v3    # "signalContentDescription":Ljava/lang/String;
    goto :goto_5

    .line 153
    .end local v3    # "signalContentDescription":Ljava/lang/String;
    :cond_a
    if-eqz v6, :cond_b

    .line 154
    const v7, 0x7f0200c8

    invoke-static {v7}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 155
    const v7, 0x7f090176

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 156
    const v7, 0x7f09003c

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "signalContentDescription":Ljava/lang/String;
    goto :goto_5

    .line 158
    .end local v3    # "signalContentDescription":Ljava/lang/String;
    :cond_b
    const v7, 0x7f0200cd

    invoke-static {v7}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 159
    const v7, 0x7f090176

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 160
    const v7, 0x7f09003b

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "signalContentDescription":Ljava/lang/String;
    goto :goto_5
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 123
    check-cast p1, Lcom/android/systemui/qs/QSTile$SignalState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$SignalState;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/android/systemui/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$SignalState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/qs/QSTile$SignalState;

    move-result-object v0

    return-object v0
.end method

.method public setDetailListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V

    .line 84
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 75
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v1, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsDualTargets()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

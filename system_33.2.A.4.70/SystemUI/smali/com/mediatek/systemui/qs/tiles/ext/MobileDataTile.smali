.class public Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;
.super Lcom/android/systemui/qs/QSTile;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;,
        Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;
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
.field private static final AIRPLANE_DATA_CONNECT:I = 0x2

.field private static final DATA_CONNECT:I = 0x1

.field private static final DATA_CONNECT_DISABLE:I = 0x3

.field private static final DATA_DISCONNECT:I = 0x0

.field private static final DATA_RADIO_OFF:I = 0x4

.field private static final DEBUG:Z = true

.field private static final QS_MOBILE_DISABLE:I = 0x7f020083

.field private static final QS_MOBILE_ENABLE:I = 0x7f020084


# instance fields
.field private final mCallback:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;

.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mDataConnectionState:I

.field private final mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

.field private final mDataStateIcon:Lcom/android/systemui/qs/QSTile$Icon;

.field private mDataStateIconId:I

.field private final mDataStateIconIdWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;


# direct methods
.method static synthetic -get0(Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataConnectionState:I

    .line 40
    const v0, 0x7f020083

    iput v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataStateIconId:I

    .line 41
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;-><init>()V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataStateIconIdWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 42
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/QsIconWrapper;

    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataStateIconIdWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v0, v1}, Lcom/mediatek/systemui/qs/tiles/ext/QsIconWrapper;-><init>(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataStateIcon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 44
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;-><init>(Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;)V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mCallback:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;

    .line 52
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 53
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    .line 55
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "create MobileDataTile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method private final isDefaultDataSimRadioOn()Z
    .locals 5

    .prologue
    .line 159
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 160
    .local v1, "subId":I
    if-ltz v1, :cond_0

    invoke-static {v1}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isRadioOn(I)Z

    move-result v0

    .line 162
    :goto_0
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isDefaultDataSimRadioOn subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isRadioOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    .local v0, "isRadioOn":Z
    goto :goto_0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x6f

    return v0
.end method

.method protected handleClick()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->isMobileDataSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    if-nez v1, :cond_1

    .line 86
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 88
    .local v0, "subId":I
    if-gez v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isRadioOn(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    return-void

    .line 95
    .end local v0    # "subId":I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-interface {v3, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->setMobileDataEnabled(Z)V

    .line 82
    :cond_2
    return-void

    .line 95
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 11
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$SignalState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v10, 0x7f09005a

    const/4 v9, 0x1

    const v8, 0x7f020083

    const/4 v5, 0x0

    .line 102
    iget-object v4, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleUpdateState arg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v4, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result v4

    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$SignalState;->visible:Z

    .line 106
    iget-boolean v4, p1, Lcom/android/systemui/qs/QSTile$SignalState;->visible:Z

    if-nez v4, :cond_0

    .line 107
    return-void

    :cond_0
    move-object v0, p2

    .line 110
    check-cast v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    .line 112
    .local v0, "cb":Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;
    if-nez v0, :cond_1

    .line 113
    iget-object v4, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mCallback:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;

    iget-object v0, v4, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    .line 116
    :cond_1
    iget-object v4, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->isMobileDataSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    iget-boolean v4, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->noSim:Z

    if-eqz v4, :cond_3

    .line 116
    :cond_2
    const/4 v3, 0x0

    .line 118
    :goto_0
    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->isMobileDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 119
    iget v4, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->mobileSignalIconId:I

    if-lez v4, :cond_4

    const/4 v1, 0x1

    .line 120
    .local v1, "dataConnected":Z
    :goto_1
    iget v4, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->mobileSignalIconId:I

    if-lez v4, :cond_6

    iget-object v4, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-nez v4, :cond_6

    const/4 v2, 0x1

    .line 122
    .local v2, "dataNotConnected":Z
    :goto_2
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    .line 123
    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    .line 124
    iget-boolean v4, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->enabled:Z

    if-eqz v4, :cond_7

    iget-boolean v4, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->activityIn:Z

    :goto_3
    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    .line 125
    iget-boolean v4, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->enabled:Z

    if-eqz v4, :cond_8

    iget-boolean v4, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->activityOut:Z

    :goto_4
    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    .line 126
    iput-boolean v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    .line 128
    iget-boolean v4, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-nez v4, :cond_9

    .line 129
    const/4 v4, 0x3

    iput v4, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataConnectionState:I

    .line 130
    iput v8, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataStateIconId:I

    .line 142
    :goto_5
    iget-object v4, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->customizeBehaviorSet()Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    move-result-object v4

    .line 143
    sget-object v5, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->OP09_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    .line 142
    if-ne v4, v5, :cond_c

    .line 144
    iget-object v4, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->getQuickSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;

    move-result-object v4

    .line 145
    iget v5, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataConnectionState:I

    iget-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataStateIconIdWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 146
    iget-object v7, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-interface {v4, v5, v6, v7}, Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;->customizeDataConnectionTile(ILcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 147
    iget-object v4, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataStateIcon:Lcom/android/systemui/qs/QSTile$Icon;

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 154
    :goto_6
    iget-object v4, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleUpdateState state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 117
    .end local v1    # "dataConnected":Z
    .end local v2    # "dataNotConnected":Z
    :cond_3
    iget-boolean v4, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->airplaneModeEnabled:Z

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->isDefaultDataSimRadioOn()Z

    move-result v3

    .local v3, "enabled":Z
    goto/16 :goto_0

    .line 119
    .end local v3    # "enabled":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "dataConnected":Z
    goto :goto_1

    .line 118
    .end local v1    # "dataConnected":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "dataConnected":Z
    goto :goto_1

    .line 120
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "dataNotConnected":Z
    goto :goto_2

    :cond_7
    move v4, v5

    .line 124
    goto :goto_3

    :cond_8
    move v4, v5

    .line 125
    goto :goto_4

    .line 131
    :cond_9
    if-eqz v1, :cond_a

    .line 132
    iput v9, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataConnectionState:I

    .line 133
    const v4, 0x7f020084

    iput v4, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataStateIconId:I

    goto :goto_5

    .line 134
    :cond_a
    if-eqz v2, :cond_b

    .line 135
    iput v5, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataConnectionState:I

    .line 136
    iput v8, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataStateIconId:I

    goto :goto_5

    .line 138
    :cond_b
    iput v5, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataConnectionState:I

    .line 139
    iput v8, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataStateIconId:I

    goto :goto_5

    .line 149
    :cond_c
    iget-object v4, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 150
    iget v4, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mDataStateIconId:I

    invoke-static {v4}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_6
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, Lcom/android/systemui/qs/QSTile$SignalState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$SignalState;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/android/systemui/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$SignalState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->newTileState()Lcom/android/systemui/qs/QSTile$SignalState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setListening = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mCallback:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 60
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->mCallback:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0
.end method

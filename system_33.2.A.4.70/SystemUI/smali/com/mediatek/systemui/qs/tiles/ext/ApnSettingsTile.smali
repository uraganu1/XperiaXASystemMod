.class public Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ApnSettingsTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile$1;,
        Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final APN_SETTINGS:Landroid/content/Intent;

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ApnSettingsTile"


# instance fields
.field private mApnSettingsEnabled:Z

.field private final mApnStateIcon:Lcom/android/systemui/qs/QSTile$Icon;

.field private final mApnStateIconWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

.field private mApnStateLabel:Ljava/lang/String;

.field private mIsAirlineMode:Z

.field private mIsWifiOnly:Z

.field private mListening:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -set0(Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mIsAirlineMode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    .line 33
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$ApnSettingsActivity"

    .line 32
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->APN_SETTINGS:Landroid/content/Intent;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 36
    new-instance v1, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v1}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;-><init>()V

    iput-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mApnStateIconWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 37
    new-instance v1, Lcom/mediatek/systemui/qs/tiles/ext/QsIconWrapper;

    iget-object v3, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mApnStateIconWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v1, v3}, Lcom/mediatek/systemui/qs/tiles/ext/QsIconWrapper;-><init>(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V

    iput-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mApnStateIcon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 38
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mApnStateLabel:Ljava/lang/String;

    .line 39
    iput-boolean v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mApnSettingsEnabled:Z

    .line 44
    iput-boolean v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mIsAirlineMode:Z

    .line 181
    new-instance v1, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile$1;

    invoke-direct {v1, p0}, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile$1;-><init>(Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;)V

    iput-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    new-instance v1, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile$2;

    invoke-direct {v1, p0}, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile$2;-><init>(Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;)V

    iput-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 53
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 54
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mUm:Landroid/os/UserManager;

    .line 56
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mContext:Landroid/content/Context;

    .line 57
    const-string/jumbo v3, "connectivity"

    .line 56
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 58
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mIsWifiOnly:Z

    .line 60
    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->updateState()V

    .line 51
    return-void

    :cond_0
    move v1, v2

    .line 58
    goto :goto_0
.end method

.method private isAllRadioOff()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 168
    const/4 v0, 0x1

    .line 169
    .local v0, "result":Z
    iget-object v4, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v2

    .line 170
    .local v2, "subIds":[I
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 171
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v2, v3

    .line 172
    .local v1, "subId":I
    invoke-static {v1}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isRadioOn(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 173
    const/4 v0, 0x0

    .line 178
    .end local v1    # "subId":I
    :cond_0
    return v0

    .line 171
    .restart local v1    # "subId":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private final updateState()V
    .locals 9

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 125
    .local v1, "enabled":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    .line 126
    .local v4, "isSecondaryUser":Z
    :goto_0
    iget-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mUm:Landroid/os/UserManager;

    .line 127
    const-string/jumbo v7, "no_config_mobile_networks"

    .line 126
    invoke-virtual {v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    .line 129
    .local v3, "isRestricted":Z
    iget-boolean v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mIsWifiOnly:Z

    if-nez v6, :cond_0

    if-nez v4, :cond_0

    if-eqz v3, :cond_2

    .line 130
    :cond_0
    const/4 v1, 0x0

    .line 132
    const-string/jumbo v6, "ApnSettingsTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateState(), isSecondaryUser = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 133
    const-string/jumbo v8, ", mIsWifiOnly = "

    .line 132
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 133
    iget-boolean v8, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mIsWifiOnly:Z

    .line 132
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 133
    const-string/jumbo v8, ", isRestricted = "

    .line 132
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_1
    iput-boolean v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mApnSettingsEnabled:Z

    .line 153
    const-string/jumbo v6, "ApnSettingsTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateState(), mApnSettingsEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mApnSettingsEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->updateStateResources()V

    .line 158
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->refreshState()V

    .line 121
    return-void

    .line 125
    .end local v3    # "isRestricted":Z
    .end local v4    # "isSecondaryUser":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "isSecondaryUser":Z
    goto :goto_0

    .line 136
    .restart local v3    # "isRestricted":Z
    :cond_2
    iget-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v5

    .line 137
    .local v5, "simNum":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 138
    .local v0, "callState":I
    if-nez v0, :cond_4

    const/4 v2, 0x1

    .line 139
    .local v2, "isIdle":Z
    :goto_2
    iget-boolean v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mIsAirlineMode:Z

    if-nez v6, :cond_3

    if-lez v5, :cond_3

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->isAllRadioOff()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 144
    :cond_3
    :goto_3
    const-string/jumbo v6, "ApnSettingsTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateState(), mIsAirlineMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mIsAirlineMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 145
    const-string/jumbo v8, ", simNum = "

    .line 144
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 145
    const-string/jumbo v8, ", callstate = "

    .line 144
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 146
    const-string/jumbo v8, ", isIdle = "

    .line 144
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 138
    .end local v2    # "isIdle":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "isIdle":Z
    goto :goto_2

    .line 140
    :cond_5
    const/4 v1, 0x1

    goto :goto_3
.end method

.method private final updateStateResources()V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->getQuickSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;

    move-result-object v0

    .line 163
    iget-boolean v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mApnSettingsEnabled:Z

    .line 164
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mApnStateIconWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    iget-object v3, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mApnStateLabel:Ljava/lang/String;

    .line 162
    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;->customizeApnSettingsTile(ZLcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mApnStateLabel:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x6f

    return v0
.end method

.method protected handleClick()V
    .locals 4

    .prologue
    .line 103
    const-string/jumbo v1, "ApnSettingsTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleClick(), mApnSettingsEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mApnSettingsEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-boolean v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mApnSettingsEnabled:Z

    if-eqz v1, :cond_0

    .line 105
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 106
    .local v0, "subId":I
    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->APN_SETTINGS:Landroid/content/Intent;

    const-string/jumbo v2, "sub_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "ApnSettingsTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleClick(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->APN_SETTINGS:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    sget-object v2, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->APN_SETTINGS:Landroid/content/Intent;

    invoke-interface {v1, v2}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 110
    .end local v0    # "subId":I
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->updateState()V

    .line 102
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    .line 116
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mApnStateIcon:Lcom/android/systemui/qs/QSTile$Icon;

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 117
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mApnStateLabel:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mApnStateLabel:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    .line 114
    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 70
    const-string/jumbo v1, "ApnSettingsTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setListening(), listening = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-boolean v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mListening:Z

    if-ne v1, p1, :cond_0

    .line 72
    return-void

    .line 75
    :cond_0
    iput-boolean p1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mListening:Z

    .line 76
    if-eqz p1, :cond_1

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, "android.intent.action.ACTION_EF_CSP_CONTENT_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v1, "android.intent.action.MSIM_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v1, "android.intent.action.ACTION_MD_TYPE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v1, "mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "android.intent.action.ACTION_SET_PHONE_RAT_FAMILY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    .line 87
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 69
    .end local v0    # "mIntentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    .line 91
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

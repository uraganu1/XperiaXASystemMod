.class public Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DualSimSettingsTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile$1;
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
.field private static final DUAL_SIM_SETTINGS:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String; = "DualSimSettingsTile"


# instance fields
.field private final mDualSimSettingsIcon:Lcom/android/systemui/qs/QSTile$Icon;

.field private final mIconIdWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

.field private mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    .line 26
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$SimSettingsActivity"

    .line 25
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->DUAL_SIM_SETTINGS:Landroid/content/Intent;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 28
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;-><init>()V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->mIconIdWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 29
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/QsIconWrapper;

    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->mIconIdWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v0, v1}, Lcom/mediatek/systemui/qs/tiles/ext/QsIconWrapper;-><init>(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->mDualSimSettingsIcon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 89
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile$1;

    invoke-direct {v0, p0}, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile$1;-><init>(Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;)V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->registerSimStateReceiver()V

    .line 35
    return-void
.end method

.method private registerSimStateReceiver()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x6f

    return v0
.end method

.method protected handleClick()V
    .locals 5

    .prologue
    .line 56
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    int-to-long v0, v2

    .line 57
    .local v0, "subId":J
    const-string/jumbo v2, "DualSimSettingsTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleClick, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->DUAL_SIM_SETTINGS:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v2, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->DUAL_SIM_SETTINGS:Landroid/content/Intent;

    const-string/jumbo v3, "subscription"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 59
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    sget-object v3, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->DUAL_SIM_SETTINGS:Landroid/content/Intent;

    invoke-interface {v2, v3}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->refreshState()V

    .line 55
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 65
    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    move-object v1, p2

    .line 67
    check-cast v1, Ljava/lang/Boolean;

    .line 68
    .local v1, "simInserted":Ljava/lang/Boolean;
    const-string/jumbo v2, "DualSimSettingsTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUpdateState,  simInserted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {v2}, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->getQuickSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;

    move-result-object v0

    .line 72
    .local v0, "quickSettingsPlugin":Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->mIconIdWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    .line 73
    invoke-interface {v0, v4, v2, v3}, Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;->customizeDualSimSettingsTile(ZLcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->mDualSimSettingsIcon:Lcom/android/systemui/qs/QSTile$Icon;

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 64
    return-void

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->mIconIdWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    const-string/jumbo v3, ""

    .line 76
    invoke-interface {v0, v5, v2, v3}, Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;->customizeDualSimSettingsTile(ZLcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 46
    return-void
.end method

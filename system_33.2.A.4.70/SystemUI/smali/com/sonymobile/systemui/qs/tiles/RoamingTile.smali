.class public Lcom/sonymobile/systemui/qs/tiles/RoamingTile;
.super Lcom/android/systemui/qs/QSTile;
.source "RoamingTile.java"


# annotations
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
.field private mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mSubId:I


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/systemui/qs/tiles/RoamingTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f02029e

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mClickEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f02029f

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mClickDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 30
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->getDefaultDataSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->updateListenRoaming(I)V

    .line 31
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 27
    return-void
.end method

.method private getDefaultDataSubId()I
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    return v0
.end method

.method private getRoamingUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 84
    const-string/jumbo v0, "data_roaming"

    .line 85
    .local v0, "roamingUri":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->isSingleSim()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    return-object v0
.end method

.method private isSingleSim()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateListenRoaming(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mSubId:I

    .line 93
    new-instance v0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile$1;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->getRoamingUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile$1;-><init>(Lcom/sonymobile/systemui/qs/tiles/RoamingTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 91
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, -0x1

    return v0
.end method

.method protected handleClick()V
    .locals 4

    .prologue
    .line 41
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    .line 43
    const-string/jumbo v3, "connectivity"

    .line 42
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 44
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 49
    :goto_0
    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2, v1}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 40
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mClickEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mClickDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    return-void

    .line 47
    :cond_0
    const/high16 v2, 0x50000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 55
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    .line 56
    .local v2, "value":I
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 57
    .local v0, "enabled":Z
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 58
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 59
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    const v4, 0x7f090075

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 60
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mClickEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 62
    .local v1, "iconId":I
    :goto_1
    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 54
    return-void

    .line 56
    .end local v0    # "enabled":Z
    .end local v1    # "iconId":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mClickDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .restart local v1    # "iconId":I
    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->getDefaultDataSubId()I

    move-result v0

    .line 74
    .local v0, "defaultSubId":I
    iget v1, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mSubId:I

    if-eq v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 77
    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->updateListenRoaming(I)V

    .line 80
    .end local v0    # "defaultSubId":I
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 71
    return-void
.end method

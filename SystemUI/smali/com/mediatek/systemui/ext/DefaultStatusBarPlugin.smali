.class public Lcom/mediatek/systemui/ext/DefaultStatusBarPlugin;
.super Landroid/content/ContextWrapper;
.source "DefaultStatusBarPlugin.java"

# interfaces
.implements Lcom/mediatek/systemui/ext/IStatusBarPlugin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public customizeBehaviorSet()Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->DEFAULT_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    return-object v0
.end method

.method public customizeDataActivityIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;I)V
    .locals 0
    .param p1, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;
    .param p2, "dataActivity"    # I

    .prologue
    .line 59
    return-void
.end method

.method public customizeDataNetworkTypeIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;ZLcom/mediatek/systemui/statusbar/extcb/NetworkType;)V
    .locals 0
    .param p1, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;
    .param p2, "roaming"    # Z
    .param p3, "networkType"    # Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    .prologue
    .line 50
    return-void
.end method

.method public customizeDataNetworkTypeIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;ZLcom/mediatek/systemui/statusbar/extcb/NetworkType;Lcom/mediatek/systemui/statusbar/extcb/SvLteController;)V
    .locals 0
    .param p1, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;
    .param p2, "roaming"    # Z
    .param p3, "networkType"    # Lcom/mediatek/systemui/statusbar/extcb/NetworkType;
    .param p4, "svLteController"    # Lcom/mediatek/systemui/statusbar/extcb/SvLteController;

    .prologue
    .line 55
    return-void
.end method

.method public customizeDataTypeIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;ZLcom/mediatek/systemui/statusbar/extcb/DataType;)V
    .locals 0
    .param p1, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;
    .param p2, "roaming"    # Z
    .param p3, "dataType"    # Lcom/mediatek/systemui/statusbar/extcb/DataType;

    .prologue
    .line 45
    return-void
.end method

.method public customizeHasNoSims(Z)Z
    .locals 0
    .param p1, "orgHasNoSims"    # Z

    .prologue
    .line 74
    return p1
.end method

.method public customizeHspaDistinguishable(Z)Z
    .locals 0
    .param p1, "distinguishable"    # Z

    .prologue
    .line 69
    return p1
.end method

.method public customizeSignalCluster()Lcom/mediatek/systemui/ext/ISignalClusterExt;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/DefaultEmptySignalClusterExt;

    invoke-direct {v0}, Lcom/mediatek/systemui/statusbar/extcb/DefaultEmptySignalClusterExt;-><init>()V

    return-object v0
.end method

.method public customizeSignalIndicatorIcon(ILcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .prologue
    .line 40
    return-void
.end method

.method public customizeSignalStrengthIcon(IZLcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "roaming"    # Z
    .param p3, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .prologue
    .line 28
    return-void
.end method

.method public customizeSignalStrengthNullIcon(ILcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .prologue
    .line 32
    return-void
.end method

.method public customizeSignalStrengthOfflineIcon(ILcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .prologue
    .line 36
    return-void
.end method

.method public updateSignalStrengthWifiOnlyMode(Landroid/telephony/ServiceState;Z)Z
    .locals 0
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;
    .param p2, "connected"    # Z

    .prologue
    .line 85
    return p2
.end method

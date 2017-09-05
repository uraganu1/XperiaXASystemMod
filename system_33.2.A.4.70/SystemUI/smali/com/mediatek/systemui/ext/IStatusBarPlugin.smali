.class public interface abstract Lcom/mediatek/systemui/ext/IStatusBarPlugin;
.super Ljava/lang/Object;
.source "IStatusBarPlugin.java"


# virtual methods
.method public abstract customizeBehaviorSet()Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;
.end method

.method public abstract customizeDataActivityIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;I)V
.end method

.method public abstract customizeDataNetworkTypeIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;ZLcom/mediatek/systemui/statusbar/extcb/NetworkType;)V
.end method

.method public abstract customizeDataNetworkTypeIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;ZLcom/mediatek/systemui/statusbar/extcb/NetworkType;Lcom/mediatek/systemui/statusbar/extcb/SvLteController;)V
.end method

.method public abstract customizeDataTypeIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;ZLcom/mediatek/systemui/statusbar/extcb/DataType;)V
.end method

.method public abstract customizeHasNoSims(Z)Z
.end method

.method public abstract customizeHspaDistinguishable(Z)Z
.end method

.method public abstract customizeSignalCluster()Lcom/mediatek/systemui/ext/ISignalClusterExt;
.end method

.method public abstract customizeSignalIndicatorIcon(ILcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V
.end method

.method public abstract customizeSignalStrengthIcon(IZLcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V
.end method

.method public abstract customizeSignalStrengthNullIcon(ILcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V
.end method

.method public abstract customizeSignalStrengthOfflineIcon(ILcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V
.end method

.method public abstract updateSignalStrengthWifiOnlyMode(Landroid/telephony/ServiceState;Z)Z
.end method

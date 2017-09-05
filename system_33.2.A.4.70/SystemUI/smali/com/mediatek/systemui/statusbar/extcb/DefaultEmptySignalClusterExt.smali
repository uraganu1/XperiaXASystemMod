.class public Lcom/mediatek/systemui/statusbar/extcb/DefaultEmptySignalClusterExt;
.super Ljava/lang/Object;
.source "DefaultEmptySignalClusterExt.java"

# interfaces
.implements Lcom/mediatek/systemui/ext/ISignalClusterExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onAttachedToWindow(Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "mobileSignalGroup"    # Landroid/widget/LinearLayout;
    .param p2, "noSimsView"    # Landroid/widget/ImageView;

    .prologue
    .line 40
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 45
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 49
    return-void
.end method

.method public setMobileDataIndicators(IZLandroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "mobileVisible"    # Z
    .param p3, "signalClusterCombo"    # Landroid/view/ViewGroup;
    .param p4, "mobileNetworkType"    # Landroid/widget/ImageView;
    .param p5, "mobileGroup"    # Landroid/view/ViewGroup;
    .param p6, "mobileStrength"    # Landroid/widget/ImageView;
    .param p7, "mobileType"    # Landroid/widget/ImageView;
    .param p8, "mobileStrengthIconId"    # I
    .param p9, "mobileDataTypeIconId"    # I
    .param p10, "mobileDescription"    # Ljava/lang/String;
    .param p11, "mobileTypeDescription"    # Ljava/lang/String;
    .param p12, "isMobileTypeIconWide"    # Z

    .prologue
    .line 36
    return-void
.end method

.method public setNetworkControllerExt(Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;)V
    .locals 0
    .param p1, "networkControllerExt"    # Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    .prologue
    .line 23
    return-void
.end method

.method public setSignalClusterInfo(Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;)V
    .locals 0
    .param p1, "signalClusterInfo"    # Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;

    .prologue
    .line 19
    return-void
.end method

.method public setSubs(Ljava/util/List;[Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;)V
    .locals 0
    .param p2, "states"    # [Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;[",
            "Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    return-void
.end method

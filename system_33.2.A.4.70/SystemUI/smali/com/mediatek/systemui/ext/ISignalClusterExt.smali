.class public interface abstract Lcom/mediatek/systemui/ext/ISignalClusterExt;
.super Ljava/lang/Object;
.source "ISignalClusterExt.java"


# virtual methods
.method public abstract apply()V
.end method

.method public abstract onAttachedToWindow(Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
.end method

.method public abstract onDetachedFromWindow()V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation
.end method

.method public abstract onRtlPropertiesChanged(I)V
.end method

.method public abstract setMobileDataIndicators(IZLandroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;IILjava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setNetworkControllerExt(Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;)V
.end method

.method public abstract setSignalClusterInfo(Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;)V
.end method

.method public abstract setSubs(Ljava/util/List;[Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;)V
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
.end method

.class public interface abstract Lcom/android/systemui/statusbar/policy/CastController;
.super Ljava/lang/Object;
.source "CastController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/CastController$Callback;,
        Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V
.end method

.method public abstract getCastDevices()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/systemui/statusbar/policy/CastController$CastDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiP2pDev()Landroid/net/wifi/p2p/WifiP2pDevice;
.end method

.method public abstract isNeedShowWfdSink()Z
.end method

.method public abstract isWfdSinkSupported()Z
.end method

.method public abstract removeCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V
.end method

.method public abstract setCurrentUserId(I)V
.end method

.method public abstract setDiscovering(Z)V
.end method

.method public abstract startCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V
.end method

.method public abstract stopCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V
.end method

.method public abstract updateWfdFloatMenu(Z)V
.end method

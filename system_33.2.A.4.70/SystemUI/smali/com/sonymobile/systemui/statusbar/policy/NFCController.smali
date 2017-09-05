.class public interface abstract Lcom/sonymobile/systemui/statusbar/policy/NFCController;
.super Ljava/lang/Object;
.source "NFCController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;
    }
.end annotation


# virtual methods
.method public abstract addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;)V
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isNFCEnabled()Z
.end method

.method public abstract removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;)V
.end method

.method public abstract setNFCEnabled(Z)Z
.end method

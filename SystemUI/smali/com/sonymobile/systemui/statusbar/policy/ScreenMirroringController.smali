.class public interface abstract Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;
.super Ljava/lang/Object;
.source "ScreenMirroringController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;
    }
.end annotation


# virtual methods
.method public abstract addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;)V
.end method

.method public abstract isScreenMirroringEnabled()Z
.end method

.method public abstract registerScreenMirroringBroadcast()V
.end method

.method public abstract removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;)V
.end method

.method public abstract setScreenMirroringEnabled(Z)Z
.end method

.method public abstract unregisterScreenMirroringBroadcast()V
.end method

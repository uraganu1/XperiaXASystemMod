.class public interface abstract Lcom/sonymobile/systemui/statusbar/policy/VolteController;
.super Ljava/lang/Object;
.source "VolteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;
    }
.end annotation


# virtual methods
.method public abstract addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;)V
.end method

.method public abstract isVolteEnabled()Z
.end method

.method public abstract registerVolteContentObserver()V
.end method

.method public abstract removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;)V
.end method

.method public abstract setVolteEnabled(I)Z
.end method

.method public abstract unregisterVolteContentObserver()V
.end method

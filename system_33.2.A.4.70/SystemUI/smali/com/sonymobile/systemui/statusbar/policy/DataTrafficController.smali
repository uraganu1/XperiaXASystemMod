.class public interface abstract Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;
.super Ljava/lang/Object;
.source "DataTrafficController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;
    }
.end annotation


# virtual methods
.method public abstract addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;)V
.end method

.method public abstract isAvailiable()Z
.end method

.method public abstract isDataTrafficEnabled()Z
.end method

.method public abstract registerDataTrafficBroadcast()V
.end method

.method public abstract removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;)V
.end method

.method public abstract setDataTrafficEnabled(Z)Z
.end method

.method public abstract unregisterDataTrafficBroadcast()V
.end method

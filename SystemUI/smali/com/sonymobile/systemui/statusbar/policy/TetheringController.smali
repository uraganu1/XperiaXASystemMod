.class public interface abstract Lcom/sonymobile/systemui/statusbar/policy/TetheringController;
.super Ljava/lang/Object;
.source "TetheringController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;
    }
.end annotation


# virtual methods
.method public abstract addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;)V
.end method

.method public abstract isTetheringEnabled()Z
.end method

.method public abstract registerTetheringBroadcast()V
.end method

.method public abstract removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;)V
.end method

.method public abstract unregisterTetheringBroadcast()V
.end method

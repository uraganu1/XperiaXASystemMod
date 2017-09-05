.class public interface abstract Lcom/sonymobile/systemui/statusbar/policy/LTEController;
.super Ljava/lang/Object;
.source "LTEController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;
    }
.end annotation


# virtual methods
.method public abstract addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;)V
.end method

.method public abstract isLTEEnabled()Z
.end method

.method public abstract removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;)V
.end method

.method public abstract setLTEEnabled(Z)Z
.end method

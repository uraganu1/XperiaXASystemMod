.class public interface abstract Lcom/sonymobile/systemui/statusbar/policy/ThrowController;
.super Ljava/lang/Object;
.source "ThrowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;
    }
.end annotation


# virtual methods
.method public abstract addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;)V
.end method

.method public abstract isThrowEnabled()Z
.end method

.method public abstract removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;)V
.end method

.method public abstract setThrowEnabled(Z)Z
.end method

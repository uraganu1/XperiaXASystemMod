.class public interface abstract Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
.super Ljava/lang/Object;
.source "CallButtonPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallButtonPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallButtonUi"
.end annotation


# virtual methods
.method public abstract displayDialpad(ZZ)V
.end method

.method public abstract enableAddParticipant(Z)V
.end method

.method public abstract enableButton(IZ)V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract setAudio(I)V
.end method

.method public abstract setCameraSwitched(Z)V
.end method

.method public abstract setChangeToVideoButtonAppearance(Z)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setHold(Z)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setSupportedAudio(I)V
.end method

.method public abstract setVideoPaused(Z)V
.end method

.method public abstract showButton(IZ)V
.end method

.method public abstract updateButtonStates()V
.end method

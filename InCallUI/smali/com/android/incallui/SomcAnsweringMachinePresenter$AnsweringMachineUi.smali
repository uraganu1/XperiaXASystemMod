.class public interface abstract Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;
.super Ljava/lang/Object;
.source "SomcAnsweringMachinePresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcAnsweringMachinePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnsweringMachineUi"
.end annotation


# virtual methods
.method public abstract hideAmAnimation()V
.end method

.method public abstract setAmPlayingElapsedTime(ZLjava/lang/String;)V
.end method

.method public abstract setAmPlayingTotalTime(I)V
.end method

.method public abstract setAmRecordingElapsedTime(ZLjava/lang/String;)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract showAmPlayingAnimation()V
.end method

.method public abstract showAmRecordingAnimation()V
.end method

.method public abstract showErrorDialog(I)V
.end method

.method public abstract startAmPlayingAnimation(F)V
.end method

.method public abstract startAmRecordingAnimation(F)V
.end method

.class public interface abstract Lcom/android/keyguard/KeyguardSecurityCallback;
.super Ljava/lang/Object;
.source "KeyguardSecurityCallback.java"


# virtual methods
.method public abstract dismiss(Z)V
.end method

.method public abstract hasOnDismissAction()Z
.end method

.method public abstract reportSuccessfulRecoveryUnlockAttempt()V
.end method

.method public abstract reportUnlockAttempt(ZI)V
.end method

.method public abstract reset()V
.end method

.method public abstract setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
.end method

.method public abstract showBackupSecurity()V
.end method

.method public abstract userActivity()V
.end method

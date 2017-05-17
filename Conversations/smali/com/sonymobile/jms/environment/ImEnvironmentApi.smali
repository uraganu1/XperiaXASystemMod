.class public interface abstract Lcom/sonymobile/jms/environment/ImEnvironmentApi;
.super Ljava/lang/Object;
.source "ImEnvironmentApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    }
.end annotation


# virtual methods
.method public abstract getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
.end method

.method public abstract isImServiceActivated()Z
.end method

.method public abstract onApplicationStartupScreenDisplayed()V
.end method

.method public abstract registerImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V
.end method

.method public abstract setImServiceActivationState(Z)V
.end method

.method public abstract unregisterImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V
.end method

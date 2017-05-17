.class public interface abstract Lcom/sonymobile/holla/ICallPlusService;
.super Ljava/lang/Object;
.source "ICallPlusService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/holla/ICallPlusService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCachedCapability(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestCapability(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

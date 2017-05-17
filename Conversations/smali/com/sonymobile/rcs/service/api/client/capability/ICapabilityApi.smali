.class public interface abstract Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;
.super Ljava/lang/Object;
.source "ICapabilityApi.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi$Stub;
    }
.end annotation


# virtual methods
.method public abstract isRcsContact(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract refreshAllCapabilities()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

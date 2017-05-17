.class public Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;
.super Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;
.source "IPCallError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(I)V

    .line 77
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    .locals 0
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 68
    return-void
.end method

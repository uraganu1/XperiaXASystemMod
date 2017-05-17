.class public Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;
.super Lcom/sonymobile/rcs/service/api/client/ClientApiException;
.source "CoreServiceNotAvailableException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Core service not available"

    .line 33
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

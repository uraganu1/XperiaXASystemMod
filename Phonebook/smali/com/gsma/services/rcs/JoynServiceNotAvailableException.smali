.class public Lcom/gsma/services/rcs/JoynServiceNotAvailableException;
.super Lcom/gsma/services/rcs/JoynServiceException;
.source "JoynServiceNotAvailableException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "joyn service not available"

    .line 32
    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/JoynServiceException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

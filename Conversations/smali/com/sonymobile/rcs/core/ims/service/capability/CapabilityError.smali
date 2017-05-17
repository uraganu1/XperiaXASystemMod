.class public Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityError;
.super Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;
.source "CapabilityError.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;-><init>(ILjava/lang/String;)V

    .line 53
    return-void
.end method

.class public Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;
.super Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;
.source "PresenceError.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;-><init>(I)V

    .line 48
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;-><init>(ILjava/lang/String;)V

    .line 58
    return-void
.end method

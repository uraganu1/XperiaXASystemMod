.class public Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;
.super Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;
.source "ContentSharingError.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(I)V

    .line 87
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    .locals 2
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    .line 78
    return-void
.end method

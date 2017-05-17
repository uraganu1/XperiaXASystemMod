.class public Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;
.super Ljava/lang/Error;
.source "ImsServiceError.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 62
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->code:I

    .line 63
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 74
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->code:I

    .line 75
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->code:I

    return v0
.end method

.class public Lcom/sonymobile/rcs/core/ims/ImsError;
.super Ljava/lang/Error;
.source "ImsError.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 64
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/ImsError;->code:I

    .line 65
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/ImsError;->code:I

    return v0
.end method

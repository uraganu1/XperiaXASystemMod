.class public Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/conversations/transaction/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleResponse"
.end annotation


# instance fields
.field private mData:[B

.field private mResponseCode:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;->mResponseCode:I

    .line 84
    iput-object p2, p0, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;->mData:[B

    .line 82
    return-void
.end method

.method synthetic constructor <init>(I[BLcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "data"    # [B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;-><init>(I[B)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;->mData:[B

    return-object v0
.end method

.method public getHttpCode()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;->mResponseCode:I

    return v0
.end method

.class public abstract Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/Format;
.super Ljava/lang/Object;
.source "Format.java"


# instance fields
.field private codec:Ljava/lang/String;

.field private payload:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "codec"    # Ljava/lang/String;
    .param p2, "payload"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/Format;->codec:Ljava/lang/String;

    .line 50
    iput p2, p0, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/Format;->payload:I

    .line 51
    return-void
.end method


# virtual methods
.method public getCodec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/Format;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/Format;->payload:I

    return v0
.end method

.class final Lcom/google/common/io/ByteStreams$2;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/ByteStreams;->getChecksum(Lcom/google/common/io/InputSupplier;Ljava/util/zip/Checksum;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/ByteProcessor",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$checksum:Ljava/util/zip/Checksum;


# direct methods
.method constructor <init>(Ljava/util/zip/Checksum;)V
    .locals 0
    .param p1, "val$checksum"    # Ljava/util/zip/Checksum;

    .prologue
    .line 909
    iput-object p1, p0, Lcom/google/common/io/ByteStreams$2;->val$checksum:Ljava/util/zip/Checksum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 917
    iget-object v2, p0, Lcom/google/common/io/ByteStreams$2;->val$checksum:Ljava/util/zip/Checksum;

    invoke-interface {v2}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    .line 918
    .local v0, "result":J
    iget-object v2, p0, Lcom/google/common/io/ByteStreams$2;->val$checksum:Ljava/util/zip/Checksum;

    invoke-interface {v2}, Ljava/util/zip/Checksum;->reset()V

    .line 919
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/google/common/io/ByteStreams$2;->getResult()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public processBytes([BII)Z
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$2;->val$checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 913
    const/4 v0, 0x1

    return v0
.end method

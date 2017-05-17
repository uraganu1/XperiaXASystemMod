.class final Lcom/google/common/io/ByteStreams$5;
.super Lcom/google/common/io/ByteSink;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/ByteStreams;->asByteSink(Lcom/google/common/io/OutputSupplier;)Lcom/google/common/io/ByteSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$supplier:Lcom/google/common/io/OutputSupplier;


# direct methods
.method constructor <init>(Lcom/google/common/io/OutputSupplier;)V
    .locals 0

    .prologue
    .line 1099
    .local p1, "val$supplier":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    iput-object p1, p0, Lcom/google/common/io/ByteStreams$5;->val$supplier:Lcom/google/common/io/OutputSupplier;

    invoke-direct {p0}, Lcom/google/common/io/ByteSink;-><init>()V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$5;->val$supplier:Lcom/google/common/io/OutputSupplier;

    invoke-interface {v0}, Lcom/google/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ByteStreams.asByteSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/ByteStreams$5;->val$supplier:Lcom/google/common/io/OutputSupplier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

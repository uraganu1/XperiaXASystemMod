.class final Lcom/google/common/io/ByteStreams$3;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/ByteStreams;->join(Ljava/lang/Iterable;)Lcom/google/common/io/InputSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/common/io/InputSupplier",
        "<+",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/google/common/io/ByteSource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/ByteSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)",
            "Lcom/google/common/io/ByteSource;"
        }
    .end annotation

    .prologue
    .line 1031
    .local p1, "input":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p1}, Lcom/google/common/io/ByteStreams;->asByteSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Ljava/lang/Object;

    .prologue
    .line 1030
    check-cast p1, Lcom/google/common/io/InputSupplier;

    .end local p1    # "input":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/io/ByteStreams$3;->apply(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0
.end method

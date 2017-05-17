.class Lcom/google/common/base/Converter$1;
.super Ljava/lang/Object;
.source "Converter.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Converter;->convertAll(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TB;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/base/Converter;

.field final synthetic val$fromIterable:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Lcom/google/common/base/Converter;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 180
    .local p1, "this$0":Lcom/google/common/base/Converter;, "Lcom/google/common/base/Converter<TA;TB;>;"
    .local p2, "val$fromIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TA;>;"
    iput-object p1, p0, Lcom/google/common/base/Converter$1;->this$0:Lcom/google/common/base/Converter;

    iput-object p2, p0, Lcom/google/common/base/Converter$1;->val$fromIterable:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Lcom/google/common/base/Converter$1$1;

    iget-object v1, p0, Lcom/google/common/base/Converter$1;->val$fromIterable:Ljava/lang/Iterable;

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Converter$1$1;-><init>(Lcom/google/common/base/Converter$1;Ljava/lang/Iterable;)V

    return-object v0
.end method

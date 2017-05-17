.class Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;
.super Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->linkedListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder",
        "<TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;)V
    .locals 0

    .prologue
    .line 315
    .local p1, "this$1":Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lcom/google/common/collect/MultimapBuilder<TK0;TV0;>.MultimapBuilderWithKeys<TK0;>;"
    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;->this$1:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;->this$1:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->createMap()Ljava/util/Map;

    move-result-object v0

    .line 320
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder$LinkedListSupplier;->instance()Lcom/google/common/base/Supplier;

    move-result-object v1

    .line 318
    invoke-static {v0, v1}, Lcom/google/common/collect/Multimaps;->newListMultimap(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.class Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;
.super Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->enumSetValues(Ljava/lang/Class;)Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder",
        "<TK0;TV0;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

.field final synthetic val$valueClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 407
    .local p1, "this$1":Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lcom/google/common/collect/MultimapBuilder<TK0;TV0;>.MultimapBuilderWithKeys<TK0;>;"
    .local p2, "val$valueClass":Ljava/lang/Class;, "Ljava/lang/Class<TV0;>;"
    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;->this$1:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    iput-object p2, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;->val$valueClass:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/SetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$EnumSetSupplier;

    iget-object v1, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;->val$valueClass:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/google/common/collect/MultimapBuilder$EnumSetSupplier;-><init>(Ljava/lang/Class;)V

    .line 415
    .local v0, "factory":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/util/Set<TV;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;->this$1:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    invoke-virtual {v1}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->createMap()Ljava/util/Map;

    move-result-object v1

    .line 414
    invoke-static {v1, v0}, Lcom/google/common/collect/Multimaps;->newSetMultimap(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/SetMultimap;

    move-result-object v1

    return-object v1
.end method

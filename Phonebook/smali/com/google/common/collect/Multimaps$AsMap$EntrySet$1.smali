.class Lcom/google/common/collect/Multimaps$AsMap$EntrySet$1;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/Multimaps$AsMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$AsMap$EntrySet;)V
    .locals 0

    .prologue
    .line 1697
    .local p1, "this$2":Lcom/google/common/collect/Multimaps$AsMap$EntrySet;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet$1;->this$2:Lcom/google/common/collect/Multimaps$AsMap$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1699
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap$EntrySet$1;->apply(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1700
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet$1;->this$2:Lcom/google/common/collect/Multimaps$AsMap$EntrySet;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->this$1:Lcom/google/common/collect/Multimaps$AsMap;

    invoke-static {v0}, Lcom/google/common/collect/Multimaps$AsMap;->-get0(Lcom/google/common/collect/Multimaps$AsMap;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

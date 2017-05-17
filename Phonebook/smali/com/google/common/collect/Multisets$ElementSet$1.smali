.class Lcom/google/common/collect/Multisets$ElementSet$1;
.super Lcom/google/common/collect/TransformedIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets$ElementSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/Multisets$ElementSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$ElementSet;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 924
    .local p1, "this$1":Lcom/google/common/collect/Multisets$ElementSet;, "Lcom/google/common/collect/Multisets$ElementSet<TE;>;"
    .local p2, "$anonymous0":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/Multisets$ElementSet$1;->this$1:Lcom/google/common/collect/Multisets$ElementSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 927
    .local p1, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "entry"    # Ljava/lang/Object;

    .prologue
    .line 926
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .end local p1    # "entry":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$ElementSet$1;->transform(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

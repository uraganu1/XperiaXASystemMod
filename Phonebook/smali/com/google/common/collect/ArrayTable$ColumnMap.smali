.class Lcom/google/common/collect/ArrayTable$ColumnMap;
.super Lcom/google/common/collect/ArrayTable$ArrayMap;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ArrayTable$ArrayMap",
        "<TC;",
        "Ljava/util/Map",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .locals 2

    .prologue
    .line 644
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    .local p1, "this$0":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$ColumnMap;->this$0:Lcom/google/common/collect/ArrayTable;

    .line 645
    invoke-static {p1}, Lcom/google/common/collect/ArrayTable;->-get0(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ArrayTable$ArrayMap;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ArrayTable$ArrayMap;)V

    .line 644
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$ColumnMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/ArrayTable;

    .prologue
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ArrayTable$ColumnMap;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-void
.end method


# virtual methods
.method getKeyRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    const-string/jumbo v0, "Column"

    return-object v0
.end method

.method bridge synthetic getValue(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 654
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$ColumnMap;->getValue(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getValue(I)Ljava/util/Map;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 655
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    new-instance v0, Lcom/google/common/collect/ArrayTable$Column;

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$ColumnMap;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/ArrayTable$Column;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 664
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ArrayTable$ColumnMap;->put(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/util/Map",
            "<TR;TV;>;)",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 665
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    .local p1, "key":Ljava/lang/Object;, "TC;"
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<TR;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method bridge synthetic setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 659
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    check-cast p2, Ljava/util/Map;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ArrayTable$ColumnMap;->setValue(ILjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method setValue(ILjava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<TR;TV;>;)",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 660
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    .local p2, "newValue":Ljava/util/Map;, "Ljava/util/Map<TR;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.class Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$1;
.super Ljava/lang/Object;
.source "ContactSearch.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->sortIndices([I)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;

.field final synthetic val$indicesToSortFields:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;

    .prologue
    .line 292
    .local p2, "val$indicesToSortFields":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$1;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$1;->val$indicesToSortFields:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 8
    .param p1, "lhs"    # Ljava/lang/Integer;
    .param p2, "rhs"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 295
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$1;->val$indicesToSortFields:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;

    .line 296
    .local v0, "left":Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$1;->val$indicesToSortFields:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;

    .line 298
    .local v2, "right":Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;
    iget v3, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;->timesContacted:I

    iget v4, v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;->timesContacted:I

    if-ge v3, v4, :cond_0

    .line 299
    return v7

    .line 300
    :cond_0
    iget v3, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;->timesContacted:I

    iget v4, v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;->timesContacted:I

    if-le v3, v4, :cond_1

    .line 301
    return v5

    .line 303
    :cond_1
    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 304
    .local v1, "nameComparation":I
    if-nez v1, :cond_4

    .line 305
    iget v3, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;->timesUsed:I

    iget v4, v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;->timesUsed:I

    if-ge v3, v4, :cond_2

    .line 306
    return v7

    .line 307
    :cond_2
    iget v3, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;->timesUsed:I

    iget v4, v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;->timesUsed:I

    if-le v3, v4, :cond_3

    .line 308
    return v5

    .line 310
    :cond_3
    return v6

    .line 313
    :cond_4
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 294
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

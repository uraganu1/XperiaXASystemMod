.class Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$1;
.super Landroid/database/DataSetObserver;
.source "IndexedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->onAdapterChanged(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

.field final synthetic val$adapter:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;
    .param p2, "val$adapter"    # Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$1;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$1;->val$adapter:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$1;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->-get0(Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$1;->val$adapter:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$1;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$1;->val$adapter:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;->getIndexer()Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->-set0(Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;)Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$1;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->-wrap0(Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;)V

    .line 139
    :cond_0
    return-void
.end method

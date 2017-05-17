.class Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$2;
.super Landroid/database/DataSetObserver;
.source "ContactsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

.field final synthetic val$aContext:Landroid/content/Context;

.field final synthetic val$adapter:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
    .param p2, "val$adapter"    # Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;
    .param p3, "val$aContext"    # Landroid/content/Context;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$2;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$2;->val$adapter:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$2;->val$aContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$2;->val$adapter:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$2;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$2;->val$adapter:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;->getIndexer()Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->-set1(Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;)Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$2;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->-get1(Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;)Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$2;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$2;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$2;->val$aContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->getAllSeparatorPositions()[I

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->-set2(Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;[I)[I

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$2;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$2;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->-get1(Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;)Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;->getAllSeparatorTexts()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->-set0(Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 147
    :cond_0
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.class Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$1;
.super Ljava/lang/Object;
.source "GroupDetailFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 526
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaDataLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get12(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaDataLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 525
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v3, 0x0

    .line 531
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    :cond_0
    return-void

    .line 535
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 536
    const/16 v1, 0x8

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 537
    .local v0, "deleted":Z
    :goto_0
    if-nez v0, :cond_3

    .line 538
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Landroid/database/Cursor;)V

    .line 540
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-wrap6(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)V

    .line 541
    return-void

    .line 536
    .end local v0    # "deleted":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "deleted":Z
    goto :goto_0

    .line 543
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-set1(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 547
    .end local v0    # "deleted":Z
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-wrap9(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;I)V

    .line 548
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 530
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 530
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

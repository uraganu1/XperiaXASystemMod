.class Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$1;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;
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
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 240
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->-set0(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->-wrap1(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)V

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;Ljava/util/HashMap;)V

    .line 244
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 244
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 253
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.class Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$3;
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
    .line 693
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 697
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;

    .line 698
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Ljava/lang/String;

    move-result-object v3

    .line 697
    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    .local v0, "accountContactsLoader":Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;
    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 696
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$3;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 705
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    invoke-static {v2, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-set2(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Z)Z

    .line 704
    return-void

    :cond_1
    move v0, v1

    .line 705
    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 704
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$3;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
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
    .line 710
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-set2(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Z)Z

    .line 709
    return-void
.end method

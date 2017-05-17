.class Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$4;
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
    .line 975
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 979
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 980
    const-string/jumbo v2, "accountType"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "accountName"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 981
    const-string/jumbo v4, "accountDataSet"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 982
    const-string/jumbo v5, "contactIds"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    .line 979
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J)V

    .line 983
    .local v0, "grl":Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;
    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 978
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$4;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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
    .line 988
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-wrap2(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Landroid/database/Cursor;)V

    .line 987
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 987
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$4;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 992
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

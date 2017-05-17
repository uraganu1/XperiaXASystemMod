.class Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;
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
    .line 643
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 647
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get7(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;-><init>(Landroid/content/Context;J)V

    .line 648
    .local v0, "gml":Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;
    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 646
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 6
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
    .line 653
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ltz v1, :cond_1

    .line 654
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-wrap9(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;I)V

    .line 655
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-wrap8(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Landroid/database/Cursor;)V

    .line 656
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    .line 657
    .local v0, "isUsingTwoPanes":Z
    if-eqz v0, :cond_2

    .line 658
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get15(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->setContactCursor(Landroid/database/Cursor;)V

    .line 665
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 666
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get11(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get9(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)[J

    move-result-object v2

    .line 667
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)[J

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Ljava/lang/String;

    move-result-object v5

    .line 666
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->startGroupMembersDataLoader([J[JLjava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-wrap5(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)V

    .line 673
    .end local v0    # "isUsingTwoPanes":Z
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-wrap1(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)V

    .line 652
    return-void

    .line 661
    .restart local v0    # "isUsingTwoPanes":Z
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 652
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 677
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

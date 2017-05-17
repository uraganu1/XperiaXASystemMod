.class Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2;
.super Ljava/lang/Object;
.source "GroupCreateOrEditActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;
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
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 701
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    .line 702
    const-string/jumbo v2, "rawcontactIds"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 703
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2$1;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2;)V

    .line 701
    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;-><init>(Landroid/content/Context;[JLcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader$ExtensionListener;)V

    .line 711
    .local v0, "grl":Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;
    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 700
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

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
    .line 716
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-wrap10(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Landroid/database/Cursor;)V

    .line 717
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 715
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 715
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 721
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

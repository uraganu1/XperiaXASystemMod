.class Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$6;
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
    .line 1625
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$6;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1629
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;

    .line 1630
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$6;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$6;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$6;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/lang/String;

    move-result-object v3

    .line 1629
    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    .local v0, "accountContactsLoader":Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;
    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1628
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$6;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

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
    .line 1637
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1638
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$6;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-set3(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Z)Z

    .line 1636
    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 1636
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$6;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 1644
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$6;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-set3(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Z)Z

    .line 1643
    return-void
.end method

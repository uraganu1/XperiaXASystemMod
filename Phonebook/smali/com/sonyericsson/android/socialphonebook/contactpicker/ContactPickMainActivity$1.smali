.class Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$1;
.super Ljava/lang/Object;
.source "ContactPickMainActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;
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
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 405
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaDataLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaDataLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .param p2, "cursor"    # Landroid/database/Cursor;
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
    .line 410
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, -0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 411
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->-set1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->-set2(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;J)J

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->-wrap1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;)V

    .line 418
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 409
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 422
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

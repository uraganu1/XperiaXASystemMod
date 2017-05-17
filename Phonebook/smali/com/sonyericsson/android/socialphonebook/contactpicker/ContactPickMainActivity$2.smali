.class Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$2;
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
    .line 437
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 441
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;-><init>(Landroid/content/Context;J)V

    .line 442
    .local v0, "gml":Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;
    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$2;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

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
    .line 447
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->-wrap3(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;Landroid/database/Cursor;)V

    .line 448
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->-wrap2(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;)V

    .line 449
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 446
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 446
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 453
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

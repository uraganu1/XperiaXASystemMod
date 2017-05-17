.class Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;
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
    .line 266
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 270
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2$1;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2$1;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;Landroid/content/Context;)V

    .line 284
    .local v0, "gel":Lcom/sonyericsson/android/socialphonebook/group/data/GroupListExtDataLoader;
    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 8
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
    const/4 v7, 0x0

    .line 289
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_0

    .line 290
    return-void

    .line 293
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v2, "groupPhotoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 295
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 297
    :cond_1
    const/4 v4, 0x0

    .line 298
    .local v4, "photo":Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 299
    .local v5, "photoBytes":[B
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 300
    .local v0, "groupId":J
    if-eqz v5, :cond_2

    .line 302
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 301
    invoke-static {v6, v5}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getBitmapOptions(Landroid/content/Context;[B)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 303
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    array-length v6, v5

    invoke-static {v5, v7, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 306
    .local v4, "photo":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 307
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 308
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "photo":Landroid/graphics/Bitmap;
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 313
    .end local v0    # "groupId":J
    .end local v5    # "photoBytes":[B
    :cond_3
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-static {v6, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;Ljava/util/HashMap;)V

    .line 288
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 288
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 316
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

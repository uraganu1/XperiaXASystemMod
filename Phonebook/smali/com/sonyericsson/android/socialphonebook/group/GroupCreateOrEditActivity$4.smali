.class Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$4;
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
    .line 863
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 867
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListExtDataLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get6(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListExtDataLoader;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 866
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$4;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 7
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
    const/4 v6, 0x0

    .line 872
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 873
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 875
    :cond_0
    const/4 v4, 0x3

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, "mimetype":Ljava/lang/String;
    const-string/jumbo v4, "vnd.android.cursor.item/vnd.sonyericsson.android.group.photo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 877
    const/4 v4, 0x1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 878
    .local v3, "photoBytes":[B
    if-eqz v3, :cond_1

    .line 880
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    .line 879
    invoke-static {v4, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getBitmapOptions(Landroid/content/Context;[B)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 882
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    array-length v4, v3

    .line 881
    invoke-static {v3, v6, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 884
    .local v2, "photo":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 885
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->setGroupPhoto(Landroid/graphics/Bitmap;)V

    .line 892
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "photo":Landroid/graphics/Bitmap;
    .end local v3    # "photoBytes":[B
    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 894
    .end local v0    # "mimetype":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 871
    return-void

    .line 888
    .restart local v0    # "mimetype":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "vnd.android.cursor.item/vnd.sonyericsson.android.group.ringtone"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 889
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-set1(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 890
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get4(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-wrap12(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 871
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$4;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 898
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

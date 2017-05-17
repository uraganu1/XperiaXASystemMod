.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;
.super Ljava/lang/Object;
.source "FavoritesViewFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoritesLoaderListener"
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
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1119
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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
    .line 1124
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->update(Landroid/database/Cursor;)V

    .line 1125
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setAdapter(Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;)V

    .line 1127
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1128
    .local v0, "shouldShowFavoritesView":Z
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-wrap1(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Z)V

    .line 1129
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-static {v2, v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-wrap2(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Z)V

    .line 1123
    return-void

    .line 1127
    .end local v0    # "shouldShowFavoritesView":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "shouldShowFavoritesView":Z
    goto :goto_0

    .line 1129
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 1123
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 1133
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

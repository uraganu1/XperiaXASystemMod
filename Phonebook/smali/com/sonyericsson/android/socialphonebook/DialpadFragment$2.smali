.class Lcom/sonyericsson/android/socialphonebook/DialpadFragment$2;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/DialpadFragment;
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
.field private final SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 565
    const-string/jumbo v1, "position"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "phone_number"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 564
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$2;->SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;

    .line 563
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
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
    const/4 v4, 0x0

    .line 570
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/common/provider/SpeedDialContract;->CONTENT_URI:Landroid/net/Uri;

    .line 571
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$2;->SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    .line 570
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
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
    .line 576
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 577
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 578
    const-string/jumbo v4, "position"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 579
    .local v3, "positionColumnIndex":I
    const-string/jumbo v4, "phone_number"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 582
    .local v1, "numberColumnIndex":I
    :cond_0
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "position":Ljava/lang/String;
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "number":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 575
    .end local v0    # "number":Ljava/lang/String;
    .end local v1    # "numberColumnIndex":I
    .end local v2    # "position":Ljava/lang/String;
    .end local v3    # "positionColumnIndex":I
    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 575
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 590
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.class Lcom/sonyericsson/android/socialphonebook/DialpadFragment$3;
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
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 601
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 602
    const-string/jumbo v4, "number"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 603
    const-string/jumbo v4, "type = 2"

    .line 604
    const-string/jumbo v6, "date DESC"

    .line 603
    const/4 v5, 0x0

    .line 601
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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
    .line 609
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 610
    const-string/jumbo v1, ""

    .line 612
    .local v1, "number":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "item":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 614
    move-object v1, v0

    .line 619
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 620
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v2, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-set0(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 608
    .end local v0    # "item":Ljava/lang/String;
    .end local v1    # "number":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 617
    .restart local v0    # "item":Ljava/lang/String;
    .restart local v1    # "number":Ljava/lang/String;
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 623
    .end local v0    # "item":Ljava/lang/String;
    .end local v1    # "number":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-set0(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 608
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$3;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 628
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

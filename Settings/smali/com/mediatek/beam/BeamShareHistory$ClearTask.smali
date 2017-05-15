.class Lcom/mediatek/beam/BeamShareHistory$ClearTask;
.super Landroid/os/AsyncTask;
.source "BeamShareHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/beam/BeamShareHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/beam/BeamShareHistory;


# direct methods
.method private constructor <init>(Lcom/mediatek/beam/BeamShareHistory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/beam/BeamShareHistory;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/beam/BeamShareHistory;Lcom/mediatek/beam/BeamShareHistory$ClearTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/beam/BeamShareHistory;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/beam/BeamShareHistory$ClearTask;-><init>(Lcom/mediatek/beam/BeamShareHistory;)V

    return-void
.end method

.method private clearAllTasks()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 526
    iget-object v5, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v5}, Lcom/mediatek/beam/BeamShareHistory;->-get4(Lcom/mediatek/beam/BeamShareHistory;)Landroid/database/Cursor;

    move-result-object v5

    .line 527
    const-string/jumbo v6, "_id"

    .line 526
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 528
    .local v0, "columnIndex":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v4, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v5, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v5}, Lcom/mediatek/beam/BeamShareHistory;->-get4(Lcom/mediatek/beam/BeamShareHistory;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v5, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v5}, Lcom/mediatek/beam/BeamShareHistory;->-get4(Lcom/mediatek/beam/BeamShareHistory;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_0

    .line 532
    iget-object v5, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v5}, Lcom/mediatek/beam/BeamShareHistory;->-get4(Lcom/mediatek/beam/BeamShareHistory;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 534
    .local v1, "id":I
    sget-object v5, Lcom/mediatek/beam/BeamShareTask$BeamShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    .line 535
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 533
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 536
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    const-string/jumbo v5, "@M_BeamShareHistory"

    .line 538
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "clearAllTasks-----mCursor.getCount(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 539
    iget-object v7, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v7}, Lcom/mediatek/beam/BeamShareHistory;->-get4(Lcom/mediatek/beam/BeamShareHistory;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 538
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 537
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v5, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v5}, Lcom/mediatek/beam/BeamShareHistory;->-get4(Lcom/mediatek/beam/BeamShareHistory;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 542
    .end local v1    # "id":I
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "uri$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 543
    .restart local v2    # "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v5}, Lcom/mediatek/beam/BeamShareHistory;->-get2(Lcom/mediatek/beam/BeamShareHistory;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 524
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "arg"    # [Ljava/lang/String;

    .prologue
    .line 515
    const/4 v0, 0x1

    .line 516
    .local v0, "result":I
    invoke-direct {p0}, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->clearAllTasks()V

    .line 517
    const/4 v0, 0x0

    .line 518
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg"    # [Ljava/lang/Object;

    .prologue
    .line 514
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "arg":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 549
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v0}, Lcom/mediatek/beam/BeamShareHistory;->-get5(Lcom/mediatek/beam/BeamShareHistory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 548
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 548
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

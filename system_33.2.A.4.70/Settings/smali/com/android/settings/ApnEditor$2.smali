.class Lcom/android/settings/ApnEditor$2;
.super Landroid/database/ContentObserver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnEditor;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ApnEditor;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1572
    invoke-static {}, Lcom/android/settings/ApnEditor;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "background changed apn "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-object v0, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/ApnEditor;->-set1(Lcom/android/settings/ApnEditor;Z)Z

    .line 1575
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    iget-object v1, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    invoke-static {v1}, Lcom/android/settings/ApnEditor;->-get1(Lcom/android/settings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->stopManagingCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1577
    iget-object v0, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    invoke-static {v0}, Lcom/android/settings/ApnEditor;->-get1(Lcom/android/settings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    invoke-static {v0}, Lcom/android/settings/ApnEditor;->-get1(Lcom/android/settings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    iget-object v1, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    iget-object v2, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    invoke-static {v2}, Lcom/android/settings/ApnEditor;->-get2(Lcom/android/settings/ApnEditor;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/ApnEditor;->-get3()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/android/settings/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/ApnEditor;->-set0(Lcom/android/settings/ApnEditor;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1582
    iget-object v0, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    invoke-static {v0}, Lcom/android/settings/ApnEditor;->-get1(Lcom/android/settings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1583
    iget-object v0, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    invoke-static {v0}, Lcom/android/settings/ApnEditor;->-wrap2(Lcom/android/settings/ApnEditor;)V

    .line 1571
    return-void

    .line 1576
    :catchall_0
    move-exception v0

    .line 1577
    iget-object v1, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    invoke-static {v1}, Lcom/android/settings/ApnEditor;->-get1(Lcom/android/settings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1578
    iget-object v1, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    invoke-static {v1}, Lcom/android/settings/ApnEditor;->-get1(Lcom/android/settings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1576
    :cond_1
    throw v0
.end method

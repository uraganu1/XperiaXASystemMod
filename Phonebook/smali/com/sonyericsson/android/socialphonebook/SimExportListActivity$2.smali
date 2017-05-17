.class Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$2;
.super Ljava/lang/Thread;
.source "SimExportListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->onDoneBtnClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 730
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 731
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 734
    const/4 v6, 0x0

    .line 737
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get4(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)I

    move-result v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSimUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 738
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 737
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 742
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 743
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 744
    const/4 v6, 0x0

    .line 748
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    .line 750
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get4(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)I

    move-result v2

    .line 749
    invoke-static {v1, v8, v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getInstance(Landroid/content/Context;ZI)Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getTotalCapacity()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-set2(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;I)I

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 729
    return-void

    .line 739
    .local v6, "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 740
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ": Query adn contacts exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 741
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    throw v0
.end method

.class Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;
.super Landroid/os/AsyncTask;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplaySmscAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSimSlotIndex:I

.field private final mSmscKey:Ljava/lang/String;

.field private volatile mSmscNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/SettingsFragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/SettingsFragment;
    .param p2, "smscKey"    # Ljava/lang/String;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->mSmscNumber:Ljava/lang/String;

    .line 527
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->mSmscKey:Ljava/lang/String;

    .line 528
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->-wrap1(Lcom/sonyericsson/conversations/ui/SettingsFragment;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->mSimSlotIndex:I

    .line 526
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 532
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const v11, 0x7f0b0109

    const/4 v10, 0x0

    .line 533
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 534
    .local v6, "activity":Landroid/app/Activity;
    const/4 v7, 0x0

    .line 535
    .local v7, "context":Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 536
    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 538
    .end local v7    # "context":Landroid/content/Context;
    :cond_0
    if-eqz v6, :cond_1

    if-nez v7, :cond_2

    .line 539
    :cond_1
    return-object v10

    .line 541
    :cond_2
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 543
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    iget v3, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->mSimSlotIndex:I

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->-wrap0(Lcom/sonyericsson/conversations/ui/SettingsFragment;I)Landroid/net/Uri;

    move-result-object v1

    .line 544
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 545
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 546
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->mSmscNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 557
    :cond_3
    if-eqz v8, :cond_4

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    move-object v2, v10

    :goto_0
    if-eqz v2, :cond_a

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 548
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 549
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception occurred "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 553
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->mSmscNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 554
    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->mSmscNumber:Ljava/lang/String;

    .line 558
    :cond_5
    return-object v10

    .line 557
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v2

    goto :goto_0

    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    :goto_2
    if-eqz v8, :cond_6

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    :goto_3
    if-eqz v3, :cond_9

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 550
    :catchall_1
    move-exception v2

    .line 553
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->mSmscNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 554
    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->mSmscNumber:Ljava/lang/String;

    .line 550
    :cond_7
    throw v2

    .line 557
    :catch_3
    move-exception v4

    if-nez v3, :cond_8

    move-object v3, v4

    goto :goto_3

    :cond_8
    if-eq v3, v4, :cond_6

    :try_start_7
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 553
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_a
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->mSmscNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 554
    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 557
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v2

    move-object v3, v10

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Object;

    .prologue
    .line 562
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "aVoid":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->mSmscKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->mSmscNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->-wrap2(Lcom/sonyericsson/conversations/ui/SettingsFragment;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 562
    return-void
.end method

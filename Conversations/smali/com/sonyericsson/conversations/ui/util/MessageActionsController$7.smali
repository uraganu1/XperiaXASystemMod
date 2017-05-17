.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;
.super Landroid/os/AsyncTask;
.source "MessageActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->copyMessage(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$pd:Landroid/app/ProgressDialog;

.field final synthetic val$simCardSlotIndex:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/app/Activity;ILandroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .param p2, "val$activity"    # Landroid/app/Activity;
    .param p3, "val$simCardSlotIndex"    # I
    .param p4, "val$pd"    # Landroid/app/ProgressDialog;

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->val$simCardSlotIndex:I

    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->val$pd:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 20
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 1379
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1380
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->val$simCardSlotIndex:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    .line 1381
    sget-object v3, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->ICC_PHONE_ID_SIM2_URI:Landroid/net/Uri;

    .line 1383
    .local v3, "uri":Landroid/net/Uri;
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get3(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1384
    .local v16, "messageIndexString":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1385
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_1

    .line 1386
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 1382
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v16    # "messageIndexString":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->ICC_PHONE_ID_SIM1_URI:Landroid/net/Uri;

    .restart local v3    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 1388
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "messageIndexString":Ljava/lang/String;
    :cond_1
    const/4 v15, 0x0

    .line 1390
    .local v15, "messageCopied":Z
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1392
    const-string/jumbo v5, "index_on_icc"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 1391
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1393
    .local v14, "iccIndexString":Ljava/lang/String;
    const-string/jumbo v5, "address"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1394
    .local v6, "address":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1398
    const-string/jumbo v5, "body"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1399
    .local v7, "body":Ljava/lang/String;
    const-string/jumbo v5, "date"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1401
    .local v9, "date":Ljava/lang/Long;
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1404
    .local v4, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    :try_start_1
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v5

    .line 1405
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->val$simCardSlotIndex:I

    .line 1404
    invoke-virtual {v5, v8}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSubscriptionIdFromSlotIndex(I)I

    move-result v11

    .line 1406
    .local v11, "subscriptionId":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v5, v12}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-wrap1(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/database/Cursor;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1407
    const/4 v8, 0x0

    .line 1408
    const/4 v10, 0x1

    move-object v5, v2

    .line 1407
    invoke-interface/range {v4 .. v11}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->addInboxMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZI)Landroid/net/Uri;

    .line 1413
    :goto_2
    const/4 v15, 0x1

    goto :goto_1

    .line 1410
    :cond_3
    const/4 v8, 0x0

    move-object v5, v2

    move v10, v11

    invoke-interface/range {v4 .. v10}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->addSentMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1414
    .end local v11    # "subscriptionId":I
    :catch_0
    move-exception v13

    .line 1415
    .local v13, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->val$activity:Landroid/app/Activity;

    invoke-static {v5, v13}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1418
    .end local v4    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "body":Ljava/lang/String;
    .end local v9    # "date":Ljava/lang/Long;
    .end local v13    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v14    # "iccIndexString":Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 1419
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1418
    throw v5

    .line 1419
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1421
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 1378
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "messageCopied"    # Ljava/lang/Boolean;

    .prologue
    .line 1427
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0b0053

    .line 1429
    .local v0, "cpMsgStatusStrId":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->val$pd:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1432
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 1425
    return-void

    .line 1428
    .end local v0    # "cpMsgStatusStrId":I
    :cond_1
    const v0, 0x7f0b007e

    .restart local v0    # "cpMsgStatusStrId":I
    goto :goto_0

    .line 1430
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "messageCopied"    # Ljava/lang/Object;

    .prologue
    .line 1425
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "messageCopied":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

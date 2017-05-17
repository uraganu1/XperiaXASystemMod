.class final Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;
.super Landroid/os/AsyncTask;
.source "CallLogDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallLogAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    .line 1381
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1382
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->mContext:Landroid/content/Context;

    .line 1380
    return-void
.end method

.method private setRecentlyUsedSim(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1459
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getSubIdAtCurrentPosition(Landroid/content/Context;Landroid/database/Cursor;)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mRecentlyUsedSim:I

    .line 1458
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1389
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1390
    new-array v0, v2, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 1391
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->cancel(Z)Z

    .line 1392
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get7(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get7(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;->onCallLogDetailsSetupFailed()V

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->numberPresentation:I

    if-ne v0, v2, :cond_1

    .line 1398
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-wrap6(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V

    .line 1405
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isRedialed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isFirstItemInCallLogList:Z

    if-eqz v0, :cond_1

    .line 1406
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/CallDetail;->hasVoicemail()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1438
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/CallDetail;->hasVoicemail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1440
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    .line 1439
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->isVisualVoicemail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1444
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->querySyncByIds([ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1446
    .local v7, "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1447
    invoke-direct {p0, v7}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->setRecentlyUsedSim(Landroid/database/Cursor;)V

    .line 1454
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-wrap8(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Landroid/content/Context;)V

    .line 1455
    return-object v7

    .line 1408
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "date > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getCutoffTime()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1409
    const-string/jumbo v1, " AND "

    .line 1408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1409
    const-string/jumbo v1, "number"

    .line 1408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1409
    const-string/jumbo v1, " = ?"

    .line 1408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1410
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    aput-object v0, v4, v5

    .line 1411
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1413
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1414
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 1415
    const-string/jumbo v5, "_id"

    const/4 v11, 0x0

    aput-object v5, v2, v11

    .line 1416
    const-string/jumbo v5, "date DESC LIMIT 1"

    .line 1413
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1418
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1419
    const-string/jumbo v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1420
    .local v6, "callIdColumnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1421
    .local v8, "lastCallId":I
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    invoke-static {v0, v8}, Lcom/google/common/primitives/Ints;->contains([II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1422
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    array-length v9, v0

    .line 1423
    .local v9, "previousCallsIdsLength":I
    add-int/lit8 v0, v9, 0x1

    new-array v10, v0, [I

    .line 1424
    .local v10, "refreshedCallIds":[I
    const/4 v0, 0x0

    aput v8, v10, v0

    .line 1425
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v10, v2, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1427
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-result-object v0

    iput-object v10, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    .end local v6    # "callIdColumnIndex":I
    .end local v8    # "lastCallId":I
    .end local v9    # "previousCallsIdsLength":I
    .end local v10    # "refreshedCallIds":[I
    :cond_5
    if-eqz v7, :cond_1

    .line 1432
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1430
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 1431
    if-eqz v7, :cond_6

    .line 1432
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1430
    :cond_6
    throw v0

    .line 1441
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-wrap3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1386
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, -0x1

    .line 1473
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-wrap7(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V

    .line 1474
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-wrap1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V

    .line 1475
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-wrap2(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Landroid/database/Cursor;)V

    .line 1476
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;)V

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-set0(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Landroid/widget/CursorAdapter;)Landroid/widget/CursorAdapter;

    .line 1477
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1480
    .local v0, "lv":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->hasEnrichedCalls([I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 1481
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Landroid/widget/CursorAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1482
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1486
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get5(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 1487
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get5(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get6(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1488
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v1, v5}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-set1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;I)I

    .line 1472
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 1472
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 1466
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-wrap9(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V

    .line 1465
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 1465
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "values":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

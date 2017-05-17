.class Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 543
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 542
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    move-object v3, p2

    .line 552
    check-cast v3, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;

    .line 553
    .local v3, "sc":Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->-get0(Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->-wrap0(Landroid/content/Context;)V

    .line 554
    invoke-static {v3, v6}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->-set0(Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/content/Context;)Landroid/content/Context;

    .line 555
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 556
    if-eqz p3, :cond_0

    .line 557
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 559
    :cond_0
    return-void

    .line 563
    :cond_1
    iget-object v5, v3, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 566
    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->getTextField()Landroid/widget/EditText;

    move-result-object v4

    .line 571
    .local v4, "text":Landroid/widget/EditText;
    if-eqz p3, :cond_3

    .line 573
    if-eqz v4, :cond_2

    :try_start_0
    iget v5, v3, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 574
    const-string/jumbo v5, "name"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v5, "number"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 577
    .local v2, "number":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 579
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 582
    iget-object v5, v3, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 583
    .local v0, "context":Landroid/content/Context;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const v6, 0x7f09006d

    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 584
    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 551
    :cond_3
    return-void

    .line 588
    :catchall_0
    move-exception v5

    .line 589
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 588
    throw v5
.end method

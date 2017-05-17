.class Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$4;
.super Landroid/widget/ArrayAdapter;
.source "BackupMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->getAutoDimAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;Landroid/content/Context;I[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # [Ljava/lang/CharSequence;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 487
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 490
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 491
    .local v4, "view":Landroid/view/View;
    const/4 v2, 0x6

    .line 492
    .local v2, "storageState":I
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;

    .line 493
    .local v1, "item":Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;
    iget-object v5, v1, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->isSimPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 494
    iget-object v5, v1, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->convertPathToSub(Ljava/lang/String;)I

    move-result v3

    .line 495
    .local v3, "sub":I
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-static {v5, v3}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->checkSIM(Landroid/content/Context;I)I

    move-result v2

    .line 501
    .end local v3    # "sub":I
    :goto_0
    new-instance v5, Ljava/io/File;

    iget-object v8, v1, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->path:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v0

    .line 503
    .local v0, "isWriteable":Z
    if-eqz v4, :cond_1

    .line 504
    if-eqz v0, :cond_4

    const/4 v5, 0x5

    if-ne v2, v5, :cond_4

    .line 506
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 517
    :cond_1
    :goto_1
    return-object v4

    .line 498
    .end local v0    # "isWriteable":Z
    :cond_2
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    .line 499
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)I

    move-result v5

    if-ne v5, v6, :cond_3

    move v5, v6

    :goto_2
    iget-object v9, v1, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->path:Ljava/lang/String;

    .line 497
    invoke-static {v8, v5, v9}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->checkExternalStorageState(Landroid/content/Context;ZLjava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_3
    move v5, v7

    .line 499
    goto :goto_2

    .line 505
    .restart local v0    # "isWriteable":Z
    :cond_4
    if-eq v2, v6, :cond_0

    .line 511
    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 512
    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 513
    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 507
    :cond_5
    invoke-virtual {v4, v7}, Landroid/view/View;->setClickable(Z)V

    .line 508
    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.class Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardSelectedListener"
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mSelectedIndexSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;
    .param p2, "multipleSelect"    # Z

    .prologue
    .line 499
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->mCurrentIndex:I

    .line 501
    if-eqz p2, :cond_0

    .line 502
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    .line 499
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x0

    .line 507
    const/4 v3, -0x1

    if-ne p2, v3, :cond_5

    .line 510
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get6(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Ljava/lang/String;

    move-result-object v4

    .line 509
    invoke-static {v3, v7, v4}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->checkExternalStorageState(Landroid/content/Context;ZLjava/lang/String;)I

    move-result v3

    .line 511
    const/4 v4, 0x5

    .line 509
    if-eq v3, v4, :cond_0

    .line 515
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    const v4, 0x7f0e000e

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->showDialog(I)V

    .line 516
    return-void

    .line 518
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v3, :cond_4

    .line 519
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v1, "selectedVCardFileList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;>;"
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 522
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 523
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 524
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v3, v1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-wrap1(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Ljava/util/List;)V

    .line 506
    .end local v0    # "i":I
    .end local v1    # "selectedVCardFileList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;>;"
    .end local v2    # "size":I
    :cond_3
    :goto_1
    return-void

    .line 529
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    const/4 v3, 0x1

    new-array v5, v3, [Landroid/net/Uri;

    .line 530
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Ljava/util/List;

    move-result-object v3

    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->mCurrentIndex:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v5, v7

    .line 529
    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-wrap2(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;[Landroid/net/Uri;)V

    goto :goto_1

    .line 533
    :cond_5
    const/4 v3, -0x2

    if-ne p2, v3, :cond_6

    .line 534
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->finish()V

    goto :goto_1

    .line 537
    :cond_6
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->mCurrentIndex:I

    .line 538
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v3, :cond_3

    .line 539
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 540
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 542
    :cond_7
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x1

    .line 549
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, p3, :cond_1

    .line 550
    :cond_0
    const-string/jumbo v2, "ImportVCardActivity"

    const-string/jumbo v3, "Inconsist state in index %d (%s)"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    .line 551
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v4, v5

    .line 550
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 554
    if-eqz p3, :cond_2

    move-object v1, p1

    .line 555
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 566
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 559
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v5, :cond_2

    if-nez p3, :cond_2

    move-object v1, p1

    .line 560
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 561
    .local v0, "btn":Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 562
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

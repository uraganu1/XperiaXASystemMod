.class Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardScanThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread$CanceledException;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field private mCheckedPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGotIOException:Z

.field private mRootDirectory:Ljava/io/File;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Ljava/io/File;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;
    .param p2, "sdcardDirectory"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 588
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 589
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 590
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    .line 591
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    .line 592
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    .line 594
    const-string/jumbo v1, "power"

    .line 593
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 597
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v1, "ImportVCardActivity"

    .line 596
    const v2, 0x20000006

    .line 595
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 588
    return-void
.end method

.method private getVCardFileRecursively(Ljava/io/File;)V
    .locals 13
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread$CanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 639
    iget-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v7, :cond_0

    .line 640
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v7, p0, v12}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread$CanceledException;)V

    throw v7

    .line 643
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 644
    .local v4, "locale":Ljava/util/Locale;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 645
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_1

    .line 646
    return-void

    .line 648
    :cond_1
    const/4 v7, 0x0

    array-length v8, v3

    :goto_0
    if-ge v7, v8, :cond_6

    aget-object v1, v3, v7

    .line 652
    .local v1, "file":Ljava/io/File;
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v11}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get6(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 648
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 656
    :cond_3
    iget-boolean v9, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v9, :cond_4

    .line 657
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v7, p0, v12}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread$CanceledException;)V

    throw v7

    .line 659
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "canonicalPath":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 664
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 666
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 667
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V

    goto :goto_1

    .line 668
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ".vcf"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 669
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v9

    .line 668
    if-eqz v9, :cond_2

    .line 670
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "fileName":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 672
    .local v5, "uri":Landroid/net/Uri;
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;

    .line 673
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 672
    invoke-direct {v6, v2, v5, v10, v11}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;-><init>(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 674
    .local v6, "vcardFile":Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 638
    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "vcardFile":Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;
    :cond_6
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 679
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 684
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 683
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 602
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 604
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 605
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 614
    :goto_0
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v3, :cond_0

    .line 615
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v3, v5}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 618
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get5(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 619
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get5(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 620
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v3, v5}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-set3(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 623
    :cond_1
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    if-eqz v3, :cond_2

    .line 624
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    const v6, 0x7f0e0014

    invoke-direct {v4, v5, v6}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 601
    :goto_1
    return-void

    .line 608
    :catch_0
    move-exception v1

    .line 609
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mGotIOException:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 606
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 607
    .local v0, "e":Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread$CanceledException;
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mCanceled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 611
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 610
    .end local v0    # "e":Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread$CanceledException;
    :catchall_0
    move-exception v3

    .line 611
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 610
    throw v3

    .line 625
    :cond_2
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v3, :cond_3

    .line 626
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->finish()V

    goto :goto_1

    .line 628
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 629
    .local v2, "size":I
    if-nez v2, :cond_4

    .line 630
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    const v6, 0x7f0e000f

    invoke-direct {v4, v5, v6}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 632
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-wrap3(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)V

    goto :goto_1
.end method

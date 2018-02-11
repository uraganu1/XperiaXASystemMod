.class Lcom/android/settings/applications/RunningState$MergedItem;
.super Lcom/android/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MergedItem"
.end annotation


# instance fields
.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNumProcesses:I

.field private mLastNumServices:I

.field final mOtherProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

.field final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field mUser:Lcom/android/settings/applications/RunningState$UserState;


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v1, -0x1

    .line 622
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    .line 619
    iput v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    iput v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    .line 621
    return-void
.end method

.method private setDescription(Landroid/content/Context;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numProcesses"    # I
    .param p3, "numServices"    # I

    .prologue
    const/4 v5, 0x1

    .line 626
    iget v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    if-ne v1, p2, :cond_0

    iget v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    if-eq v1, p3, :cond_2

    .line 627
    :cond_0
    iput p2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    .line 628
    iput p3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    .line 629
    const v0, 0x7f0b063a

    .line 630
    .local v0, "resid":I
    if-eq p2, v5, :cond_4

    .line 631
    if-eq p3, v5, :cond_3

    .line 632
    const v0, 0x7f0b063d

    .line 637
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 638
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 637
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mDescription:Ljava/lang/String;

    .line 625
    .end local v0    # "resid":I
    :cond_2
    return-void

    .line 633
    .restart local v0    # "resid":I
    :cond_3
    const v0, 0x7f0b063c

    goto :goto_0

    .line 634
    :cond_4
    if-eq p3, v5, :cond_1

    .line 635
    const v0, 0x7f0b063b

    goto :goto_0
.end method


# virtual methods
.method public loadIcon(Landroid/content/Context;Lcom/android/settings/applications/RunningState;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # Lcom/android/settings/applications/RunningState;

    .prologue
    .line 719
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-nez v1, :cond_0

    .line 720
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/RunningState$BaseItem;->loadIcon(Landroid/content/Context;Lcom/android/settings/applications/RunningState;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 722
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 723
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 724
    .local v0, "constState":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_1

    .line 725
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 727
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 731
    .end local v0    # "constState":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    const v1, 0x10803c1

    .line 730
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method update(Landroid/content/Context;Z)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "background"    # Z

    .prologue
    .line 643
    iput-boolean p2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mBackground:Z

    .line 645
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-eqz v6, :cond_4

    .line 651
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 652
    .local v1, "child0":Lcom/android/settings/applications/RunningState$MergedItem;
    iget-object v6, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 653
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    :goto_0
    iput-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    .line 654
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 655
    const/4 v3, 0x0

    .line 656
    .local v3, "numProcesses":I
    const/4 v4, 0x0

    .line 657
    .local v4, "numServices":I
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    .line 658
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 659
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 660
    .local v0, "child":Lcom/android/settings/applications/RunningState$MergedItem;
    iget v6, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    add-int/2addr v3, v6

    .line 661
    iget v6, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    add-int/2addr v4, v6

    .line 662
    iget-wide v6, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    iget-wide v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    iget-wide v8, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 663
    iget-wide v6, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    iput-wide v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    .line 658
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 653
    .end local v0    # "child":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v2    # "i":I
    .end local v3    # "numProcesses":I
    .end local v4    # "numServices":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 666
    .restart local v2    # "i":I
    .restart local v3    # "numProcesses":I
    .restart local v4    # "numServices":I
    :cond_2
    iget-boolean v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mBackground:Z

    if-nez v6, :cond_3

    .line 667
    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/applications/RunningState$MergedItem;->setDescription(Landroid/content/Context;II)V

    .line 688
    .end local v1    # "child0":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v3    # "numProcesses":I
    .end local v4    # "numServices":I
    :cond_3
    const/4 v6, 0x0

    return v6

    .line 670
    .end local v2    # "i":I
    :cond_4
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 671
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 672
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    .line 674
    iget-boolean v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mBackground:Z

    if-nez v6, :cond_5

    .line 675
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v6, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v6, :cond_7

    const/4 v6, 0x1

    :goto_2
    iget-object v7, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    .line 676
    iget-object v7, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 675
    invoke-direct {p0, p1, v6, v7}, Lcom/android/settings/applications/RunningState$MergedItem;->setDescription(Landroid/content/Context;II)V

    .line 679
    :cond_5
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    .line 680
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 681
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 682
    .local v5, "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    iget-wide v6, v5, Lcom/android/settings/applications/RunningState$ServiceItem;->mActiveSince:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6

    iget-wide v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    iget-wide v8, v5, Lcom/android/settings/applications/RunningState$ServiceItem;->mActiveSince:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    .line 683
    iget-wide v6, v5, Lcom/android/settings/applications/RunningState$ServiceItem;->mActiveSince:J

    iput-wide v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    .line 680
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 675
    .end local v2    # "i":I
    .end local v5    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2
.end method

.method updateSize(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 692
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-eqz v3, :cond_0

    .line 693
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    .line 694
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 695
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 696
    .local v0, "child":Lcom/android/settings/applications/RunningState$MergedItem;
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 697
    iget-wide v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    iget-wide v6, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    .end local v0    # "child":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-wide v4, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    iput-wide v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    .line 701
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 702
    iget-wide v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    iget-object v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-wide v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    .line 701
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 707
    :cond_1
    iget-wide v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    .line 706
    invoke-static {p1, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, "sizeStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 709
    iput-object v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSizeStr:Ljava/lang/String;

    .line 713
    return v8

    .line 715
    :cond_2
    return v8
.end method

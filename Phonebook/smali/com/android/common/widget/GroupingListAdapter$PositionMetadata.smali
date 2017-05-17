.class public Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;
.super Ljava/lang/Object;
.source "GroupingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/widget/GroupingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PositionMetadata"
.end annotation


# instance fields
.field childCount:I

.field cursorPosition:I

.field private groupPosition:I

.field isExpanded:Z

.field itemType:I

.field private listPosition:I


# direct methods
.method static synthetic -get0(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;)I
    .locals 1

    iget v0, p0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->groupPosition:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;)I
    .locals 1

    iget v0, p0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->listPosition:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->groupPosition:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->listPosition:I

    return p1
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->listPosition:I

    .line 50
    return-void
.end method

.class public Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;
.super Lcom/sonyericsson/android/socialphonebook/widget/ContactsListView;
.source "AutoScrollListView.java"


# static fields
.field private static final PREFERRED_SELECTION_OFFSET_FROM_TOP:F = 0.33f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRequestedScrollPosition:I

.field private mSmoothScrollRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListView;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 52
    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 72
    :try_start_0
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListView;->layoutChildren()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->mRequestedScrollPosition:I

    if-ne v7, v9, :cond_0

    .line 88
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 85
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "layoutChildren(): IllegalStateException catched"

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_0
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 92
    .local v4, "position":I
    iput v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 94
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->getFirstVisiblePosition()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    .line 95
    .local v1, "firstPosition":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->getLastVisiblePosition()I

    move-result v2

    .line 96
    .local v2, "lastPosition":I
    if-lt v4, v1, :cond_1

    if-gt v4, v2, :cond_1

    .line 97
    return-void

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 101
    .local v3, "offset":I
    iget-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->mSmoothScrollRequested:Z

    if-nez v7, :cond_2

    .line 102
    invoke-virtual {p0, v4, v3}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->setSelectionFromTop(II)V

    .line 107
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListView;->layoutChildren()V

    .line 70
    :goto_1
    return-void

    .line 112
    :cond_2
    sub-int v7, v2, v1

    mul-int/lit8 v6, v7, 0x2

    .line 114
    .local v6, "twoScreens":I
    if-ge v4, v1, :cond_5

    .line 115
    add-int v5, v4, v6

    .line 116
    .local v5, "preliminaryPosition":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->getCount()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .line 119
    :cond_3
    if-ge v5, v1, :cond_4

    .line 120
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->setSelection(I)V

    .line 121
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListView;->layoutChildren()V

    .line 135
    :cond_4
    :goto_2
    invoke-virtual {p0, v4, v3}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_1

    .line 124
    .end local v5    # "preliminaryPosition":I
    :cond_5
    sub-int v5, v4, v6

    .line 125
    .restart local v5    # "preliminaryPosition":I
    if-gez v5, :cond_6

    .line 126
    const/4 v5, 0x0

    .line 128
    :cond_6
    if-le v5, v2, :cond_4

    .line 129
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->setSelection(I)V

    .line 130
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListView;->layoutChildren()V

    goto :goto_2
.end method

.method public requestPositionToScreen(IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 64
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 65
    iput-boolean p2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->mSmoothScrollRequested:Z

    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->requestLayout()V

    .line 63
    return-void
.end method

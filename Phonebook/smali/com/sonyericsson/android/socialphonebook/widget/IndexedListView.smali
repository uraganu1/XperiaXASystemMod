.class public final Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;
.super Landroid/widget/RelativeLayout;
.source "IndexedListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar$OnIndexedScrollBarTouchListener;
.implements Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$OnAdapterChangedListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$OnIndexedListTouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mIndexedBar:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;

.field private mIndexedListTouchListener:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$OnIndexedListTouchListener;

.field private mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

.field private mIsIndexedBarGone:Z

.field private mIsScrollBarEnabled:Z

.field private mList:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

.field private mSectionIndexes:[I

.field private mY:F


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;)Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;)Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->setIndexEnable()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIsIndexedBarGone:Z

    .line 45
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 48
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIsIndexedBarGone:Z

    .line 45
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 48
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIsIndexedBarGone:Z

    .line 45
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 48
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .line 86
    return-void
.end method

.method private notifyToListTouchListener(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexedListTouchListener:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$OnIndexedListTouchListener;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexedListTouchListener:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$OnIndexedListTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$OnIndexedListTouchListener;->onTouchList(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 299
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setIndexEnable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;->getCurrentMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexedBar:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;

    if-eqz v0, :cond_0

    .line 248
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIsScrollBarEnabled:Z

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 251
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->setIndexedBarVisibility(Z)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->setIndexedBarVisibility(Z)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexedBar:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;

    if-eqz v0, :cond_0

    .line 258
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIsScrollBarEnabled:Z

    .line 259
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->setIndexedBarVisibility(Z)V

    goto :goto_0
.end method

.method private setIndexedBarVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexedBar:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;

    if-eqz v0, :cond_0

    .line 266
    if-eqz p1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexedBar:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->setVisibility(I)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIsIndexedBarGone:Z

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexedBar:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->setVisibility(I)V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexedBar:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onAdapterChanged(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "listAdapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 131
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 135
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;

    .line 136
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;
    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;->getIndexer()Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .line 138
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$1;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$1;-><init>(Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 148
    .end local v0    # "adapter":Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->setIndexEnable()V

    .line 126
    return-void

    .line 132
    :cond_1
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .line 133
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 96
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 98
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mList:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mList:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    .line 101
    const-string/jumbo v1, "Your content must have a SpbListView whose id attribute is \'android.R.id.list\'"

    .line 100
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mList:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->registerOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mList:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setOnAdapterChangedLister(Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$OnAdapterChangedListener;)V

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mList:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    const v0, 0x7f0e00b0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexedBar:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexedBar:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexedBar:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->setOnIndexedScrollBarTouchListener(Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar$OnIndexedScrollBarTouchListener;)V

    .line 113
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIsScrollBarEnabled:Z

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexedBar:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexedBar:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->getSectionCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mSectionIndexes:[I

    .line 119
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 163
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->TAG:Ljava/lang/String;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 165
    iget-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIsScrollBarEnabled:Z

    if-eqz v5, :cond_0

    .line 166
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mList:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->getHeaderViewsCount()I

    move-result v3

    .line 167
    .local v3, "headerCount":I
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mList:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->getFooterViewsCount()I

    move-result v2

    .line 168
    .local v2, "footerCount":I
    move v1, p2

    .line 169
    .local v1, "firstPos":I
    sub-int v4, p3, v2

    .line 170
    .local v4, "visibleCnt":I
    if-ge p2, v3, :cond_2

    .line 171
    const/4 v1, 0x0

    .line 172
    sub-int v5, v3, p2

    if-le v4, v5, :cond_1

    .line 173
    sub-int v5, v3, p2

    sub-int/2addr v4, v5

    .line 180
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .line 181
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mSectionIndexes:[I

    .line 180
    invoke-interface {v5, v1, v4, v6}, Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;->getSectionIndexes(II[I)I

    move-result v0

    .line 182
    .local v0, "count":I
    iget-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIsScrollBarEnabled:Z

    if-eqz v5, :cond_0

    .line 183
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexedBar:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mSectionIndexes:[I

    invoke-virtual {v5, v6, v0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->setHighlight([II)V

    .line 186
    .end local v0    # "count":I
    .end local v1    # "firstPos":I
    .end local v2    # "footerCount":I
    .end local v3    # "headerCount":I
    .end local v4    # "visibleCnt":I
    :cond_0
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->TAG:Ljava/lang/String;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 162
    return-void

    .line 175
    .restart local v1    # "firstPos":I
    .restart local v2    # "footerCount":I
    .restart local v3    # "headerCount":I
    .restart local v4    # "visibleCnt":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 178
    :cond_2
    sub-int/2addr v1, v3

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 196
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->method(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onTouch(Landroid/view/View;ILandroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sectionIndex"    # I
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->TAG:Ljava/lang/String;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->notifyToListTouchListener(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 213
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 214
    .local v0, "action":I
    if-eqz v0, :cond_0

    .line 215
    if-ne v0, v6, :cond_3

    .line 216
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    invoke-interface {v5}, Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;->getCurrentMode()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 218
    :cond_1
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 219
    return v3

    .line 222
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mList:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->getHeaderViewsCount()I

    move-result v2

    .line 224
    .local v2, "headerViewsCount":I
    if-nez v0, :cond_4

    .line 225
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .line 226
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mList:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v5, v2

    .line 225
    invoke-interface {v3, p2, v5}, Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;->getMovePosition(II)I

    move-result v1

    .line 231
    .local v1, "foundIndex":I
    :goto_0
    if-ltz v1, :cond_3

    .line 232
    add-int/2addr v1, v2

    .line 233
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mList:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setSelection(I)V

    .line 236
    .end local v1    # "foundIndex":I
    .end local v2    # "headerViewsCount":I
    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mY:F

    .line 237
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 238
    return v4

    .line 228
    .restart local v2    # "headerViewsCount":I
    :cond_4
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .line 229
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mY:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    move v3, v4

    .line 228
    :cond_5
    invoke-interface {v5, p2, v3}, Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;->getMovePosition(IZ)I

    move-result v1

    .restart local v1    # "foundIndex":I
    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 291
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->notifyToListTouchListener(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public setGoneIndexedBar(Z)V
    .locals 0
    .param p1, "gone"    # Z

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIsIndexedBarGone:Z

    .line 283
    return-void
.end method

.method public setOnIndexedListTouchListener(Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$OnIndexedListTouchListener;)V
    .locals 0
    .param p1, "onIndexedListTouchListener"    # Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$OnIndexedListTouchListener;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->mIndexedListTouchListener:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$OnIndexedListTouchListener;

    .line 308
    return-void
.end method

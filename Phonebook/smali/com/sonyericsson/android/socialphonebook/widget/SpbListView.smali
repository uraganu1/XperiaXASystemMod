.class public Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;
.super Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;
.source "SpbListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$OnAdapterChangedListener;,
        Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpbListView"


# instance fields
.field private mOnAdapterChangedListener:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$OnAdapterChangedListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mOnScrollListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnScrollListeners:Ljava/util/ArrayList;

    .line 41
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnAdapterChangedListener:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$OnAdapterChangedListener;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    const v1, 0x7f0b0008

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setVerticalScrollBarEnabled(Z)V

    .line 52
    invoke-super {p0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnScrollListeners:Ljava/util/ArrayList;

    .line 41
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnAdapterChangedListener:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$OnAdapterChangedListener;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    const v1, 0x7f0b0008

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setVerticalScrollBarEnabled(Z)V

    .line 65
    invoke-super {p0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnScrollListeners:Ljava/util/ArrayList;

    .line 41
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnAdapterChangedListener:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$OnAdapterChangedListener;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    const v1, 0x7f0b0008

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setVerticalScrollBarEnabled(Z)V

    .line 80
    invoke-super {p0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 76
    return-void
.end method


# virtual methods
.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "aKeyCode"    # I
    .param p2, "anEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 108
    const-string/jumbo v0, "SpbListView"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 110
    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    .line 111
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->toScrollStateIdle()V

    .line 114
    :cond_1
    const-string/jumbo v0, "SpbListView"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 115
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "aState"    # Landroid/os/Parcelable;

    .prologue
    .line 315
    const-string/jumbo v1, "SpbListView"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 317
    if-nez p1, :cond_0

    .line 318
    return-void

    .line 321
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;

    if-nez v1, :cond_1

    .line 322
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 323
    return-void

    :cond_1
    move-object v0, p1

    .line 326
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;

    .line 327
    .local v0, "state":Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 329
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;->-get0(Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 330
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->getCount()I

    move-result v1

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;->-get0(Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;)I

    move-result v2

    if-le v1, v2, :cond_2

    .line 331
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;->-get0(Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setSelection(I)V

    .line 333
    :cond_2
    const-string/jumbo v1, "SpbListView"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 292
    const-string/jumbo v3, "SpbListView"

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 294
    const/4 v0, -0x1

    .line 295
    .local v0, "firstPosition":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->getSelectedItemId()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-gez v3, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->getFirstVisiblePosition()I

    move-result v1

    .line 298
    .local v1, "pos":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->getHeaderViewsCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-gez v3, :cond_0

    .line 300
    move v0, v1

    .line 303
    .end local v1    # "pos":I
    :cond_0
    sget-boolean v3, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v3, :cond_1

    .line 304
    const-string/jumbo v3, "SpbListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "firstPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_1
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 308
    .local v2, "superState":Landroid/os/Parcelable;
    const-string/jumbo v3, "SpbListView"

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 309
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;

    invoke-direct {v3, v2, v0, v6}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;-><init>(Landroid/os/Parcelable;ILcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;)V

    return-object v3
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "aView"    # Landroid/widget/AbsListView;
    .param p2, "aFirstVisibleItem"    # I
    .param p3, "aVisibleItemCount"    # I
    .param p4, "aTotalItemCount"    # I

    .prologue
    .line 187
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnScrollListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnScrollListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .line 193
    .local v0, "listener":Landroid/widget/AbsListView$OnScrollListener;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0

    .line 186
    .end local v0    # "listener":Landroid/widget/AbsListView$OnScrollListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "aView"    # Landroid/widget/AbsListView;
    .param p2, "aScrollState"    # I

    .prologue
    .line 206
    const-string/jumbo v2, "SpbListView"

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 208
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mScrollState:I

    .line 209
    sget-boolean v2, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 210
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mScrollState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 211
    const-string/jumbo v2, "SpbListView"

    const-string/jumbo v3, "SCROLL_STATE_TOUCH_SCROLL"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v2, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnScrollListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 223
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnScrollListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .line 224
    .local v0, "listener":Landroid/widget/AbsListView$OnScrollListener;
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_1

    .line 212
    .end local v0    # "listener":Landroid/widget/AbsListView$OnScrollListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_2
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mScrollState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 213
    const-string/jumbo v2, "SpbListView"

    const-string/jumbo v3, "SCROLL_STATE_FLING"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_3
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mScrollState:I

    if-nez v2, :cond_0

    .line 215
    const-string/jumbo v2, "SpbListView"

    const-string/jumbo v3, "SCROLL_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_4
    const-string/jumbo v2, "SpbListView"

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public final registerOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 2
    .param p1, "aListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnScrollListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnScrollListeners:Ljava/util/ArrayList;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnScrollListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "aAdapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnAdapterChangedListener:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$OnAdapterChangedListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnAdapterChangedListener:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$OnAdapterChangedListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$OnAdapterChangedListener;->onAdapterChanged(Landroid/widget/ListAdapter;)V

    .line 125
    :cond_0
    return-void
.end method

.method public final setOnAdapterChangedLister(Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$OnAdapterChangedListener;)V
    .locals 0
    .param p1, "aOnAdapterChangedListener"    # Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$OnAdapterChangedListener;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnAdapterChangedListener:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$OnAdapterChangedListener;

    .line 149
    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "aListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 159
    return-void
.end method

.method public final toScrollStateIdle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    const-string/jumbo v1, "SpbListView"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 88
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->mScrollState:I

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->getFirstVisiblePosition()I

    move-result v0

    .line 90
    .local v0, "fPos":I
    if-ltz v0, :cond_0

    .line 91
    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setSelectionFromTop(II)V

    .line 94
    .end local v0    # "fPos":I
    :cond_0
    const-string/jumbo v1, "SpbListView"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 86
    return-void
.end method

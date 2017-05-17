.class public abstract Landroid/support/v7/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mOldPosition:I

.field mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

.field mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 7965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7873
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 7874
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const-wide/16 v0, -0x1

    .line 7875
    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 7876
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 7877
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 7880
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 7882
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x0

    .line 7953
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 7957
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 7966
    if-eqz p1, :cond_0

    .line 7969
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7970
    return-void

    .line 7967
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$4000(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 7871
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4102(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/support/v7/widget/RecyclerView$Recycler;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 7871
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    return-object p1
.end method

.method static synthetic access$5200(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 7871
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 7871
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    return v0
.end method

.method private doesTransientStatePreventRecycling()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8263
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldBeKeptAsChild()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8255
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 8174
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 8175
    return-void
.end method

.method clearOldPosition()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 7995
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 7996
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 7997
    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    .prologue
    .line 8122
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 8123
    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    .prologue
    .line 8126
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 8127
    return-void
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1
    .param p1, "mNewPosition"    # I
    .param p2, "offset"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    const/16 v0, 0x8

    .line 7973
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 7974
    invoke-virtual {p0, p2, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 7975
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 7976
    return-void
.end method

.method public final getAdapterPosition()I
    .locals 1

    .prologue
    .line 8071
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8074
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    invoke-static {v0, p0}, Landroid/support/v7/widget/RecyclerView;->access$4600(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    .line 8072
    return v0
.end method

.method public final getItemId()J
    .locals 2

    .prologue
    .line 8099
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    .prologue
    .line 8106
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .prologue
    .line 8045
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    goto :goto_0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 8158
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isAdapterPositionUnknown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8166
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method isBound()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8150
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8146
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isInvalid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8138
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isRecyclable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8246
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isRemoved()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8154
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isScrap()Z
    .locals 1

    .prologue
    .line 8110
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isTmpDetached()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8162
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method needsUpdate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8142
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method offsetPosition(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "applyToPreLayout"    # Z

    .prologue
    const/4 v1, -0x1

    .line 7979
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    if-eq v0, v1, :cond_0

    .line 7982
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-eq v0, v1, :cond_1

    .line 7985
    :goto_1
    if-nez p2, :cond_2

    .line 7988
    :goto_2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 7989
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_3

    .line 7992
    :goto_3
    return-void

    .line 7980
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_0

    .line 7983
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_1

    .line 7986
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_2

    .line 7990
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_3
.end method

.method resetInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 8178
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 8179
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 8180
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const-wide/16 v0, -0x1

    .line 8181
    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 8182
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8183
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 8184
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 8185
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 8186
    return-void
.end method

.method saveOldPosition()V
    .locals 2

    .prologue
    .line 8000
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8003
    :goto_0
    return-void

    .line 8001
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_0
.end method

.method setFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 8170
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 8171
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 3
    .param p1, "recyclable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 8221
    if-nez p1, :cond_2

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 8222
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-ltz v0, :cond_3

    .line 8230
    if-eqz p1, :cond_4

    .line 8232
    :cond_0
    if-nez p1, :cond_5

    .line 8238
    :cond_1
    :goto_1
    return-void

    .line 8221
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8223
    :cond_3
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const-string/jumbo v0, "View"

    .line 8228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8230
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8231
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    .line 8232
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-nez v0, :cond_1

    .line 8233
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1
.end method

.method setScrapContainer(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 0
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 8134
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 8135
    return-void
.end method

.method shouldIgnore()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8006
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8190
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViewHolder{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8193
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8194
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8195
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8196
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8197
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_4

    .line 8198
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_5

    .line 8199
    :goto_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isChanged()Z

    move-result v1

    if-nez v1, :cond_6

    .line 8200
    :goto_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_7

    .line 8201
    :goto_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8202
    :goto_8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v1

    if-nez v1, :cond_9

    .line 8204
    :goto_9
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_a

    :goto_a
    const-string/jumbo v1, "}"

    .line 8205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, " scrap"

    .line 8193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, " invalid"

    .line 8194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, " unbound"

    .line 8195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string/jumbo v1, " update"

    .line 8196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string/jumbo v1, " removed"

    .line 8197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    const-string/jumbo v1, " ignored"

    .line 8198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    const-string/jumbo v1, " changed"

    .line 8199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_7
    const-string/jumbo v1, " tmpDetached"

    .line 8200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 8201
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_9
    const-string/jumbo v1, "undefined adapter position"

    .line 8202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_a
    const-string/jumbo v1, " no parent"

    .line 8204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a
.end method

.method unScrap()V
    .locals 1

    .prologue
    .line 8114
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8115
    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8118
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

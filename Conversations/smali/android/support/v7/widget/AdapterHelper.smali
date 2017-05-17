.class Landroid/support/v7/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Landroid/support/v7/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AdapterHelper$Callback;,
        Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# instance fields
.field final mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Landroid/support/v7/widget/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AdapterHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/support/v7/widget/AdapterHelper$Callback;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AdapterHelper;-><init>(Landroid/support/v7/widget/AdapterHelper$Callback;Z)V

    .line 72
    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/AdapterHelper$Callback;Z)V
    .locals 2
    .param p1, "callback"    # Landroid/support/v7/widget/AdapterHelper$Callback;
    .param p2, "disableRecycler"    # Z

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    .line 76
    iput-boolean p2, p0, Landroid/support/v7/widget/AdapterHelper;->mDisableRecycler:Z

    .line 77
    new-instance v0, Landroid/support/v7/widget/OpReorderer;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/OpReorderer;-><init>(Landroid/support/v7/widget/OpReorderer$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mOpReorderer:Landroid/support/v7/widget/OpReorderer;

    .line 78
    return-void
.end method

.method private applyAdd(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 425
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 426
    return-void
.end method

.method private applyMove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 128
    return-void
.end method

.method private applyRemove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 11
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    const/4 v10, 0x1

    .line 131
    iget v4, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "tmpStart":I
    const/4 v2, 0x0

    .line 133
    .local v2, "tmpCount":I
    iget v8, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v9, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v3, v8, v9

    .local v3, "tmpEnd":I
    const/4 v5, -0x1

    .line 135
    .local v5, "type":I
    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v1, "position":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 173
    iget v8, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ne v2, v8, :cond_6

    .line 177
    :goto_1
    if-eqz v5, :cond_7

    .line 180
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 182
    :goto_2
    return-void

    .line 136
    :cond_0
    const/4 v6, 0x0

    .line 137
    .local v6, "typeChanged":Z
    iget-object v8, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v8, v1}, Landroid/support/v7/widget/AdapterHelper$Callback;->findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 138
    .local v7, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v7, :cond_2

    .line 145
    :cond_1
    if-eqz v5, :cond_3

    :goto_3
    const/4 v5, 0x1

    .line 165
    :goto_4
    if-nez v6, :cond_5

    .line 170
    add-int/lit8 v2, v2, 0x1

    .line 135
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_2
    invoke-direct {p0, v1}, Landroid/support/v7/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 156
    if-eq v5, v10, :cond_4

    :goto_6
    const/4 v5, 0x0

    .line 163
    goto :goto_4

    .line 148
    :cond_3
    invoke-virtual {p0, v10, v4, v2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 149
    .local v0, "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 150
    const/4 v6, 0x1

    goto :goto_3

    .line 159
    .end local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_4
    invoke-virtual {p0, v10, v4, v2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 160
    .restart local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 161
    const/4 v6, 0x1

    goto :goto_6

    .line 166
    .end local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_5
    sub-int/2addr v1, v2

    .line 167
    sub-int/2addr v3, v2

    const/4 v2, 0x1

    .line 168
    goto :goto_5

    .line 174
    .end local v6    # "typeChanged":Z
    .end local v7    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_6
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 175
    invoke-virtual {p0, v10, v4, v2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    goto :goto_1

    .line 178
    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2
.end method

.method private applyUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 10
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    const/4 v9, 0x2

    .line 185
    iget v4, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "tmpStart":I
    const/4 v2, 0x0

    .line 187
    .local v2, "tmpCount":I
    iget v7, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v3, v7, v8

    .local v3, "tmpEnd":I
    const/4 v5, -0x1

    .line 189
    .local v5, "type":I
    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v1, "position":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 210
    iget v7, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ne v2, v7, :cond_5

    .line 214
    :goto_1
    if-eqz v5, :cond_6

    .line 217
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 219
    :goto_2
    return-void

    .line 190
    :cond_0
    iget-object v7, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v7, v1}, Landroid/support/v7/widget/AdapterHelper$Callback;->findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 191
    .local v6, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v6, :cond_2

    .line 192
    :cond_1
    if-eqz v5, :cond_3

    :goto_3
    const/4 v5, 0x1

    .line 208
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_2
    invoke-direct {p0, v1}, Landroid/support/v7/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    .line 200
    if-eq v5, v7, :cond_4

    :goto_5
    const/4 v5, 0x0

    .line 206
    goto :goto_4

    .line 193
    :cond_3
    invoke-virtual {p0, v9, v4, v2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 194
    .local v0, "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    const/4 v2, 0x0

    .line 196
    move v4, v1

    goto :goto_3

    .line 201
    .end local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_4
    invoke-virtual {p0, v9, v4, v2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 202
    .restart local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    const/4 v2, 0x0

    .line 204
    move v4, v1

    goto :goto_5

    .line 211
    .end local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .end local v6    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_5
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 212
    invoke-virtual {p0, v9, v4, v2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    goto :goto_1

    .line 215
    :cond_6
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2
.end method

.method private canFindInPreLayout(I)Z
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 404
    iget-object v5, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v2, 0x0

    .line 405
    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 421
    return v7

    .line 406
    :cond_0
    iget-object v5, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 407
    .local v3, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    .line 411
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v5, :cond_3

    .line 405
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    :cond_2
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 409
    return v8

    .line 413
    :cond_3
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v1, v5, v6

    .line 414
    .local v1, "end":I
    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "pos":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 415
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v5

    if-eq v5, p1, :cond_4

    .line 414
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 416
    :cond_4
    return v8
.end method

.method private dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 13
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 225
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-nez v11, :cond_1

    .line 226
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "should not dispatch add or move for pre layout"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 225
    :cond_1
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_0

    .line 239
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v11, v12}, Landroid/support/v7/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v7

    .local v7, "tmpStart":I
    const/4 v6, 0x1

    .line 244
    .local v6, "tmpCnt":I
    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 246
    .local v1, "offsetPositionForPartial":I
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v11, :pswitch_data_0

    .line 254
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "op should be remove or update."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :pswitch_0
    const/4 v4, 0x1

    .local v4, "positionMultiplier":I
    :goto_0
    const/4 v2, 0x1

    .line 256
    .local v2, "p":I
    :goto_1
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lt v2, v11, :cond_2

    .line 288
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 289
    if-gtz v6, :cond_7

    .line 305
    :goto_2
    return-void

    .end local v2    # "p":I
    .end local v4    # "positionMultiplier":I
    :pswitch_1
    const/4 v4, 0x0

    .line 251
    .restart local v4    # "positionMultiplier":I
    goto :goto_0

    .line 257
    .restart local v2    # "p":I
    :cond_2
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v12, v4, v2

    add-int v3, v11, v12

    .line 258
    .local v3, "pos":I
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v3, v11}, Landroid/support/v7/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v8

    .line 262
    .local v8, "updatedPos":I
    const/4 v0, 0x0

    .line 263
    .local v0, "continuous":Z
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v11, :pswitch_data_1

    .line 271
    .end local v0    # "continuous":Z
    :goto_3
    if-nez v0, :cond_5

    .line 275
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v11, v7, v6}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 279
    .local v5, "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-virtual {p0, v5, v1}, Landroid/support/v7/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V

    .line 280
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 281
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_6

    .line 284
    :goto_4
    move v7, v8

    const/4 v6, 0x1

    .line 256
    .end local v5    # "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    .restart local v0    # "continuous":Z
    :pswitch_2
    add-int/lit8 v11, v7, 0x1

    if-eq v8, v11, :cond_3

    move v0, v9

    .local v0, "continuous":Z
    :goto_6
    goto :goto_3

    .local v0, "continuous":Z
    :cond_3
    move v0, v10

    goto :goto_6

    .line 268
    :pswitch_3
    if-eq v8, v7, :cond_4

    move v0, v9

    .local v0, "continuous":Z
    :goto_7
    goto :goto_3

    .local v0, "continuous":Z
    :cond_4
    move v0, v10

    goto :goto_7

    .line 272
    .end local v0    # "continuous":Z
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 282
    .restart local v5    # "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_6
    add-int/2addr v1, v6

    goto :goto_4

    .line 290
    .end local v3    # "pos":I
    .end local v5    # "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .end local v8    # "updatedPos":I
    :cond_7
    iget v9, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v9, v7, v6}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 294
    .restart local v5    # "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-virtual {p0, v5, v1}, Landroid/support/v7/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V

    .line 295
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 263
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 3
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 432
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 450
    :goto_0
    return-void

    .line 438
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_0

    .line 441
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    goto :goto_0

    .line 445
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(II)V

    goto :goto_0

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private updatePositionWithPostponed(II)I
    .locals 10
    .param p1, "pos"    # I
    .param p2, "cmd"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 323
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 324
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_0

    .line 388
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_1
    if-gez v2, :cond_10

    .line 400
    return p1

    .line 325
    :cond_0
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 326
    .local v4, "postponed":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v6, v9, :cond_2

    .line 365
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v6, p1, :cond_c

    .line 372
    if-eqz p2, :cond_e

    .line 374
    if-eq p2, v8, :cond_f

    .line 324
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 328
    :cond_2
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lt v6, v7, :cond_4

    .line 332
    iget v5, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 333
    .local v5, "start":I
    iget v1, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 335
    .local v1, "end":I
    :goto_3
    if-ge p1, v5, :cond_5

    .line 354
    :cond_3
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v6, :cond_1

    .line 356
    if-eqz p2, :cond_b

    .line 359
    if-ne p2, v8, :cond_1

    .line 360
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 361
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    .line 329
    .end local v1    # "end":I
    .end local v5    # "start":I
    :cond_4
    iget v5, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 330
    .restart local v5    # "start":I
    iget v1, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .restart local v1    # "end":I
    goto :goto_3

    .line 335
    :cond_5
    if-gt p1, v1, :cond_3

    .line 337
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v5, v6, :cond_6

    .line 346
    if-eqz p2, :cond_9

    .line 348
    if-eq p2, v8, :cond_a

    .line 352
    :goto_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 338
    :cond_6
    if-eqz p2, :cond_7

    .line 340
    if-eq p2, v8, :cond_8

    .line 344
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 339
    :cond_7
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_5

    .line 341
    :cond_8
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_5

    .line 347
    :cond_9
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4

    .line 349
    :cond_a
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4

    .line 357
    :cond_b
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 358
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    .line 366
    .end local v1    # "end":I
    .end local v5    # "start":I
    :cond_c
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v6, :cond_d

    .line 368
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v8, :cond_1

    .line 369
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v6

    goto :goto_2

    .line 367
    :cond_d
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v6

    goto :goto_2

    .line 373
    :cond_e
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_2

    .line 375
    :cond_f
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto/16 :goto_2

    .line 389
    .end local v4    # "postponed":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_10
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 390
    .local v3, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v6, v9, :cond_11

    .line 395
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez v6, :cond_14

    .line 388
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 391
    :cond_11
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v6, v7, :cond_13

    .line 392
    :cond_12
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 393
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_6

    .line 391
    :cond_13
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ltz v6, :cond_12

    goto :goto_6

    .line 396
    :cond_14
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 397
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_6
.end method


# virtual methods
.method public applyPendingUpdatesToPosition(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 563
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    const/4 v1, 0x0

    .line 564
    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 595
    return p1

    .line 565
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 566
    .local v2, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 564
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    :pswitch_1
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, p1, :cond_1

    .line 569
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v4

    goto :goto_1

    .line 573
    :pswitch_2
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, p1, :cond_1

    .line 574
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v0, v4, v5

    .line 575
    .local v0, "end":I
    if-gt v0, p1, :cond_2

    .line 578
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v4

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    .line 576
    return v4

    .line 582
    .end local v0    # "end":I
    :pswitch_3
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v4, p1, :cond_3

    .line 585
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v4, p1, :cond_4

    .line 588
    :goto_2
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v4, p1, :cond_1

    .line 589
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 583
    :cond_3
    iget p1, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .line 586
    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method consumePostponedUpdates()V
    .locals 4

    .prologue
    .line 117
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .line 118
    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 121
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 122
    return-void

    .line 119
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method consumeUpdatesInOnePass()V
    .locals 6

    .prologue
    .line 533
    invoke-virtual {p0}, Landroid/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 534
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .line 535
    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 559
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 560
    return-void

    .line 536
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 537
    .local v2, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    .line 555
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-nez v3, :cond_1

    .line 535
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :pswitch_0
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 540
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    goto :goto_1

    .line 543
    :pswitch_1
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 544
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_1

    .line 547
    :pswitch_2
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 548
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(II)V

    goto :goto_1

    .line 551
    :pswitch_3
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 552
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_1

    .line 556
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V
    .locals 2
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .param p2, "offsetStart"    # I

    .prologue
    .line 308
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchFirstPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 309
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 320
    :goto_0
    return-void

    .line 314
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(II)V

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method findPositionOffset(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 457
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v0

    return v0
.end method

.method findPositionOffset(II)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "firstPostponedItem"    # I

    .prologue
    .line 461
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 462
    .local v0, "count":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 486
    return p1

    .line 463
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 464
    .local v2, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 475
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, p1, :cond_5

    .line 462
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 465
    :cond_2
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v3, p1, :cond_3

    .line 468
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, p1, :cond_4

    .line 471
    :goto_2
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_1

    .line 472
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 466
    :cond_3
    iget p1, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .line 469
    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 476
    :cond_5
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    .line 481
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-nez v3, :cond_1

    .line 482
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    goto :goto_1

    .line 477
    :cond_6
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-lt p1, v3, :cond_7

    .line 480
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v3

    goto :goto_1

    :cond_7
    const/4 v3, -0x1

    .line 478
    return v3
.end method

.method hasPendingUpdates()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 453
    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 686
    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 687
    .local v0, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    if-eqz v0, :cond_0

    .line 690
    iput p1, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 691
    iput p2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 692
    iput p3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 694
    :goto_0
    return-object v0

    .line 688
    :cond_0
    new-instance v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .end local v0    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {v0, p1, p2, p3}, Landroid/support/v7/widget/AdapterHelper$UpdateOp;-><init>(III)V

    .restart local v0    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    goto :goto_0
.end method

.method onItemRangeRemoved(II)Z
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 509
    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method preProcess()V
    .locals 5

    .prologue
    .line 91
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOpReorderer:Landroid/support/v7/widget/OpReorderer;

    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/OpReorderer;->reorderOps(Ljava/util/List;)V

    .line 92
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .line 93
    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 113
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 114
    return-void

    .line 94
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 95
    .local v2, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    .line 109
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-nez v3, :cond_1

    .line 93
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :pswitch_0
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->applyAdd(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 100
    :pswitch_1
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->applyRemove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 103
    :pswitch_2
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->applyUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 106
    :pswitch_3
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->applyMove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 110
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 1
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 699
    iget-boolean v0, p0, Landroid/support/v7/widget/AdapterHelper;->mDisableRecycler:Z

    if-eqz v0, :cond_0

    .line 702
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .line 706
    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 709
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 710
    return-void

    .line 707
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 706
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 88
    return-void
.end method

.class public Landroid/support/v7/widget/DefaultItemAnimator;
.super Landroid/support/v7/widget/RecyclerView$ItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;,
        Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;,
        Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    }
.end annotation


# instance fields
.field private mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 621
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/DefaultItemAnimator;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Landroid/support/v7/widget/DefaultItemAnimator;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/DefaultItemAnimator;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/DefaultItemAnimator;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/DefaultItemAnimator;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/DefaultItemAnimator;
    .param p1, "x1"    # Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->animateChangeImpl(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/DefaultItemAnimator;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/DefaultItemAnimator;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/DefaultItemAnimator;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/DefaultItemAnimator;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/DefaultItemAnimator;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/DefaultItemAnimator;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/DefaultItemAnimator;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method private animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 223
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 224
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 225
    .local v0, "animation":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v2, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 226
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator$5;

    invoke-direct {v3, p0, p1, v0}, Landroid/support/v7/widget/DefaultItemAnimator$5;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 245
    return-void
.end method

.method private animateChangeImpl(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 11
    .param p1, "changeInfo"    # Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 334
    iget-object v0, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 335
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 336
    .local v5, "view":Landroid/view/View;
    :goto_0
    iget-object v1, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 337
    .local v1, "newHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v1, :cond_1

    move-object v2, v6

    .line 338
    .local v2, "newView":Landroid/view/View;
    :goto_1
    if-nez v5, :cond_2

    .line 362
    :goto_2
    if-nez v2, :cond_3

    .line 383
    :goto_3
    return-void

    .end local v1    # "newHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v2    # "newView":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    move-object v5, v6

    .line 335
    goto :goto_0

    .line 337
    .restart local v1    # "newHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_1

    .line 339
    .restart local v2    # "newView":Landroid/view/View;
    :cond_2
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 341
    .local v4, "oldViewAnim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v6, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget v6, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v7, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 343
    iget v6, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v7, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 344
    invoke-virtual {v4, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    new-instance v7, Landroid/support/v7/widget/DefaultItemAnimator$7;

    invoke-direct {v7, p0, p1, v4}, Landroid/support/v7/widget/DefaultItemAnimator$7;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_2

    .line 363
    .end local v4    # "oldViewAnim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_3
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 364
    .local v3, "newViewAnimation":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v6, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {v3, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    new-instance v7, Landroid/support/v7/widget/DefaultItemAnimator$8;

    invoke-direct {v7, p0, p1, v3, v2}, Landroid/support/v7/widget/DefaultItemAnimator$8;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_3
.end method

.method private animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 8
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v6, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 272
    .local v6, "view":Landroid/view/View;
    sub-int v3, p4, p2

    .line 273
    .local v3, "deltaX":I
    sub-int v4, p5, p3

    .line 274
    .local v4, "deltaY":I
    if-nez v3, :cond_0

    .line 277
    :goto_0
    if-nez v4, :cond_1

    .line 283
    :goto_1
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 284
    .local v5, "animation":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator$6;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/DefaultItemAnimator$6;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v7, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 307
    return-void

    .line 275
    .end local v5    # "animation":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_0
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    goto :goto_0

    .line 278
    :cond_1
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    goto :goto_1
.end method

.method private animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 193
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 194
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 195
    .local v0, "animation":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v2, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, v0}, Landroid/support/v7/widget/DefaultItemAnimator$4;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 212
    return-void
.end method

.method private dispatchFinishedWhenDone()V
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    goto :goto_0
.end method

.method private endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p2, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 394
    return-void

    .line 387
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    .line 388
    .local v0, "changeInfo":Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;
    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 386
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 389
    :cond_2
    iget-object v2, v0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_1

    .line 390
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 1
    .param p1, "changeInfo"    # Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    .prologue
    .line 397
    iget-object v0, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    .line 400
    :goto_0
    iget-object v0, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_1

    .line 403
    :goto_1
    return-void

    .line 398
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    goto :goto_0

    .line 401
    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    goto :goto_1
.end method

.method private endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "changeInfo"    # Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;
    .param p2, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "oldItem":Z
    iget-object v1, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eq v1, p2, :cond_0

    .line 408
    iget-object v1, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eq v1, p2, :cond_1

    .line 412
    const/4 v1, 0x0

    return v1

    .line 407
    :cond_0
    iput-object v2, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 414
    :goto_0
    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 415
    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 416
    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 417
    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 418
    const/4 v1, 0x1

    return v1

    .line 409
    :cond_1
    iput-object v2, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 410
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 217
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 218
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 15
    .param p1, "oldHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .prologue
    .line 312
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v12

    .line 313
    .local v12, "prevTranslationX":F
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v13

    .line 314
    .local v13, "prevTranslationY":F
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v11

    .line 315
    .local v11, "prevAlpha":F
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/DefaultItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 316
    sub-int v1, p5, p3

    int-to-float v1, v1

    sub-float/2addr v1, v12

    float-to-int v9, v1

    .line 317
    .local v9, "deltaX":I
    sub-int v1, p6, p4

    int-to-float v1, v1

    sub-float/2addr v1, v13

    float-to-int v10, v1

    .line 319
    .local v10, "deltaY":I
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 320
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v13}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 321
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v11}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 322
    if-nez p2, :cond_1

    .line 329
    :cond_0
    :goto_0
    iget-object v14, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILandroid/support/v7/widget/DefaultItemAnimator$1;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    const/4 v1, 0x1

    return v1

    .line 322
    :cond_1
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 324
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/DefaultItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 325
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v9

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 326
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v10

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 327
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 11
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 250
    iget-object v9, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 251
    .local v9, "view":Landroid/view/View;
    int-to-float v0, p2

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 252
    int-to-float v0, p3

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p3, v0

    .line 253
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 254
    sub-int v7, p4, p2

    .line 255
    .local v7, "deltaX":I
    sub-int v8, p5, p3

    .line 256
    .local v8, "deltaY":I
    if-eqz v7, :cond_1

    .line 260
    :cond_0
    if-nez v7, :cond_2

    .line 263
    :goto_0
    if-nez v8, :cond_3

    .line 266
    :goto_1
    iget-object v10, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILandroid/support/v7/widget/DefaultItemAnimator$1;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    const/4 v0, 0x1

    return v0

    .line 256
    :cond_1
    if-nez v8, :cond_0

    .line 257
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 258
    const/4 v0, 0x0

    return v0

    .line 261
    :cond_2
    neg-int v0, v7

    int-to-float v0, v0

    invoke-static {v9, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    goto :goto_0

    .line 264
    :cond_3
    neg-int v0, v8

    int-to-float v0, v0

    invoke-static {v9, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_1
.end method

.method public animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 188
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p1, "viewHolders":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 619
    return-void

    .line 617
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 616
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 423
    iget-object v6, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 425
    .local v6, "view":Landroid/view/View;
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 427
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_4

    .line 436
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v7, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 437
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 441
    :goto_1
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 446
    :goto_2
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_3
    if-gez v2, :cond_8

    .line 453
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_4
    if-gez v2, :cond_a

    .line 469
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_5
    if-gez v2, :cond_e

    .line 481
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 486
    :cond_0
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 491
    :cond_1
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 496
    :cond_2
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 500
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 501
    return-void

    .line 428
    :cond_4
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    .line 429
    .local v4, "moveInfo":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    iget-object v7, v4, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eq v7, p1, :cond_5

    .line 427
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 430
    :cond_5
    invoke-static {v6, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 431
    invoke-static {v6, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 432
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 433
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 438
    .end local v4    # "moveInfo":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    :cond_6
    invoke-static {v6, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 439
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 442
    :cond_7
    invoke-static {v6, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 443
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    .line 447
    :cond_8
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 448
    .local v1, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-direct {p0, v1, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 449
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 446
    :goto_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 450
    :cond_9
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    .line 454
    .end local v1    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;>;"
    :cond_a
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 455
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "j":I
    :goto_8
    if-gez v3, :cond_c

    .line 453
    :cond_b
    :goto_9
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_4

    .line 456
    :cond_c
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    .line 457
    .restart local v4    # "moveInfo":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    iget-object v7, v4, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eq v7, p1, :cond_d

    .line 455
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 458
    :cond_d
    invoke-static {v6, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 459
    invoke-static {v6, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 460
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 461
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 462
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 463
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_9

    .line 470
    .end local v3    # "j":I
    .end local v4    # "moveInfo":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;>;"
    :cond_e
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 471
    .local v0, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 469
    :cond_f
    :goto_a
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_5

    .line 472
    :cond_10
    invoke-static {v6, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 473
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 474
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 475
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a
.end method

.method public endAnimations()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 531
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 532
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-gez v3, :cond_0

    .line 540
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 541
    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-gez v3, :cond_1

    .line 546
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 547
    add-int/lit8 v3, v2, -0x1

    :goto_2
    if-gez v3, :cond_2

    .line 554
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 555
    add-int/lit8 v3, v2, -0x1

    :goto_3
    if-gez v3, :cond_3

    .line 558
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 559
    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->isRunning()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 563
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 564
    .local v7, "listCount":I
    add-int/lit8 v3, v7, -0x1

    :goto_4
    if-gez v3, :cond_5

    .line 580
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 581
    add-int/lit8 v3, v7, -0x1

    :goto_5
    if-gez v3, :cond_8

    .line 595
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 596
    add-int/lit8 v3, v7, -0x1

    :goto_6
    if-gez v3, :cond_b

    .line 607
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Landroid/support/v7/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 608
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Landroid/support/v7/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 609
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Landroid/support/v7/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 610
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Landroid/support/v7/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 612
    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 613
    return-void

    .line 533
    .end local v7    # "listCount":I
    :cond_0
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    .line 534
    .local v4, "item":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    iget-object v11, v4, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v10, v11, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 535
    .local v10, "view":Landroid/view/View;
    invoke-static {v10, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 536
    invoke-static {v10, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 537
    iget-object v11, v4, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v11}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 538
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 532
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 542
    .end local v4    # "item":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    .end local v10    # "view":Landroid/view/View;
    :cond_1
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 543
    .local v5, "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 544
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 541
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 548
    .end local v5    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 549
    .restart local v5    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v10, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 550
    .restart local v10    # "view":Landroid/view/View;
    invoke-static {v10, v13}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 551
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 552
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 547
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .line 556
    .end local v5    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v10    # "view":Landroid/view/View;
    :cond_3
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v11}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 555
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_3

    .line 560
    :cond_4
    return-void

    .line 565
    .restart local v7    # "listCount":I
    :cond_5
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 566
    .local v9, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 567
    add-int/lit8 v6, v2, -0x1

    .local v6, "j":I
    :goto_7
    if-gez v6, :cond_6

    .line 564
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_4

    .line 568
    :cond_6
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    .line 569
    .local v8, "moveInfo":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    iget-object v5, v8, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 570
    .restart local v5    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v10, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 571
    .restart local v10    # "view":Landroid/view/View;
    invoke-static {v10, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 572
    invoke-static {v10, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 573
    iget-object v11, v8, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v11}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 574
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 575
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 567
    :goto_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 576
    :cond_7
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 582
    .end local v5    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v6    # "j":I
    .end local v8    # "moveInfo":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    .end local v9    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v10    # "view":Landroid/view/View;
    :cond_8
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 583
    .local v0, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 584
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "j":I
    :goto_9
    if-gez v6, :cond_9

    .line 581
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_5

    .line 585
    :cond_9
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 586
    .restart local v5    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v10, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 587
    .restart local v10    # "view":Landroid/view/View;
    invoke-static {v10, v13}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 588
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 589
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 590
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 584
    :goto_a
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 591
    :cond_a
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 597
    .end local v0    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    .end local v5    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v6    # "j":I
    .end local v10    # "view":Landroid/view/View;
    :cond_b
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 598
    .local v1, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 599
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "j":I
    :goto_b
    if-gez v6, :cond_c

    .line 596
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_6

    .line 600
    :cond_c
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v11}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 601
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_d

    .line 599
    :goto_c
    add-int/lit8 v6, v6, -0x1

    goto :goto_b

    .line 602
    :cond_d
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 505
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public runPendingAnimations()V
    .locals 28

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_1

    const/16 v19, 0x0

    .line 98
    .local v19, "removalsPending":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_2

    const/16 v18, 0x0

    .line 99
    .local v18, "movesPending":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_3

    const/4 v11, 0x0

    .line 100
    .local v11, "changesPending":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_4

    const/4 v6, 0x0

    .line 101
    .local v6, "additionsPending":Z
    :goto_3
    if-eqz v19, :cond_5

    .line 106
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_6

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 111
    if-nez v18, :cond_7

    .line 135
    :goto_5
    if-nez v11, :cond_9

    .line 158
    :goto_6
    if-nez v6, :cond_b

    .line 183
    :goto_7
    return-void

    .end local v6    # "additionsPending":Z
    .end local v11    # "changesPending":Z
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v18    # "movesPending":Z
    .end local v19    # "removalsPending":Z
    :cond_1
    const/16 v19, 0x1

    .line 97
    goto :goto_0

    .restart local v19    # "removalsPending":Z
    :cond_2
    const/16 v18, 0x1

    .line 98
    goto :goto_1

    .restart local v18    # "movesPending":Z
    :cond_3
    const/4 v11, 0x1

    .line 99
    goto :goto_2

    .restart local v11    # "changesPending":Z
    :cond_4
    const/4 v6, 0x1

    .line 100
    goto :goto_3

    .line 101
    .restart local v6    # "additionsPending":Z
    :cond_5
    if-nez v18, :cond_0

    if-nez v6, :cond_0

    if-nez v11, :cond_0

    .line 103
    return-void

    .line 106
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 107
    .local v12, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/support/v7/widget/DefaultItemAnimator;->animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_4

    .line 112
    .end local v12    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_7
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v17, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 116
    new-instance v16, Landroid/support/v7/widget/DefaultItemAnimator$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/DefaultItemAnimator$1;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 127
    .local v16, "mover":Ljava/lang/Runnable;
    if-nez v19, :cond_8

    .line 131
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    :cond_8
    const/16 v25, 0x0

    .line 128
    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 129
    .local v24, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_5

    .line 136
    .end local v16    # "mover":Ljava/lang/Runnable;
    .end local v17    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v24    # "view":Landroid/view/View;
    :cond_9
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v10, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 140
    new-instance v7, Landroid/support/v7/widget/DefaultItemAnimator$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v10}, Landroid/support/v7/widget/DefaultItemAnimator$2;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 150
    .local v7, "changer":Ljava/lang/Runnable;
    if-nez v19, :cond_a

    .line 154
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_6

    :cond_a
    const/16 v25, 0x0

    .line 151
    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    move-object/from16 v0, v25

    iget-object v12, v0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 152
    .restart local v12    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-static {v0, v7, v1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto/16 :goto_6

    .line 159
    .end local v7    # "changer":Ljava/lang/Runnable;
    .end local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;>;"
    .end local v12    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v5, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 163
    new-instance v4, Landroid/support/v7/widget/DefaultItemAnimator$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/support/v7/widget/DefaultItemAnimator$3;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 172
    .local v4, "adder":Ljava/lang/Runnable;
    if-eqz v19, :cond_d

    .line 173
    :cond_c
    if-nez v19, :cond_e

    const-wide/16 v20, 0x0

    .line 174
    .local v20, "removeDuration":J
    :goto_8
    if-nez v18, :cond_f

    const-wide/16 v14, 0x0

    .line 175
    .local v14, "moveDuration":J
    :goto_9
    if-nez v11, :cond_10

    const-wide/16 v8, 0x0

    .line 176
    .local v8, "changeDuration":J
    :goto_a
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v26

    add-long v22, v20, v26

    .local v22, "totalDelay":J
    const/16 v25, 0x0

    .line 177
    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 178
    .restart local v24    # "view":Landroid/view/View;
    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-static {v0, v4, v1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto/16 :goto_7

    .line 172
    .end local v8    # "changeDuration":J
    .end local v14    # "moveDuration":J
    .end local v20    # "removeDuration":J
    .end local v22    # "totalDelay":J
    .end local v24    # "view":Landroid/view/View;
    :cond_d
    if-nez v18, :cond_c

    if-nez v11, :cond_c

    .line 180
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_7

    .line 173
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v20

    goto :goto_8

    .line 174
    .restart local v20    # "removeDuration":J
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v14

    goto :goto_9

    .line 175
    .restart local v14    # "moveDuration":J
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    goto :goto_a
.end method

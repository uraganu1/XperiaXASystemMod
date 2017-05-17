.class public Landroid/support/v7/widget/DefaultItemAnimator;
.super Landroid/support/v7/widget/RecyclerView$ItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;,
        Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;,
        Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


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
.method static synthetic -get0(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 0
    .param p1, "changeInfo"    # Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->animateChangeImpl(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/support/v7/widget/DefaultItemAnimator;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/support/v7/widget/DefaultItemAnimator;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method private animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 224
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 225
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 226
    .local v0, "animation":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v2, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 228
    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator$5;

    invoke-direct {v3, p0, p1, v0}, Landroid/support/v7/widget/DefaultItemAnimator$5;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    .line 227
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 223
    return-void
.end method

.method private animateChangeImpl(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 11
    .param p1, "changeInfo"    # Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    .prologue
    const/4 v10, 0x0

    .line 335
    iget-object v0, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 336
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_2

    const/4 v5, 0x0

    .line 337
    :goto_0
    iget-object v1, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 338
    .local v1, "newHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 339
    :goto_1
    if-eqz v5, :cond_0

    .line 340
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 341
    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    .line 340
    invoke-virtual {v6, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 342
    .local v4, "oldViewAnim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v6, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget v6, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v7, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 344
    iget v6, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v7, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 345
    invoke-virtual {v4, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    new-instance v7, Landroid/support/v7/widget/DefaultItemAnimator$7;

    invoke-direct {v7, p0, p1, v4}, Landroid/support/v7/widget/DefaultItemAnimator$7;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 363
    .end local v4    # "oldViewAnim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_0
    if-eqz v2, :cond_1

    .line 364
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 365
    .local v3, "newViewAnimation":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v6, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-virtual {v3, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 367
    const/high16 v7, 0x3f800000    # 1.0f

    .line 366
    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 367
    new-instance v7, Landroid/support/v7/widget/DefaultItemAnimator$8;

    invoke-direct {v7, p0, p1, v3, v2}, Landroid/support/v7/widget/DefaultItemAnimator$8;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 366
    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 334
    .end local v3    # "newViewAnimation":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_1
    return-void

    .line 336
    .end local v1    # "newHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .local v5, "view":Landroid/view/View;
    goto :goto_0

    .line 338
    .end local v5    # "view":Landroid/view/View;
    .restart local v1    # "newHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    const/4 v2, 0x0

    .local v2, "newView":Landroid/view/View;
    goto :goto_1
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

    .line 272
    iget-object v6, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 273
    .local v6, "view":Landroid/view/View;
    sub-int v3, p4, p2

    .line 274
    .local v3, "deltaX":I
    sub-int v4, p5, p3

    .line 275
    .local v4, "deltaY":I
    if-eqz v3, :cond_0

    .line 276
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 278
    :cond_0
    if-eqz v4, :cond_1

    .line 279
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 284
    :cond_1
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 285
    .local v5, "animation":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
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

    .line 271
    return-void
.end method

.method private animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 194
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 195
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 196
    .local v0, "animation":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v2, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 198
    const/4 v3, 0x0

    .line 197
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 198
    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, v0}, Landroid/support/v7/widget/DefaultItemAnimator$4;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    .line 197
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 193
    return-void
.end method

.method private dispatchFinishedWhenDone()V
    .locals 1

    .prologue
    .line 530
    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 529
    :cond_0
    return-void
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
    .line 387
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 388
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    .line 389
    .local v0, "changeInfo":Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;
    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    iget-object v2, v0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 391
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 387
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 386
    .end local v0    # "changeInfo":Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 1
    .param p1, "changeInfo"    # Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    .prologue
    .line 398
    iget-object v0, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    .line 401
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    .line 397
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "changeInfo"    # Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;
    .param p2, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "oldItem":Z
    iget-object v1, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_0

    .line 408
    iput-object v2, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 415
    :goto_0
    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 416
    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 417
    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 418
    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 419
    const/4 v1, 0x1

    return v1

    .line 409
    :cond_0
    iget-object v1, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_1

    .line 410
    iput-object v2, p1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 411
    const/4 v0, 0x1

    goto :goto_0

    .line 413
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 505
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/animation/AnimatorCompatHelper;->clearInterpolator(Landroid/view/View;)V

    .line 506
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 504
    return-void
.end method


# virtual methods
.method public animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 218
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 219
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
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
    .line 313
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v12

    .line 314
    .local v12, "prevTranslationX":F
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v13

    .line 315
    .local v13, "prevTranslationY":F
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v11

    .line 316
    .local v11, "prevAlpha":F
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 317
    sub-int v1, p5, p3

    int-to-float v1, v1

    sub-float/2addr v1, v12

    float-to-int v9, v1

    .line 318
    .local v9, "deltaX":I
    sub-int v1, p6, p4

    int-to-float v1, v1

    sub-float/2addr v1, v13

    float-to-int v10, v1

    .line 320
    .local v10, "deltaY":I
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 321
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v13}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 322
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v11}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 323
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 325
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/support/v7/widget/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 326
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v9

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 327
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v10

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 328
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 330
    :cond_0
    iget-object v14, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILandroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    const/4 v1, 0x1

    return v1
.end method

.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 11
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 251
    iget-object v9, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 252
    .local v9, "view":Landroid/view/View;
    int-to-float v0, p2

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 253
    int-to-float v0, p3

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p3, v0

    .line 254
    invoke-direct {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 255
    sub-int v7, p4, p2

    .line 256
    .local v7, "deltaX":I
    sub-int v8, p5, p3

    .line 257
    .local v8, "deltaY":I
    if-nez v7, :cond_0

    if-nez v8, :cond_0

    .line 258
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 259
    const/4 v0, 0x0

    return v0

    .line 261
    :cond_0
    if-eqz v7, :cond_1

    .line 262
    neg-int v0, v7

    int-to-float v0, v0

    invoke-static {v9, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 264
    :cond_1
    if-eqz v8, :cond_2

    .line 265
    neg-int v0, v8

    int-to-float v0, v0

    invoke-static {v9, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 267
    :cond_2
    iget-object v10, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILandroid/support/v7/widget/DefaultItemAnimator$MoveInfo;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 189
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
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
    .line 622
    .local p1, "viewHolders":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 623
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 622
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 621
    :cond_0
    return-void
.end method

.method public endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 424
    iget-object v6, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 426
    .local v6, "view":Landroid/view/View;
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 428
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 429
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    .line 430
    .local v4, "moveInfo":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    iget-object v7, v4, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_0

    .line 431
    invoke-static {v6, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 432
    invoke-static {v6, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 433
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 434
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 428
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 437
    .end local v4    # "moveInfo":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    :cond_1
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v7, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 438
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 439
    invoke-static {v6, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 440
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 442
    :cond_2
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 443
    invoke-static {v6, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 444
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 447
    :cond_3
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 448
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 449
    .local v1, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-direct {p0, v1, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 450
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 451
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 447
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 454
    .end local v1    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;>;"
    :cond_5
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_2
    if-ltz v2, :cond_8

    .line 455
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 456
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "j":I
    :goto_3
    if-ltz v3, :cond_6

    .line 457
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    .line 458
    .restart local v4    # "moveInfo":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    iget-object v7, v4, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_7

    .line 459
    invoke-static {v6, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 460
    invoke-static {v6, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 461
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 462
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 463
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 464
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 454
    .end local v4    # "moveInfo":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 456
    .restart local v4    # "moveInfo":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 470
    .end local v3    # "j":I
    .end local v4    # "moveInfo":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;>;"
    :cond_8
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_4
    if-ltz v2, :cond_a

    .line 471
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 472
    .local v0, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 473
    invoke-static {v6, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 474
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 475
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 476
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 470
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 482
    .end local v0    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    :cond_a
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 487
    :cond_b
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 492
    :cond_c
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 497
    :cond_d
    iget-object v7, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 501
    :cond_e
    invoke-direct {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 423
    return-void
.end method

.method public endAnimations()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 537
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 538
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 539
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    .line 540
    .local v4, "item":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    iget-object v11, v4, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v10, v11, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 541
    .local v10, "view":Landroid/view/View;
    invoke-static {v10, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 542
    invoke-static {v10, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 543
    iget-object v11, v4, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v11}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 544
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 538
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 546
    .end local v4    # "item":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    .end local v10    # "view":Landroid/view/View;
    :cond_0
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 547
    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_1

    .line 548
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 549
    .local v5, "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 550
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 547
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 552
    .end local v5    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 553
    add-int/lit8 v3, v2, -0x1

    :goto_2
    if-ltz v3, :cond_2

    .line 554
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 555
    .restart local v5    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v10, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 556
    .restart local v10    # "view":Landroid/view/View;
    invoke-static {v10, v13}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 557
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 558
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 553
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 560
    .end local v5    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v10    # "view":Landroid/view/View;
    :cond_2
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 561
    add-int/lit8 v3, v2, -0x1

    :goto_3
    if-ltz v3, :cond_3

    .line 562
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v11}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 561
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 564
    :cond_3
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 565
    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->isRunning()Z

    move-result v11

    if-nez v11, :cond_4

    .line 566
    return-void

    .line 569
    :cond_4
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 570
    .local v7, "listCount":I
    add-int/lit8 v3, v7, -0x1

    :goto_4
    if-ltz v3, :cond_7

    .line 571
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 572
    .local v9, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 573
    add-int/lit8 v6, v2, -0x1

    .local v6, "j":I
    :goto_5
    if-ltz v6, :cond_6

    .line 574
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    .line 575
    .local v8, "moveInfo":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    iget-object v5, v8, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 576
    .restart local v5    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v10, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 577
    .restart local v10    # "view":Landroid/view/View;
    invoke-static {v10, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 578
    invoke-static {v10, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 579
    iget-object v11, v8, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v11}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 580
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 581
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 582
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 573
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 570
    .end local v5    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v8    # "moveInfo":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    .end local v10    # "view":Landroid/view/View;
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 586
    .end local v6    # "j":I
    .end local v9    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;>;"
    :cond_7
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 587
    add-int/lit8 v3, v7, -0x1

    :goto_6
    if-ltz v3, :cond_a

    .line 588
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 589
    .local v0, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 590
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "j":I
    :goto_7
    if-ltz v6, :cond_9

    .line 591
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 592
    .restart local v5    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v10, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 593
    .restart local v10    # "view":Landroid/view/View;
    invoke-static {v10, v13}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 594
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 595
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 596
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 597
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 590
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 587
    .end local v5    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v10    # "view":Landroid/view/View;
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 601
    .end local v0    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    .end local v6    # "j":I
    :cond_a
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 602
    add-int/lit8 v3, v7, -0x1

    :goto_8
    if-ltz v3, :cond_d

    .line 603
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 604
    .local v1, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 605
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "j":I
    :goto_9
    if-ltz v6, :cond_c

    .line 606
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v11}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 607
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 608
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 605
    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 602
    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 613
    .end local v1    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;>;"
    .end local v6    # "j":I
    :cond_d
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Landroid/support/v7/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 614
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Landroid/support/v7/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 615
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Landroid/support/v7/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 616
    iget-object v11, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Landroid/support/v7/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 618
    invoke-virtual {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 536
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 511
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 511
    :cond_0
    return v0
.end method

.method public runPendingAnimations()V
    .locals 28

    .prologue
    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_1

    const/16 v19, 0x0

    .line 99
    .local v19, "removalsPending":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_2

    const/16 v18, 0x0

    .line 100
    .local v18, "movesPending":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_3

    const/4 v11, 0x0

    .line 101
    .local v11, "changesPending":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_4

    const/4 v6, 0x0

    .line 102
    .local v6, "additionsPending":Z
    :goto_3
    if-nez v19, :cond_0

    if-eqz v18, :cond_5

    .line 107
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "holder$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 108
    .local v12, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/support/v7/widget/DefaultItemAnimator;->animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_4

    .line 98
    .end local v6    # "additionsPending":Z
    .end local v11    # "changesPending":Z
    .end local v12    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v13    # "holder$iterator":Ljava/util/Iterator;
    .end local v18    # "movesPending":Z
    .end local v19    # "removalsPending":Z
    :cond_1
    const/16 v19, 0x1

    .restart local v19    # "removalsPending":Z
    goto :goto_0

    .line 99
    :cond_2
    const/16 v18, 0x1

    .restart local v18    # "movesPending":Z
    goto :goto_1

    .line 100
    :cond_3
    const/4 v11, 0x1

    .restart local v11    # "changesPending":Z
    goto :goto_2

    .line 101
    :cond_4
    const/4 v6, 0x1

    .restart local v6    # "additionsPending":Z
    goto :goto_3

    .line 102
    :cond_5
    if-nez v6, :cond_0

    if-nez v11, :cond_0

    .line 104
    return-void

    .line 110
    .restart local v13    # "holder$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 112
    if-eqz v18, :cond_7

    .line 113
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v17, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 117
    new-instance v16, Landroid/support/v7/widget/DefaultItemAnimator$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/DefaultItemAnimator$1;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 128
    .local v16, "mover":Ljava/lang/Runnable;
    if-eqz v19, :cond_b

    .line 129
    const/16 v25, 0x0

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

    .line 130
    .local v24, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 136
    .end local v16    # "mover":Ljava/lang/Runnable;
    .end local v17    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v24    # "view":Landroid/view/View;
    :cond_7
    :goto_5
    if-eqz v11, :cond_8

    .line 137
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v10, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 141
    new-instance v7, Landroid/support/v7/widget/DefaultItemAnimator$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v10}, Landroid/support/v7/widget/DefaultItemAnimator$2;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 151
    .local v7, "changer":Ljava/lang/Runnable;
    if-eqz v19, :cond_c

    .line 152
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    move-object/from16 v0, v25

    iget-object v12, v0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 153
    .restart local v12    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-static {v0, v7, v1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 159
    .end local v7    # "changer":Ljava/lang/Runnable;
    .end local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;>;"
    .end local v12    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_8
    :goto_6
    if-eqz v6, :cond_a

    .line 160
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v5, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 164
    new-instance v4, Landroid/support/v7/widget/DefaultItemAnimator$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/support/v7/widget/DefaultItemAnimator$3;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 173
    .local v4, "adder":Ljava/lang/Runnable;
    if-nez v19, :cond_9

    if-nez v18, :cond_9

    if-eqz v11, :cond_10

    .line 174
    :cond_9
    if-eqz v19, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v20

    .line 175
    .local v20, "removeDuration":J
    :goto_7
    if-eqz v18, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v14

    .line 176
    .local v14, "moveDuration":J
    :goto_8
    if-eqz v11, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    .line 177
    .local v8, "changeDuration":J
    :goto_9
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v26

    add-long v22, v20, v26

    .line 178
    .local v22, "totalDelay":J
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 179
    .restart local v24    # "view":Landroid/view/View;
    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-static {v0, v4, v1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 97
    .end local v4    # "adder":Ljava/lang/Runnable;
    .end local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    .end local v8    # "changeDuration":J
    .end local v14    # "moveDuration":J
    .end local v20    # "removeDuration":J
    .end local v22    # "totalDelay":J
    .end local v24    # "view":Landroid/view/View;
    :cond_a
    :goto_a
    return-void

    .line 132
    .restart local v16    # "mover":Ljava/lang/Runnable;
    .restart local v17    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;>;"
    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_5

    .line 155
    .end local v16    # "mover":Ljava/lang/Runnable;
    .end local v17    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;>;"
    .restart local v7    # "changer":Ljava/lang/Runnable;
    .restart local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;>;"
    :cond_c
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 174
    .end local v7    # "changer":Ljava/lang/Runnable;
    .end local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;>;"
    .restart local v4    # "adder":Ljava/lang/Runnable;
    .restart local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    :cond_d
    const-wide/16 v20, 0x0

    .restart local v20    # "removeDuration":J
    goto :goto_7

    .line 175
    :cond_e
    const-wide/16 v14, 0x0

    .restart local v14    # "moveDuration":J
    goto :goto_8

    .line 176
    :cond_f
    const-wide/16 v8, 0x0

    .restart local v8    # "changeDuration":J
    goto :goto_9

    .line 181
    .end local v8    # "changeDuration":J
    .end local v14    # "moveDuration":J
    .end local v20    # "removeDuration":J
    :cond_10
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_a
.end method

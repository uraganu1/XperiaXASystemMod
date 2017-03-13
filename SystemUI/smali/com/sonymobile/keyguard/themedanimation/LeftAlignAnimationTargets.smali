.class public Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;
.super Ljava/lang/Object;
.source "LeftAlignAnimationTargets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;
    }
.end annotation


# instance fields
.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->mEntries:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public addChildEntry(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, v4

    move v6, v2

    .line 62
    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addEntry(Landroid/view/View;ZZLandroid/view/View;Landroid/view/View;I)V

    .line 61
    return-void
.end method

.method public addChildEntryWithLeftOffset(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "leftOffsetInPixel"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, v4

    move v6, p2

    .line 104
    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addEntry(Landroid/view/View;ZZLandroid/view/View;Landroid/view/View;I)V

    .line 103
    return-void
.end method

.method public addChildEntryWithLeftOffsetView(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "leftOffsetViewRef"    # Landroid/view/View;
    .param p3, "leftOffsetViewRefRTL"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    move v6, v2

    .line 84
    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addEntry(Landroid/view/View;ZZLandroid/view/View;Landroid/view/View;I)V

    .line 83
    return-void
.end method

.method public addEntry(Landroid/view/View;ZZLandroid/view/View;Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isRoot"    # Z
    .param p3, "onlyToLeft"    # Z
    .param p4, "leftOffsetViewRef"    # Landroid/view/View;
    .param p5, "leftOffsetViewRefRTL"    # Landroid/view/View;
    .param p6, "leftOffsetInPixel"    # I

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    new-instance v0, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;

    invoke-direct {v0, p1, p2, p3, p6}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;-><init>(Landroid/view/View;ZZI)V

    .line 122
    .local v0, "entry":Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;
    invoke-virtual {v0, p4}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;->setLeftOffsetView(Landroid/view/View;)V

    .line 123
    invoke-virtual {v0, p5}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;->setLeftOffsetViewRTL(Landroid/view/View;)V

    .line 124
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->mEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v0    # "entry":Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;
    :cond_0
    return-void
.end method

.method public addRootEntry(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 34
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addEntry(Landroid/view/View;ZZLandroid/view/View;Landroid/view/View;I)V

    .line 33
    return-void
.end method

.method public addRootEntryOnlyToLeft(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "leftOffsetInPixel"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, v4

    move v6, p2

    .line 53
    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addEntry(Landroid/view/View;ZZLandroid/view/View;Landroid/view/View;I)V

    .line 52
    return-void
.end method

.method public addRootEntryWithLeftOffset(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "leftOffsetInPixel"    # I

    .prologue
    const/4 v4, 0x0

    .line 94
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addEntry(Landroid/view/View;ZZLandroid/view/View;Landroid/view/View;I)V

    .line 93
    return-void
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->mEntries:Ljava/util/List;

    return-object v0
.end method

.class public Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;
.super Landroid/app/Activity;
.source "ExpandedPileViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;,
        Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;
    }
.end annotation


# instance fields
.field private removedPileItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/conversations/ui/pileview/PileItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->removedPileItems:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/HashSet;)Landroid/content/Intent;
    .locals 1
    .param p0, "removedPileItems"    # Ljava/util/HashSet;

    .prologue
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->makeResultIntent(Ljava/util/HashSet;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->removedPileItems:Ljava/util/HashSet;

    .line 31
    return-void
.end method

.method private static getPileItems(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p0, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/pileview/PileItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    const-string/jumbo v0, "key-pile-items-to-show"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getRemovedItems(Landroid/content/Intent;)Ljava/util/Set;
    .locals 1
    .param p0, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/conversations/ui/pileview/PileItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    const-string/jumbo v0, "key-removed-pile-items"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static makePreviewIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/pileview/PileItem;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "pileItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/pileview/PileItem;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "key-pile-items-to-show"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 42
    return-object v0
.end method

.method private static makeResultIntent(Ljava/util/HashSet;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/conversations/ui/pileview/PileItem;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "removedPileItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/conversations/ui/pileview/PileItem;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v0, "data":Landroid/content/Intent;
    const-string/jumbo v1, "key-removed-pile-items"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 56
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    const v2, 0x7f030023

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->setContentView(I)V

    .line 74
    const v2, 0x7f0d005d

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 75
    .local v1, "gridView":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 76
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 78
    new-instance v0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;-><init>(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;)V

    .line 79
    .local v0, "adapter":Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->getPileItems(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->setItems(Ljava/util/List;)V

    .line 80
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 68
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 85
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->finish()V

    .line 87
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

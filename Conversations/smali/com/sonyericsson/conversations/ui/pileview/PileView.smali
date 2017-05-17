.class public Lcom/sonyericsson/conversations/ui/pileview/PileView;
.super Lcom/sonyericsson/conversations/ui/pileview/PartitionLayout;
.source "PileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/pileview/PileView$OnPileItemDeleteListener;
    }
.end annotation


# instance fields
.field private mOnPileItemDeleteListener:Lcom/sonyericsson/conversations/ui/pileview/PileView$OnPileItemDeleteListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/pileview/PileView;)Lcom/sonyericsson/conversations/ui/pileview/PileView$OnPileItemDeleteListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileView;->mOnPileItemDeleteListener:Lcom/sonyericsson/conversations/ui/pileview/PileView$OnPileItemDeleteListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/pileview/PartitionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private buildUpPileItemKeyToViewCache()Ljava/util/HashMap;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v3, "viewCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 72
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "child":Landroid/view/View;
    const v4, 0x7f0d0002

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private obtainPileViewItem(Landroid/view/View;Lcom/sonyericsson/conversations/ui/pileview/PileItem;Z)Landroid/view/View;
    .locals 7
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/sonyericsson/conversations/ui/pileview/PileItem;
    .param p3, "showCloseButton"    # Z

    .prologue
    const/4 v6, 0x0

    .line 90
    if-nez p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 92
    const v5, 0x7f030024

    .line 91
    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 93
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->getKey()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d0002

    invoke-virtual {p1, v5, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 95
    const v4, 0x7f0d005e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 97
    .local v2, "imageView":Landroid/widget/ImageView;
    const v4, 0x7f0d0060

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 98
    .local v3, "videoIndicator":Landroid/widget/ImageView;
    invoke-virtual {p2, v2, v3}, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->displayImage(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->getContentDescriptionResId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "contentDescription":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    .end local v1    # "contentDescription":Ljava/lang/String;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "videoIndicator":Landroid/widget/ImageView;
    :cond_0
    const v4, 0x7f0d0061

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 107
    .local v0, "closeButton":Landroid/widget/ImageView;
    if-eqz p3, :cond_1

    .line 108
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    new-instance v4, Lcom/sonyericsson/conversations/ui/pileview/PileView$1;

    invoke-direct {v4, p0, p2}, Lcom/sonyericsson/conversations/ui/pileview/PileView$1;-><init>(Lcom/sonyericsson/conversations/ui/pileview/PileView;Lcom/sonyericsson/conversations/ui/pileview/PileItem;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :goto_0
    return-object p1

    .line 129
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->setVisibility(I)V

    .line 79
    return-void
.end method

.method public setOnPileDeletedListener(Lcom/sonyericsson/conversations/ui/pileview/PileView$OnPileItemDeleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/pileview/PileView$OnPileItemDeleteListener;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileView;->mOnPileItemDeleteListener:Lcom/sonyericsson/conversations/ui/pileview/PileView$OnPileItemDeleteListener;

    .line 134
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->setVisibility(I)V

    .line 83
    return-void
.end method

.method public showPileItems(Ljava/util/ArrayList;Z)V
    .locals 12
    .param p2, "showCloseButtons"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/ui/pileview/PileItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "newPileItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/ui/pileview/PileItem;>;"
    const/4 v11, 0x0

    .line 38
    invoke-static {p0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->buildUpPileItemKeyToViewCache()Ljava/util/HashMap;

    move-result-object v6

    .line 43
    .local v6, "viewCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->removeAllViews()V

    .line 45
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 46
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    .line 47
    .local v4, "newPileItem":Lcom/sonyericsson/conversations/ui/pileview/PileItem;
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-direct {p0, v7, v4, p2}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->obtainPileViewItem(Landroid/view/View;Lcom/sonyericsson/conversations/ui/pileview/PileItem;Z)Landroid/view/View;

    move-result-object v5

    .line 50
    .local v5, "pileViewItem":Landroid/view/View;
    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->addView(Landroid/view/View;)V

    .line 53
    const v7, 0x7f0d005f

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    .local v0, "counter":Landroid/widget/TextView;
    const/4 v7, 0x3

    if-ne v2, v7, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_1

    .line 55
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "+%d"

    .line 56
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    .line 56
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "counterFormat":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .end local v0    # "counter":Landroid/widget/TextView;
    .end local v1    # "counterFormat":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "newPileItem":Lcom/sonyericsson/conversations/ui/pileview/PileItem;
    .end local v5    # "pileViewItem":Landroid/view/View;
    :cond_0
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 37
    return-void

    .line 61
    .restart local v0    # "counter":Landroid/widget/TextView;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "newPileItem":Lcom/sonyericsson/conversations/ui/pileview/PileItem;
    .restart local v5    # "pileViewItem":Landroid/view/View;
    :cond_1
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

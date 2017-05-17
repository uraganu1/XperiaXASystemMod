.class Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExpandedPileViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/pileview/PileItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;Lcom/sonyericsson/conversations/ui/pileview/PileItem;)V
    .locals 0
    .param p1, "item"    # Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->deleteSelectedItem(Lcom/sonyericsson/conversations/ui/pileview/PileItem;)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->this$0:Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->setHasStableIds(Z)V

    .line 96
    return-void
.end method

.method private deleteSelectedItem(Lcom/sonyericsson/conversations/ui/pileview/PileItem;)V
    .locals 4
    .param p1, "item"    # Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    .prologue
    const/4 v3, -0x1

    .line 137
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 138
    .local v0, "pos":I
    if-ne v0, v3, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->this$0:Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->-get0(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->this$0:Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->this$0:Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->-get0(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->-wrap0(Ljava/util/HashSet;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 149
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->this$0:Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->finish()V

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 154
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->notifyItemRemoved(I)V

    .line 135
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 108
    check-cast p1, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->onBindViewHolder(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;
    .param p2, "position"    # I

    .prologue
    .line 110
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    .line 111
    .local v0, "item":Lcom/sonyericsson/conversations/ui/pileview/PileItem;
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;->-get1(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;->-get2(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->displayImage(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 113
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;->-get0(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter$1;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter$1;-><init>(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;Lcom/sonyericsson/conversations/ui/pileview/PileItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 103
    const v2, 0x7f030025

    const/4 v3, 0x0

    .line 102
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;

    invoke-direct {v1, v0}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/pileview/PileItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/pileview/PileItem;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->mItems:Ljava/util/List;

    .line 131
    return-void
.end method

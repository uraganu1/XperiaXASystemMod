.class Lcom/sonyericsson/conversations/ui/pileview/PileView$1;
.super Ljava/lang/Object;
.source "PileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/pileview/PileView;->obtainPileViewItem(Landroid/view/View;Lcom/sonyericsson/conversations/ui/pileview/PileItem;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/pileview/PileView;

.field final synthetic val$item:Lcom/sonyericsson/conversations/ui/pileview/PileItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/pileview/PileView;Lcom/sonyericsson/conversations/ui/pileview/PileItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/pileview/PileView;
    .param p2, "val$item"    # Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileView$1;->this$0:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/pileview/PileView$1;->val$item:Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findPileViewItem(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 112
    .local v0, "parent":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "parent":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_0

    .line 115
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileView$1;->this$0:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->-get0(Lcom/sonyericsson/conversations/ui/pileview/PileView;)Lcom/sonyericsson/conversations/ui/pileview/PileView$OnPileItemDeleteListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 120
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/pileview/PileView$1;->findPileViewItem(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "pileViewItem":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileView$1;->this$0:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->removeView(Landroid/view/View;)V

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileView$1;->this$0:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->-get0(Lcom/sonyericsson/conversations/ui/pileview/PileView;)Lcom/sonyericsson/conversations/ui/pileview/PileView$OnPileItemDeleteListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/pileview/PileView$1;->val$item:Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    invoke-interface {v1, v2}, Lcom/sonyericsson/conversations/ui/pileview/PileView$OnPileItemDeleteListener;->onPileItemDelete(Lcom/sonyericsson/conversations/ui/pileview/PileItem;)V

    .line 118
    .end local v0    # "pileViewItem":Landroid/view/View;
    :cond_1
    return-void
.end method

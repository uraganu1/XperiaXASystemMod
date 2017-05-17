.class Lcom/sonyericsson/conversations/ui/pileview/PileViewController$1;
.super Ljava/lang/Object;
.source "PileViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->enableExpandedView(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

.field final synthetic val$newPileItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/pileview/PileViewController;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    .prologue
    .line 70
    .local p2, "val$newPileItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/ui/pileview/PileItem;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController$1;->this$0:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController$1;->val$newPileItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController$1;->this$0:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->-get0(Lcom/sonyericsson/conversations/ui/pileview/PileViewController;)Lcom/sonyericsson/conversations/ui/pileview/PileViewController$ExpandedPileViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController$1;->val$newPileItems:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController$ExpandedPileViewController;->onOpenExpandedPileView(Ljava/util/List;)V

    .line 72
    return-void
.end method

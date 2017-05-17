.class Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter$1;
.super Ljava/lang/Object;
.source "ExpandedPileViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->onBindViewHolder(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;

.field final synthetic val$item:Lcom/sonyericsson/conversations/ui/pileview/PileItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;Lcom/sonyericsson/conversations/ui/pileview/PileItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;
    .param p2, "val$item"    # Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter$1;->this$1:Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter$1;->val$item:Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter$1;->this$1:Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter$1;->val$item:Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;->-wrap0(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Adapter;Lcom/sonyericsson/conversations/ui/pileview/PileItem;)V

    .line 115
    return-void
.end method

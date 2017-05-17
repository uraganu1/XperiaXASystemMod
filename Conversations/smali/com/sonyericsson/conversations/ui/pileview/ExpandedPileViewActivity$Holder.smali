.class Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ExpandedPileViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# instance fields
.field private final closeButton:Landroid/widget/ImageView;

.field private final imageView:Landroid/widget/ImageView;

.field private final videoIndicator:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;->closeButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;->videoIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 166
    const v0, 0x7f0d005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;->imageView:Landroid/widget/ImageView;

    .line 167
    const v0, 0x7f0d0061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;->closeButton:Landroid/widget/ImageView;

    .line 168
    const v0, 0x7f0d0060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity$Holder;->videoIndicator:Landroid/widget/ImageView;

    .line 164
    return-void
.end method

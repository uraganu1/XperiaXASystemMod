.class Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TopContactsRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field private mIconView:Landroid/view/View;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;->customizeHeaderView()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;->setIconVisibility(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;->this$0:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;

    .line 322
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 323
    const v0, 0x7f0e0227

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;->mIconView:Landroid/view/View;

    .line 321
    return-void
.end method

.method private customizeHeaderView()V
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;->this$0:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->-wrap0(Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;)I

    move-result v2

    .line 328
    const/4 v3, -0x1

    .line 327
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    return-void
.end method

.method private setIconVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 332
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;->mIconView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 331
    return-void

    .line 332
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

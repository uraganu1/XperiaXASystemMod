.class public Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttachmentItemListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/ui/AttachmentItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->mItems:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public addItem(Lcom/sonyericsson/conversations/ui/AttachmentItem;)V
    .locals 1
    .param p1, "item"    # Lcom/sonyericsson/conversations/ui/AttachmentItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/AttachmentItem;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/AttachmentItem;->getRequestCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 65
    if-nez p2, :cond_1

    .line 66
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 67
    return-object v5

    .line 70
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 71
    const v5, 0x7f03002f

    const/4 v6, 0x0

    .line 70
    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 76
    .local v3, "viewFinal":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/AttachmentItem;

    .line 78
    .local v1, "item":Lcom/sonyericsson/conversations/ui/AttachmentItem;
    const v4, 0x7f0d0083

    .line 77
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 80
    .local v2, "textView":Landroid/widget/TextView;
    const v4, 0x7f0d0082

    .line 79
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/AttachmentItem;->getResId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 82
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/AttachmentItem;->getResIcon()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/AttachmentItem;->getRequestCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 84
    return-object v3

    .line 73
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "item":Lcom/sonyericsson/conversations/ui/AttachmentItem;
    .end local v2    # "textView":Landroid/widget/TextView;
    .end local v3    # "viewFinal":Landroid/view/View;
    :cond_1
    move-object v3, p2

    .restart local v3    # "viewFinal":Landroid/view/View;
    goto :goto_0
.end method

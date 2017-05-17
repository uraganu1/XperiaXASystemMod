.class public Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TopContactsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder$TopContactsViewHolderActionListener;
    }
.end annotation


# instance fields
.field mContactPhoto:Landroid/widget/ImageView;

.field mNameTextView:Landroid/widget/TextView;

.field mOnItemClickListener:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder$TopContactsViewHolderActionListener;

.field mPhoneNumberLabelTextView:Landroid/widget/TextView;

.field mPosition:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder$TopContactsViewHolderActionListener;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "onTopContactsViewHolderActionListener"    # Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder$TopContactsViewHolderActionListener;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 60
    const v0, 0x7f0e0228

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mContactPhoto:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f0e0229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mNameTextView:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0e022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mPhoneNumberLabelTextView:Landroid/widget/TextView;

    .line 63
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mOnItemClickListener:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder$TopContactsViewHolderActionListener;

    .line 64
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mOnItemClickListener:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder$TopContactsViewHolderActionListener;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mPosition:I

    invoke-interface {v0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder$TopContactsViewHolderActionListener;->onClick(Landroid/view/View;I)V

    .line 69
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mOnItemClickListener:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder$TopContactsViewHolderActionListener;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mPosition:I

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder$TopContactsViewHolderActionListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;I)V

    .line 74
    return-void
.end method

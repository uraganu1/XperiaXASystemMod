.class Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;
.super Landroid/widget/BaseAdapter;
.source "AttachmentBarOverflowDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Adapter"
.end annotation


# instance fields
.field private final mMenuItems:[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;


# direct methods
.method public constructor <init>([Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V
    .locals 0
    .param p1, "menuItems"    # [Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;->mMenuItems:[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .line 48
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;->mMenuItems:[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;->mMenuItems:[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;->getItem(I)Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ViewHolder"
        }
    .end annotation

    .prologue
    .line 77
    const v1, 0x7f030003

    .line 78
    .local v1, "layoutResId":I
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 79
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0d0014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 80
    .local v0, "icon":Landroid/widget/ImageView;
    const v5, 0x7f0d0015

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 82
    .local v3, "text":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;->mMenuItems:[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    aget-object v2, v5, p1

    .line 83
    .local v2, "menuItem":Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->getIconResId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->getItemStringResId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 85
    return-object v4
.end method

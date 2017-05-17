.class public Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;
.super Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ViewHolder;
.source "ConversationPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private mBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

.field private mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mDescription:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->mBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->mDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    return-object p1
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->this$1:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ViewHolder;-><init>(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;Landroid/view/View;)V

    .line 224
    const v0, 0x7f0d001c

    .line 223
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->mBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 225
    const v0, 0x7f0d001d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 226
    const v0, 0x7f0d001e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->mDescription:Landroid/widget/TextView;

    .line 227
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 232
    const/16 v0, 0xfa

    .line 234
    .local v0, "LIST_ITEM_ONCLICK_DELAY":I
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->this$1:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-get0(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    return-void

    .line 238
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder$1;-><init>(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)V

    .line 246
    const-wide/16 v4, 0xfa

    .line 238
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->this$1:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-set0(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;Z)Z

    .line 231
    return-void
.end method

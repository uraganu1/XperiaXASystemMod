.class public Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RecipientArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;",
            ">;",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 29
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 37
    if-nez p2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 39
    const v3, 0x7f030032

    .line 38
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    .local v0, "holder":Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;

    .line 43
    .local v1, "recipientInfo":Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 44
    new-instance v0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    .end local v0    # "holder":Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;->mContext:Landroid/content/Context;

    .line 45
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 44
    invoke-direct {v0, v2, p2, v1, v3}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 46
    .local v0, "holder":Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    :goto_0
    return-object p2

    .line 48
    .local v0, "holder":Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
    check-cast v0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    .line 49
    .local v0, "holder":Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->setRecipientInfo(Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;)V

    .line 50
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->setContent()V

    goto :goto_0
.end method

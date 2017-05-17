.class public Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
.super Ljava/lang/Object;
.source "ParticipantListViewItemsHolder.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mFirstRowText:Landroid/widget/TextView;

.field private mRecipientBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

.field private mRecipientInfo:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;

.field private mSecondRowText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;)Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mRecipientInfo:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "recipientInfo"    # Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;
    .param p4, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mContext:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mView:Landroid/view/View;

    .line 45
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mFirstRowText:Landroid/widget/TextView;

    .line 47
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mSecondRowText:Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mAddress:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mView:Landroid/view/View;

    .line 61
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 62
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mRecipientInfo:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;

    .line 63
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->init()V

    .line 58
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mView:Landroid/view/View;

    .line 68
    const v2, 0x7f0d008b

    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mRecipientBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mView:Landroid/view/View;

    .line 70
    const v2, 0x7f0d008c

    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 72
    .local v0, "recipientItem":Landroid/view/ViewGroup;
    const v1, 0x7f0d008d

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mFirstRowText:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f0d008e

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mSecondRowText:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->setContent()V

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mView:Landroid/view/View;

    new-instance v2, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;-><init>(Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method private setImageForParticipant(Lcom/sonyericsson/conversations/model/Participant;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V
    .locals 0
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .param p2, "recipientBadge"    # Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .prologue
    .line 150
    invoke-virtual {p2, p1}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;)V

    .line 148
    return-void
.end method


# virtual methods
.method protected applyTextRows(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Landroid/text/SpannableStringBuilder;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mFirstRowText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mSecondRowText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mSecondRowText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mSecondRowText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContent()V
    .locals 5

    .prologue
    .line 116
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 117
    .local v2, "title":Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mRecipientInfo:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;->getParticipant()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v1

    .line 119
    .local v1, "participant":Lcom/sonyericsson/conversations/model/Participant;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v3, v4, :cond_2

    .line 120
    const v0, 0x7f0b012c

    .line 121
    .local v0, "id":I
    sget-object v3, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;->ACTIVE:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mRecipientInfo:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;->getRecipientState()Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 122
    const v0, 0x7f0b012b

    .line 125
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getContactManager()Lcom/sonyericsson/conversations/contact/ContactManager;

    move-result-object v3

    .line 126
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/contact/ContactManager;->hasPhoneBookEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mContext:Landroid/content/Context;

    .line 127
    invoke-static {v2, v3, v1}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->appendFormattedDisplayNameWithAddress(Landroid/text/SpannableStringBuilder;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)Landroid/text/SpannableStringBuilder;

    .line 134
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mAddress:Ljava/lang/String;

    .line 140
    .end local v0    # "id":I
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mAddress:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->applyTextRows(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mRecipientBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->setImageForParticipant(Lcom/sonyericsson/conversations/model/Participant;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    .line 115
    return-void

    .line 131
    .restart local v0    # "id":I
    :cond_1
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 136
    .end local v0    # "id":I
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->appendFormatted(Landroid/text/SpannableStringBuilder;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)Landroid/text/SpannableStringBuilder;

    .line 137
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mAddress:Ljava/lang/String;

    goto :goto_1
.end method

.method public setRecipientInfo(Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;)V
    .locals 0
    .param p1, "recipientInfo"    # Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mRecipientInfo:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;

    .line 167
    return-void
.end method

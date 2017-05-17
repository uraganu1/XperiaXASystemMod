.class public Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;
.super Landroid/widget/LinearLayout;
.source "ConversationDualSimSendButton.java"


# instance fields
.field private mIsLastActive:Z

.field private mSendButton:Landroid/widget/ImageButton;

.field private mSimCardImageView:Landroid/widget/ImageView;

.field private mSimCardSlotNumber:I

.field private mSimCardTextView:Landroid/widget/TextView;

.field private mSubscriptionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardImageView:Landroid/widget/ImageView;

    .line 36
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardTextView:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSendButton:Landroid/widget/ImageButton;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSubscriptionId:I

    .line 42
    iput v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardSlotNumber:I

    .line 44
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mIsLastActive:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardImageView:Landroid/widget/ImageView;

    .line 36
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardTextView:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSendButton:Landroid/widget/ImageButton;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSubscriptionId:I

    .line 42
    iput v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardSlotNumber:I

    .line 44
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mIsLastActive:Z

    .line 52
    return-void
.end method

.method private updateButtonImage()V
    .locals 7

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "simCardImageResource":I
    const/4 v1, 0x0

    .line 77
    .local v1, "sendButtonImageResource":I
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardSlotNumber:I

    packed-switch v4, :pswitch_data_0

    .line 95
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid SIM card slot entered "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardSlotNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 79
    :pswitch_0
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mIsLastActive:Z

    if-eqz v4, :cond_3

    .line 80
    const v2, 0x7f0200f0

    .line 82
    :goto_0
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mIsLastActive:Z

    if-eqz v4, :cond_4

    .line 83
    const v1, 0x7f0200eb

    .line 98
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSendButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 103
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 107
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mIsLastActive:Z

    if-eqz v4, :cond_7

    const v0, 0x7f0c002b

    .line 109
    .local v0, "resourceId":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    .line 110
    .local v3, "size":F
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 111
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardSlotNumber:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .end local v0    # "resourceId":I
    .end local v3    # "size":F
    :cond_2
    return-void

    .line 81
    :cond_3
    const v2, 0x7f0200f1

    goto :goto_0

    .line 84
    :cond_4
    const v1, 0x7f0200ec

    goto :goto_1

    .line 87
    :pswitch_1
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mIsLastActive:Z

    if-eqz v4, :cond_5

    .line 88
    const v2, 0x7f0200f2

    .line 90
    :goto_3
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mIsLastActive:Z

    if-eqz v4, :cond_6

    .line 91
    const v1, 0x7f0200ee

    goto :goto_1

    .line 89
    :cond_5
    const v2, 0x7f0200f3

    goto :goto_3

    .line 92
    :cond_6
    const v1, 0x7f0200ef

    goto :goto_1

    .line 108
    :cond_7
    const v0, 0x7f0c002a

    .restart local v0    # "resourceId":I
    goto :goto_2

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getSubscriptionId()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSubscriptionId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 59
    const v0, 0x7f0d0122

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardImageView:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSendButton:Landroid/widget/ImageButton;

    .line 61
    const v0, 0x7f0d0123

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardTextView:Landroid/widget/TextView;

    .line 57
    return-void
.end method

.method public resetButtonImage()V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mIsLastActive:Z

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mIsLastActive:Z

    .line 149
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->updateButtonImage()V

    .line 146
    :cond_0
    return-void
.end method

.method public setSimCardSlotNumber(I)V
    .locals 0
    .param p1, "simCardSlotNumber"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSimCardSlotNumber:I

    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->updateButtonImage()V

    .line 68
    return-void
.end method

.method public setSubscriptionId(I)V
    .locals 0
    .param p1, "subscriptionId"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSubscriptionId:I

    .line 120
    return-void
.end method

.method public updateButtonImage(I)V
    .locals 1
    .param p1, "lastSubscriptionId"    # I

    .prologue
    .line 139
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mSubscriptionId:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->mIsLastActive:Z

    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->updateButtonImage()V

    .line 138
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

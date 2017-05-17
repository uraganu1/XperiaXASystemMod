.class public Lcom/sonyericsson/conversations/ui/MessageContentAttachment;
.super Lcom/sonyericsson/conversations/ui/MessageItemView;
.source "MessageContentAttachment.java"


# instance fields
.field private mButtonAttachmentLayout:Landroid/widget/LinearLayout;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mSlideshowLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageItemView;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method private applyStackedBackplates(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "isSent"    # Z

    .prologue
    .line 176
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 177
    .local v0, "slide":Landroid/view/ViewGroup;
    const v2, 0x7f0d00cc

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 178
    .local v1, "text":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 179
    invoke-virtual {p0, v1, p2}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->setStackedBackplate(Landroid/view/View;Z)V

    .line 175
    :cond_0
    return-void
.end method

.method private applyStackedLastArrowBackplates(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "isSent"    # Z

    .prologue
    .line 184
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 185
    .local v0, "slide":Landroid/view/ViewGroup;
    const v2, 0x7f0d00cc

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 186
    .local v1, "text":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 187
    invoke-virtual {p0, v1, p2}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->setArrowBackplate(Landroid/view/View;Z)V

    .line 183
    :cond_0
    return-void
.end method

.method private clearContent()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    return-void
.end method

.method private isDuplicateContent(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "isDuplicate":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 76
    :cond_0
    return v0
.end method

.method private setBubbleBackgrounds(Z)V
    .locals 5
    .param p1, "isSent"    # Z

    .prologue
    .line 154
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 155
    .local v0, "buttons":I
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 156
    .local v3, "slides":I
    if-lez v0, :cond_0

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 159
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->applyStackedBackplates(IZ)V

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "i":I
    :cond_0
    if-lez v3, :cond_2

    .line 164
    add-int/lit8 v1, v3, -0x1

    .line 165
    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->isStacked()Z

    move-result v4

    if-nez v4, :cond_1

    .line 166
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->applyStackedLastArrowBackplates(IZ)V

    move v1, v2

    .line 169
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    :goto_1
    if-ltz v1, :cond_2

    .line 170
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->applyStackedBackplates(IZ)V

    .line 169
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 153
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->onFinishInflate()V

    .line 55
    const v0, 0x7f0d0102

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mSlideshowLayout:Landroid/widget/LinearLayout;

    .line 56
    const v0, 0x7f0d0103

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    .line 57
    const v0, 0x7f0d0101

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mErrorTextView:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method protected onSlideshowCreated(Z)V
    .locals 2
    .param p1, "result"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mErrorTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mErrorTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onViewProduced(Landroid/view/View;Lcom/android/mms/model/SlideModel;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "slide"    # Lcom/android/mms/model/SlideModel;

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mSlideshowLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    :cond_0
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 13
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    .local v0, "context":Landroid/content/Context;
    instance-of v9, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v9, :cond_0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    return-void

    .line 89
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->isDuplicateContent(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->wasPreviouslyStacked()Z

    move-result v9

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->isStacked()Z

    move-result v10

    if-eq v9, v10, :cond_0

    .line 94
    :cond_2
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 95
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 96
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->clearContent()V

    move-object v2, p1

    .line 97
    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 102
    .local v2, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :try_start_0
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 110
    .local v7, "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->createSlideshowSync(Lcom/sonyericsson/conversations/model/MmsMessage;)V

    .line 111
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v9

    if-eqz v9, :cond_4

    const v9, 0x800005

    :goto_0
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 112
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7, v9}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->createAttachmentViews(Lcom/android/mms/model/SlideshowModel;Landroid/view/ViewGroup;)V

    .line 114
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, "subject":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-lez v9, :cond_5

    .line 119
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mSlideshowLayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 129
    .local v6, "slide":Landroid/view/View;
    :goto_1
    const v9, 0x7f0d00cd

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 130
    .local v3, "mmsSubject":Landroid/widget/TextView;
    const v9, 0x7f0d00cc

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 131
    .local v5, "mmsTextContainer":Landroid/view/View;
    const v9, 0x7f0d00ce

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 132
    .local v4, "mmsText":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v9

    invoke-direct {p0, v9}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->setBubbleBackgrounds(Z)V

    .line 134
    if-eqz v3, :cond_3

    if-nez v5, :cond_7

    .line 136
    :cond_3
    return-void

    .line 103
    .end local v3    # "mmsSubject":Landroid/widget/TextView;
    .end local v4    # "mmsText":Landroid/widget/TextView;
    .end local v5    # "mmsTextContainer":Landroid/view/View;
    .end local v6    # "slide":Landroid/view/View;
    .end local v7    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    .end local v8    # "subject":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Lcom/google/android/mms/MmsException;
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->onSlideshowCreated(Z)V

    .line 106
    return-void

    .line 111
    .end local v1    # "e":Lcom/google/android/mms/MmsException;
    .restart local v7    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_4
    const v9, 0x800003

    goto :goto_0

    .line 120
    .restart local v8    # "subject":Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-lez v9, :cond_6

    .line 122
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "slide":Landroid/view/View;
    goto :goto_1

    .line 125
    .end local v6    # "slide":Landroid/view/View;
    :cond_6
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 126
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mSlideshowLayout:Landroid/widget/LinearLayout;

    .line 125
    const v11, 0x7f03003f

    .line 126
    const/4 v12, 0x1

    .line 125
    invoke-virtual {v9, v11, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "slide":Landroid/view/View;
    goto :goto_1

    .line 139
    .restart local v3    # "mmsSubject":Landroid/widget/TextView;
    .restart local v4    # "mmsText":Landroid/widget/TextView;
    .restart local v5    # "mmsTextContainer":Landroid/view/View;
    :cond_7
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->isOnlyText()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 141
    const v9, 0x7f0b00ea

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 144
    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 145
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isReceivedMessage()Z

    move-result v9

    invoke-static {v0, v3, v9}, Lcom/sonyericsson/conversations/ui/util/ViewUtils;->setThemedTextColor(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 150
    :cond_9
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;->mSlideshowLayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    return-void
.end method

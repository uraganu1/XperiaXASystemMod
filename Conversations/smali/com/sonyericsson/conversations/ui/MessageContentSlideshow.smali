.class public Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;
.super Lcom/sonyericsson/conversations/ui/MessageItemView;
.source "MessageContentSlideshow.java"


# instance fields
.field private mAttachmentContainer:Landroid/widget/LinearLayout;

.field private mBigAttachmentLayout:Landroid/widget/LinearLayout;

.field private mButtonAttachmentLayout:Landroid/widget/LinearLayout;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mSlideshowLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageItemView;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method private alignLayout(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mAttachmentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 230
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->setGravity(I)V

    .line 227
    return-void
.end method

.method private applyStackedBackplates(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "isSent"    # Z

    .prologue
    .line 197
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 198
    .local v0, "slide":Landroid/view/ViewGroup;
    const v2, 0x7f0d00cc

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 199
    .local v1, "text":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 200
    invoke-virtual {p0, v1, p2}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->setStackedBackplate(Landroid/view/View;Z)V

    .line 196
    :cond_0
    return-void
.end method

.method private applyStackedLastArrowBackplates(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "isSent"    # Z

    .prologue
    .line 205
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 206
    .local v0, "slide":Landroid/view/ViewGroup;
    const v2, 0x7f0d00cc

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 207
    .local v1, "text":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 208
    invoke-virtual {p0, v1, p2}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->setArrowBackplate(Landroid/view/View;Z)V

    .line 204
    :cond_0
    return-void
.end method

.method private clearContent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    return-void
.end method

.method private isDuplicateContent(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "isDuplicate":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 87
    :cond_0
    return v0
.end method

.method private setBubbleBackgrounds(Z)V
    .locals 6
    .param p1, "isSent"    # Z

    .prologue
    .line 160
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 161
    .local v0, "buttons":I
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 162
    .local v4, "texts":I
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 163
    .local v3, "images":I
    if-lez v0, :cond_1

    .line 164
    if-lez v4, :cond_0

    .line 165
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, p1}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->setStackedBackplate(Landroid/view/View;Z)V

    .line 168
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 169
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->applyStackedBackplates(IZ)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    :cond_1
    if-lez v4, :cond_3

    .line 173
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->isStacked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 174
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, p1}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->setArrowBackplate(Landroid/view/View;Z)V

    .line 179
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v3, :cond_5

    .line 180
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->applyStackedBackplates(IZ)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 176
    .end local v1    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, p1}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->setStackedBackplate(Landroid/view/View;Z)V

    goto :goto_1

    .line 182
    :cond_3
    if-lez v3, :cond_5

    .line 185
    add-int/lit8 v1, v3, -0x1

    .line 186
    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->isStacked()Z

    move-result v5

    if-nez v5, :cond_4

    .line 187
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->applyStackedLastArrowBackplates(IZ)V

    move v1, v2

    .line 190
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_4
    :goto_3
    if-ltz v1, :cond_5

    .line 191
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->applyStackedBackplates(IZ)V

    .line 190
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 159
    .end local v1    # "i":I
    :cond_5
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->onFinishInflate()V

    .line 59
    const v0, 0x7f0d0109

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    .line 60
    const v0, 0x7f0d0102

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    .line 61
    const v0, 0x7f0d0103

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    .line 62
    const v0, 0x7f0d0101

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mErrorTextView:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0d0108

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mAttachmentContainer:Landroid/widget/LinearLayout;

    .line 57
    return-void
.end method

.method protected onSlideshowCreated(Z)V
    .locals 2
    .param p1, "result"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mErrorTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mErrorTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onViewProduced(Landroid/view/View;Lcom/android/mms/model/SlideModel;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "slide"    # Lcom/android/mms/model/SlideModel;

    .prologue
    const/4 v1, 0x0

    .line 214
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 215
    :cond_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    :cond_3
    :goto_0
    return-void

    .line 221
    :cond_4
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 13
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 100
    .local v1, "context":Landroid/content/Context;
    instance-of v9, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v9, :cond_0

    if-nez v1, :cond_1

    .line 102
    :cond_0
    return-void

    .line 100
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->isDuplicateContent(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->wasPreviouslyStacked()Z

    move-result v9

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->isStacked()Z

    move-result v10

    if-eq v9, v10, :cond_0

    .line 105
    :cond_2
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 106
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 107
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->clearContent()V

    move-object v3, p1

    .line 108
    check-cast v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 109
    .local v3, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v9

    if-eqz v9, :cond_3

    const v9, 0x800005

    :goto_0
    invoke-direct {p0, v9}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->alignLayout(I)V

    .line 114
    :try_start_0
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 121
    .local v7, "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->createSlideshowSync(Lcom/sonyericsson/conversations/model/MmsMessage;)V

    .line 122
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "subject":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7, v9}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->createAttachmentViews(Lcom/android/mms/model/SlideshowModel;Landroid/view/ViewGroup;)V

    .line 126
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 128
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 129
    .local v0, "bigAttachmentCount":I
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-lez v9, :cond_4

    .line 131
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 143
    .local v6, "slide":Landroid/view/View;
    :goto_1
    if-nez v6, :cond_7

    .line 144
    return-void

    .line 109
    .end local v0    # "bigAttachmentCount":I
    .end local v6    # "slide":Landroid/view/View;
    .end local v7    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    .end local v8    # "subject":Ljava/lang/String;
    :cond_3
    const v9, 0x800003

    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Lcom/google/android/mms/MmsException;
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->onSlideshowCreated(Z)V

    .line 118
    return-void

    .line 132
    .end local v2    # "e":Lcom/google/android/mms/MmsException;
    .restart local v0    # "bigAttachmentCount":I
    .restart local v7    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    .restart local v8    # "subject":Ljava/lang/String;
    :cond_4
    if-lez v0, :cond_5

    .line 134
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "slide":Landroid/view/View;
    goto :goto_1

    .line 135
    .end local v6    # "slide":Landroid/view/View;
    :cond_5
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-lez v9, :cond_6

    .line 137
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "slide":Landroid/view/View;
    goto :goto_1

    .line 140
    .end local v6    # "slide":Landroid/view/View;
    :cond_6
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 141
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    .line 140
    const v11, 0x7f03003f

    .line 141
    const/4 v12, 0x1

    .line 140
    invoke-virtual {v9, v11, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "slide":Landroid/view/View;
    goto :goto_1

    .line 146
    :cond_7
    const v9, 0x7f0d00cd

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 147
    .local v4, "mmsSubject":Landroid/widget/TextView;
    const v9, 0x7f0d00cc

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 148
    .local v5, "mmsTextContainer":Landroid/view/View;
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    .line 149
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 151
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isReceivedMessage()Z

    move-result v9

    invoke-static {v1, v4, v9}, Lcom/sonyericsson/conversations/ui/util/ViewUtils;->setThemedTextColor(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 156
    .end local v0    # "bigAttachmentCount":I
    .end local v4    # "mmsSubject":Landroid/widget/TextView;
    .end local v5    # "mmsTextContainer":Landroid/view/View;
    .end local v6    # "slide":Landroid/view/View;
    :cond_8
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v9

    invoke-direct {p0, v9}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->setBubbleBackgrounds(Z)V

    .line 98
    return-void
.end method

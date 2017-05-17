.class public Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;
.super Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;
.source "MessageContentSlideshowBrief.java"


# instance fields
.field private mReadMoreButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected createSlideshow(Lcom/sonyericsson/conversations/model/MmsMessage;Lcom/sonyericsson/conversations/ui/OnViewProducedListener;)Z
    .locals 7
    .param p1, "mmsMessage"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .param p2, "onViewProducedListener"    # Lcom/sonyericsson/conversations/ui/OnViewProducedListener;

    .prologue
    const/4 v6, 0x0

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getBriefSlideshow()Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    .local v0, "briefSlideShow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 57
    .local v3, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 58
    .local v4, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->createSlideView(Lcom/android/mms/model/SlideModel;)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "briefSlideView":Landroid/view/View;
    invoke-interface {p2, v1, v4}, Lcom/sonyericsson/conversations/ui/OnViewProducedListener;->onViewProduced(Landroid/view/View;Lcom/android/mms/model/SlideModel;)V

    .line 61
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->hasMoreThanOneSlide()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mReadMoreButton:Landroid/widget/Button;

    if-nez v5, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->initReadMoreButton()V

    .line 65
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mReadMoreButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    :cond_1
    const/4 v5, 0x1

    return v5

    .line 52
    .end local v0    # "briefSlideShow":Lcom/android/mms/model/SlideshowModel;
    .end local v1    # "briefSlideView":Landroid/view/View;
    .end local v3    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    .end local v4    # "slide":Lcom/android/mms/model/SlideModel;
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e":Lcom/google/android/mms/MmsException;
    return v6
.end method

.method public initReadMoreButton()V
    .locals 8

    .prologue
    const v7, 0x10100a7

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 85
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 86
    .local v2, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 87
    :cond_0
    return-void

    .line 89
    :cond_1
    const v3, 0x7f0d010a

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mReadMoreButton:Landroid/widget/Button;

    .line 90
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mReadMoreButton:Landroid/widget/Button;

    new-instance v4, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 103
    .local v0, "buttonState":Landroid/graphics/drawable/StateListDrawable;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    new-array v3, v6, [I

    aput v7, v3, v5

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 105
    const v5, 0x7f020158

    .line 104
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 111
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mReadMoreButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-void

    .line 107
    :cond_2
    new-array v3, v6, [I

    aput v7, v3, v5

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 108
    const v5, 0x7f020157

    .line 107
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->setClickable(Z)V

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mReadMoreButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mReadMoreButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 72
    :cond_0
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 42
    return-void
.end method

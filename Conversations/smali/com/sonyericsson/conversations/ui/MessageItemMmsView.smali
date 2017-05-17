.class public Lcom/sonyericsson/conversations/ui/MessageItemMmsView;
.super Lcom/sonyericsson/conversations/ui/MessageItemView;
.source "MessageItemMmsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MessageItemMmsView$OnDraftShortClickListener;
    }
.end annotation


# instance fields
.field private mCommonSlideView:Landroid/widget/LinearLayout;

.field private mSlideView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageItemView;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method private createSlideShowFromDraft(Landroid/content/Context;Lcom/sonyericsson/conversations/draft/Draft;)Lcom/android/mms/model/SlideshowModel;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "draft"    # Lcom/sonyericsson/conversations/draft/Draft;

    .prologue
    const/4 v9, 0x0

    .line 132
    invoke-static {p1, v9}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v6

    .line 133
    .local v6, "ssm":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/draft/Draft;->getUris()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "uri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 134
    .local v7, "uri":Landroid/net/Uri;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, "mediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    invoke-static {p1, v7}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "mimeType":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isVideo(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 140
    new-instance v3, Lcom/android/mms/model/VideoModel;

    .line 141
    sget-object v9, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->NO_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    .line 140
    const/4 v10, 0x0

    invoke-direct {v3, p1, v7, v10, v9}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Lcom/android/mms/model/MediaModel$ContentRestrictionType;)V

    .line 152
    .local v3, "model":Lcom/android/mms/model/MediaModel;
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v4, Lcom/android/mms/model/SlideModel;

    const/4 v9, 0x0

    invoke-direct {v4, v9, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/List;)V

    .line 154
    .local v4, "slideModel":Lcom/android/mms/model/SlideModel;
    new-instance v9, Lcom/sonyericsson/conversations/ui/MessageItemMmsView$OnDraftShortClickListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView$OnDraftShortClickListener;-><init>(Lcom/sonyericsson/conversations/ui/MessageItemMmsView;Lcom/sonyericsson/conversations/ui/MessageItemMmsView$OnDraftShortClickListener;)V

    invoke-virtual {p0, v9}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->setOnShortClickListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;)V

    .line 155
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->createSlideView(Lcom/android/mms/model/SlideModel;)Landroid/view/View;

    move-result-object v5

    .line 156
    .local v5, "slideView":Landroid/view/View;
    invoke-virtual {p0, v5, v4}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->onViewProduced(Landroid/view/View;Lcom/android/mms/model/SlideModel;)V

    .line 157
    invoke-virtual {v6, v4}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    goto :goto_0

    .line 158
    .end local v3    # "model":Lcom/android/mms/model/MediaModel;
    .end local v4    # "slideModel":Lcom/android/mms/model/SlideModel;
    .end local v5    # "slideView":Landroid/view/View;
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/google/android/mms/MmsException;
    goto :goto_0

    .line 142
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :cond_0
    invoke-static {v2}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isImage(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 143
    new-instance v3, Lcom/android/mms/model/ImageModel;

    .line 144
    sget-object v9, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->NO_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    .line 143
    const/4 v10, 0x0

    invoke-direct {v3, p1, v7, v10, v9}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Lcom/android/mms/model/MediaModel$ContentRestrictionType;)V

    .restart local v3    # "model":Lcom/android/mms/model/MediaModel;
    goto :goto_1

    .line 145
    .end local v3    # "model":Lcom/android/mms/model/MediaModel;
    :cond_1
    invoke-static {v2}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isAudio(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 146
    new-instance v3, Lcom/android/mms/model/AudioModel;

    .line 147
    sget-object v9, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->NO_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    .line 146
    invoke-direct {v3, p1, v7, v9}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/MediaModel$ContentRestrictionType;)V

    .restart local v3    # "model":Lcom/android/mms/model/MediaModel;
    goto :goto_1

    .line 149
    .end local v3    # "model":Lcom/android/mms/model/MediaModel;
    :cond_2
    new-instance v3, Lcom/sonyericsson/conversations/model/AttachmentModel;

    .line 150
    sget-object v9, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->NO_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    .line 149
    invoke-direct {v3, p1, v7, v9}, Lcom/sonyericsson/conversations/model/AttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/MediaModel$ContentRestrictionType;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "model":Lcom/android/mms/model/MediaModel;
    goto :goto_1

    .line 165
    .end local v1    # "mediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "model":Lcom/android/mms/model/MediaModel;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_3
    return-object v6
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->onFinishInflate()V

    .line 65
    const v0, 0x7f0d00c2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->mCommonSlideView:Landroid/widget/LinearLayout;

    .line 66
    const v0, 0x7f0d00c3

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->mSlideView:Landroid/widget/LinearLayout;

    .line 63
    return-void
.end method

.method protected onSlideshowCreated(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "errorTextView":Landroid/widget/TextView;
    const v1, 0x7f0b00e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->mCommonSlideView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    .end local v0    # "errorTextView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public onViewProduced(Landroid/view/View;Lcom/android/mms/model/SlideModel;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "slide"    # Lcom/android/mms/model/SlideModel;

    .prologue
    .line 89
    const v4, 0x7f0d00cc

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 91
    .local v3, "textContainer":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 92
    const v4, 0x7f0d00ce

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    .local v0, "contextText":Landroid/widget/TextView;
    const v4, 0x7f0d00cd

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 94
    .local v2, "subjectText":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Message;->isReceivedMessage()Z

    move-result v1

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/sonyericsson/conversations/ui/util/ViewUtils;->setThemedTextColor(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lcom/sonyericsson/conversations/ui/util/ViewUtils;->setThemedTextColor(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 97
    if-eqz v1, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->setStackedBackplate(Landroid/view/View;Z)V

    .line 99
    .end local v0    # "contextText":Landroid/widget/TextView;
    .end local v2    # "subjectText":Landroid/widget/TextView;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->mSlideView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    return-void

    .line 94
    .restart local v0    # "contextText":Landroid/widget/TextView;
    .restart local v2    # "subjectText":Landroid/widget/TextView;
    :cond_1
    const/4 v1, 0x1

    .local v1, "isReceived":Z
    goto :goto_0

    .line 97
    .end local v1    # "isReceived":Z
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public setDraft(Lcom/sonyericsson/conversations/draft/Draft;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 3
    .param p1, "draft"    # Lcom/sonyericsson/conversations/draft/Draft;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 124
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->createSlideShowFromDraft(Landroid/content/Context;Lcom/sonyericsson/conversations/draft/Draft;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 127
    .local v1, "ssm":Lcom/android/mms/model/SlideshowModel;
    const v2, 0x7f0d00c4

    .line 126
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 128
    .local v0, "attachmentList":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->createAttachmentViews(Lcom/android/mms/model/SlideshowModel;Landroid/view/ViewGroup;)V

    .line 123
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 4
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 72
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 74
    instance-of v3, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 75
    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 76
    .local v2, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->createSlideshowSync(Lcom/sonyericsson/conversations/model/MmsMessage;)V

    .line 78
    const v3, 0x7f0d00c4

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 80
    .local v0, "attachmentList":Landroid/widget/LinearLayout;
    :try_start_0
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->createAttachmentViews(Lcom/android/mms/model/SlideshowModel;Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "attachmentList":Landroid/widget/LinearLayout;
    .end local v2    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v0    # "attachmentList":Landroid/widget/LinearLayout;
    .restart local v2    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/google/android/mms/MmsException;
    goto :goto_0
.end method

.method protected setSlideViewGravity(Landroid/widget/LinearLayout;Z)V
    .locals 1
    .param p1, "slideView"    # Landroid/widget/LinearLayout;
    .param p2, "isSent"    # Z

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->setSlideViewGravity(Landroid/widget/LinearLayout;Z)V

    .line 113
    return-void
.end method

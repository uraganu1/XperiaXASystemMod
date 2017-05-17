.class public Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageReceived;
.super Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;
.source "ContentVisualFileMessageReceived.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable;
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 4
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 36
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageReceived;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getSlideshowModel()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 37
    .local v0, "slideModel":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v1

    .line 39
    .local v1, "videoModel":Lcom/android/mms/model/VideoModel;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageReceived;->decorateVideoPlayButton(Lcom/android/mms/model/VideoModel;)V

    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageReceived;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->populateVideoThumbnail(Lcom/android/mms/model/VideoModel;Landroid/widget/ImageView;)V

    .line 34
    .end local v1    # "videoModel":Lcom/android/mms/model/VideoModel;
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageReceived;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageReceived;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->decorateThumbnail(Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

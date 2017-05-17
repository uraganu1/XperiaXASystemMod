.class public abstract Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;
.super Landroid/widget/RelativeLayout;
.source "ContentVisualFileMessage.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageContent;
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mFileMessageActionButton:Landroid/widget/ImageButton;

.field private mImageView:Landroid/widget/ImageView;

.field private mImageViewContainer:Landroid/widget/FrameLayout;

.field protected mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

.field private mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method


# virtual methods
.method protected decorateVideoPlayButton(Lcom/android/mms/model/VideoModel;)V
    .locals 4
    .param p1, "videoModel"    # Lcom/android/mms/model/VideoModel;

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 130
    .local v1, "videoUri":Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "contentType":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mFileMessageActionButton:Landroid/widget/ImageButton;

    const v3, 0x7f02012c

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 132
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mFileMessageActionButton:Landroid/widget/ImageButton;

    const v3, 0x7f0d00c5

    invoke-virtual {v2, v3, v1}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    .line 133
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mFileMessageActionButton:Landroid/widget/ImageButton;

    const v3, 0x7f0d00c7

    invoke-virtual {v2, v3, v0}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    .line 134
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mFileMessageActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mFileMessageActionButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 128
    return-void
.end method

.method protected getFileMessageActionButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mFileMessageActionButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    iget-object v5, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mImageView:Landroid/widget/ImageView;

    const v6, 0x7f0d00c5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 106
    .local v3, "tagUri":Ljava/lang/Object;
    instance-of v5, v3, Landroid/net/Uri;

    if-eqz v5, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/net/Uri;

    .line 108
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mImageView:Landroid/widget/ImageView;

    const v6, 0x7f0d00c7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 109
    .local v2, "tagMimeType":Ljava/lang/Object;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    if-eqz v5, :cond_0

    .line 112
    iget-object v5, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    invoke-interface {v5, p1, v4, v1}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v2    # "tagMimeType":Ljava/lang/Object;
    .end local v3    # "tagUri":Ljava/lang/Object;
    :cond_0
    :goto_2
    return-void

    .line 106
    .restart local v3    # "tagUri":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    .local v4, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 109
    .end local v4    # "uri":Landroid/net/Uri;
    .restart local v2    # "tagMimeType":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    .local v1, "mimeType":Ljava/lang/String;
    goto :goto_1

    .line 114
    .end local v1    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v5, "Cannot view protected file for uri "

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 62
    const v0, 0x7f0d002b

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mImageView:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f0d002a

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mImageViewContainer:Landroid/widget/FrameLayout;

    .line 64
    const v0, 0x7f0d002c

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mFileMessageActionButton:Landroid/widget/ImageButton;

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/security/InvalidParameterException;

    .line 67
    const-string/jumbo v1, "Layout provided must include layout file_transfer_thumbnail.xml"

    .line 66
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 73
    check-cast p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 74
    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-eq v0, v1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    const-string/jumbo v2, " don\'t support IM message type "

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    const-string/jumbo v2, ". msg \'"

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    const-string/jumbo v2, "\'"

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mFileMessageActionButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mImageViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mImageViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 72
    return-void
.end method

.method public setOnObjectLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 88
    return-void
.end method

.method public setOnShortClickListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .line 97
    return-void
.end method

.method public setOnTextLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 93
    return-void
.end method

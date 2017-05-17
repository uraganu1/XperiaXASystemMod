.class public Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;
.super Landroid/widget/LinearLayout;
.source "ContentFileMessage.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageContent;
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sonyericsson/conversations/ui/StyleableBubbleContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage$1;
    }
.end annotation


# instance fields
.field protected mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mFileIconView:Landroid/widget/ImageView;

.field private mFileNameTextView:Landroid/widget/TextView;

.field private mFileSizeTextView:Landroid/widget/TextView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field protected mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

.field private mLastX:F

.field private mLastY:F

.field private mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;F)F
    .locals 0

    iput p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mLastX:F

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;F)F
    .locals 0

    iput p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mLastY:F

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage$1;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;)V

    .line 49
    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage$1;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;)V

    .line 49
    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage$1;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;)V

    .line 49
    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 77
    return-void
.end method


# virtual methods
.method public getLastX()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mLastX:F

    return v0
.end method

.method public getLastY()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mLastY:F

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0d00c7

    const v4, 0x7f0d00c5

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 132
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 134
    :goto_0
    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 135
    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    invoke-interface {v3, p1, v2, v1}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_2
    return-void

    .line 132
    :cond_1
    const/4 v2, 0x0

    .local v2, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 135
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    .local v1, "mimeType":Ljava/lang/String;
    goto :goto_1

    .line 140
    .end local v1    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "Cannot view protected file for uri "

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 84
    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mFileIconView:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f0d0025

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mFileNameTextView:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mFileSizeTextView:Landroid/widget/TextView;

    .line 87
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 87
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mGestureDetector:Landroid/view/GestureDetector;

    .line 82
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 94
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 5
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 108
    check-cast p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 109
    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 111
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mFileNameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mFileSizeTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mFileIconView:Landroid/widget/ImageView;

    .line 110
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->decorateMetaData(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 107
    return-void
.end method

.method public setOnObjectLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 115
    return-void
.end method

.method public setOnShortClickListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .line 123
    return-void
.end method

.method public setOnTextLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 119
    return-void
.end method

.method public setStyle(I)V
    .locals 2
    .param p1, "styleResId"    # I

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/ui/util/BubbleStyle;->from(Landroid/content/Context;I)Lcom/sonyericsson/conversations/ui/util/BubbleStyle;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mFileNameTextView:Landroid/widget/TextView;

    .line 99
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/BubbleStyle;->applyForFileTransferRow1Text(Landroid/widget/TextView;)Lcom/sonyericsson/conversations/ui/util/BubbleStyle;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mFileSizeTextView:Landroid/widget/TextView;

    .line 99
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/BubbleStyle;->applyForFileTransferRow1Text(Landroid/widget/TextView;)Lcom/sonyericsson/conversations/ui/util/BubbleStyle;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->mFileIconView:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/BubbleStyle;->applyTintForAttachmentIcon(Landroid/widget/ImageView;)Lcom/sonyericsson/conversations/ui/util/BubbleStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/BubbleStyle;->finish()V

    .line 98
    return-void
.end method

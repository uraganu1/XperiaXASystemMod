.class public Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;
.super Landroid/widget/RelativeLayout;
.source "MessageContentMmsNotification.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageContent;
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable;
.implements Lcom/sonyericsson/conversations/ui/MessageActionsDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification$GestureListener;
    }
.end annotation


# instance fields
.field private mDefaultActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field private mFileInfoTextView:Landroid/widget/TextView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mOnCreateContextListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mDefaultActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 58
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification$GestureListener;-><init>(Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification$GestureListener;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mGestureDetector:Landroid/view/GestureDetector;

    .line 59
    const v0, 0x7f0d0104

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mHeaderTextView:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0d0105

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mFileInfoTextView:Landroid/widget/TextView;

    .line 61
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 56
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 8
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    const/4 v7, 0x1

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 79
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    .local v0, "context":Landroid/content/Context;
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 81
    :cond_0
    return-void

    .line 80
    :cond_1
    if-eqz v0, :cond_0

    instance-of v4, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v4, :cond_0

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 86
    const v5, 0x7f0b006c

    .line 85
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 87
    const-string/jumbo v5, " "

    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    check-cast p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSizeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 92
    const v6, 0x7f0b02b8

    .line 91
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 94
    .local v1, "isDownloading":Z
    if-eqz v1, :cond_2

    .line 95
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 96
    const v6, 0x7f0b006e

    .line 95
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 98
    const v5, 0x7f0b006f

    .line 97
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mFileInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {v0, v4, v7}, Lcom/sonyericsson/conversations/ui/util/ViewUtils;->setThemedTextColor(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 109
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mFileInfoTextView:Landroid/widget/TextView;

    invoke-static {v0, v4, v7}, Lcom/sonyericsson/conversations/ui/util/ViewUtils;->setThemedTextColor(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 112
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mOnCreateContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 77
    return-void

    .line 100
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 101
    const v6, 0x7f0b00e7

    .line 100
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 104
    const v5, 0x7f0b006d

    .line 103
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setMessageActionsController(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V
    .locals 0
    .param p1, "controller"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mDefaultActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 131
    :cond_0
    return-void
.end method

.method public setOnObjectLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 116
    return-void
.end method

.method public setOnShortClickListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .line 126
    return-void
.end method

.method public setOnTextLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->mOnCreateContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 121
    return-void
.end method

.class public Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;
.super Landroid/widget/LinearLayout;
.source "MessageContentTextSimple.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageContent;
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable;
.implements Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$GestureListener;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLastX:F

.field private mLastY:F

.field private mOnActionBarShownListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;

.field private mOnCreateContextListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

.field private mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;F)F
    .locals 0

    iput p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mLastX:F

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;F)F
    .locals 0

    iput p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mLastY:F

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method private addDirectionalTextPadding(Landroid/view/View;Z)V
    .locals 6
    .param p1, "container"    # Landroid/view/View;
    .param p2, "isSent"    # Z

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 116
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x7f0c0035

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 117
    .local v0, "backPlatePadding":I
    const v4, 0x7f0c0037

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 118
    .local v2, "textPadding":I
    const v4, 0x7f0c0036

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 119
    .local v3, "textTopPadding":I
    if-eqz p2, :cond_0

    move v5, v2

    .line 120
    :goto_0
    if-eqz p2, :cond_1

    add-int v4, v2, v0

    .line 119
    :goto_1
    invoke-virtual {p1, v5, v3, v4, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 114
    return-void

    .line 119
    :cond_0
    add-int v4, v2, v0

    move v5, v4

    goto :goto_0

    :cond_1
    move v4, v2

    .line 120
    goto :goto_1
.end method


# virtual methods
.method public getLastX()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mLastX:F

    return v0
.end method

.method public getLastY()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mLastY:F

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 62
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$GestureListener;-><init>(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$GestureListener;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mGestureDetector:Landroid/view/GestureDetector;

    .line 63
    const v0, 0x7f0d010d

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    .line 60
    return-void
.end method

.method public onLinkClicked(Landroid/widget/TextView;Landroid/net/Uri;)V
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 141
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    invoke-interface {v0, p1, p2, v1}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method public setHighlightPattern(Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "highlightPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 67
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 8
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    const v6, 0x7f090005

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 74
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, "context":Landroid/content/Context;
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 76
    :cond_0
    return-void

    .line 75
    :cond_1
    if-eqz v0, :cond_0

    .line 78
    instance-of v4, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v4, :cond_3

    .line 80
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    const v5, 0x7f0b00e7

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setText(I)V

    .line 81
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    const v5, 0x7f090006

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setTextAppearance(I)V

    .line 82
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mOnCreateContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 95
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isReceivedMessage()Z

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/sonyericsson/conversations/ui/util/ViewUtils;->setThemedTextColor(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 96
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    new-instance v5, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$1;

    invoke-direct {v5, p0}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    new-instance v5, Lcom/sonyericsson/conversations/ui/CopyTextCallBack;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 110
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mOnActionBarShownListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;

    .line 109
    invoke-direct {v5, v6, v7}, Lcom/sonyericsson/conversations/ui/CopyTextCallBack;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 111
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->addDirectionalTextPadding(Landroid/view/View;Z)V

    .line 72
    return-void

    .line 83
    :cond_3
    instance-of v4, p1, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v4, :cond_4

    move-object v3, p1

    .line 84
    check-cast v3, Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 86
    .local v3, "sms":Lcom/sonyericsson/conversations/model/SmsMessage;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mOnCreateContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 87
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    iget-object v5, v3, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    invoke-virtual {v4, v5, p0}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->linkify(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V

    .line 88
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v4, v6}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setTextAppearance(I)V

    goto :goto_0

    .line 89
    .end local v3    # "sms":Lcom/sonyericsson/conversations/model/SmsMessage;
    :cond_4
    instance-of v4, p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-ne v4, v5, :cond_2

    move-object v1, p1

    .line 90
    check-cast v1, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 91
    .local v1, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mOnCreateContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 92
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->linkify(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V

    .line 93
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v4, v6}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setTextAppearance(I)V

    goto :goto_0
.end method

.method public setOnObjectLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 124
    return-void
.end method

.method public setOnShortClickListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .line 134
    return-void
.end method

.method public setOnTextLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mOnCreateContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 129
    return-void
.end method

.method public setOnTextSelectedListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mOnActionBarShownListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;

    .line 174
    return-void
.end method

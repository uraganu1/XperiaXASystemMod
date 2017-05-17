.class public Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;
.super Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;
.source "LocalTextInputInfoBoxHandler.java"


# instance fields
.field private final isMultiSimActive:Z

.field private final mBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final mMessageIndicator:Landroid/widget/TextView;

.field private final mMessageTypeInfoView:Landroid/widget/TextView;

.field private final mResizeInfoImageView:Landroid/widget/ImageView;

.field private final mResizeInfoTextView:Landroid/widget/TextView;

.field private final mResizeInfoView:Landroid/view/View;

.field private final mTypingInfoView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->isMultiSimActive:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mMessageIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mMessageTypeInfoView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mResizeInfoImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mResizeInfoTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mResizeInfoView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mTypingInfoView:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;Landroid/os/Handler;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p3, "textInput"    # Landroid/widget/TextView;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "typingInfoView"    # Landroid/widget/TextView;
    .param p6, "messageTypeInfoView"    # Landroid/widget/TextView;
    .param p7, "messageIndicator"    # Landroid/widget/TextView;
    .param p8, "resizeInfoView"    # Landroid/view/View;
    .param p9, "resizeProgressTextView"    # Landroid/widget/TextView;
    .param p10, "resizeThumbnailView"    # Landroid/widget/ImageView;
    .param p11, "badge"    # Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 64
    iput-object p6, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mMessageTypeInfoView:Landroid/widget/TextView;

    .line 65
    iput-object p7, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mMessageIndicator:Landroid/widget/TextView;

    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "iw-IL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mMessageIndicator:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 69
    :cond_0
    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mTypingInfoView:Landroid/widget/TextView;

    .line 70
    iput-object p8, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mResizeInfoView:Landroid/view/View;

    .line 71
    iput-object p9, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mResizeInfoTextView:Landroid/widget/TextView;

    .line 72
    iput-object p10, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mResizeInfoImageView:Landroid/widget/ImageView;

    .line 73
    iput-object p11, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 75
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->isMultiSimActive:Z

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    .line 77
    const-string/jumbo v1, "input_method"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 62
    return-void
.end method


# virtual methods
.method protected forceRefreshInfoBoxes()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 192
    return-void
.end method

.method protected updateTextInputInfoBoxes(Z)V
    .locals 2
    .param p1, "initialUpdate"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;-><init>(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

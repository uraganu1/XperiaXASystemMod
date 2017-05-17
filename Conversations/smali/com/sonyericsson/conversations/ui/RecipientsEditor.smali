.class public Lcom/sonyericsson/conversations/ui/RecipientsEditor;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "RecipientsEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;,
        Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;,
        Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;,
        Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;,
        Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;,
        Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;,
        Lcom/sonyericsson/conversations/ui/RecipientsEditor$3;,
        Lcom/sonyericsson/conversations/ui/RecipientsEditor$4;
    }
.end annotation


# static fields
.field private static final SPANOBJECT:Ljava/lang/Object;


# instance fields
.field private mActionOrientationChanged:Ljava/lang/Runnable;

.field private mAffectedImage:[Landroid/text/style/ImageSpan;

.field mCouldNotAddToast:Ljava/lang/Runnable;

.field private mCurrentOrientation:I

.field private final mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsImeActionNext:Z

.field private mLastSeparator:C

.field private mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

.field private mMaxRecipientCount:I

.field private mParticipantChanged:Z

.field private mSelectionEnd:I

.field private final mShowSoftKeyBoardRunnable:Ljava/lang/Runnable;

.field private final mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;

.field private final mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

.field mUnfocusedCurrentRecipient:Ljava/lang/CharSequence;

.field private mValidContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWatcher:Landroid/text/TextWatcher;

.field private mWatcherRegistered:Z


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->SPANOBJECT:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsImeActionNext:Z

    return v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)C
    .locals 1

    iget-char v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mLastSeparator:C

    return v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mMaxRecipientCount:I

    return v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientBubble;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/RecipientsEditor;[Landroid/text/style/ImageSpan;)[Landroid/text/style/ImageSpan;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedImage:[Landroid/text/style/ImageSpan;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsImeActionNext:Z

    return p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)C
    .locals 0

    iput-char p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mLastSeparator:C

    return p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mParticipantChanged:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->deleteCommaAndImageSpan(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->endsWithNewLine()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/util/List;Z)V
    .locals 0
    .param p1, "newParticipants"    # Ljava/util/List;
    .param p2, "forceGiveAwayFocus"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->participiantToEditorUI(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "recipient"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->popCurrentRecipient(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeTextListener()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->updateText(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->firstRecipientIsContact()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/lang/String;)Z
    .locals 1
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isImContact(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isSeparator(C)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/text/Spanned;IILandroid/content/Context;)I
    .locals 1
    .param p0, "sp"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->stashCurrentRecipient()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/sonyericsson/conversations/ui/RecipientsEditor;[Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)V
    .locals 0
    .param p1, "recipients"    # [Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addRecipients([Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextListener()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->couldNotAddMoreRecipientsToast()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->SPANOBJECT:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 508
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mLastSeparator:C

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mHandler:Landroid/os/Handler;

    .line 132
    iput v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mMaxRecipientCount:I

    .line 138
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mParticipantChanged:Z

    .line 140
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsImeActionNext:Z

    .line 147
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    .line 156
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mUnfocusedCurrentRecipient:Ljava/lang/CharSequence;

    .line 158
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mCouldNotAddToast:Ljava/lang/Runnable;

    .line 292
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcherRegistered:Z

    .line 294
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcher:Landroid/text/TextWatcher;

    .line 472
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSelectionEnd:I

    .line 474
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$3;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mActionOrientationChanged:Ljava/lang/Runnable;

    .line 491
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$4;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mShowSoftKeyBoardRunnable:Ljava/lang/Runnable;

    .line 509
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientBubble;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/RecipientBubble;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    .line 512
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 513
    const-string/jumbo v1, "input_method"

    .line 512
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 515
    new-array v0, v2, [Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setFilters([Landroid/text/InputFilter;)V

    .line 516
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-direct {v0, p0, p1, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Landroid/content/Context;Landroid/widget/MultiAutoCompleteTextView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 519
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 547
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setSingleLine(Z)V

    .line 548
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 549
    const v1, 0x7f0a0027

    .line 548
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setMaxLines(I)V

    .line 551
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mCurrentOrientation:I

    .line 561
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextListener()V

    .line 507
    return-void
.end method

.method private varargs addRecipients([Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)V
    .locals 10
    .param p1, "recipients"    # [Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .prologue
    const/4 v5, 0x0

    .line 945
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 946
    :cond_0
    return-void

    .line 949
    :cond_1
    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcherRegistered:Z

    .line 950
    .local v3, "toggleListener":Z
    if-eqz v3, :cond_2

    .line 951
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeTextListener()V

    .line 953
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->stashCurrentRecipient()Ljava/lang/CharSequence;

    move-result-object v0

    .line 955
    .local v0, "curr":Ljava/lang/CharSequence;
    array-length v6, p1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_5

    aget-object v1, p1, v4

    .line 956
    .local v1, "recipient":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get1(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get2(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 957
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->checkIfNumberAlreadyExistOrInvalid(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 955
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 961
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getAllRecipientCount()I

    move-result v7

    iget v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mMaxRecipientCount:I

    if-lt v7, v8, :cond_7

    .line 962
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->couldNotAddMoreRecipientsToast()V

    .line 977
    .end local v1    # "recipient":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_5
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->popCurrentRecipient(Ljava/lang/CharSequence;)V

    .line 978
    if-eqz v3, :cond_6

    .line 979
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextListener()V

    .line 981
    :cond_6
    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->reportRecipientsChange(Z)V

    .line 944
    return-void

    .line 966
    .restart local v1    # "recipient":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_7
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mParticipantChanged:Z

    .line 967
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 968
    .local v2, "sb":Landroid/text/SpannableStringBuilder;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get1(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get2(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get0(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-direct {p0, v7, v8, v9}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->participantToSpan(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 969
    const/16 v7, 0x2c

    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 970
    const/16 v7, 0x200b

    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 971
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 973
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private addTextListener()V
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcherRegistered:Z

    if-eqz v0, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1021
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcherRegistered:Z

    goto :goto_0
.end method

.method private checkIfNumberAlreadyExistOrInvalid(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Z
    .locals 7
    .param p1, "recipient"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .prologue
    const/4 v6, 0x1

    .line 992
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get2(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v4

    .line 993
    .local v4, "recipientNumber":Ljava/lang/String;
    invoke-static {v4}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 994
    const-string/jumbo v5, "Invalid recipient number"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 995
    return v6

    .line 998
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 999
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;>;"
    invoke-static {v4}, Lcom/sonyericsson/conversations/util/AddressUtil;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    .line 1000
    .local v0, "isEmail":Z
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1001
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 1002
    .local v2, "listItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get2(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v3

    .line 1003
    .local v3, "number":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    :goto_0
    if-eqz v5, :cond_1

    .line 1005
    return v6

    .line 1004
    :cond_2
    invoke-static {v4, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 1008
    .end local v2    # "listItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .end local v3    # "number":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    return v5
.end method

.method private convertRecipient(Landroid/util/Pair;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "conversionItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;>;"
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 632
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 633
    .local v4, "text":Ljava/lang/String;
    iget-object v5, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 634
    .local v5, "toReplace":Ljava/lang/String;
    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 637
    .local v3, "target":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    const/4 v1, -0x1

    .line 638
    .local v1, "begin":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 641
    .local v2, "len":I
    :cond_0
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 643
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v7

    add-int v8, v1, v2

    const-class v9, Landroid/text/Annotation;

    invoke-interface {v7, v1, v8, v9}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 644
    .local v0, "annotations":[Landroid/text/Annotation;
    if-eq v1, v10, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 645
    array-length v7, v0

    if-nez v7, :cond_0

    .line 647
    :cond_1
    if-eq v1, v10, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v1, v7, :cond_3

    .line 652
    :cond_2
    return-void

    .line 647
    :cond_3
    add-int v7, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_2

    .line 655
    iget-boolean v6, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcherRegistered:Z

    .line 656
    .local v6, "toogleListener":Z
    if-eqz v6, :cond_4

    .line 657
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeTextListener()V

    .line 659
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v7

    add-int v8, v1, v2

    invoke-interface {v7, v1, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 660
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    aput-object v3, v7, v11

    invoke-direct {p0, v7}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addRecipients([Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)V

    .line 661
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->hasFocus()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->updateText(Z)V

    .line 662
    if-eqz v6, :cond_5

    .line 663
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextListener()V

    .line 631
    :cond_5
    return-void
.end method

.method private couldNotAddMoreRecipientsToast()V
    .locals 4

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mCouldNotAddToast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1390
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mCouldNotAddToast:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1387
    return-void
.end method

.method private deleteCommaAndImageSpan(Ljava/lang/CharSequence;)Z
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 724
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedImage:[Landroid/text/style/ImageSpan;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedImage:[Landroid/text/style/ImageSpan;

    array-length v3, v3

    if-lez v3, :cond_2

    move-object v3, p1

    .line 725
    check-cast v3, Landroid/text/Spanned;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedImage:[Landroid/text/style/ImageSpan;

    aget-object v4, v4, v5

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .local v2, "start":I
    move-object v3, p1

    .line 726
    check-cast v3, Landroid/text/Spanned;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedImage:[Landroid/text/style/ImageSpan;

    aget-object v4, v4, v5

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 727
    .local v1, "end":I
    if-eq v2, v6, :cond_0

    if-eq v1, v6, :cond_0

    .line 729
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1

    move-object v3, p1

    .line 730
    check-cast v3, Landroid/text/Editable;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v2, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 735
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->deleteUselsessComma(Ljava/lang/CharSequence;)V

    .line 737
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeTextListener()V

    .line 738
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->stashCurrentRecipient()Ljava/lang/CharSequence;

    move-result-object v0

    .line 739
    .local v0, "curr":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 740
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNameAndNumbers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 741
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->popCurrentRecipient(Ljava/lang/CharSequence;)V

    .line 742
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextListener()V

    .line 743
    const/4 v3, 0x1

    return v3

    .end local v0    # "curr":Ljava/lang/CharSequence;
    :cond_1
    move-object v3, p1

    .line 732
    check-cast v3, Landroid/text/Editable;

    invoke-interface {v3, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 745
    .end local v1    # "end":I
    .end local v2    # "start":I
    :cond_2
    return v5
.end method

.method private deleteUselsessComma(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getSelectionEnd()I

    move-result v1

    .line 715
    .local v1, "select":I
    if-ltz v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 716
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 717
    .local v0, "a":C
    const/16 v2, 0x2c

    if-ne v0, v2, :cond_0

    .line 718
    check-cast p1, Landroid/text/Editable;

    .end local p1    # "s":Ljava/lang/CharSequence;
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 713
    .end local v0    # "a":C
    :cond_0
    return-void
.end method

.method private endsWithNewLine()Z
    .locals 2

    .prologue
    .line 1639
    iget-char v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mLastSeparator:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private firstRecipientIsContact()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 460
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 461
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 462
    .local v2, "si":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get2(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidAddress(Ljava/lang/String;)Z

    move-result v0

    .line 463
    .local v0, "hasValidNumber":Z
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get1(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get2(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    .line 466
    .local v1, "nameIsNotNumber":Z
    :goto_0
    if-eqz v0, :cond_1

    .end local v1    # "nameIsNotNumber":Z
    :goto_1
    return v1

    .line 463
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "nameIsNotNumber":Z
    goto :goto_0

    :cond_1
    move v1, v3

    .line 466
    goto :goto_1

    .line 468
    .end local v0    # "hasValidNumber":Z
    .end local v1    # "nameIsNotNumber":Z
    .end local v2    # "si":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_2
    return v3
.end method

.method private getCurrentRecipient()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1095
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1096
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeTextListener()V

    .line 1097
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->stashCurrentRecipient()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1098
    .local v0, "current":Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->popCurrentRecipient(Ljava/lang/CharSequence;)V

    .line 1099
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextListener()V

    .line 1100
    return-object v0

    .line 1102
    .end local v0    # "current":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mUnfocusedCurrentRecipient:Ljava/lang/CharSequence;

    return-object v1
.end method

.method private static getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I
    .locals 3
    .param p0, "sp"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1401
    const-class v1, Landroid/text/Annotation;

    invoke-interface {p0, p1, p2, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 1402
    .local v0, "a":[Landroid/text/Annotation;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 1403
    aget-object v1, v0, v2

    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 1405
    :cond_0
    return v2
.end method

.method private isImContact(Ljava/lang/String;)Z
    .locals 2
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    .line 1348
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImContactApi()Lcom/sonymobile/jms/contact/ImContactApi;

    move-result-object v0

    .line 1349
    .local v0, "contactApi":Lcom/sonymobile/jms/contact/ImContactApi;
    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->isValidUriOrNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1350
    invoke-interface {v0, p1}, Lcom/sonymobile/jms/contact/ImContactApi;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/jms/contact/ImContactApi;->isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v1

    .line 1349
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSeparator(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 1354
    const/16 v1, 0x2c

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3b

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const v1, 0xff0c

    if-eq p1, v1, :cond_0

    .line 1355
    const v1, 0xff1b

    .line 1354
    if-eq p1, v1, :cond_0

    .line 1355
    const/16 v1, 0x200b

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private participantToSpan(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "isImContact"    # Z

    .prologue
    .line 1278
    if-nez p2, :cond_0

    .line 1279
    const-string/jumbo v0, ""

    return-object v0

    .line 1282
    :cond_0
    if-nez p1, :cond_1

    .line 1283
    const-string/jumbo p1, ""

    .line 1288
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/sonyericsson/conversations/ui/RecipientBubble;->buildRecipientBubble(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1285
    :cond_1
    const-string/jumbo v0, ", "

    const-string/jumbo v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private participiantToEditorUI(Ljava/util/List;Z)V
    .locals 3
    .param p2, "forceGiveAwayFocus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "newParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;>;"
    const/4 v2, 0x1

    .line 1368
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeTextListener()V

    .line 1369
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->stashCurrentRecipient()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1371
    .local v0, "curr":Ljava/lang/CharSequence;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addRecipients([Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)V

    .line 1372
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->hasFocus()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->updateText(Z)V

    .line 1374
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setSelection(I)V

    .line 1375
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->popCurrentRecipient(Ljava/lang/CharSequence;)V

    .line 1378
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextListener()V

    .line 1380
    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->firstRecipientIsContact()Z

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->reportRecipientsChange(Z)V

    .line 1382
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 1383
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1366
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 1380
    goto :goto_0
.end method

.method private popCurrentRecipient(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "recipient"    # Ljava/lang/CharSequence;

    .prologue
    .line 1072
    if-nez p1, :cond_0

    .line 1073
    return-void

    .line 1076
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1081
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1071
    return-void

    .line 1078
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-interface {v1, v2}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 1079
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    const/16 v2, 0x200b

    invoke-interface {v1, v2}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    goto :goto_0
.end method

.method private removeTextListener()V
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcherRegistered:Z

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1014
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcherRegistered:Z

    .line 1011
    :cond_0
    return-void
.end method

.method private stashCurrentRecipient()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1043
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 1045
    .local v4, "text":Landroid/text/Editable;
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 1046
    return-object v7

    .line 1049
    :cond_0
    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2037

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 1051
    .local v1, "lastsecond":I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v5

    const-class v6, Landroid/text/Annotation;

    invoke-interface {v4, v1, v5, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/Annotation;

    array-length v5, v5

    if-lez v5, :cond_2

    const/4 v0, 0x1

    .line 1052
    .local v0, "annotated":Z
    :goto_0
    if-nez v0, :cond_4

    .line 1053
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v4, v1, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1054
    .local v2, "recip":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 1055
    :cond_1
    return-object v7

    .line 1051
    .end local v0    # "annotated":Z
    .end local v2    # "recip":Ljava/lang/CharSequence;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "annotated":Z
    goto :goto_0

    .line 1057
    .restart local v2    # "recip":Ljava/lang/CharSequence;
    :cond_3
    move-object v3, v2

    .line 1058
    .local v3, "stashed":Ljava/lang/CharSequence;
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v4, v1, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1059
    return-object v3

    .line 1061
    .end local v2    # "recip":Ljava/lang/CharSequence;
    .end local v3    # "stashed":Ljava/lang/CharSequence;
    :cond_4
    return-object v7
.end method

.method private updateText(Z)V
    .locals 24
    .param p1, "hasFocus"    # Z

    .prologue
    .line 821
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeTextListener()V

    .line 823
    if-eqz p1, :cond_2

    .line 824
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setSingleLine(Z)V

    .line 825
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0027

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setMaxLines(I)V

    .line 827
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->stashCurrentRecipient()Ljava/lang/CharSequence;

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 830
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->clear()V

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 832
    .local v12, "recips":[Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 833
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addRecipients([Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)V

    .line 836
    .end local v12    # "recips":[Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mUnfocusedCurrentRecipient:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->popCurrentRecipient(Ljava/lang/CharSequence;)V

    .line 837
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mUnfocusedCurrentRecipient:Ljava/lang/CharSequence;

    .line 935
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextListener()V

    .line 820
    return-void

    .line 839
    :cond_2
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setSingleLine(Z)V

    .line 841
    const/4 v7, 0x0

    .line 843
    .local v7, "isShowingXMore":Z
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->stashCurrentRecipient()Ljava/lang/CharSequence;

    move-result-object v16

    .line 844
    .local v16, "stashed":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mUnfocusedCurrentRecipient:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    .line 845
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mUnfocusedCurrentRecipient:Ljava/lang/CharSequence;

    .line 848
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_12

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    if-nez v16, :cond_9

    const/16 v20, 0x0

    :goto_1
    add-int v14, v21, v20

    .line 851
    .local v14, "size":I
    new-instance v17, Lcom/sonyericsson/conversations/ui/RecipientDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getPaint()Landroid/text/TextPaint;

    move-result-object v20

    .line 852
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getTextSize()F

    move-result v21

    .line 851
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;-><init>(Landroid/text/TextPaint;F)V

    .line 853
    .local v17, "textDrawable":Lcom/sonyericsson/conversations/ui/RecipientDrawable;
    const/4 v4, 0x0

    .line 854
    .local v4, "currentTextWidth":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 856
    .local v11, "recipientsMoreWidth":F
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v14, v0, :cond_4

    .line 859
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 860
    const-string/jumbo v22, ""

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v21, v23

    const v22, 0x7f0b0192

    .line 859
    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->getTextWidth(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    int-to-float v11, v0

    .line 865
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getWidth()I

    move-result v20

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 867
    const v22, 0x7f0c0010

    .line 866
    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    .line 865
    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v9, v0

    .line 869
    .local v9, "lineWidth":F
    const/16 v18, 0x0

    .line 870
    .local v18, "visibleRecipient":I
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 871
    .local v13, "sb":Landroid/text/SpannableStringBuilder;
    new-instance v3, Lcom/sonyericsson/conversations/ui/RecipientBubble;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sonyericsson/conversations/ui/RecipientBubble;-><init>(Landroid/widget/TextView;)V

    .line 873
    .local v3, "b":Lcom/sonyericsson/conversations/ui/RecipientBubble;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v14, :cond_f

    .line 875
    add-int/lit8 v20, v14, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_a

    if-eqz v16, :cond_a

    const/4 v8, 0x1

    .line 876
    .local v8, "isStashed":Z
    :goto_3
    if-eqz v8, :cond_b

    .line 877
    new-instance v15, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v15, v0, v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 881
    .local v15, "spanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :goto_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v15}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get1(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 882
    const-string/jumbo v21, "  ,"

    .line 881
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getContext()Landroid/content/Context;

    move-result-object v21

    .line 881
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientBubble;->getRecipientBubbleSize(Ljava/lang/String;Landroid/content/Context;)F

    move-result v20

    add-float v4, v4, v20

    .line 883
    add-float v20, v4, v11

    cmpl-float v20, v20, v9

    if-lez v20, :cond_c

    const/4 v5, 0x1

    .line 894
    .local v5, "exceedsLineWidth":Z
    :goto_5
    add-float v20, v4, v11

    cmpg-float v20, v20, v9

    if-ltz v20, :cond_5

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_d

    .line 899
    :cond_5
    :goto_6
    if-nez v8, :cond_7

    .line 900
    invoke-static {v15}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get1(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v10

    .line 901
    .local v10, "name":Ljava/lang/String;
    if-eqz v5, :cond_6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0xf

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    .line 903
    const/16 v20, 0x0

    const/16 v21, 0xf

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 902
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->getTextWidth(Ljava/lang/String;)I

    move-result v19

    .line 905
    .local v19, "width":I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getPaint()Landroid/text/TextPaint;

    move-result-object v21

    .line 906
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    sget-object v23, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 904
    invoke-static/range {v20 .. v23}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 908
    .end local v19    # "width":I
    :cond_6
    invoke-static {v15}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get2(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v20

    .line 909
    invoke-static {v15}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get0(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    .line 908
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v10, v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->participantToSpan(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 910
    const/16 v20, 0x2c

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 913
    .end local v10    # "name":Ljava/lang/String;
    :cond_7
    add-int/lit8 v18, v18, 0x1

    .line 873
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 850
    .end local v3    # "b":Lcom/sonyericsson/conversations/ui/RecipientBubble;
    .end local v4    # "currentTextWidth":F
    .end local v5    # "exceedsLineWidth":Z
    .end local v6    # "i":I
    .end local v8    # "isStashed":Z
    .end local v9    # "lineWidth":F
    .end local v11    # "recipientsMoreWidth":F
    .end local v13    # "sb":Landroid/text/SpannableStringBuilder;
    .end local v14    # "size":I
    .end local v15    # "spanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .end local v17    # "textDrawable":Lcom/sonyericsson/conversations/ui/RecipientDrawable;
    .end local v18    # "visibleRecipient":I
    :cond_9
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 875
    .restart local v3    # "b":Lcom/sonyericsson/conversations/ui/RecipientBubble;
    .restart local v4    # "currentTextWidth":F
    .restart local v6    # "i":I
    .restart local v9    # "lineWidth":F
    .restart local v11    # "recipientsMoreWidth":F
    .restart local v13    # "sb":Landroid/text/SpannableStringBuilder;
    .restart local v14    # "size":I
    .restart local v17    # "textDrawable":Lcom/sonyericsson/conversations/ui/RecipientDrawable;
    .restart local v18    # "visibleRecipient":I
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "isStashed":Z
    goto/16 :goto_3

    .line 879
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .restart local v15    # "spanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    goto/16 :goto_4

    .line 883
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "exceedsLineWidth":Z
    goto/16 :goto_5

    .line 895
    :cond_d
    cmpg-float v20, v4, v9

    if-gez v20, :cond_e

    add-int/lit8 v20, v18, 0x1

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    .line 896
    :cond_e
    if-eqz v5, :cond_8

    if-nez v18, :cond_8

    goto/16 :goto_6

    .line 917
    .end local v5    # "exceedsLineWidth":Z
    .end local v8    # "isStashed":Z
    .end local v15    # "spanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_f
    move/from16 v0, v18

    if-ge v0, v14, :cond_10

    .line 918
    add-float/2addr v4, v11

    .line 920
    :cond_10
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v14, v0, :cond_11

    cmpl-float v20, v4, v9

    if-lez v20, :cond_11

    .line 921
    const/4 v7, 0x1

    .line 922
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 923
    const-string/jumbo v22, ""

    const/16 v23, 0x0

    aput-object v22, v21, v23

    .line 924
    sub-int v22, v14, v18

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v21, v23

    .line 923
    const v22, 0x7f0b0192

    .line 922
    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 927
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 929
    .end local v3    # "b":Lcom/sonyericsson/conversations/ui/RecipientBubble;
    .end local v4    # "currentTextWidth":F
    .end local v6    # "i":I
    .end local v9    # "lineWidth":F
    .end local v11    # "recipientsMoreWidth":F
    .end local v13    # "sb":Landroid/text/SpannableStringBuilder;
    .end local v14    # "size":I
    .end local v17    # "textDrawable":Lcom/sonyericsson/conversations/ui/RecipientDrawable;
    .end local v18    # "visibleRecipient":I
    :cond_12
    if-nez v7, :cond_1

    .line 930
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->popCurrentRecipient(Ljava/lang/CharSequence;)V

    .line 931
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mUnfocusedCurrentRecipient:Ljava/lang/CharSequence;

    goto/16 :goto_0
.end method


# virtual methods
.method public addParticipantToEditorAsync(Ljava/util/List;Z)V
    .locals 9
    .param p2, "forceGiveAwayFocus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1300
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    .local v6, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v0, 0x0

    .line 1303
    .local v0, "addedParticipant":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    .local v4, "newParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1310
    .local v1, "c":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getAllRecipientCount()I

    move-result v7

    add-int/2addr v7, v0

    iget v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mMaxRecipientCount:I

    if-lt v7, v8, :cond_2

    .line 1311
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->couldNotAddMoreRecipientsToast()V

    .line 1330
    .end local v1    # "c":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/sonyericsson/conversations/ui/RecipientsEditor$8;

    invoke-direct {v8, p0, v4, p2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$8;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/util/List;Z)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1299
    return-void

    .line 1315
    .restart local v1    # "c":Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v5, v1}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 1317
    .local v5, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1318
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1319
    add-int/lit8 v0, v0, 0x1

    .line 1321
    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Participant;->getPersonName()Ljava/lang/String;

    move-result-object v3

    .line 1322
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1323
    move-object v3, v1

    .line 1326
    :cond_3
    new-instance v7, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isImContact(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v7, v3, v1, v8}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public convertAllRecipients()Z
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 578
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v10, "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getNameAndNumbers()Ljava/util/List;

    move-result-object v0

    .line 582
    .local v0, "allRecipients":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;>;"
    const/4 v6, -0x1

    .line 583
    .local v6, "end":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 585
    .local v5, "currString":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_2

    .line 586
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 588
    .local v8, "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    invoke-static {v8}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get1(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 589
    .local v11, "searchIndex":I
    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 585
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 592
    :cond_1
    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 594
    if-ge v11, v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v12

    const-class v13, Landroid/text/Annotation;

    invoke-interface {v12, v11, v6, v13}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Annotation;

    .line 597
    .local v1, "annotations":[Landroid/text/Annotation;
    array-length v12, v1

    if-gtz v12, :cond_0

    .line 600
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 604
    .end local v1    # "annotations":[Landroid/text/Annotation;
    .end local v8    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .end local v11    # "searchIndex":I
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 606
    return v14

    .line 609
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v4, "conversionItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;>;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "item$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 612
    .restart local v8    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    invoke-static {v8}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get2(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 616
    new-instance v12, Landroid/util/Pair;

    invoke-static {v8}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get1(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 619
    .end local v8    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 620
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "conversionItem$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 621
    .local v2, "conversionItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;>;"
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->convertRecipient(Landroid/util/Pair;)V

    goto :goto_3

    .line 623
    .end local v2    # "conversionItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;>;"
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setSelection(I)V

    .line 625
    const/4 v12, 0x1

    return v12

    .line 628
    .end local v3    # "conversionItem$iterator":Ljava/util/Iterator;
    :cond_7
    return v14
.end method

.method public enoughToFilter()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 1160
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1161
    .local v2, "text":Landroid/text/Editable;
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1162
    .local v1, "len":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getSelectionEnd()I

    move-result v0

    .line 1163
    .local v0, "end":I
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1164
    .local v3, "tokenEnd":I
    if-ne v3, v8, :cond_0

    .line 1165
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1169
    :cond_0
    if-lt v1, v4, :cond_1

    if-eq v3, v8, :cond_2

    add-int/lit8 v6, v1, -0x1

    if-ne v6, v3, :cond_2

    .line 1170
    :cond_1
    return v5

    .line 1173
    :cond_2
    if-ne v0, v1, :cond_3

    :goto_0
    return v4

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public getAllRecipientCount()I
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInvalidRecipients()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getCurrentRecipient()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1231
    .local v0, "current":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1232
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    :cond_0
    return-object v1
.end method

.method public getNameAndNumbers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1207
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNameAndNumbers()Ljava/util/List;

    move-result-object v0

    .line 1208
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;>;"
    return-object v0
.end method

.method public getNumbers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 1200
    .local v0, "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get2(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1203
    .end local v0    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_0
    return-object v2
.end method

.method public getSelectionEnd()I
    .locals 2

    .prologue
    .line 1149
    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSelectionEnd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSelectionEnd:I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getValidRecipients()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1246
    .local v2, "recipients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 1247
    .local v0, "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get2(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1250
    .end local v0    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_0
    return-object v2
.end method

.method public hasValidRecipient()Z
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEndWithTerminator()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1619
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1620
    .local v1, "contacts":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1621
    return v3

    .line 1624
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1625
    .local v0, "c":C
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isSeparator(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1626
    const/4 v2, 0x1

    return v2

    .line 1629
    :cond_1
    return v3
.end method

.method public isRecipientDirty()Z
    .locals 1

    .prologue
    .line 1607
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mParticipantChanged:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 803
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 804
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 805
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 806
    const v1, 0x7f0a0027

    .line 805
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setMaxLines(I)V

    .line 807
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mActionOrientationChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 808
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mActionOrientationChanged:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 810
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mCurrentOrientation:I

    .line 802
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1410
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1425
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0

    .line 1423
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1410
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onEditorAction(I)V
    .locals 4
    .param p1, "actionCode"    # I

    .prologue
    const/4 v3, 0x1

    .line 1112
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    .line 1113
    .local v1, "isFullScreenMode":Z
    if-eqz v1, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 1114
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->convertAllRecipients()Z

    move-result v0

    .line 1115
    .local v0, "converting":Z
    if-nez v0, :cond_0

    .line 1116
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsImeActionNext:Z

    .line 1117
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onEditorAction(I)V

    .line 1119
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->reportRecipientsChange(Z)V

    .line 1111
    .end local v0    # "converting":Z
    :goto_0
    return-void

    .line 1121
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onEditorAction(I)V

    goto :goto_0
.end method

.method public onFilterComplete(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 1593
    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1597
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setDropDownHeight(I)V

    .line 1603
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onFilterComplete(I)V

    .line 1592
    return-void

    .line 1601
    :cond_0
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setDropDownHeight(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 766
    instance-of v1, p1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 767
    check-cast v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;

    .line 768
    .local v0, "savedState":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 770
    sget-boolean v1, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 771
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 774
    :cond_0
    iget-boolean v1, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mFocusOn:Z

    if-eqz v1, :cond_1

    .line 775
    new-instance v1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$7;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->post(Ljava/lang/Runnable;)Z

    .line 783
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 785
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 786
    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mSpanList:Ljava/util/List;

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mSpanList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addRecipients([Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)V

    .line 789
    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->currentRecipient:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mUnfocusedCurrentRecipient:Ljava/lang/CharSequence;

    .line 790
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mUnfocusedCurrentRecipient:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->popCurrentRecipient(Ljava/lang/CharSequence;)V

    .line 792
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->hasFocus()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->updateText(Z)V

    .line 765
    .end local v0    # "savedState":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;
    :goto_0
    return-void

    .line 794
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 750
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 751
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 753
    .local v0, "savedState":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getCurrentRecipient()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->currentRecipient:Ljava/lang/CharSequence;

    .line 754
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isFocused()Z

    move-result v2

    iput-boolean v2, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mFocusOn:Z

    .line 755
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    iput-object v2, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mSpanList:Ljava/util/List;

    .line 757
    sget-boolean v2, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 758
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 761
    :cond_0
    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "keyCode"    # I

    .prologue
    .line 1584
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1585
    .local v0, "filter":Landroid/widget/Filter;
    if-eqz v0, :cond_1

    .line 1586
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;III)V

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1587
    :cond_1
    sget-boolean v1, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1588
    const-string/jumbo v1, "Filtering not performed due to null filter."

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerEditorListener(Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    .line 1176
    return-void
.end method

.method public removeAllRecipients()V
    .locals 1

    .prologue
    .line 1569
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeTextListener()V

    .line 1570
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 1571
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mValidContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1572
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextListener()V

    .line 1568
    return-void
.end method

.method public reportRecipientsChange(Z)V
    .locals 1
    .param p1, "changeFocus"    # Z

    .prologue
    .line 1133
    if-eqz p1, :cond_0

    .line 1134
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mLastSeparator:C

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    if-eqz v0, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;->onRecipientsChanged(Z)V

    .line 1132
    :cond_1
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 4
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    const/4 v3, 0x0

    .line 672
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 673
    .local v0, "appended":[Landroid/text/InputFilter;
    array-length v1, p1

    const/4 v2, 0x1

    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    new-instance v1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    aput-object v1, v0, v3

    .line 706
    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 671
    return-void
.end method

.method public setMaxRecipientCount(I)V
    .locals 0
    .param p1, "maxRecipientCount"    # I

    .prologue
    .line 1107
    iput p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mMaxRecipientCount:I

    .line 1106
    return-void
.end method

.method public setRecipientDirty(Z)V
    .locals 0
    .param p1, "dirty"    # Z

    .prologue
    .line 1611
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mParticipantChanged:Z

    .line 1610
    return-void
.end method

.method public showSoftKeys()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mShowSoftKeyBoardRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 503
    return-void
.end method

.method public unRegisterEditorListener()V
    .locals 1

    .prologue
    .line 1181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    .line 1180
    return-void
.end method

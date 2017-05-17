.class public Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;
.super Landroid/app/Fragment;
.source "TwelveKeyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$OnPrefixInsertedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$DialpadTextWatcherFormatterCreator;,
        Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$FormatterCreator;,
        Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$OnTextChangeListener;,
        Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$1;
    }
.end annotation


# static fields
.field private static final KEY_TRIGGERED_BY_SMART_SEARCH_SELECTION:Ljava/lang/String; = "triggeredBySmartSearchSelection"

.field private static final TWELVE_KEY_VIEWS_SIZE:I = 0xc

.field private static sViewIdKeyCodeMap:Landroid/util/SparseIntArray;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelete:Landroid/view/View;

.field private mDialerKeyListener:Landroid/view/View$OnKeyListener;

.field private mDialpad:Landroid/view/View;

.field private mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

.field private mDialpadLayout:Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;

.field private mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

.field private mIsCallingAllowed:Z

.field private mIsTriggeredBySmartSearchSelection:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnTextChangeListener:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$OnTextChangeListener;

.field private mPhoneNumberTextWatcher:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;

.field private mPlayTone:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

.field private mSearchLabels:[Landroid/view/View;

.field private mTwelveKeyViews:[Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;)Lcom/sonyericsson/android/socialphonebook/DialpadEditText;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;)Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;)Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mPhoneNumberTextWatcher:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 69
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->sViewIdKeyCodeMap:Landroid/util/SparseIntArray;

    .line 70
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->sViewIdKeyCodeMap:Landroid/util/SparseIntArray;

    const v1, 0x7f0e00ed

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->sViewIdKeyCodeMap:Landroid/util/SparseIntArray;

    const v1, 0x7f0e00f2

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->sViewIdKeyCodeMap:Landroid/util/SparseIntArray;

    const v1, 0x7f0e00f7

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->sViewIdKeyCodeMap:Landroid/util/SparseIntArray;

    const v1, 0x7f0e00fb

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->sViewIdKeyCodeMap:Landroid/util/SparseIntArray;

    const v1, 0x7f0e00f3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->sViewIdKeyCodeMap:Landroid/util/SparseIntArray;

    const v1, 0x7f0e0103

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->sViewIdKeyCodeMap:Landroid/util/SparseIntArray;

    const v1, 0x7f0e0107

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->sViewIdKeyCodeMap:Landroid/util/SparseIntArray;

    const v1, 0x7f0e00ff

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->sViewIdKeyCodeMap:Landroid/util/SparseIntArray;

    const v1, 0x7f0e010f

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->sViewIdKeyCodeMap:Landroid/util/SparseIntArray;

    const v1, 0x7f0e010b

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->sViewIdKeyCodeMap:Landroid/util/SparseIntArray;

    const v1, 0x7f0e0119

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->sViewIdKeyCodeMap:Landroid/util/SparseIntArray;

    const v1, 0x7f0e0113

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mIsTriggeredBySmartSearchSelection:Z

    .line 109
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialerKeyListener:Landroid/view/View$OnKeyListener;

    .line 156
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/EmptyPhoneNumberFormatter;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/EmptyPhoneNumberFormatter;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

    .line 185
    return-void
.end method

.method private findSearchLabels(Landroid/view/View;)V
    .locals 3
    .param p1, "dialpad"    # Landroid/view/View;

    .prologue
    .line 548
    if-nez p1, :cond_0

    .line 549
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mSearchLabels:[Landroid/view/View;

    const v1, 0x7f0e00f1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->findSpecialView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 552
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mSearchLabels:[Landroid/view/View;

    const v1, 0x7f0e00f5

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->findSpecialView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mSearchLabels:[Landroid/view/View;

    const v1, 0x7f0e00f9

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->findSpecialView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 554
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mSearchLabels:[Landroid/view/View;

    const v1, 0x7f0e00fd

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->findSpecialView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 555
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mSearchLabels:[Landroid/view/View;

    const v1, 0x7f0e0101

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->findSpecialView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 556
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mSearchLabels:[Landroid/view/View;

    const v1, 0x7f0e0105

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->findSpecialView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 557
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mSearchLabels:[Landroid/view/View;

    const v1, 0x7f0e0109

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->findSpecialView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 558
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mSearchLabels:[Landroid/view/View;

    const v1, 0x7f0e010d

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->findSpecialView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 559
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mSearchLabels:[Landroid/view/View;

    const v1, 0x7f0e0111

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->findSpecialView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mSearchLabels:[Landroid/view/View;

    const v1, 0x7f0e0115

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->findSpecialView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 561
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mSearchLabels:[Landroid/view/View;

    const v1, 0x7f0e0117

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->findSpecialView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 562
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mSearchLabels:[Landroid/view/View;

    const v1, 0x7f0e011b

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->findSpecialView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 547
    return-void
.end method

.method private findSpecialView(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "viewId"    # I

    .prologue
    const/4 v2, 0x0

    .line 566
    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    .line 567
    :cond_0
    return-object v2

    .line 569
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 570
    .local v0, "textview":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 571
    :cond_2
    return-object v2

    .line 573
    :cond_3
    return-object v0
.end method

.method private keyPressed(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 528
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mIsTriggeredBySmartSearchSelection:Z

    .line 529
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 530
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v1, p1, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 527
    return-void
.end method

.method private removeTwelveKeyViewsListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 696
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    if-nez v1, :cond_0

    .line 697
    return-void

    .line 699
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 700
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 702
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 704
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    .line 695
    return-void
.end method

.method private setSmartSearchLabelVisibility()V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->isSmartSearchEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->updateSmartSearchLabelVisibility(Z)V

    .line 723
    return-void
.end method

.method private setTwelveKeyViewsFocusability(Z)V
    .locals 4
    .param p1, "isFocusable"    # Z

    .prologue
    .line 659
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 660
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 661
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 663
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    if-eqz p1, :cond_1

    .line 664
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    const v2, 0x7f0e00ed

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setNextFocusDownId(I)V

    .line 665
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDelete:Landroid/view/View;

    const v2, 0x7f0e00f7

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 658
    :goto_1
    return-void

    .line 667
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    const v2, 0x7f0e0081

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setNextFocusDownId(I)V

    goto :goto_1
.end method

.method private setTwelveKeyViewsListener()V
    .locals 5

    .prologue
    .line 675
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 676
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 678
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 679
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialerKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 675
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private showVoicemailIcon(Landroid/view/View;)V
    .locals 2
    .param p1, "viewRoot"    # Landroid/view/View;

    .prologue
    .line 407
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mIsCallingAllowed:Z

    if-eqz v1, :cond_0

    .line 408
    const v1, 0x7f0e00f0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 409
    .local v0, "icon":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    .end local v0    # "icon":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private smartSearchLabelsAreUsed()Z
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getEnableSmartSearchLabels()Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->needPromptDialPad()Z

    move-result v0

    .line 738
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private smartSearchLabelsShouldBeShown(Z)Z
    .locals 1
    .param p1, "smartSearchIsEnabled"    # Z

    .prologue
    .line 733
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->smartSearchLabelsAreUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->isSmartSearchLanguageSupported()Z

    move-result v0

    .line 733
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unsetTwelveKeyViewsListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 684
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 685
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 687
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 688
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 683
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private updateDeleteButtonState()V
    .locals 2

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->isEditTextEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 638
    .local v0, "notEmpty":Z
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 639
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 636
    return-void

    .line 637
    .end local v0    # "notEmpty":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "notEmpty":Z
    goto :goto_0
.end method

.method private updateDialpadLayout()V
    .locals 2

    .prologue
    .line 643
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->getModeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->isOneHandLayoutOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadLayout:Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->injectOneHandedLayout(Landroid/content/Context;Landroid/view/View;)V

    .line 649
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->setModeChanged(Z)V

    .line 642
    :cond_0
    return-void

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadLayout:Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->deinjectOneHandedLayout(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "input"    # Landroid/text/Editable;

    .prologue
    .line 425
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mOnTextChangeListener:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$OnTextChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mPhoneNumberTextWatcher:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;->shouldIgnoreChange()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 429
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 436
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->isEditTextEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->focusEditText()V

    .line 442
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->isEditTextEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setCursorVisible(Z)V

    .line 444
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setDialpadEditTextSize()V

    .line 445
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->updateDeleteButtonState()V

    .line 424
    return-void

    .line 426
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mOnTextChangeListener:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$OnTextChangeListener;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->getEditText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$OnTextChangeListener;->onTextChanged(Ljava/lang/String;Landroid/widget/EditText;)V

    goto :goto_0

    .line 442
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 414
    return-void
.end method

.method public clearEditText()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 472
    :cond_0
    return-void
.end method

.method public focusEditText()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->requestFocus()Z

    .line 523
    return-void
.end method

.method public getEditText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 520
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public isDialpadMinimized()Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadLayout:Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->isDialpadMinimized()Z

    move-result v0

    return v0
.end method

.method public isDialpadNotEmpty()Z
    .locals 1

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->getEditText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEditTextEmpty()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 469
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isTriggeredBySmartSearchSelection()Z
    .locals 1

    .prologue
    .line 750
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mIsTriggeredBySmartSearchSelection:Z

    return v0
.end method

.method public maximizeDialpad()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadLayout:Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->maximizeDialpad()V

    .line 583
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setTwelveKeyViewsFocusability(Z)V

    .line 581
    return-void
.end method

.method public minimizeDialpad()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadLayout:Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->minimizeDialpad()V

    .line 578
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setTwelveKeyViewsFocusability(Z)V

    .line 576
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 269
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$DialpadTextWatcherFormatterCreator;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$DialpadTextWatcherFormatterCreator;-><init>(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;Landroid/content/Context;)V

    .line 270
    .local v1, "textWatcherCreator":Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$DialpadTextWatcherFormatterCreator;
    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$DialpadTextWatcherFormatterCreator;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 271
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$FormatterCreator;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$FormatterCreator;-><init>(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;Landroid/content/Context;)V

    .line 272
    .local v0, "formatterCreator":Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$FormatterCreator;
    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$FormatterCreator;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 266
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 192
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mContext:Landroid/content/Context;

    .line 194
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mPlayTone:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    .line 190
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 388
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 389
    .local v0, "viewId":I
    packed-switch v0, :pswitch_data_0

    .line 397
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->sViewIdKeyCodeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 398
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->sViewIdKeyCodeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->keyPressed(I)V

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 387
    :cond_1
    :goto_0
    return-void

    .line 391
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->isEditTextEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 393
    const/16 v1, 0x43

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->keyPressed(I)V

    goto :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x7f0e0123
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isOutgoingCallsAllowed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mIsCallingAllowed:Z

    .line 208
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 216
    const v1, 0x7f0400e1

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "rootView":Landroid/view/View;
    move-object v1, v0

    .line 218
    check-cast v1, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadLayout:Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;

    .line 219
    const v1, 0x7f0e022d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpad:Landroid/view/View;

    .line 220
    const v1, 0x7f0e00ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    .line 222
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setSmartSearchLabelVisibility()V

    .line 224
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$2;-><init>(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 232
    const v1, 0x7f0e0123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDelete:Landroid/view/View;

    .line 234
    const/16 v1, 0xc

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    .line 235
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    const v2, 0x7f0e010b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v3

    .line 236
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    const v2, 0x7f0e00ed

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 237
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    const v2, 0x7f0e00f2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 238
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    const v2, 0x7f0e00f7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 239
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    const v2, 0x7f0e00fb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 240
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    const v2, 0x7f0e00f3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 241
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    const v2, 0x7f0e0103

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 242
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    const v2, 0x7f0e0107

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 243
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    const v2, 0x7f0e00ff

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 244
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    const v2, 0x7f0e010f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 245
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    const v2, 0x7f0e0113

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 246
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mTwelveKeyViews:[Landroid/view/View;

    const v2, 0x7f0e0119

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 248
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->showVoicemailIcon(Landroid/view/View;)V

    .line 250
    if-eqz p3, :cond_0

    .line 252
    const-string/jumbo v1, "triggeredBySmartSearchSelection"

    .line 251
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mIsTriggeredBySmartSearchSelection:Z

    .line 255
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->removeTwelveKeyViewsListener()V

    .line 326
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->onDestroy()V

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mPlayTone:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->destroy()V

    .line 330
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 331
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 332
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mOnTextChangeListener:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$OnTextChangeListener;

    .line 317
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mPlayTone:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mPlayTone:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->destroy()V

    .line 203
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mPlayTone:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    .line 198
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 339
    :sswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->clearEditText()V

    .line 357
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 342
    :sswitch_1
    const/16 v0, 0x51

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->keyPressed(I)V

    goto :goto_0

    .line 345
    :sswitch_2
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->keyPressed(I)V

    goto :goto_0

    .line 348
    :sswitch_3
    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->keyPressed(I)V

    goto :goto_0

    .line 354
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 337
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e010b -> :sswitch_1
        0x7f0e0113 -> :sswitch_2
        0x7f0e0119 -> :sswitch_3
        0x7f0e0123 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 309
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->unsetTwelveKeyViewsListener()V

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mPlayTone:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->pause()V

    .line 313
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->onPause()V

    .line 299
    return-void
.end method

.method public onPrefixInserted(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNumberWithPrefix"    # Ljava/lang/String;

    .prologue
    .line 717
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DIAL"

    .line 718
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 717
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 719
    const-string/jumbo v2, "internal_intent"

    const/4 v3, 0x1

    .line 717
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 720
    .local v0, "phoneNumberWithPrefixIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->startActivity(Landroid/content/Intent;)V

    .line 716
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 278
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 284
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 287
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setTwelveKeyViewsListener()V

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mPlayTone:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->resume()V

    .line 290
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->isEditTextEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setCursorVisible(Z)V

    .line 292
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->updateDeleteButtonState()V

    .line 295
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->updateDialpadLayout()V

    .line 277
    return-void

    .line 290
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 260
    const-string/jumbo v0, "triggeredBySmartSearchSelection"

    .line 261
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mIsTriggeredBySmartSearchSelection:Z

    .line 260
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 259
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 419
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e00ee

    if-ne v1, v2, :cond_1

    .line 365
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 366
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadLayout:Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->isDialpadMinimized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->maximizeDialpad()V

    .line 369
    :cond_0
    return v4

    .line 372
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 373
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 375
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mPlayTone:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->play(I)V

    .line 376
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->vibrate(Landroid/view/View;)V

    .line 382
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->focusEditText()V

    .line 383
    return v3

    .line 377
    :cond_3
    if-eq v0, v4, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 379
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mPlayTone:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->stop()V

    goto :goto_0
.end method

.method public resetDialpad()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadLayout:Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->resetDialpad()V

    .line 592
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setTwelveKeyViewsFocusability(Z)V

    .line 590
    return-void
.end method

.method protected setDialpadEditTextSize()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 604
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 605
    return-void

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->isEditTextEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 609
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    .line 610
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 609
    invoke-virtual {v5, v8, v6}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setTextSize(IF)V

    .line 611
    return-void

    .line 614
    :cond_1
    const v3, 0x7f0d0030

    .line 615
    .local v3, "textSizeId":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v2, v5

    .line 616
    .local v2, "textSize":F
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getTextSize()F

    move-result v5

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_2

    .line 618
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v5, v8, v2}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setTextSize(IF)V

    .line 621
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getMeasuredWidth()I

    move-result v0

    .line 622
    .local v0, "editWidth":I
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getMeasuredTextWidth(Ljava/lang/String;)I

    move-result v4

    .line 625
    .local v4, "textWidth":I
    if-le v4, v0, :cond_3

    .line 626
    const v3, 0x7f0d0031

    .line 629
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    .line 630
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 629
    invoke-virtual {v5, v8, v6}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setTextSize(IF)V

    .line 603
    return-void
.end method

.method public setEditText(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setEditText(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setEditText(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isTriggeredBySmartSearchSelection"    # Z

    .prologue
    .line 490
    iput-boolean p2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mIsTriggeredBySmartSearchSelection:Z

    .line 492
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->getNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "dataTemporary":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "dialString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 495
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

    invoke-interface {v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v3}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 498
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setSelection(I)V

    .line 499
    const/4 v2, 0x1

    return v2

    .line 502
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 449
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpadEdit:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 461
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 453
    return-void
.end method

.method public setOnTextChangeListener(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$OnTextChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$OnTextChangeListener;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mOnTextChangeListener:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$OnTextChangeListener;

    .line 457
    return-void
.end method

.method public setSearchLabelVisibility(I)V
    .locals 4
    .param p1, "visibilitiy"    # I

    .prologue
    .line 535
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mSearchLabels:[Landroid/view/View;

    if-nez v1, :cond_0

    .line 536
    const/16 v1, 0xc

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mSearchLabels:[Landroid/view/View;

    .line 537
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mDialpad:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->findSearchLabels(Landroid/view/View;)V

    .line 540
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->mSearchLabels:[Landroid/view/View;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 541
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 542
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 540
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public updateSmartSearchLabelVisibility(Z)V
    .locals 1
    .param p1, "smartSearchIsEnabled"    # Z

    .prologue
    .line 728
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->smartSearchLabelsShouldBeShown(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    const/4 v0, 0x0

    .line 728
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setSearchLabelVisibility(I)V

    .line 727
    return-void

    .line 729
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

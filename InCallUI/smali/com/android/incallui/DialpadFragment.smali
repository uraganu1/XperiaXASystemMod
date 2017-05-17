.class public Lcom/android/incallui/DialpadFragment;
.super Lcom/android/incallui/BaseFragment;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/android/incallui/DialpadPresenter$DialpadUi;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/DialpadFragment$DialpadSlidingLinearLayout;,
        Lcom/android/incallui/DialpadFragment$DTMFKeyListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/DialpadPresenter;",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;",
        ">;",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/view/View$OnHoverListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field static final DBG:Z

.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mButtonIds:[I

.field private mCurrentTextColor:I

.field private mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

.field private mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

.field private mDtmfDialerField:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/incallui/DialpadFragment;->DBG:Z

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    sput-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/incallui/DialpadFragment;->sHandler:Landroid/os/Handler;

    .line 102
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0f0060

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0f0056

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0f0057

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0f0058

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0f0059

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0f005a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0f005b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0f005c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0f005d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0f0064

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0f0062

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0f0063

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void

    :cond_0
    move v0, v1

    .line 54
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 57
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/DialpadFragment;->mButtonIds:[I

    .line 50
    return-void

    .line 57
    nop

    :array_0
    .array-data 4
        0x7f0f0064
        0x7f0f0060
        0x7f0f0056
        0x7f0f0057
        0x7f0f0058
        0x7f0f0059
        0x7f0f005a
        0x7f0f005b
        0x7f0f005c
        0x7f0f005d
        0x7f0f0063
        0x7f0f0062
    .end array-data
.end method

.method private configureKeypadListeners()V
    .locals 4

    .prologue
    .line 560
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/DialpadFragment;->mButtonIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 561
    iget-object v2, p0, Lcom/android/incallui/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    iget-object v3, p0, Lcom/android/incallui/DialpadFragment;->mButtonIds:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 562
    .local v0, "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    invoke-virtual {v0, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 563
    invoke-virtual {v0, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 564
    invoke-virtual {v0, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 565
    invoke-virtual {v0, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    .end local v0    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    :cond_0
    return-void
.end method


# virtual methods
.method public animateShowDialpad()V
    .locals 3

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/dialpad/DialpadView;

    .line 515
    .local v0, "dialpadView":Lcom/android/phone/common/dialpad/DialpadView;
    invoke-virtual {v0}, Lcom/android/phone/common/dialpad/DialpadView;->animateShow()V

    .line 513
    return-void
.end method

.method public appendDigitsToField(C)V
    .locals 1
    .param p1, "digit"    # C

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 519
    :cond_0
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/DialpadPresenter;
    .locals 1

    .prologue
    .line 425
    new-instance v0, Lcom/android/incallui/DialpadPresenter;

    invoke-direct {v0}, Lcom/android/incallui/DialpadPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->createPresenter()Lcom/android/incallui/DialpadPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getDtmfText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/DialpadPresenter$DialpadUi;
    .locals 0

    .prologue
    .line 430
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getUi()Lcom/android/incallui/DialpadPresenter$DialpadUi;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 314
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 318
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 321
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    sget-object v3, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    .line 323
    sget-object v2, Lcom/android/incallui/DialpadFragment;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/incallui/DialpadFragment$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/DialpadFragment$1;-><init>(Lcom/android/incallui/DialpadFragment;)V

    .line 328
    const-wide/16 v4, 0x32

    .line 323
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    .end local v1    # "id":I
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 437
    const v1, 0x7f04001e

    .line 436
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f0f0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/dialpad/DialpadView;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    .line 439
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v1, v3}, Lcom/android/phone/common/dialpad/DialpadView;->setCanDigitsBeEdited(Z)V

    .line 440
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    const v2, 0x7f07005c

    invoke-virtual {v1, v2}, Lcom/android/phone/common/dialpad/DialpadView;->setBackgroundResource(I)V

    .line 441
    const v1, 0x7f0f006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    .line 442
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 443
    new-instance v1, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    invoke-direct {v1, p0, v4}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;-><init>(Lcom/android/incallui/DialpadFragment;Lcom/android/incallui/DialpadFragment$DTMFKeyListener;)V

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    .line 444
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 447
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 448
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setElegantTextHeight(Z)V

    .line 449
    invoke-direct {p0}, Lcom/android/incallui/DialpadFragment;->configureKeypadListeners()V

    .line 452
    :cond_0
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    .line 480
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 478
    return-void
.end method

.method onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 538
    const-string/jumbo v0, "Notifying dtmf key down."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 542
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDialerKeyUp(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 550
    const-string/jumbo v0, "Notifying dtmf key up."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 554
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "accessibility"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 337
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 340
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 341
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    .line 340
    if-eqz v7, :cond_0

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 343
    .local v2, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v3, v7, v8

    .line 344
    .local v3, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 345
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int v1, v7, v8

    .line 347
    .local v1, "bottom":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 365
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_0
    :goto_0
    return v9

    .line 350
    .restart local v1    # "bottom":I
    .restart local v2    # "left":I
    .restart local v3    # "right":I
    .restart local v4    # "top":I
    :pswitch_0
    invoke-virtual {p1, v9}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 353
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 354
    .local v5, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 355
    .local v6, "y":I
    if-le v5, v2, :cond_1

    if-ge v5, v3, :cond_1

    if-le v6, v4, :cond_1

    if-ge v6, v1, :cond_1

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 358
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 370
    sget-boolean v1, Lcom/android/incallui/DialpadFragment;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKey:  keyCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    :cond_0
    const/16 v1, 0x17

    if-eq p2, v1, :cond_1

    const/16 v1, 0x42

    if-ne p2, v1, :cond_2

    .line 373
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 374
    .local v0, "viewId":I
    sget-object v1, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 375
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 391
    .end local v0    # "viewId":I
    :cond_2
    :goto_0
    return v4

    .line 377
    .restart local v0    # "viewId":I
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 378
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    .line 382
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 457
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 458
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->updateColors()V

    .line 456
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 396
    const-string/jumbo v1, "onTouch"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 400
    .local v0, "viewId":I
    sget-object v1, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 418
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 405
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    .line 410
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    goto :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDtmfText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 497
    return-void
.end method

.method public updateColors()V
    .locals 5

    .prologue
    .line 462
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getThemeColors()Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v3

    iget v2, v3, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    .line 464
    .local v2, "textColor":I
    iget v3, p0, Lcom/android/incallui/DialpadFragment;->mCurrentTextColor:I

    if-ne v3, v2, :cond_0

    .line 465
    return-void

    .line 469
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/DialpadFragment;->mButtonIds:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 470
    iget-object v3, p0, Lcom/android/incallui/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    iget-object v4, p0, Lcom/android/incallui/DialpadFragment;->mButtonIds:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 471
    .local v0, "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    const v3, 0x7f0f005e

    invoke-virtual {v0, v3}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    .end local v0    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    :cond_1
    iput v2, p0, Lcom/android/incallui/DialpadFragment;->mCurrentTextColor:I

    .line 461
    return-void
.end method

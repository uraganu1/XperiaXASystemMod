.class public Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;
.super Ljava/lang/Object;
.source "ClockPickerController.java"


# instance fields
.field private mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

.field private mClockPickerCallback:Lcom/sonymobile/keyguard/clock/picker/ClockPickerCallback;

.field private final mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

.field private mClockPlugins:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

.field private mDismissView:Landroid/view/View;

.field private final mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

.field private final mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerCallback;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPickerCallback:Lcom/sonymobile/keyguard/clock/picker/ClockPickerCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "clockPickerParent"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->animateInNewClock(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "clockDisplay"    # Landroid/view/View;
    .param p2, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->exchangeClockViewForPickerView(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->hideClockPicker(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    .prologue
    invoke-static {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->removeViewFromItsParent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->showCurrentClock(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardPluginMetaDataLoader"    # Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;
    .param p3, "keyguardPluginFactoryLoader"    # Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;
    .param p4, "defaultKeyguardFactoryProvider"    # Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;
    .param p5, "clockPluginUserSelectionHandler"    # Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    .line 81
    iput-object p3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    .line 82
    iput-object p4, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDefaultKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    .line 83
    iput-object p5, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPlugins:Ljava/util/LinkedList;

    .line 78
    return-void
.end method

.method private animateInNewClock(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "clockPickerParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 228
    sget v2, Lcom/android/keyguard/R$id;->keyguard_clock_container:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 229
    .local v1, "clockDisplay":Landroid/view/View;
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mContext:Landroid/content/Context;

    .line 230
    sget v3, Lcom/android/keyguard/R$anim;->somc_keyguard_clock_picker_show_current_clock:I

    .line 229
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 231
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v2, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$3;

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$3;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 247
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 227
    return-void
.end method

.method private animateOutClockPicker(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "clockPickerParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 194
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mContext:Landroid/content/Context;

    .line 195
    sget v2, Lcom/android/keyguard/R$anim;->somc_keyguard_clock_picker_hide_picker:I

    .line 194
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 196
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 219
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 193
    return-void
.end method

.method private createClickDismissingView(Landroid/view/View;)V
    .locals 7
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 109
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 110
    :goto_0
    if-eqz v2, :cond_0

    move-object v1, v2

    .line 111
    check-cast v1, Landroid/widget/FrameLayout;

    .line 112
    .local v1, "parentsParent":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    .line 113
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    .line 113
    sub-int v0, v3, v4

    .line 115
    .local v0, "height":I
    iget-object v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    .line 116
    const/16 v6, 0x50

    .line 115
    invoke-direct {v4, v5, v0, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    new-instance v4, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$1;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 108
    .end local v0    # "height":I
    .end local v1    # "parentsParent":Landroid/widget/FrameLayout;
    :cond_0
    return-void

    .line 109
    :cond_1
    const/4 v2, 0x0

    .local v2, "parentsParentView":Landroid/view/ViewParent;
    goto :goto_0
.end method

.method private createClockPickerView(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 279
    sget v1, Lcom/android/keyguard/R$layout;->somc_keyguard_clock_pager:I

    const/4 v2, 0x0

    .line 278
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    .line 280
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-virtual {v0, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->setController(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V

    .line 281
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->initPages()V

    .line 282
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->startAllClocks()V

    .line 283
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->getCurrentClockFactoryClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->positionPicker(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method private displayClockPickerView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->createClockPickerView(Landroid/view/ViewGroup;)V

    .line 268
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->hideCurrentClock(Landroid/view/ViewGroup;)V

    .line 266
    return-void
.end method

.method private exchangeClockViewForPickerView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "clockDisplay"    # Landroid/view/View;
    .param p2, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 367
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 369
    invoke-direct {p0, p2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->createClickDismissingView(Landroid/view/View;)V

    .line 371
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mContext:Landroid/content/Context;

    .line 372
    sget v2, Lcom/android/keyguard/R$anim;->somc_keyguard_clock_picker_show_picker:I

    .line 371
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 373
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;

    invoke-direct {v1, p0, p2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 405
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 366
    return-void
.end method

.method private getCurrentClockFactoryClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

    invoke-interface {v1}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;->getPresentableUserSelection()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "factoryClassName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDefaultKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    invoke-interface {v1}, Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;->getDefaultKeyguardFactoryClassName()Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_0
    return-object v0
.end method

.method private hideClockPicker(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 318
    iput-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPlugins:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 315
    return-void
.end method

.method private hideCurrentClock(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 329
    sget v2, Lcom/android/keyguard/R$id;->keyguard_clock_container:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 330
    .local v1, "clockDisplay":Landroid/view/View;
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mContext:Landroid/content/Context;

    .line 331
    sget v3, Lcom/android/keyguard/R$anim;->somc_keyguard_clock_picker_hide_current_clock:I

    .line 330
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 332
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v2, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;

    invoke-direct {v2, p0, v1, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 356
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 328
    return-void
.end method

.method private removeDismissView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->removeViewFromItsParent(Landroid/view/View;)V

    .line 257
    iput-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    .line 253
    :cond_0
    return-void
.end method

.method private static removeViewFromItsParent(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 522
    if-eqz p0, :cond_0

    .line 523
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 524
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 525
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 521
    :cond_0
    return-void
.end method

.method private restoreGUI(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 176
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 177
    .local v0, "clockPickerParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->removeDismissView()V

    .line 179
    if-nez p1, :cond_1

    .line 180
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->hideClockPicker(Landroid/view/ViewGroup;)V

    .line 181
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->showCurrentClock(Landroid/view/ViewGroup;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->animateOutClockPicker(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method private setClockForUser(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;)V
    .locals 3
    .param p1, "clock"    # Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    .prologue
    .line 292
    if-eqz p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

    iget-object v1, p1, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->fullyQualifiedClassName:Ljava/lang/String;

    .line 294
    sget-object v2, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->LockscreenClockPicker:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    .line 293
    invoke-interface {v0, v1, v2}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;->updateUserSelection(Ljava/lang/String;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;)V

    .line 291
    :cond_0
    return-void
.end method

.method private setVisibilityOnClockContainer(Landroid/view/ViewGroup;I)V
    .locals 2
    .param p1, "parentView"    # Landroid/view/ViewGroup;
    .param p2, "visibility"    # I

    .prologue
    .line 433
    sget v1, Lcom/android/keyguard/R$id;->keyguard_clock_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 434
    .local v0, "clockDisplay":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 432
    :cond_0
    return-void
.end method

.method private showCurrentClock(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 415
    if-eqz p1, :cond_0

    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->setVisibilityOnClockContainer(Landroid/view/ViewGroup;I)V

    .line 417
    instance-of v0, p1, Lcom/android/keyguard/KeyguardStatusView;

    if-eqz v0, :cond_0

    .line 420
    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    .end local p1    # "parentView":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardStatusView;->loadClockPluginView()V

    .line 414
    :cond_0
    return-void
.end method

.method private sortClockList(Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "mClockList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;>;"
    new-instance v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$6;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$6;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 462
    return-void
.end method

.method private startAllClocks()V
    .locals 3

    .prologue
    .line 502
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPlugins:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "plugin$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    .line 503
    .local v0, "plugin":Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;
    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->startClockTicking()V

    goto :goto_0

    .line 501
    .end local v0    # "plugin":Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;
    :cond_0
    return-void
.end method

.method private stopAllClocks()V
    .locals 3

    .prologue
    .line 511
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPlugins:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "plugin$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    .line 512
    .local v0, "plugin":Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;
    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->stopClockTicking()V

    goto :goto_0

    .line 510
    .end local v0    # "plugin":Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;
    :cond_0
    return-void
.end method


# virtual methods
.method public createClockView(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;)Landroid/view/View;
    .locals 4
    .param p1, "entry"    # Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    .prologue
    const/4 v3, 0x0

    .line 486
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    invoke-virtual {v2, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->createComponentFactoryFromFactoryEntry(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    move-result-object v1

    .line 488
    .local v1, "componentFactory":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    if-eqz v1, :cond_1

    .line 489
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;->createKeyguardClockPreviewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 490
    .local v0, "clockView":Landroid/view/View;
    instance-of v2, v0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    if-eqz v2, :cond_0

    .line 491
    iget-object v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPlugins:Ljava/util/LinkedList;

    move-object v2, v0

    check-cast v2, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_0
    return-object v0

    .line 495
    .end local v0    # "clockView":Landroid/view/View;
    :cond_1
    return-object v3
.end method

.method public exitClockPicker(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Z)V
    .locals 1
    .param p1, "choosenClock"    # Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .param p2, "animate"    # Z

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->clearSelectionTimeout()V

    .line 162
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->stopAllClocks()V

    .line 163
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->setClockForUser(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;)V

    .line 164
    invoke-direct {p0, p2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->restoreGUI(Z)V

    .line 166
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPickerCallback:Lcom/sonymobile/keyguard/clock/picker/ClockPickerCallback;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPickerCallback:Lcom/sonymobile/keyguard/clock/picker/ClockPickerCallback;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerCallback;->onClockPickerExiting()V

    .line 157
    :cond_0
    return-void
.end method

.method public loadClockPlugins()Ljava/util/LinkedList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    const/4 v1, 0x0

    .line 447
    .local v1, "returnList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;>;"
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    invoke-virtual {v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getAvailableKeyguardFactories()Ljava/util/LinkedList;

    move-result-object v1

    .line 448
    .local v1, "returnList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;>;"
    if-eqz v1, :cond_0

    .line 449
    invoke-direct {p0, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->sortClockList(Ljava/util/LinkedList;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v1    # "returnList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;>;"
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return-object v1

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "ClockPickerController"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 454
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    goto :goto_1
.end method

.method public resizeDismissView(Landroid/view/View;)V
    .locals 6
    .param p1, "pickersParentView"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 141
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 142
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    .line 142
    sub-int v0, v2, v3

    .line 144
    .local v0, "height":I
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    .line 145
    const/16 v5, 0x50

    .line 144
    invoke-direct {v3, v4, v0, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .end local v0    # "height":I
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public setClockPickerCallback(Lcom/sonymobile/keyguard/clock/picker/ClockPickerCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonymobile/keyguard/clock/picker/ClockPickerCallback;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPickerCallback:Lcom/sonymobile/keyguard/clock/picker/ClockPickerCallback;

    .line 535
    return-void
.end method

.method public startClockPicker(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->displayClockPickerView(Landroid/view/ViewGroup;)V

    .line 97
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPickerCallback:Lcom/sonymobile/keyguard/clock/picker/ClockPickerCallback;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPickerCallback:Lcom/sonymobile/keyguard/clock/picker/ClockPickerCallback;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerCallback;->onClockPickerStarted()V

    .line 93
    :cond_0
    return-void
.end method

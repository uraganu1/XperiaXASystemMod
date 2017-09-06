.class public Lcom/android/incallui/SomcCallWidgetFragment;
.super Lcom/android/incallui/BaseFragment;
.source "SomcCallWidgetFragment.java"

# interfaces
.implements Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;,
        Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/SomcCallWidgetPresenter;",
        "Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;",
        ">;",
        "Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;"
    }
.end annotation


# static fields
.field private static synthetic -com_android_incallui_SomcCallWidgetFragment$WidgetModeSwitchesValues:[I

.field private static synthetic -com_android_incallui_callwidget_SomcCallWidgetManager$WidgetTypeSwitchesValues:[I


# instance fields
.field private mAreaReserved:Z

.field private mButtonMinWidth:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLandscape:Z

.field private mMenuAnimatorSet:Landroid/animation/AnimatorSet;

.field private mMenuOnTouchListener:Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;

.field private mMode:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

.field private mOldNbrOfVisibleItems:I

.field private mSingleLayout:Z

.field private mWidgetItems:Landroid/view/ViewGroup;

.field private mWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/callwidget/ISomcCallWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/incallui/SomcCallWidgetFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mAreaReserved:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/incallui/SomcCallWidgetFragment;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMenuAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/incallui/SomcCallWidgetFragment;)Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMode:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/incallui/SomcCallWidgetFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetList:Ljava/util/List;

    return-object v0
.end method

.method private static synthetic -getcom_android_incallui_SomcCallWidgetFragment$WidgetModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/incallui/SomcCallWidgetFragment;->-com_android_incallui_SomcCallWidgetFragment$WidgetModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SomcCallWidgetFragment;->-com_android_incallui_SomcCallWidgetFragment$WidgetModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->values()[Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->AFTERCALL:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    invoke-virtual {v1}, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->CALLING:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    invoke-virtual {v1}, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->DISABLED:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    invoke-virtual {v1}, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->INCALL:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    invoke-virtual {v1}, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->INCOMING:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    invoke-virtual {v1}, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/incallui/SomcCallWidgetFragment;->-com_android_incallui_SomcCallWidgetFragment$WidgetModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_android_incallui_callwidget_SomcCallWidgetManager$WidgetTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/incallui/SomcCallWidgetFragment;->-com_android_incallui_callwidget_SomcCallWidgetManager$WidgetTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SomcCallWidgetFragment;->-com_android_incallui_callwidget_SomcCallWidgetManager$WidgetTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->values()[Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_BACKGROUND:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_DIALOG:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_MAIN:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/incallui/SomcCallWidgetFragment;->-com_android_incallui_callwidget_SomcCallWidgetManager$WidgetTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/incallui/SomcCallWidgetFragment;I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "widgetType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/SomcCallWidgetFragment;->findWidgetContainerByType(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/incallui/SomcCallWidgetFragment;Landroid/view/ViewGroup;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "button"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/SomcCallWidgetFragment;->getImageFromWidgetLayout(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/incallui/SomcCallWidgetFragment;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 1
    .param p1, "button"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/SomcCallWidgetFragment;->getTextFromWidgetLayout(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/incallui/SomcCallWidgetFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->isBackgroundAreaUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/incallui/SomcCallWidgetFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->isOverlappingWidgetAreaUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/incallui/SomcCallWidgetFragment;I)Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;
    .locals 1
    .param p1, "widgetType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/SomcCallWidgetFragment;->getWidgetType(I)Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/incallui/SomcCallWidgetFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "widgetList"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/SomcCallWidgetFragment;->refresh(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/incallui/SomcCallWidgetFragment;Lcom/android/incallui/callwidget/ISomcCallWidget;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V
    .locals 0
    .param p1, "widget"    # Lcom/android/incallui/callwidget/ISomcCallWidget;
    .param p2, "button"    # Landroid/view/ViewGroup;
    .param p3, "buttonImage"    # Landroid/widget/ImageView;
    .param p4, "buttonText"    # Landroid/widget/TextView;
    .param p5, "pressed"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/incallui/SomcCallWidgetFragment;->setButtonPressed(Lcom/android/incallui/callwidget/ISomcCallWidget;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 52
    new-instance v0, Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;-><init>(Lcom/android/incallui/SomcCallWidgetFragment;Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;)V

    iput-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMenuOnTouchListener:Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;

    .line 53
    sget-object v0, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->DISABLED:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    iput-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMode:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mOldNbrOfVisibleItems:I

    .line 40
    return-void
.end method

.method private animateAndRefresh()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 307
    iget-object v5, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMenuAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMenuAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    iget-object v5, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/android/incallui/SomcCallWidgetFragment;->refresh(Ljava/util/List;)V

    .line 306
    :goto_0
    return-void

    .line 308
    :cond_0
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMenuAnimatorSet:Landroid/animation/AnimatorSet;

    .line 309
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getView()Landroid/view/View;

    move-result-object v4

    .line 310
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 311
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 312
    const v6, 0x7f0a000e

    .line 311
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 313
    .local v2, "duration":I
    const-string/jumbo v5, "translationY"

    new-array v6, v9, [F

    int-to-float v7, v3

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 314
    .local v0, "animSlideDown":Landroid/animation/ObjectAnimator;
    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 315
    new-instance v5, Lcom/android/incallui/SomcCallWidgetFragment$3;

    invoke-direct {v5, p0, v4}, Lcom/android/incallui/SomcCallWidgetFragment$3;-><init>(Lcom/android/incallui/SomcCallWidgetFragment;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 324
    const-string/jumbo v5, "translationY"

    new-array v6, v9, [F

    const/4 v7, 0x0

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 325
    .local v1, "animSlideUp":Landroid/animation/ObjectAnimator;
    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 326
    iget-object v5, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMenuAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v8

    aput-object v1, v6, v9

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 327
    iget-object v5, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMenuAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private createWidgetItems(Ljava/util/List;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/callwidget/ISomcCallWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "widgetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/callwidget/ISomcCallWidget;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetList:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_1

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "w$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/incallui/callwidget/ISomcCallWidget;

    .line 385
    .local v15, "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-interface {v15}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 387
    .local v4, "b":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 388
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 394
    .end local v4    # "b":Landroid/view/ViewGroup;
    .end local v15    # "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    .end local v16    # "w$iterator":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetList:Ljava/util/List;

    .line 395
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v13, "oldButtons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewGroup;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_2

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 399
    :cond_2
    const/16 v19, 0x0

    .line 401
    .local v19, "widgetIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetList:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SomcCallWidgetFragment;->isDetached()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 381
    :cond_3
    return-void

    .line 401
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SomcCallWidgetFragment;->isRemoving()Z

    move-result v20

    if-nez v20, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SomcCallWidgetFragment;->isAdded()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 402
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getNbrVisibleWidgets()I

    move-result v14

    .line 403
    .local v14, "sizeOfVisibleWidgets":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mOldNbrOfVisibleItems:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    .line 404
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mOldNbrOfVisibleItems:I

    .line 407
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mSingleLayout:Z

    .line 408
    .local v11, "lastSingleLayout":Z
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_a

    const/16 v20, 0x1

    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/SomcCallWidgetFragment;->mSingleLayout:Z

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "widget$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/incallui/callwidget/ISomcCallWidget;

    .line 410
    .local v17, "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v13, v1}, Lcom/android/incallui/SomcCallWidgetFragment;->getButton(Ljava/util/ArrayList;Lcom/android/incallui/callwidget/ISomcCallWidget;)Landroid/view/ViewGroup;

    move-result-object v12

    .line 412
    .local v12, "oldButton":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/incallui/SomcCallWidgetFragment;->isVisibleInCurrentMode(Lcom/android/incallui/callwidget/ISomcCallWidget;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 413
    const/4 v5, 0x0

    .line 419
    .local v5, "button":Landroid/view/ViewGroup;
    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mSingleLayout:Z

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v11, :cond_b

    .line 420
    move-object v5, v12

    .line 427
    .end local v5    # "button":Landroid/view/ViewGroup;
    .end local v12    # "oldButton":Landroid/view/ViewGroup;
    :cond_6
    :goto_4
    if-nez v5, :cond_7

    .line 428
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mSingleLayout:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const v22, 0x7f040051

    const/16 v23, 0x0

    .line 429
    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 431
    .local v5, "button":Landroid/view/ViewGroup;
    invoke-interface/range {v17 .. v17}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getButtonBackgroundColor()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/android/incallui/SomcCallWidgetFragment;->setBackgroundColor(Landroid/view/ViewGroup;I)V

    .line 438
    .end local v5    # "button":Landroid/view/ViewGroup;
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/SomcCallWidgetFragment;->getImageFromWidgetLayout(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v6

    .line 439
    .local v6, "buttonImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/SomcCallWidgetFragment;->getTextFromWidgetLayout(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v8

    .line 440
    .local v8, "buttonText":Landroid/widget/TextView;
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setId(I)V

    .line 441
    invoke-interface/range {v17 .. v17}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 442
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mButtonMinWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 443
    invoke-interface/range {v17 .. v17}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 444
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    invoke-interface/range {v17 .. v17}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getStatus()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 445
    invoke-interface/range {v17 .. v17}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getDisabledIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 446
    const v20, 0x7f07008d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/incallui/SomcCallWidgetFragment;->getColor(I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mSingleLayout:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 450
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 460
    :cond_8
    :goto_6
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    invoke-interface/range {v17 .. v17}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getText()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mMenuOnTouchListener:Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 463
    if-nez v12, :cond_9

    .line 464
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/incallui/SomcCallWidgetFragment;->insertWidget(Landroid/view/ViewGroup;Lcom/android/incallui/callwidget/ISomcCallWidget;)V

    .line 473
    .end local v6    # "buttonImage":Landroid/widget/ImageView;
    .end local v8    # "buttonText":Landroid/widget/TextView;
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_9
    :goto_7
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 408
    .end local v17    # "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    .end local v18    # "widget$iterator":Ljava/util/Iterator;
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 421
    .local v5, "button":Landroid/view/ViewGroup;
    .restart local v12    # "oldButton":Landroid/view/ViewGroup;
    .restart local v17    # "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    .restart local v18    # "widget$iterator":Ljava/util/Iterator;
    :cond_b
    if-eqz v12, :cond_6

    .line 422
    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 424
    const/4 v12, 0x0

    .local v12, "oldButton":Landroid/view/ViewGroup;
    goto/16 :goto_4

    .line 433
    .end local v5    # "button":Landroid/view/ViewGroup;
    .end local v12    # "oldButton":Landroid/view/ViewGroup;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const v22, 0x7f04004f

    const/16 v23, 0x0

    .line 433
    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 435
    .local v7, "buttonLayout":Landroid/view/ViewGroup;
    const v20, 0x7f0f00ee

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .local v5, "button":Landroid/view/ViewGroup;
    goto/16 :goto_5

    .line 453
    .end local v5    # "button":Landroid/view/ViewGroup;
    .end local v7    # "buttonLayout":Landroid/view/ViewGroup;
    .restart local v6    # "buttonImage":Landroid/widget/ImageView;
    .restart local v8    # "buttonText":Landroid/widget/TextView;
    .restart local v10    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/incallui/SomcCallWidgetFragment;->getTextColor(Lcom/android/incallui/callwidget/ISomcCallWidget;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mSingleLayout:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 456
    const v20, 0x7f020123

    .line 455
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 457
    invoke-interface/range {v17 .. v17}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getButtonBackgroundColor()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/android/incallui/SomcCallWidgetFragment;->setBackgroundColor(Landroid/view/ViewGroup;I)V

    goto/16 :goto_6

    .line 467
    .end local v6    # "buttonImage":Landroid/widget/ImageView;
    .end local v8    # "buttonText":Landroid/widget/TextView;
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .local v12, "oldButton":Landroid/view/ViewGroup;
    :cond_e
    if-eqz v12, :cond_9

    .line 469
    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_7
.end method

.method private findWidgetContainerByType(I)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "widgetType"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/incallui/SomcCallWidgetFragment;->getWidgetType(I)Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    move-result-object v0

    .line 124
    .local v0, "type":Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;
    invoke-direct {p0, v0}, Lcom/android/incallui/SomcCallWidgetFragment;->findWidgetContainerByType(Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;)Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1
.end method

.method private findWidgetContainerByType(Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;)Landroid/view/ViewGroup;
    .locals 4
    .param p1, "widgetType"    # Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 129
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 130
    return-object v2

    .line 132
    :cond_0
    const/4 v1, 0x0

    .line 133
    .local v1, "container":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/android/incallui/SomcCallWidgetFragment;->-getcom_android_incallui_callwidget_SomcCallWidgetManager$WidgetTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 144
    .end local v1    # "container":Landroid/view/ViewGroup;
    :goto_0
    return-object v1

    .line 135
    .restart local v1    # "container":Landroid/view/ViewGroup;
    :pswitch_0
    const v2, 0x7f0f00c9

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "container":Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "container":Landroid/view/ViewGroup;
    goto :goto_0

    .line 138
    .local v1, "container":Landroid/view/ViewGroup;
    :pswitch_1
    const v2, 0x7f0f00cd

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "container":Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "container":Landroid/view/ViewGroup;
    goto :goto_0

    .line 141
    .local v1, "container":Landroid/view/ViewGroup;
    :pswitch_2
    const v2, 0x7f0f00ce

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "container":Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "container":Landroid/view/ViewGroup;
    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getButton(Ljava/util/ArrayList;Lcom/android/incallui/callwidget/ISomcCallWidget;)Landroid/view/ViewGroup;
    .locals 4
    .param p2, "widget"    # Lcom/android/incallui/callwidget/ISomcCallWidget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Lcom/android/incallui/callwidget/ISomcCallWidget;",
            ")",
            "Landroid/view/ViewGroup;"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, "buttonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewGroup;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "button$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 537
    .local v0, "button":Landroid/view/ViewGroup;
    invoke-interface {p2}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 538
    return-object v0

    .line 541
    .end local v0    # "button":Landroid/view/ViewGroup;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getColor(I)I
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private getImageFromWidgetLayout(Landroid/view/ViewGroup;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "button"    # Landroid/view/ViewGroup;

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mSingleLayout:Z

    if-eqz v0, :cond_0

    .line 520
    const v0, 0x7f0f00f4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0

    .line 522
    :cond_0
    const v0, 0x7f0f00ef

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private getNbrVisibleWidgets()I
    .locals 4

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "nbrOfVisible":I
    iget-object v3, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "widget$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/callwidget/ISomcCallWidget;

    .line 547
    .local v1, "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    invoke-direct {p0, v1}, Lcom/android/incallui/SomcCallWidgetFragment;->isVisibleInCurrentMode(Lcom/android/incallui/callwidget/ISomcCallWidget;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    .end local v1    # "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    :cond_1
    return v0
.end method

.method private getTextColor(Lcom/android/incallui/callwidget/ISomcCallWidget;)I
    .locals 2
    .param p1, "widget"    # Lcom/android/incallui/callwidget/ISomcCallWidget;

    .prologue
    .line 488
    invoke-interface {p1}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getButtonTextColor()I

    move-result v0

    .line 489
    .local v0, "color":I
    if-nez v0, :cond_0

    .line 490
    const v1, 0x7f07008c

    .line 489
    invoke-direct {p0, v1}, Lcom/android/incallui/SomcCallWidgetFragment;->getColor(I)I

    move-result v0

    .end local v0    # "color":I
    :cond_0
    return v0
.end method

.method private getTextFromWidgetLayout(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 1
    .param p1, "button"    # Landroid/view/ViewGroup;

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mSingleLayout:Z

    if-eqz v0, :cond_0

    .line 528
    const v0, 0x7f0f00f5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0

    .line 530
    :cond_0
    const v0, 0x7f0f00f0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private getWidget(Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v2, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "w$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callwidget/ISomcCallWidget;

    .line 511
    .local v0, "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    invoke-interface {v0}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    return-object v0

    .line 515
    .end local v0    # "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getWidgetType(I)Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;
    .locals 1
    .param p1, "widgetType"    # I

    .prologue
    .line 115
    invoke-static {p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->valueOf(I)Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    move-result-object v0

    .line 116
    .local v0, "type":Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;
    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_MAIN:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    .line 119
    :cond_0
    return-object v0
.end method

.method private hasRemoteViews(Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;)Z
    .locals 3
    .param p1, "widgetType"    # Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1}, Lcom/android/incallui/SomcCallWidgetFragment;->findWidgetContainerByType(Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 149
    .local v0, "widgetContainer":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private insertWidget(Landroid/view/ViewGroup;Lcom/android/incallui/callwidget/ISomcCallWidget;)V
    .locals 5
    .param p1, "button"    # Landroid/view/ViewGroup;
    .param p2, "widget"    # Lcom/android/incallui/callwidget/ISomcCallWidget;

    .prologue
    .line 494
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 495
    iget-object v3, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 496
    .local v0, "b":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/incallui/SomcCallWidgetFragment;->getWidget(Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v2

    .line 498
    .local v2, "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    if-nez v2, :cond_1

    .line 494
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    :cond_1
    invoke-interface {v2}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getPrio()I

    move-result v3

    invoke-interface {p2}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getPrio()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 502
    iget-object v3, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 503
    return-void

    .line 506
    .end local v0    # "b":Landroid/view/View;
    .end local v2    # "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 493
    return-void
.end method

.method private isBackgroundAreaUsed()Z
    .locals 3

    .prologue
    .line 171
    sget-object v2, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_BACKGROUND:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    invoke-direct {p0, v2}, Lcom/android/incallui/SomcCallWidgetFragment;->findWidgetContainerByType(Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 172
    .local v0, "containerView":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .line 173
    .local v1, "isContainerVisible":Z
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 176
    :cond_0
    :goto_0
    return v1

    .line 174
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOverlappingWidgetAreaUsed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 159
    sget-object v0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_MAIN:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcCallWidgetFragment;->hasRemoteViews(Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    return v2

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMode:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    sget-object v1, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->INCOMING:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    if-eq v0, v1, :cond_1

    .line 163
    sget-object v0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_DIALOG:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcCallWidgetFragment;->hasRemoteViews(Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    return v2

    .line 167
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isVisibleInCurrentMode(Lcom/android/incallui/callwidget/ISomcCallWidget;)Z
    .locals 3
    .param p1, "widget"    # Lcom/android/incallui/callwidget/ISomcCallWidget;

    .prologue
    const/4 v2, 0x0

    .line 556
    invoke-interface {p1}, Lcom/android/incallui/callwidget/ISomcCallWidget;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    return v2

    .line 559
    :cond_0
    invoke-static {}, Lcom/android/incallui/SomcCallWidgetFragment;->-getcom_android_incallui_SomcCallWidgetFragment$WidgetModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMode:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    invoke-virtual {v1}, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 568
    :pswitch_0
    return v2

    .line 561
    :pswitch_1
    invoke-interface {p1}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getVisibleWhenCalling()Z

    move-result v0

    return v0

    .line 563
    :pswitch_2
    invoke-interface {p1}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getVisibleDuringCall()Z

    move-result v0

    return v0

    .line 565
    :pswitch_3
    invoke-interface {p1}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getVisibleAfterCall()Z

    move-result v0

    return v0

    .line 559
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private postWidgetModeChange(Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;)V
    .locals 5
    .param p1, "oldMode"    # Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    .prologue
    .line 257
    sget-object v2, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->INCOMING:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    if-ne p1, v2, :cond_0

    .line 259
    sget-object v2, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_DIALOG:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    invoke-direct {p0, v2}, Lcom/android/incallui/SomcCallWidgetFragment;->findWidgetContainerByType(Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 258
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 261
    .local v0, "dialogLayer":Landroid/widget/RelativeLayout;
    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 262
    invoke-direct {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->isOverlappingWidgetAreaUsed()Z

    move-result v1

    .line 263
    .local v1, "fgAreaUsed":Z
    if-eqz v1, :cond_0

    .line 264
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    .line 265
    invoke-direct {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->isBackgroundAreaUsed()Z

    move-result v3

    const/4 v4, 0x0

    .line 264
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/incallui/InCallPresenter;->setWidgetAreaUsed(ZZLandroid/view/ViewGroup;)V

    .line 256
    .end local v0    # "dialogLayer":Landroid/widget/RelativeLayout;
    .end local v1    # "fgAreaUsed":Z
    :cond_0
    return-void
.end method

.method private preWidgetModeChange(Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;)V
    .locals 6
    .param p1, "newMode"    # Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    .prologue
    .line 242
    sget-object v2, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->INCOMING:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    if-ne p1, v2, :cond_0

    .line 244
    sget-object v2, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_DIALOG:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    invoke-direct {p0, v2}, Lcom/android/incallui/SomcCallWidgetFragment;->findWidgetContainerByType(Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 243
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 246
    .local v0, "dialogLayer":Landroid/widget/RelativeLayout;
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 247
    invoke-direct {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->isOverlappingWidgetAreaUsed()Z

    move-result v1

    .line 248
    .local v1, "fgAreaUsed":Z
    if-eqz v1, :cond_0

    .line 250
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    .line 251
    invoke-direct {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->isBackgroundAreaUsed()Z

    move-result v3

    .line 250
    const/4 v4, 0x0

    .line 251
    const/4 v5, 0x0

    .line 250
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/incallui/InCallPresenter;->setWidgetAreaUsed(ZZLandroid/view/ViewGroup;)V

    .line 241
    .end local v0    # "dialogLayer":Landroid/widget/RelativeLayout;
    .end local v1    # "fgAreaUsed":Z
    :cond_0
    return-void
.end method

.method private refresh(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/callwidget/ISomcCallWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "widgetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/callwidget/ISomcCallWidget;>;"
    const/4 v2, 0x0

    .line 360
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-direct {p0, p1}, Lcom/android/incallui/SomcCallWidgetFragment;->createWidgetItems(Ljava/util/List;)V

    .line 365
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMode:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    sget-object v1, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->INCALL:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMode:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    sget-object v1, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->CALLING:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    if-ne v0, v1, :cond_2

    .line 368
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SomcCallWidgetFragment;->setVisible(Z)V

    .line 359
    :goto_0
    return-void

    .line 361
    :cond_1
    return-void

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMode:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    sget-object v1, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->AFTERCALL:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    if-eq v0, v1, :cond_0

    .line 370
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/incallui/SomcCallWidgetFragment;->setVisible(Z)V

    goto :goto_0
.end method

.method private setBackgroundColor(Landroid/view/ViewGroup;I)V
    .locals 3
    .param p1, "button"    # Landroid/view/ViewGroup;
    .param p2, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 479
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 480
    .local v0, "bgShape":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 482
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-nez p2, :cond_0

    .line 483
    const v2, 0x7f070090

    .line 482
    invoke-direct {p0, v2}, Lcom/android/incallui/SomcCallWidgetFragment;->getColor(I)I

    move-result p2

    .line 484
    :cond_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 478
    return-void
.end method

.method private setButtonPressed(Lcom/android/incallui/callwidget/ISomcCallWidget;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V
    .locals 1
    .param p1, "widget"    # Lcom/android/incallui/callwidget/ISomcCallWidget;
    .param p2, "button"    # Landroid/view/ViewGroup;
    .param p3, "buttonImage"    # Landroid/widget/ImageView;
    .param p4, "buttonText"    # Landroid/widget/TextView;
    .param p5, "pressed"    # Z

    .prologue
    .line 616
    if-eqz p5, :cond_1

    .line 618
    const v0, 0x106000b

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcCallWidgetFragment;->getColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 619
    invoke-interface {p1}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getIconPressed()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 622
    invoke-direct {p0, p1}, Lcom/android/incallui/SomcCallWidgetFragment;->getTextColor(Lcom/android/incallui/callwidget/ISomcCallWidget;)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 623
    invoke-interface {p1}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUpWidgets()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 335
    const-string/jumbo v2, "CallWidgetFragment"

    const-string/jumbo v3, "cleanUpWidgets()"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v2, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_DIALOG:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/incallui/SomcCallWidgetFragment;->showWidget(Landroid/widget/RemoteViews;I)V

    .line 337
    sget-object v2, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_MAIN:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/incallui/SomcCallWidgetFragment;->showWidget(Landroid/widget/RemoteViews;I)V

    .line 338
    sget-object v2, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_BACKGROUND:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/incallui/SomcCallWidgetFragment;->showWidget(Landroid/widget/RemoteViews;I)V

    .line 339
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/SomcCallWidgetFragment;->setVisible(Z)V

    .line 341
    iget-object v2, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 342
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 347
    iget-object v2, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 348
    .local v1, "widget":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 349
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 346
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    .end local v1    # "widget":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public configureWidgetMode(Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;Z)V
    .locals 5
    .param p1, "mode"    # Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;
    .param p2, "widgetAreaReserved"    # Z

    .prologue
    .line 280
    const-string/jumbo v2, "CallWidgetFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "configureWidgetMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iput-boolean p2, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mAreaReserved:Z

    .line 282
    iget-object v2, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMode:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    if-eq p1, v2, :cond_0

    .line 283
    invoke-direct {p0, p1}, Lcom/android/incallui/SomcCallWidgetFragment;->preWidgetModeChange(Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;)V

    .line 285
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMode:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    .line 286
    .local v0, "lastMode":Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;
    iput-object p1, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mMode:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    .line 288
    invoke-direct {p0, v0}, Lcom/android/incallui/SomcCallWidgetFragment;->postWidgetModeChange(Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 292
    .local v1, "v":Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mLandscape:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 293
    invoke-direct {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->animateAndRefresh()V

    .line 279
    .end local v0    # "lastMode":Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 296
    .restart local v0    # "lastMode":Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/incallui/SomcCallWidgetFragment;->refresh(Ljava/util/List;)V

    goto :goto_0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->createPresenter()Lcom/android/incallui/SomcCallWidgetPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/android/incallui/SomcCallWidgetPresenter;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-direct {v0}, Lcom/android/incallui/SomcCallWidgetPresenter;-><init>()V

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;
    .locals 0

    .prologue
    .line 73
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getUi()Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 109
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 110
    .local v0, "call":Lcom/android/incallui/Call;
    const-string/jumbo v2, "CallWidgetFragment"

    const-string/jumbo v3, "onActivityCreated"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/SomcCallWidgetPresenter;->init(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const-string/jumbo v0, "CallWidgetFragment"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 85
    iput-object p1, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 86
    const v4, 0x7f040050

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 88
    .local v1, "parent":Landroid/view/View;
    const v4, 0x7f0f00f2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    .line 90
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 91
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mLandscape:Z

    .line 92
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 93
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 94
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 98
    iget v4, v3, Landroid/graphics/Point;->x:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0xb

    iput v4, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mButtonMinWidth:I

    .line 100
    const-string/jumbo v4, "CallWidgetFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreateView: mLandscape: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mLandscape:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-object v1

    .end local v0    # "display":Landroid/view/Display;
    .end local v3    # "size":Landroid/graphics/Point;
    :cond_0
    move v4, v5

    .line 91
    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 633
    if-eqz p1, :cond_3

    .line 634
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 635
    return-void

    .line 637
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment;->mWidgetItems:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 638
    :cond_1
    return-void

    .line 640
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 641
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 632
    :goto_0
    return-void

    .line 643
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showWidget(Landroid/widget/RemoteViews;I)V
    .locals 2
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "widgetType"    # I

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/SomcCallWidgetFragment$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/incallui/SomcCallWidgetFragment$1;-><init>(Lcom/android/incallui/SomcCallWidgetFragment;Landroid/widget/RemoteViews;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public updateWidgetMenu(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/callwidget/ISomcCallWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "widgetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/callwidget/ISomcCallWidget;>;"
    const-string/jumbo v0, "CallWidgetFragment"

    const-string/jumbo v1, "updateWidgetMenu"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/SomcCallWidgetFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/SomcCallWidgetFragment$2;-><init>(Lcom/android/incallui/SomcCallWidgetFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method

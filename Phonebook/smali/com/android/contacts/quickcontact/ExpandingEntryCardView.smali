.class public Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.super Landroid/support/v7/widget/CardView;
.source "ExpandingEntryCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$1;
    }
.end annotation


# static fields
.field private static final ATTR_SELECTABLE_BACKGROUND_BORDERLESS:[I

.field private static final DELAY_EXPAND_ANIMATION_FADE_IN:I = 0x64

.field public static final DURATION_COLLAPSE_ANIMATION_CHANGE_BOUNDS:I = 0x12c

.field public static final DURATION_EXPAND_ANIMATION_CHANGE_BOUNDS:I = 0x12c

.field private static final DURATION_EXPAND_ANIMATION_FADE_IN:I = 0xc8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllEntriesInflated:Z

.field private mAnimationViewGroup:Landroid/view/ViewGroup;

.field private mBadgeContainer:Landroid/widget/LinearLayout;

.field private final mBadgeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mCollapseButtonText:Ljava/lang/CharSequence;

.field private mCollapsedEntriesCount:I

.field private mContainer:Landroid/widget/LinearLayout;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEntriesViewGroup:Landroid/widget/LinearLayout;

.field private mEntryViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExpandButtonText:Ljava/lang/CharSequence;

.field private final mExpandCollapseArrow:Landroid/widget/ImageView;

.field private mExpandCollapseButton:Landroid/view/View;

.field private final mExpandCollapseButtonListener:Landroid/view/View$OnClickListener;

.field private mExpandCollapseTextView:Landroid/widget/TextView;

.field private mIsAlwaysExpanded:Z

.field private mIsExpanded:Z

.field private mListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

.field private mNumEntries:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mSeparators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeColor:I

.field private mThemeColorFilter:Landroid/graphics/ColorFilter;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->collapse()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->expand()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const-class v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->TAG:Ljava/lang/String;

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 82
    const v1, 0x101045c

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 81
    sput-object v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->ATTR_SELECTABLE_BACKGROUND_BORDERLESS:[I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x0

    .line 309
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 264
    iput-boolean v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    .line 273
    iput v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    .line 274
    iput-boolean v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAllEntriesInflated:Z

    .line 293
    new-instance v5, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$1;

    invoke-direct {v5, p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$1;-><init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V

    iput-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButtonListener:Landroid/view/View$OnClickListener;

    .line 310
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 311
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040076

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 313
    .local v2, "expandingEntryCardView":Landroid/view/View;
    const v5, 0x7f0e014c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 312
    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    .line 314
    const v5, 0x7f0e00be

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    .line 315
    const v5, 0x7f0e014a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mContainer:Landroid/widget/LinearLayout;

    .line 318
    const v5, 0x7f0400bd

    .line 317
    invoke-virtual {v4, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    .line 319
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    const v6, 0x7f0e0148

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseTextView:Landroid/widget/TextView;

    .line 320
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    const v6, 0x7f0e01f1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseArrow:Landroid/widget/ImageView;

    .line 321
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    const v6, 0x7f0e01f2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadgeContainer:Landroid/widget/LinearLayout;

    .line 324
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadges:Ljava/util/List;

    .line 325
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadgeIds:Ljava/util/List;

    .line 327
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/R$styleable;->ExpandingEntryCardView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 329
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 328
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 330
    .local v1, "contentColor":I
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 331
    .local v3, "filter":Landroid/graphics/ColorFilter;
    invoke-direct {p0, v1, v3}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setColorAndFilter(ILandroid/graphics/ColorFilter;)V

    .line 332
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    return-void
.end method

.method private addEntry(Landroid/view/View;)V
    .locals 4
    .param p1, "entry"    # Landroid/view/View;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 474
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 475
    const v2, 0x7f0d0139

    .line 474
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 476
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 477
    const v3, 0x7f0d0135

    .line 476
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 474
    add-int/2addr v1, v2

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 473
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 469
    return-void
.end method

.method private collapse()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    .line 908
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    .line 909
    .local v2, "startingHeight":I
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    .line 910
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getExpandButtonText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5, v6, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->updateExpandCollapseButton(Ljava/lang/CharSequence;J)V

    .line 913
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    .line 914
    .local v0, "boundsTransition":Landroid/transition/ChangeBounds;
    invoke-virtual {v0, v6, v7}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    .line 916
    new-instance v1, Landroid/transition/ChangeScroll;

    invoke-direct {v1}, Landroid/transition/ChangeScroll;-><init>()V

    .line 917
    .local v1, "scrollTransition":Landroid/transition/ChangeScroll;
    invoke-virtual {v1, v6, v7}, Landroid/transition/ChangeScroll;->setDuration(J)Landroid/transition/Transition;

    .line 919
    new-instance v3, Landroid/transition/TransitionSet;

    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    .line 920
    .local v3, "transitionSet":Landroid/transition/TransitionSet;
    invoke-virtual {v3, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 921
    invoke-virtual {v3, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 923
    const v5, 0x7f0e0148

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/transition/TransitionSet;->excludeTarget(IZ)Landroid/transition/Transition;

    .line 925
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAnimationViewGroup:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    .line 926
    move-object v4, p0

    .line 928
    .local v4, "transitionViewContainer":Landroid/view/ViewGroup;
    :goto_0
    new-instance v5, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;

    invoke-direct {v5, p0, v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;-><init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;I)V

    invoke-virtual {v0, v5}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 956
    invoke-static {v4, v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 958
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->insertEntriesIntoViewGroup()V

    .line 907
    return-void

    .line 926
    .end local v4    # "transitionViewContainer":Landroid/view/ViewGroup;
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAnimationViewGroup:Landroid/view/ViewGroup;

    .restart local v4    # "transitionViewContainer":Landroid/view/ViewGroup;
    goto :goto_0
.end method

.method private createEntryView(Landroid/view/LayoutInflater;Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;I)Landroid/view/View;
    .locals 32
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "entry"    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    .param p3, "iconVisibility"    # I

    .prologue
    .line 626
    const v28, 0x7f040075

    const/16 v29, 0x0

    .line 625
    move-object/from16 v0, p1

    move/from16 v1, v28

    move-object/from16 v2, p0

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;

    .line 629
    .local v27, "view":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isPhoneShownAsPrimaryIcon(Landroid/content/Context;)Z

    move-result v28

    .line 629
    if-eqz v28, :cond_0

    .line 631
    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 634
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getEntryContextMenuInfo()Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setContextMenuInfo(Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;)V

    .line 636
    const v28, 0x7f0e0145

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 637
    .local v12, "header":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getHeader()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_7

    .line 638
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getHeader()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColor:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 644
    :goto_0
    const v28, 0x7f0e0146

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 645
    .local v22, "subHeader":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getSubHeader()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_8

    .line 646
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getSubHeader()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    :goto_1
    const v28, 0x7f0e0147

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 652
    .local v23, "subHeaderIcon":Landroid/widget/ImageView;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getSubHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    if-eqz v28, :cond_9

    .line 653
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getSubHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 658
    :goto_2
    const v28, 0x7f0e0148

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 659
    .local v24, "text":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getText()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_b

    .line 660
    sget-object v28, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getText()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->matches()Z

    move-result v28

    if-eqz v28, :cond_a

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getText()Ljava/lang/String;

    move-result-object v29

    .line 661
    invoke-static/range {v28 .. v29}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 663
    .local v20, "number":Ljava/lang/CharSequence;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    .end local v20    # "number":Ljava/lang/CharSequence;
    :goto_3
    const v28, 0x7f0e0149

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 672
    .local v25, "textIcon":Landroid/widget/ImageView;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getTextIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    if-eqz v28, :cond_c

    .line 673
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getTextIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 680
    :goto_4
    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v28

    if-nez v28, :cond_1

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 681
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 683
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 684
    .local v13, "headerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 685
    const v29, 0x7f0d0147

    .line 684
    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 686
    iget v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    .line 687
    const v30, 0x7f0d014b

    .line 686
    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 688
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 693
    .end local v13    # "headerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/16 v28, 0x4

    move/from16 v0, p3

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 694
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getSubHeader()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getText()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 700
    :cond_2
    const/16 v28, 0x4

    move/from16 v0, p3

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getSubHeader()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 701
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getText()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    .line 700
    if-eqz v28, :cond_3

    .line 702
    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->getPaddingStart()I

    move-result v28

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->getPaddingEnd()I

    move-result v29

    .line 703
    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->getPaddingBottom()I

    move-result v30

    .line 702
    const/16 v31, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v31

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setPaddingRelative(IIII)V

    .line 706
    :cond_3
    :goto_5
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 707
    .local v8, "actionItemViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getActionItems()Ljava/util/List;

    move-result-object v9

    .line 709
    .local v9, "actionItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    .line 711
    .local v19, "length":I
    const v28, 0x7f0e0144

    .line 710
    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 714
    .local v7, "actionItemContainer":Landroid/widget/LinearLayout;
    const/16 v28, 0x1

    move/from16 v0, v19

    move/from16 v1, v28

    if-le v0, v1, :cond_e

    const/16 v28, 0x0

    :goto_6
    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 717
    const v29, 0x7f0d0142

    .line 716
    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v17, v0

    .line 718
    .local v17, "iconPaddingStart":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 719
    const v29, 0x7f0d0143

    .line 718
    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v16, v0

    .line 720
    .local v16, "iconPaddingEnd":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 721
    const v29, 0x7f0d0144

    .line 720
    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v18, v0

    .line 722
    .local v18, "iconPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 723
    const v29, 0x7f0d0145

    .line 722
    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v15, v0

    .line 725
    .local v15, "iconPaddingBottom":I
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    .line 726
    const/16 v28, -0x2

    const/16 v29, -0x1

    .line 725
    move-object/from16 v0, v21

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 728
    .local v21, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getContext()Landroid/content/Context;

    move-result-object v28

    .line 729
    sget-object v29, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->ATTR_SELECTABLE_BACKGROUND_BORDERLESS:[I

    .line 728
    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v26

    .line 731
    .local v26, "typedArray":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_7
    move/from16 v0, v19

    if-ge v14, v0, :cond_13

    .line 732
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    .line 733
    .local v6, "actionItem":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;
    if-nez v14, :cond_10

    .line 735
    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getContentDescription()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 736
    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getContentDescription()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 739
    :cond_4
    const v28, 0x7f0e004f

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 740
    .local v11, "entryIcon":Landroid/widget/ImageView;
    move/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 742
    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    if-eqz v28, :cond_5

    .line 743
    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 746
    :cond_5
    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getIntent()Landroid/content/Intent;

    move-result-object v28

    if-eqz v28, :cond_f

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    new-instance v28, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getId()I

    move-result v29

    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getPriority()I

    move-result v30

    .line 749
    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getIntent()Landroid/content/Intent;

    move-result-object v31

    .line 748
    invoke-direct/range {v28 .. v31}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;-><init>(IILandroid/content/Intent;)V

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setTag(Ljava/lang/Object;)V

    .line 731
    .end local v11    # "entryIcon":Landroid/widget/ImageView;
    :cond_6
    :goto_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 641
    .end local v6    # "actionItem":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;
    .end local v7    # "actionItemContainer":Landroid/widget/LinearLayout;
    .end local v8    # "actionItemViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    .end local v9    # "actionItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;>;"
    .end local v14    # "i":I
    .end local v15    # "iconPaddingBottom":I
    .end local v16    # "iconPaddingEnd":I
    .end local v17    # "iconPaddingStart":I
    .end local v18    # "iconPaddingTop":I
    .end local v19    # "length":I
    .end local v21    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v22    # "subHeader":Landroid/widget/TextView;
    .end local v23    # "subHeaderIcon":Landroid/widget/ImageView;
    .end local v24    # "text":Landroid/widget/TextView;
    .end local v25    # "textIcon":Landroid/widget/ImageView;
    .end local v26    # "typedArray":Landroid/content/res/TypedArray;
    :cond_7
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 648
    .restart local v22    # "subHeader":Landroid/widget/TextView;
    :cond_8
    const/16 v28, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 655
    .restart local v23    # "subHeaderIcon":Landroid/widget/ImageView;
    :cond_9
    const/16 v28, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 665
    .restart local v24    # "text":Landroid/widget/TextView;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getText()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 668
    :cond_b
    const/16 v28, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 675
    .restart local v25    # "textIcon":Landroid/widget/ImageView;
    :cond_c
    const/16 v28, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 695
    :cond_d
    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->getPaddingStart()I

    move-result v28

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    .line 697
    const v30, 0x7f0d014c

    .line 696
    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    .line 698
    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->getPaddingEnd()I

    move-result v30

    .line 699
    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->getPaddingBottom()I

    move-result v31

    .line 695
    invoke-virtual/range {v27 .. v31}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setPaddingRelative(IIII)V

    goto/16 :goto_5

    .line 714
    .restart local v7    # "actionItemContainer":Landroid/widget/LinearLayout;
    .restart local v8    # "actionItemViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    .restart local v9    # "actionItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;>;"
    .restart local v19    # "length":I
    :cond_e
    const/16 v28, 0x8

    goto/16 :goto_6

    .line 751
    .restart local v6    # "actionItem":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;
    .restart local v11    # "entryIcon":Landroid/widget/ImageView;
    .restart local v14    # "i":I
    .restart local v15    # "iconPaddingBottom":I
    .restart local v16    # "iconPaddingEnd":I
    .restart local v17    # "iconPaddingStart":I
    .restart local v18    # "iconPaddingTop":I
    .restart local v21    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v26    # "typedArray":Landroid/content/res/TypedArray;
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getEntryContextMenuInfo()Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    move-result-object v28

    if-nez v28, :cond_6

    .line 753
    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 759
    .end local v11    # "entryIcon":Landroid/widget/ImageView;
    :cond_10
    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    if-eqz v28, :cond_6

    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->isActive()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 764
    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 766
    .local v10, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 767
    .local v5, "actionImageView":Landroid/widget/ImageView;
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 768
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v5, v0, v1, v2, v15}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 771
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 772
    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 773
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 774
    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getIntent()Landroid/content/Intent;

    move-result-object v28

    if-eqz v28, :cond_12

    const/16 v28, 0x1

    :goto_9
    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getContentDescription()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 777
    new-instance v28, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getId()I

    move-result v29

    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getPriority()I

    move-result v30

    .line 778
    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getIntent()Landroid/content/Intent;

    move-result-object v31

    .line 777
    invoke-direct/range {v28 .. v31}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;-><init>(IILandroid/content/Intent;)V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 781
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_11

    .line 782
    const v28, 0x7f0e0143

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setNextFocusLeftId(I)V

    .line 785
    :cond_11
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 786
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 774
    :cond_12
    const/16 v28, 0x0

    goto :goto_9

    .line 789
    .end local v5    # "actionImageView":Landroid/widget/ImageView;
    .end local v6    # "actionItem":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;
    .end local v10    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_13
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    .line 792
    new-instance v28, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v8}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;-><init>(Landroid/view/View;Ljava/util/List;)V

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 795
    return-object v27
.end method

.method private expand()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v6, 0x1

    .line 857
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    .line 858
    .local v0, "boundsTransition":Landroid/transition/ChangeBounds;
    invoke-virtual {v0, v8, v9}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    .line 860
    new-instance v1, Landroid/transition/Fade;

    invoke-direct {v1, v6}, Landroid/transition/Fade;-><init>(I)V

    .line 861
    .local v1, "fadeIn":Landroid/transition/Fade;
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    .line 862
    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/transition/Fade;->setStartDelay(J)Landroid/transition/Transition;

    .line 864
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 865
    .local v2, "transitionSet":Landroid/transition/TransitionSet;
    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 866
    invoke-virtual {v2, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 868
    const v4, 0x7f0e0148

    invoke-virtual {v2, v4, v6}, Landroid/transition/TransitionSet;->excludeTarget(IZ)Landroid/transition/Transition;

    .line 870
    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAnimationViewGroup:Landroid/view/ViewGroup;

    if-nez v4, :cond_0

    .line 871
    move-object v3, p0

    .line 873
    .local v3, "transitionViewContainer":Landroid/view/ViewGroup;
    :goto_0
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$2;

    invoke-direct {v4, p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$2;-><init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V

    invoke-virtual {v2, v4}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 897
    invoke-static {v3, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 899
    iput-boolean v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    .line 901
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->inflateAllEntries(Landroid/view/LayoutInflater;)V

    .line 902
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->insertEntriesIntoViewGroup()V

    .line 903
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getCollapseButtonText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4, v8, v9}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->updateExpandCollapseButton(Ljava/lang/CharSequence;J)V

    .line 856
    return-void

    .line 871
    .end local v3    # "transitionViewContainer":Landroid/view/ViewGroup;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAnimationViewGroup:Landroid/view/ViewGroup;

    .restart local v3    # "transitionViewContainer":Landroid/view/ViewGroup;
    goto :goto_0
.end method

.method private generateSeparator(Landroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "entry"    # Landroid/view/View;

    .prologue
    .line 485
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 486
    .local v5, "separator":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 489
    .local v4, "res":Landroid/content/res/Resources;
    const v6, 0x7f080035

    .line 488
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 490
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 492
    const v6, 0x7f0d0136

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 491
    const/4 v7, -0x1

    .line 490
    invoke-direct {v2, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 496
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const v6, 0x7f0d0137

    .line 495
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 497
    .local v3, "marginStart":I
    const v6, 0x7f0e004f

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 498
    .local v0, "entryIcon":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 500
    const v6, 0x7f0d014e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 501
    const v7, 0x7f0d013b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 500
    add-int v1, v6, v7

    .line 502
    .local v1, "imageWidthAndMargin":I
    add-int/2addr v3, v1

    .line 504
    .end local v1    # "imageWidthAndMargin":I
    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 505
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    return-object v5
.end method

.method private getCollapseButtonText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapseButtonText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapseButtonText:Ljava/lang/CharSequence;

    return-object v0

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getExpandButtonText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandButtonText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandButtonText:Ljava/lang/CharSequence;

    return-object v0

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private inflateAllEntries(Landroid/view/LayoutInflater;)V
    .locals 8
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v7, 0x0

    .line 562
    iget-boolean v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAllEntriesInflated:Z

    if-eqz v6, :cond_0

    .line 563
    return-void

    .line 565
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 566
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 567
    .local v1, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;"
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 568
    .local v5, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "j":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 570
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;

    .line 573
    .local v0, "entry":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    invoke-virtual {v0, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getActionItem(I)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    .line 574
    const/16 v3, 0x8

    .line 580
    .local v3, "iconVisibility":I
    :goto_2
    invoke-direct {p0, p1, v0, v3}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->createEntryView(Landroid/view/LayoutInflater;Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 575
    .end local v3    # "iconVisibility":I
    :cond_1
    if-nez v4, :cond_2

    .line 576
    const/4 v3, 0x0

    .restart local v3    # "iconVisibility":I
    goto :goto_2

    .line 578
    .end local v3    # "iconVisibility":I
    :cond_2
    const/4 v3, 0x4

    .restart local v3    # "iconVisibility":I
    goto :goto_2

    .line 565
    .end local v0    # "entry":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    .end local v3    # "iconVisibility":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 583
    .end local v1    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;"
    .end local v4    # "j":I
    .end local v5    # "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAllEntriesInflated:Z

    .line 561
    return-void
.end method

.method private inflateInitialEntries(Landroid/view/LayoutInflater;)V
    .locals 9
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v8, 0x0

    .line 532
    iget v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    iget v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    if-ne v6, v7, :cond_1

    .line 533
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->inflateAllEntries(Landroid/view/LayoutInflater;)V

    .line 530
    :cond_0
    return-void

    .line 537
    :cond_1
    const/4 v5, 0x0

    .line 538
    .local v5, "numInflated":I
    iget v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int v2, v6, v7

    .line 539
    .local v2, "extraEntries":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    iget v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    if-ge v5, v6, :cond_0

    .line 540
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 541
    .local v0, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;"
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 543
    .local v1, "entryViewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;

    invoke-direct {p0, p1, v6, v8}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->createEntryView(Landroid/view/LayoutInflater;Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    add-int/lit8 v5, v5, 0x1

    .line 547
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    iget v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    if-ge v5, v6, :cond_2

    .line 548
    if-lez v2, :cond_2

    .line 549
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;

    .line 550
    const/4 v7, 0x4

    .line 549
    invoke-direct {p0, p1, v6, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->createEntryView(Landroid/view/LayoutInflater;Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    add-int/lit8 v5, v5, 0x1

    .line 552
    add-int/lit8 v2, v2, -0x1

    .line 548
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 539
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private insertEntriesIntoViewGroup()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 410
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 412
    iget-boolean v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    if-eqz v9, :cond_3

    .line 413
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_7

    .line 414
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 415
    .local v8, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-lez v2, :cond_0

    .line 417
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v10, v2, -0x1

    if-gt v9, v10, :cond_1

    .line 418
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-direct {p0, v9}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->generateSeparator(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 419
    .local v5, "separator":Landroid/view/View;
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    :goto_1
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 425
    .end local v5    # "separator":Landroid/view/View;
    :cond_0
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "view$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 426
    .local v6, "view":Landroid/view/View;
    invoke-direct {p0, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->addEntry(Landroid/view/View;)V

    goto :goto_2

    .line 421
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "view$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    add-int/lit8 v10, v2, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .restart local v5    # "separator":Landroid/view/View;
    goto :goto_1

    .line 413
    .end local v5    # "separator":Landroid/view/View;
    .restart local v7    # "view$iterator":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    .end local v2    # "i":I
    .end local v7    # "view$iterator":Ljava/util/Iterator;
    .end local v8    # "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_3
    const/4 v4, 0x0

    .line 434
    .local v4, "numInViewGroup":I
    iget v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    iget-object v10, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int v1, v9, v10

    .line 435
    .local v1, "extraEntries":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_7

    iget v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    if-ge v4, v9, :cond_7

    .line 437
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 438
    .local v0, "entryViewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-lez v2, :cond_4

    .line 440
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v10, v2, -0x1

    if-gt v9, v10, :cond_5

    .line 441
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-direct {p0, v9}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->generateSeparator(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 442
    .restart local v5    # "separator":Landroid/view/View;
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    :goto_4
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 448
    .end local v5    # "separator":Landroid/view/View;
    :cond_4
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-direct {p0, v9}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->addEntry(Landroid/view/View;)V

    .line 449
    add-int/lit8 v4, v4, 0x1

    .line 451
    const/4 v3, 0x1

    .line 452
    .local v3, "j":I
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_6

    iget v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    if-ge v4, v9, :cond_6

    .line 453
    if-lez v1, :cond_6

    .line 455
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-direct {p0, v9}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->addEntry(Landroid/view/View;)V

    .line 456
    add-int/lit8 v4, v4, 0x1

    .line 457
    add-int/lit8 v1, v1, -0x1

    .line 454
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 444
    .end local v3    # "j":I
    :cond_5
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    add-int/lit8 v10, v2, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .restart local v5    # "separator":Landroid/view/View;
    goto :goto_4

    .line 436
    .end local v5    # "separator":Landroid/view/View;
    .restart local v3    # "j":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 462
    .end local v0    # "entryViewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v1    # "extraEntries":I
    .end local v3    # "j":I
    .end local v4    # "numInViewGroup":I
    :cond_7
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->removeView(Landroid/view/View;)V

    .line 463
    iget v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    iget v10, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    if-ge v9, v10, :cond_8

    .line 464
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_8

    iget-boolean v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsAlwaysExpanded:Z

    if-eqz v9, :cond_9

    .line 409
    :cond_8
    :goto_6
    return-void

    .line 465
    :cond_9
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mContainer:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_6
.end method

.method private setColorAndFilter(ILandroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 587
    iput p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColor:I

    .line 588
    iput-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColorFilter:Landroid/graphics/ColorFilter;

    .line 589
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->applyColor()V

    .line 586
    return-void
.end method

.method private updateBadges()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 816
    iget-boolean v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    if-eqz v8, :cond_1

    .line 817
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadgeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 815
    :cond_0
    return-void

    .line 820
    :cond_1
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadges:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iget v10, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    sub-int/2addr v9, v10

    if-ge v8, v9, :cond_5

    .line 821
    iget v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    .local v7, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 822
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;

    .line 823
    .local v6, "cardEntry":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getActionItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 824
    sget-object v8, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Action items list is empty while updating badges!"

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 827
    :cond_3
    invoke-virtual {v6, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getActionItem(I)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 828
    .local v2, "badgeDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getActionItem(I)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getIconResourceId()I

    move-result v3

    .line 830
    .local v3, "badgeResourceId":I
    if-eqz v3, :cond_4

    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadgeIds:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 833
    :cond_4
    if-eqz v2, :cond_2

    .line 834
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 835
    .local v4, "badgeView":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 836
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 837
    const v9, 0x7f0d014e

    .line 836
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    .line 838
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 839
    const v10, 0x7f0d014d

    .line 838
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    .line 835
    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 840
    .local v5, "badgeViewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 841
    const v9, 0x7f0d0148

    .line 840
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 842
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 844
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadges:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadgeIds:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 849
    .end local v2    # "badgeDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "badgeResourceId":I
    .end local v4    # "badgeView":Landroid/widget/ImageView;
    .end local v5    # "badgeViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "cardEntry":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    .end local v7    # "i":I
    :cond_5
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadgeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 850
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadges:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "badge$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 851
    .local v0, "badge":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadgeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method private updateExpandCollapseButton(Ljava/lang/CharSequence;J)V
    .locals 6
    .param p1, "buttonText"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 799
    iget-boolean v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    if-eqz v1, :cond_0

    .line 800
    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseArrow:Landroid/widget/ImageView;

    .line 801
    const-string/jumbo v2, "rotation"

    .line 800
    new-array v3, v3, [F

    .line 801
    const/high16 v4, 0x43340000    # 180.0f

    aput v4, v3, v5

    .line 800
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 802
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 803
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 810
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->updateBadges()V

    .line 812
    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    return-void

    .line 805
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseArrow:Landroid/widget/ImageView;

    .line 806
    const-string/jumbo v2, "rotation"

    .line 805
    new-array v3, v3, [F

    .line 806
    const/4 v4, 0x0

    aput v4, v3, v5

    .line 805
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 807
    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 808
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public applyColor()V
    .locals 9

    .prologue
    .line 597
    iget v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColor:I

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v7, :cond_6

    .line 600
    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    if-eqz v7, :cond_5

    .line 601
    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "cardEntryList$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 602
    .local v2, "cardEntryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cardEntry$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;

    .line 603
    .local v0, "cardEntry":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getActionItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 604
    .local v6, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 605
    invoke-virtual {v0, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getActionItem(I)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    move-result-object v5

    .line 606
    .local v5, "item":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;
    invoke-virtual {v5}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 609
    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->shouldApplyColor()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    if-lez v4, :cond_4

    .line 610
    :cond_3
    invoke-virtual {v5}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 604
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 618
    .end local v0    # "cardEntry":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    .end local v1    # "cardEntry$iterator":Ljava/util/Iterator;
    .end local v2    # "cardEntryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;"
    .end local v3    # "cardEntryList$iterator":Ljava/util/Iterator;
    .end local v4    # "i":I
    .end local v5    # "item":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;
    .end local v6    # "length":I
    :cond_5
    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseTextView:Landroid/widget/TextView;

    iget v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColor:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 619
    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseArrow:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 596
    :cond_6
    return-void
.end method

.method public initialize(Ljava/util/List;IZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;Landroid/view/ViewGroup;)V
    .locals 8
    .param p2, "numInitialVisibleEntries"    # I
    .param p3, "isExpanded"    # Z
    .param p4, "isAlwaysExpanded"    # Z
    .param p5, "listener"    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;
    .param p6, "animationViewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;",
            ">;>;IZZ",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;>;"
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 344
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    iput-boolean p3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    .line 345
    iput-boolean p4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsAlwaysExpanded:Z

    .line 347
    iget-boolean v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    iget-boolean v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsAlwaysExpanded:Z

    or-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    .line 348
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    .line 349
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    .line 350
    iput v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    .line 351
    iput-boolean v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAllEntriesInflated:Z

    .line 352
    iget-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entryList$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 353
    .local v0, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;"
    iget v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    .line 354
    iget-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    .end local v0    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;"
    :cond_0
    iget v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    .line 358
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 359
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    .line 361
    :cond_1
    iput-object p5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    .line 362
    iput-object p6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAnimationViewGroup:Landroid/view/ViewGroup;

    .line 364
    iget-boolean v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    if-eqz v3, :cond_2

    .line 365
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getCollapseButtonText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3, v6, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->updateExpandCollapseButton(Ljava/lang/CharSequence;J)V

    .line 366
    invoke-direct {p0, v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->inflateAllEntries(Landroid/view/LayoutInflater;)V

    .line 371
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->insertEntriesIntoViewGroup()V

    .line 372
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->applyColor()V

    .line 342
    return-void

    .line 368
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getExpandButtonText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3, v6, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->updateExpandCollapseButton(Ljava/lang/CharSequence;J)V

    .line 369
    invoke-direct {p0, v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->inflateInitialEntries(Landroid/view/LayoutInflater;)V

    goto :goto_1
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 965
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    return v0
.end method

.method public setCollapseButtonText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "expandButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapseButtonText:Ljava/lang/CharSequence;

    .line 394
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapseButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    :cond_0
    return-void
.end method

.method public setExpandButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "expandButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandButtonText:Ljava/lang/CharSequence;

    .line 382
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    if-eqz v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 400
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 405
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f0d0139

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 973
    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 975
    const v1, 0x7f0e014b

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 980
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 981
    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 982
    .local v0, "firstEntry":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 983
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 985
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 986
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 982
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 972
    .end local v0    # "firstEntry":Landroid/view/View;
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 974
    goto :goto_0

    :cond_2
    move v2, v3

    .line 976
    goto :goto_1

    .line 987
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 988
    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 989
    .restart local v0    # "firstEntry":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 990
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 992
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 993
    const v4, 0x7f0d0135

    .line 992
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 990
    add-int/2addr v2, v3

    .line 994
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 995
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 989
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2
.end method

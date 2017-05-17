.class public Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;
.super Landroid/app/Fragment;
.source "AttachmentBarFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;
.implements Lcom/sonyericsson/conversations/ui/pileview/PileViewController$ExpandedPileViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;,
        Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$1;
    }
.end annotation


# instance fields
.field private final mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

.field private final mAttachmentBarMenuItemValues:[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

.field private mAttachmentTarget:Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;

.field private mDividerHeight:I

.field private mDividerView:Landroid/view/View;

.field private mMenuBarHeight:I

.field private mMenuBarView:Landroid/widget/LinearLayout;

.field private mMenuItemOfCurrentOpenPicker:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

.field private final mMenuItemsClickListener:Landroid/view/View$OnClickListener;

.field private mMsgListLayout:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

.field private mOverflowDialog:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;

.field private mPickerClosedParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mPickerContainer:Landroid/widget/FrameLayout;

.field private mPickerOpenParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mSelectedIconTintColor:I

.field private mShouldSkipOnResume:Z


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mOverflowDialog:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->loadOverFlowItems()[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 167
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;-><init>(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    .line 169
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemsClickListener:Landroid/view/View$OnClickListener;

    .line 217
    invoke-static {}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->values()[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarMenuItemValues:[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .line 216
    return-void
.end method

.method private addMenuItem(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4
    .param p1, "menuItem"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    .param p2, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 556
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->getAction()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    move-result-object v0

    .line 558
    .local v0, "action":Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->inflate(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 559
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 562
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 564
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    .line 565
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->getIconResId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 555
    return-void
.end method

.method private addOverflowItems()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 583
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mOverflowDialog:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;

    if-nez v2, :cond_0

    .line 584
    new-instance v2, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mOverflowDialog:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030004

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 588
    .local v1, "v":Landroid/view/View;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getMenuItemLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    new-instance v2, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, v1

    .line 604
    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0200d0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 607
    const v0, 0x7f0200d0

    .line 608
    .local v0, "id4EspressoTest":I
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 610
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 582
    return-void
.end method

.method private getMenuItemLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 6

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c011a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 615
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c011b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 616
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 617
    const v5, 0x7f0c011c

    .line 616
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 619
    .local v2, "margin":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 620
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 621
    return-object v1
.end method

.method private isFullscreenPicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .prologue
    .line 707
    sget-object v0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->TAKE_PHOTO:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowingFullscreenPicker()Z
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemOfCurrentOpenPicker:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->isFullscreenPicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)Z

    move-result v0

    return v0
.end method

.method private loadMenuItems()V
    .locals 7

    .prologue
    .line 536
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 537
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getMenuItemLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 539
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->values()[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 540
    .local v1, "menuItem":Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->isOverflowItem()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 535
    .end local v1    # "menuItem":Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    :cond_0
    return-void

    .line 542
    .restart local v1    # "menuItem":Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    :cond_1
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->getAction()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->isAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 539
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    :cond_2
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->getAction()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    move-result-object v5

    invoke-virtual {v5, v1, p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->init(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)V

    .line 546
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->addMenuItem(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Landroid/widget/LinearLayout$LayoutParams;)V

    goto :goto_1
.end method

.method private loadOverFlowItems()[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    .locals 8

    .prologue
    .line 569
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v2, "overflowItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;>;"
    invoke-static {}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->values()[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 572
    .local v0, "menuItem":Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->isOverflowItem()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->getAction()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->isAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 573
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->getAction()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    move-result-object v6

    invoke-virtual {v6, v0, p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->init(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)V

    .line 574
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 578
    .end local v0    # "menuItem":Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 579
    .local v1, "numActions":I
    new-array v3, v1, [Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    return-object v3
.end method

.method public static pushGoogleAnalyticsEvent(Lcom/sonyericsson/conversations/ui/AddMediaType;)V
    .locals 3
    .param p0, "mediaType"    # Lcom/sonyericsson/conversations/ui/AddMediaType;

    .prologue
    .line 198
    const-string/jumbo v0, "message_list"

    .line 199
    const-string/jumbo v1, "attachment_selected"

    .line 200
    invoke-static {p0}, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->getAttachmentSelectedLabel(Lcom/sonyericsson/conversations/ui/AddMediaType;)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {v0, v1, v2}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public static pushGoogleAnalyticsEvent(Lcom/sonyericsson/conversations/ui/AddMediaType;J)V
    .locals 3
    .param p0, "mediaType"    # Lcom/sonyericsson/conversations/ui/AddMediaType;
    .param p1, "gaValue"    # J

    .prologue
    .line 210
    const-string/jumbo v0, "message_list"

    .line 211
    const-string/jumbo v1, "attachment_selected"

    .line 212
    invoke-static {p0}, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->getAttachmentSelectedLabel(Lcom/sonyericsson/conversations/ui/AddMediaType;)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v0, v1, v2, p1, p2}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 209
    return-void
.end method

.method private removePickerFragment(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 524
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 525
    .local v2, "openFragment":Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 526
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 527
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 528
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 522
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private replacePickerFragment(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V
    .locals 6
    .param p1, "menuItem"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 507
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->getAction()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction$ExpandablePicker;

    .line 508
    .local v0, "expandablePicker":Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction$ExpandablePicker;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction$ExpandablePicker;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    .line 509
    .local v2, "fragment":Landroid/app/Fragment;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->name()Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 511
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 512
    .local v3, "ft":Landroid/app/FragmentTransaction;
    const v5, 0x7f0d0013

    invoke-virtual {v3, v5, v2, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 513
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 514
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 506
    return-void
.end method

.method private setAttachmentMenuBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 397
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 398
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuBarView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mDividerView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mDividerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 396
    :cond_1
    return-void

    .line 397
    .end local v0    # "visibility":I
    :cond_2
    const/16 v0, 0x8

    .restart local v0    # "visibility":I
    goto :goto_0
.end method

.method private setMenuItemHighlight(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Z)V
    .locals 2
    .param p1, "menuItem"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "highlight"    # Z

    .prologue
    .line 488
    if-eqz p2, :cond_0

    .line 489
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->getAction()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mSelectedIconTintColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 487
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->getAction()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method


# virtual methods
.method public getAttachmentTarget()Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentTarget:Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;

    return-object v0
.end method

.method hidePicker()V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 463
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemOfCurrentOpenPicker:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    if-nez v1, :cond_0

    .line 464
    return-void

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemOfCurrentOpenPicker:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->isFullscreenPicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMsgListLayout:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMsgListLayout:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->setHideUiInLandscape(Z)Z

    .line 475
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->setAttachmentMenuBarVisible(Z)V

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemOfCurrentOpenPicker:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->name()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemOfCurrentOpenPicker:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->setMenuItemHighlight(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Z)V

    .line 480
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemOfCurrentOpenPicker:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .line 482
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerClosedParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->removePickerFragment(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 266
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarMenuItemValues:[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 267
    :cond_0
    return-void

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarMenuItemValues:[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    aget-object v0, v1, p1

    .line 271
    .local v0, "menuItem":Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    if-eqz p3, :cond_2

    .line 272
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->getAction()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->handleActivityResult(ILandroid/content/Intent;)V

    .line 274
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mShouldSkipOnResume:Z

    .line 276
    :cond_2
    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->OVERFLOW_CONTACTS:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 277
    if-nez p2, :cond_3

    .line 278
    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->SEND_CONTACT:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->pushGoogleAnalyticsEvent(Lcom/sonyericsson/conversations/ui/AddMediaType;J)V

    .line 265
    :cond_3
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemOfCurrentOpenPicker:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->hidePicker()V

    .line 372
    const/4 v0, 0x1

    return v0

    .line 374
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 286
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    const/4 v4, 0x0

    return-object v4

    .line 289
    :cond_0
    const v4, 0x7f030002

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 291
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 292
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x7f0d0011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuBarView:Landroid/widget/LinearLayout;

    .line 293
    const v4, 0x7f0c0119

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuBarHeight:I

    .line 294
    const v4, 0x7f0d0012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mDividerView:Landroid/view/View;

    .line 295
    const v4, 0x7f0c011e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mDividerHeight:I

    .line 296
    const v4, 0x7f0d0013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerContainer:Landroid/widget/FrameLayout;

    .line 297
    const v4, 0x7f0c011d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 298
    .local v0, "defaultHeight":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerClosedParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 299
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerOpenParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 302
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 303
    const v5, 0x7f0d0077

    .line 302
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 304
    .local v1, "editorContainer":Landroid/view/View;
    invoke-static {v1, p2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAnimations$KeyboardTransitionDisguiser;->create(Landroid/view/View;Landroid/view/View;)Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAnimations$KeyboardTransitionDisguiser;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 306
    return-object v3
.end method

.method public onKeyboardStateChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 652
    if-nez p1, :cond_1

    .line 654
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->setKeyboardHidden()V

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemOfCurrentOpenPicker:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->hidePicker()V

    goto :goto_0
.end method

.method public onOpenExpandedPileView(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/pileview/PileItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 627
    .local p1, "pileItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/pileview/PileItem;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 626
    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->makePreviewIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    .line 629
    .local v0, "expandedPileViewIntent":Landroid/content/Intent;
    const/16 v1, 0xd6

    .line 628
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 625
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 355
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemOfCurrentOpenPicker:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->hidePicker()V

    .line 360
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mShouldSkipOnResume:Z

    .line 361
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->forceHideKeyboard(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)V

    .line 354
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 329
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 338
    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mShouldSkipOnResume:Z

    if-eqz v3, :cond_0

    .line 339
    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 342
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 344
    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-result-object v2

    .line 345
    .local v2, "uiController":Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .line 347
    .local v1, "isPortrait":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hasComposerMedia()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->setKeyboard(Z)V

    .line 328
    .end local v1    # "isPortrait":Z
    .end local v2    # "uiController":Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    :cond_1
    return-void

    .line 345
    .restart local v2    # "uiController":Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isPortrait":Z
    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "unused"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 639
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemOfCurrentOpenPicker:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->hidePicker()V

    .line 644
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 645
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 647
    :cond_1
    return v2

    .line 641
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMsgListLayout:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMsgListLayout:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->setKeyboard(Z)V

    goto :goto_0
.end method

.method public onUsableHeightChanged(IIIZ)V
    .locals 6
    .param p1, "lastKeyboardHeight"    # I
    .param p2, "usableHeight"    # I
    .param p3, "overlayHeight"    # I
    .param p4, "isLandscape"    # Z

    .prologue
    const/4 v3, 0x0

    .line 665
    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->isShowingFullscreenPicker()Z

    move-result v1

    .line 666
    :goto_0
    if-eqz v1, :cond_1

    .line 667
    move v2, p2

    .line 672
    .local v2, "pickerHeight":I
    :goto_1
    if-eqz v1, :cond_2

    :goto_2
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->setAttachmentMenuBarVisible(Z)V

    .line 674
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerOpenParams:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerOpenParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ne v2, v3, :cond_3

    .line 675
    return-void

    .line 665
    .end local v2    # "pickerHeight":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "pickerFillsLayout":Z
    goto :goto_0

    .line 669
    .end local v1    # "pickerFillsLayout":Z
    :cond_1
    sub-int v4, p2, p3

    iget v5, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuBarHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mDividerHeight:I

    sub-int v0, v4, v5

    .line 670
    .local v0, "maxPickerHeight":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .restart local v2    # "pickerHeight":I
    goto :goto_1

    .line 672
    .end local v0    # "maxPickerHeight":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    .line 677
    :cond_3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerOpenParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 679
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_5

    .line 680
    :cond_4
    return-void

    .line 682
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_6

    .line 687
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->updatePickerContainerLayout()V

    .line 662
    :cond_6
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 311
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 313
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 314
    .local v0, "tintColor":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010435

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 315
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iput v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mSelectedIconTintColor:I

    .line 317
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->loadMenuItems()V

    .line 318
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->addOverflowItems()V

    .line 319
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mShouldSkipOnResume:Z

    .line 322
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMsgListLayout:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMsgListLayout:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->triggerLayoutUpdate()V

    .line 310
    :cond_0
    return-void
.end method

.method public requestResult(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "menuItem"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 385
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemOfCurrentOpenPicker:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->hidePicker()V

    .line 388
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->ordinal()I

    move-result v0

    .line 389
    .local v0, "requestCode":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 390
    const/4 v1, 0x0

    return v1

    .line 392
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 393
    const/4 v1, 0x1

    return v1
.end method

.method public sendAttachment(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Z)Z
    .locals 2
    .param p1, "attachment"    # Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .param p2, "showKeyboard"    # Z

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->hidePicker()V

    .line 249
    if-eqz p2, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->setKeyboard(Z)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentTarget:Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;->addAttachment(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;)Z

    move-result v0

    return v0
.end method

.method public setAttachmentTarget(Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;)V
    .locals 0
    .param p1, "ar"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentTarget:Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;

    .line 230
    return-void
.end method

.method public setMessageListResponsiveLayout(Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMsgListLayout:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    .line 226
    return-void
.end method

.method showPicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V
    .locals 7
    .param p1, "menuItem"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 424
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->getAction()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    move-result-object v6

    instance-of v6, v6, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction$ExpandablePicker;

    if-nez v6, :cond_0

    .line 425
    return-void

    .line 429
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemOfCurrentOpenPicker:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    if-eqz v6, :cond_4

    const/4 v3, 0x1

    .line 430
    .local v3, "isPickerContainerOpen":Z
    :goto_0
    if-eqz v3, :cond_5

    .line 431
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemOfCurrentOpenPicker:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    invoke-direct {p0, v6, v4}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->setMenuItemHighlight(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Z)V

    .line 436
    :cond_1
    :goto_1
    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->setMenuItemHighlight(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Z)V

    .line 437
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemOfCurrentOpenPicker:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .line 440
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMsgListLayout:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    if-eqz v6, :cond_2

    .line 441
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->isFullscreenPicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)Z

    move-result v2

    .line 442
    .local v2, "isFullscreenPicker":Z
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMsgListLayout:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    invoke-virtual {v6, v2}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->setHideUiInLandscape(Z)Z

    move-result v0

    .line 443
    .local v0, "didUiChange":Z
    if-eqz v2, :cond_6

    move v1, v0

    .line 444
    :goto_2
    if-eqz v1, :cond_7

    :goto_3
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->setAttachmentMenuBarVisible(Z)V

    .line 448
    .end local v0    # "didUiChange":Z
    .end local v2    # "isFullscreenPicker":Z
    :cond_2
    if-nez v3, :cond_8

    .line 449
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerOpenParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    :cond_3
    :goto_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->replacePickerFragment(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V

    .line 423
    return-void

    .line 429
    .end local v3    # "isPickerContainerOpen":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isPickerContainerOpen":Z
    goto :goto_0

    .line 432
    :cond_5
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMsgListLayout:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMsgListLayout:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->isKeyboardVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 434
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    invoke-virtual {v6, v4}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->setKeyboard(Z)V

    goto :goto_1

    .line 443
    .restart local v0    # "didUiChange":Z
    .restart local v2    # "isFullscreenPicker":Z
    :cond_6
    const/4 v1, 0x0

    .local v1, "hideAttachmentBar":Z
    goto :goto_2

    .end local v1    # "hideAttachmentBar":Z
    :cond_7
    move v4, v5

    .line 444
    goto :goto_3

    .line 450
    .end local v0    # "didUiChange":Z
    .end local v2    # "isFullscreenPicker":Z
    :cond_8
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMsgListLayout:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    if-eqz v4, :cond_3

    .line 451
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMsgListLayout:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->triggerLayoutUpdate()V

    goto :goto_4
.end method

.method public togglePicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mMenuItemOfCurrentOpenPicker:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    if-ne p1, v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->hidePicker()V

    .line 410
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mAttachmentBarHandler:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->showPicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V

    goto :goto_0
.end method

.method public updatePickerContainerLayout()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->mPickerOpenParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    :cond_0
    return-void
.end method

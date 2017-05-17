.class public Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;
.super Landroid/app/Fragment;
.source "StickerPickerFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/stickers/StickerManager$OnStickerDataChangedListener;
.implements Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;,
        Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$1;,
        Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$2;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;

.field private final mOnTabChangedListener:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;

.field private final mStickerClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mStickerPackId:Ljava/lang/String;

.field private mStickerTabView:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;

.field private mTabMgr:Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;)Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mCallback:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;)Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mTabMgr:Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    new-instance v0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mOnTabChangedListener:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;

    .line 63
    new-instance v0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mStickerClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 31
    return-void
.end method

.method private initSketchStoreIcon(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 103
    const v4, 0x7f0d0127

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 104
    .local v3, "sketchIcon":Landroid/view/View;
    new-instance v4, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$3;

    invoke-direct {v4, p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$3;-><init>(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v4, 0x7f0d0128

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 112
    .local v2, "sketchBadge":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 113
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getStickerManager()Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->hasNewStoreContent(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    const v4, 0x7f040007

    .line 114
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 116
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 102
    .end local v0    # "a":Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 118
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    const v1, 0x7f03006c

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 84
    :cond_0
    return-object v2

    .line 87
    :cond_1
    const v1, 0x7f0d0126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mStickerTabView:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mStickerTabView:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mOnTabChangedListener:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->setOnTabChangedListener(Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;)V

    .line 90
    const v1, 0x7f0d0129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mStickerTabView:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 92
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$AlphaPageTransformer;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$AlphaPageTransformer;-><init>()V

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 94
    new-instance v1, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mStickerClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {v1, v2}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;-><init>(Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mTabMgr:Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;

    .line 95
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getStickerManager()Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->setOnStickerDataLoadedListener(Lcom/sonyericsson/conversations/ui/stickers/StickerManager$OnStickerDataChangedListener;)V

    .line 96
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getStickerManager()Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->refreshStickerData(Landroid/content/Context;)V

    .line 98
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->initSketchStoreIcon(Landroid/view/View;)V

    .line 99
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 137
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getStickerManager()Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->setOnStickerDataLoadedListener(Lcom/sonyericsson/conversations/ui/stickers/StickerManager$OnStickerDataChangedListener;)V

    .line 135
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->getInstance()Lcom/sonyericsson/provider/CapabilityUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/provider/CapabilityUtil;->hasValidSketchApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getStickerManager()Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->unloadStickers()V

    .line 131
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 127
    return-void
.end method

.method public onStickerDataLoaded()V
    .locals 6

    .prologue
    .line 142
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getStickerManager()Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    move-result-object v2

    .line 143
    .local v2, "stickerMgr":Lcom/sonyericsson/conversations/ui/stickers/StickerManager;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mTabMgr:Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->clearTabs()V

    .line 144
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mTabMgr:Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;

    invoke-virtual {v3, p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->addWelcomeOrRecentsTab(Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;)V

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->getPackCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 146
    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->getPackAt(I)Lcom/sonyericsson/conversations/stickers/SketchStickerPack;

    move-result-object v1

    .line 147
    .local v1, "pack":Lcom/sonyericsson/conversations/stickers/SketchStickerPack;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mTabMgr:Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->addStickerTab(Lcom/sonyericsson/conversations/stickers/SketchStickerPack;)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "pack":Lcom/sonyericsson/conversations/stickers/SketchStickerPack;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mTabMgr:Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->getPagerAdapter(Landroid/app/FragmentManager;)Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$PagerAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 151
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mStickerTabView:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mTabMgr:Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mStickerPackId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->reloadTabs(Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public setCallback(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mCallback:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;

    .line 157
    return-void
.end method

.method public setPreselectedPack(Ljava/lang/String;)V
    .locals 0
    .param p1, "packId"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mStickerPackId:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public sketchStoreBubbleClicked()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->mCallback:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;->onSketchStoreOpened(Z)V

    .line 75
    return-void
.end method

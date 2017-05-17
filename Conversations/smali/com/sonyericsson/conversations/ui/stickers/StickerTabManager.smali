.class public Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;
.super Ljava/lang/Object;
.source "StickerTabManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$StickerPickerTab;,
        Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$PagerAdapter;,
        Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$AlphaPageTransformer;
    }
.end annotation


# instance fields
.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPagerAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$PagerAdapter;

.field private final mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$StickerPickerTab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->mTabs:Ljava/util/List;

    return-object v0
.end method

.method public constructor <init>(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->mTabs:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 44
    return-void
.end method


# virtual methods
.method public addStickerTab(Lcom/sonyericsson/conversations/stickers/SketchStickerPack;)V
    .locals 3
    .param p1, "pack"    # Lcom/sonyericsson/conversations/stickers/SketchStickerPack;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->mTabs:Ljava/util/List;

    new-instance v1, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {v1, p1, v2}, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab;-><init>(Lcom/sonyericsson/conversations/stickers/SketchStickerPack;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public addWelcomeOrRecentsTab(Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->mTabs:Ljava/util/List;

    new-instance v1, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {v1, v2, p1}, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab;-><init>(Landroid/widget/AdapterView$OnItemClickListener;Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public clearTabs()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    return-void
.end method

.method public getPackId(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 107
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->mTabs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, "tab":Ljava/lang/Object;
    instance-of v1, v0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab;

    if-eqz v1, :cond_0

    .line 109
    check-cast v0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab;

    .end local v0    # "tab":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab;->getPackId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 111
    .restart local v0    # "tab":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPagerAdapter(Landroid/app/FragmentManager;)Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$PagerAdapter;
    .locals 1
    .param p1, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->mPagerAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$PagerAdapter;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$PagerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$PagerAdapter;-><init>(Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->mPagerAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$PagerAdapter;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->mPagerAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$PagerAdapter;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public renderTabIcon(ILandroid/widget/ImageView;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "targetView"    # Landroid/widget/ImageView;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$StickerPickerTab;

    invoke-interface {v0, p2}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$StickerPickerTab;->renderTabIcon(Landroid/widget/ImageView;)V

    .line 74
    return-void
.end method

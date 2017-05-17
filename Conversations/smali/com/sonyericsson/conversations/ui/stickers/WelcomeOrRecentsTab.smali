.class public Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab;
.super Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab;
.source "WelcomeOrRecentsTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;,
        Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView$OnItemClickListener;Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;)V
    .locals 3
    .param p1, "icl"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p2, "callback"    # Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab;-><init>(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 44
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab;->mCallback:Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;

    .line 45
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getStickerManager()Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    move-result-object v0

    .line 46
    .local v0, "stickerMgr":Lcom/sonyericsson/conversations/ui/stickers/StickerManager;
    new-instance v1, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->getRecentStickers()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab;->mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    .line 42
    return-void
.end method


# virtual methods
.method public getFragment()Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;-><init>()V

    .line 57
    .local v0, "fragment":Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab;->mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;->setAdapter(Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;)V

    .line 58
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab;->mCallback:Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;->setCallback(Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;)V

    .line 60
    return-object v0
.end method

.method public renderTabIcon(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "targetView"    # Landroid/widget/ImageView;

    .prologue
    .line 51
    const v0, 0x7f020137

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    return-void
.end method

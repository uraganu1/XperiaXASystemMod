.class public Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$PagerAdapter;
.super Landroid/support/v13/app/FragmentStatePagerAdapter;
.source "StickerTabManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$PagerAdapter;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;

    .line 119
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentStatePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 118
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$PagerAdapter;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->getTabCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$PagerAdapter;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->-get0(Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$StickerPickerTab;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$StickerPickerTab;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

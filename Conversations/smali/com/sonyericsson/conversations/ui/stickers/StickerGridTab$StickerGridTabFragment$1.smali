.class Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment$1;
.super Ljava/lang/Object;
.source "StickerGridTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->hideGridViewScrollBarOnCreation(Landroid/widget/GridView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment$1;->this$1:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment$1;->this$1:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 113
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 118
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 109
    return-void
.end method

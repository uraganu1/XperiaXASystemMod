.class Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$1;
.super Ljava/lang/Object;
.source "StickerTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$1;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 73
    .local v0, "index":I
    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$1;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->-get1(Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$1;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;

    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->-wrap0(Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;I)V

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$1;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->-get0(Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;)Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;->onTabChanged(I)V

    .line 71
    :cond_1
    return-void
.end method

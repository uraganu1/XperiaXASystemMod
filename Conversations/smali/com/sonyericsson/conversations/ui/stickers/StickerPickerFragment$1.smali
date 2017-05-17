.class Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$1;
.super Ljava/lang/Object;
.source "StickerPickerFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(I)V
    .locals 2
    .param p1, "tabIdx"    # I

    .prologue
    .line 52
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->-get2(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->-get2(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->-get2(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->-get0(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;)Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->-get1(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;)Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->getPackId(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "packId":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->-get0(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;)Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;->onStickerPackSelected(Ljava/lang/String;)V

    .line 51
    .end local v0    # "packId":Ljava/lang/String;
    :cond_1
    return-void
.end method

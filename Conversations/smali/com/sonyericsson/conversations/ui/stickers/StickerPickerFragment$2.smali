.class Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$2;
.super Ljava/lang/Object;
.source "StickerPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 63
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->-get0(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;)Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;

    move-result-object v1

    if-nez v1, :cond_1

    .line 68
    :cond_0
    return-void

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->-get0(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;)Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;

    move-result-object v1

    check-cast v0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-interface {v1, v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;->onStickerSelected(Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;)V

    .line 65
    return-void
.end method

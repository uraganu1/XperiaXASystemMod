.class Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$3;
.super Ljava/lang/Object;
.source "StickerPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->initSketchStoreIcon(Landroid/view/View;)V
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
    .line 104
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->-get0(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;)Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;->onSketchStoreOpened(Z)V

    .line 106
    return-void
.end method

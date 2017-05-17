.class Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction$1;
.super Ljava/lang/Object;
.source "StickerAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->showGetSketchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 107
    const-string/jumbo v1, "stickers"

    const-string/jumbo v2, "get_sketch_dialog"

    .line 108
    const-string/jumbo v3, "accept_get_sketch_dialog"

    .line 107
    invoke-static {v1, v2, v3}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getGooglePlayIntentForSketch()Landroid/content/Intent;

    move-result-object v0

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method

.class Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction$2;
.super Ljava/lang/Object;
.source "StickerAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 113
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction$2;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 116
    const-string/jumbo v0, "stickers"

    const-string/jumbo v1, "get_sketch_dialog"

    .line 117
    const-string/jumbo v2, "cancel_get_sketch_dialog"

    .line 116
    invoke-static {v0, v1, v2}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

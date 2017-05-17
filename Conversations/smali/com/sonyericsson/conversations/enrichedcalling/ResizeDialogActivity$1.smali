.class Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity$1;
.super Ljava/lang/Object;
.source "ResizeDialogActivity.java"

# interfaces
.implements Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity$1;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public onDialogDismissed()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity$1;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->finish()V

    .line 45
    return-void
.end method

.method public onResizeDialogChoice(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;)V
    .locals 4
    .param p1, "choice"    # Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    .prologue
    .line 33
    sget-object v2, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;->RESIZED:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    .line 34
    .local v1, "resizeRequired":Z
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity$1;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;

    .line 35
    const-class v3, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;

    .line 34
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "joynFileTransferServiceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "chatID"

    iget-object v3, p0, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity$1;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;

    invoke-static {v3}, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->-get1(Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    .line 36
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 38
    const-string/jumbo v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity$1;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;

    invoke-static {v3}, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->-get0(Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 40
    const-string/jumbo v2, "resize_required"

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    iget-object v2, p0, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity$1;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 32
    return-void

    .line 33
    .end local v0    # "joynFileTransferServiceIntent":Landroid/content/Intent;
    .end local v1    # "resizeRequired":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "resizeRequired":Z
    goto :goto_0
.end method

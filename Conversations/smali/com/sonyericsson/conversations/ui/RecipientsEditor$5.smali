.class Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "converting":Z
    if-nez p2, :cond_0

    .line 523
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->convertAllRecipients()Z

    move-result v0

    .line 524
    .local v0, "converting":Z
    if-eqz v0, :cond_0

    .line 525
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->reportRecipientsChange(Z)V

    .line 528
    .end local v0    # "converting":Z
    :cond_0
    if-nez v0, :cond_1

    .line 529
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v1, p2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap13(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)V

    .line 532
    :cond_1
    if-eqz p2, :cond_2

    .line 533
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->showSoftKeys()V

    .line 539
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get3(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 540
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-set1(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)Z

    .line 520
    :goto_0
    return-void

    .line 542
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setSelection(I)V

    goto :goto_0
.end method

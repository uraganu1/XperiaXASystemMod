.class Lcom/sonyericsson/conversations/ui/RecipientsEditor$8;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addParticipantToEditorAsync(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

.field final synthetic val$forceGiveAwayFocus:Z

.field final synthetic val$newParticipants:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p3, "val$forceGiveAwayFocus"    # Z

    .prologue
    .line 1330
    .local p2, "val$newParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$8;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$8;->val$newParticipants:Ljava/util/List;

    iput-boolean p3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$8;->val$forceGiveAwayFocus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$8;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$8;->val$newParticipants:Ljava/util/List;

    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$8;->val$forceGiveAwayFocus:Z

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap10(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/util/List;Z)V

    .line 1339
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$8;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get5(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$8;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get5(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$8;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;->onEditorContentChanged(Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$8;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap13(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)V

    .line 1331
    :cond_0
    return-void
.end method

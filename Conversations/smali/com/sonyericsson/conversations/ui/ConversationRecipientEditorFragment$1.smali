.class Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;
.super Ljava/lang/Thread;
.source "ConversationRecipientEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->addParticipantsToEditorAsync(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

.field final synthetic val$addresses:Ljava/util/List;

.field final synthetic val$forceGiveAwayFocus:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p4, "val$forceGiveAwayFocus"    # Z

    .prologue
    .line 193
    .local p3, "val$addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;->val$addresses:Ljava/util/List;

    iput-boolean p4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;->val$forceGiveAwayFocus:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->-get0(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;)Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->-get0(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;)Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;->val$addresses:Ljava/util/List;

    .line 197
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;->val$forceGiveAwayFocus:Z

    .line 196
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addParticipantToEditorAsync(Ljava/util/List;Z)V

    .line 194
    :cond_0
    return-void
.end method

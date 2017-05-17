.class Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;
.super Ljava/lang/Object;
.source "ConversationRecipientActionView.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJoynGroupRecipientsUpdated(Ljava/util/List;Landroid/text/SpannableStringBuilder;Z)V
    .locals 1
    .param p2, "title"    # Landroid/text/SpannableStringBuilder;
    .param p3, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "recipientInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-static {v0, p2, p1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->-wrap0(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-static {v0, p3}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->-wrap2(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Z)V

    .line 91
    return-void
.end method

.method public onOne2OneRecipientsUpdated(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "title"    # Landroid/text/SpannableStringBuilder;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "animate"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-static {v0, p1, p2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->-wrap1(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-static {v0, p3}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->-wrap2(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Z)V

    .line 84
    return-void
.end method

.method public onXmsGroupRecipientsUpdated(Landroid/text/SpannableStringBuilder;Z)V
    .locals 1
    .param p1, "title"    # Landroid/text/SpannableStringBuilder;
    .param p2, "animate"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->-wrap3(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Landroid/text/SpannableStringBuilder;)V

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-static {v0, p2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->-wrap2(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Z)V

    .line 77
    return-void
.end method

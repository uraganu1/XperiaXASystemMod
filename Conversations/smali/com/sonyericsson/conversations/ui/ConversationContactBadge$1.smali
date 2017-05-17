.class Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;
.super Ljava/lang/Object;
.source "ConversationContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 41
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->-get1(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 42
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->-get1(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->isMe()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->-wrap0(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->-get1(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v4

    .line 45
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 47
    .local v0, "dataUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 49
    .local v1, "lookupUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->-get0(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)Lcom/sonyericsson/conversations/view/RoundedImageView;

    move-result-object v3

    .line 50
    const/4 v4, 0x0

    .line 49
    invoke-static {v2, v3, v1, v6, v4}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v0    # "dataUri":Landroid/net/Uri;
    .end local v1    # "lookupUri":Landroid/net/Uri;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->-get1(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v2

    if-eq v2, v6, :cond_3

    .line 53
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->-get1(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 56
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->-wrap2(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    goto :goto_0
.end method

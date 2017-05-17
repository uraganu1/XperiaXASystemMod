.class Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$2;
.super Ljava/lang/Object;
.source "ConversationRecipientActionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 97
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$2;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 101
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$2;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->-get0(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 102
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$2;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->-get0(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->show()V

    .line 103
    return-void

    .line 106
    :cond_0
    const/4 v3, 0x0

    .line 107
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$2;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->-get3(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/model/Participant;

    .line 108
    .local v4, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 109
    .local v1, "contactId":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 112
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.action.VIEW"

    .line 113
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    .local v3, "intent":Landroid/content/Intent;
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$2;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->-get1(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    return-void

    .line 116
    .local v3, "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v0

    .line 117
    .local v0, "addressType":I
    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    .line 118
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "phone"

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string/jumbo v5, "vnd.android.cursor.item/contact"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 121
    .local v3, "intent":Landroid/content/Intent;
    :cond_2
    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    .line 123
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.action.SENDTO"

    .line 124
    const-string/jumbo v6, "mailto"

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 123
    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v3, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 127
    .local v3, "intent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 132
    .end local v0    # "addressType":I
    .local v3, "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v5, "Activity not found."

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

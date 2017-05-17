.class Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;
.super Ljava/lang/Object;
.source "ParticipantListViewItemsHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->-get1(Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;)Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;->getParticipant()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v3

    .line 82
    .local v3, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 83
    .local v1, "contactId":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 86
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    .line 87
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .local v2, "intent":Landroid/content/Intent;
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->-get0(Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void

    .line 90
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v0

    .line 91
    .local v0, "addressType":I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 93
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "phone"

    .line 95
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string/jumbo v4, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 97
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 99
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SENDTO"

    .line 100
    const-string/jumbo v5, "mailto"

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 99
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 103
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

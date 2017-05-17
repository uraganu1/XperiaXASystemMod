.class Lcom/sonyericsson/conversations/ui/MessageListAdapter$9;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Lcom/sonymobile/forklift/OnComplete1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setStackedContactBadgeView(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/forklift/OnComplete1",
        "<",
        "Lcom/sonyericsson/conversations/model/Participant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$9;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sonyericsson/conversations/model/Participant;)V
    .locals 2
    .param p1, "meParticipant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 1402
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonyericsson/conversations/model/Participant;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1403
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$9;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-get5(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 1401
    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/ui/util/ConversationItemDecorator;->setContactImage(Ljava/util/List;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    .line 1404
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$9;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-get5(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1400
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1, "meParticipant"    # Ljava/lang/Object;

    .prologue
    .line 1400
    check-cast p1, Lcom/sonyericsson/conversations/model/Participant;

    .end local p1    # "meParticipant":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$9;->onComplete(Lcom/sonyericsson/conversations/model/Participant;)V

    return-void
.end method

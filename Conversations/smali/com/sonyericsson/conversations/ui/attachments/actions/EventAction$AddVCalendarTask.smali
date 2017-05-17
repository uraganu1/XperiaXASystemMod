.class Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction$AddVCalendarTask;
.super Landroid/os/AsyncTask;
.source "EventAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddVCalendarTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction$AddVCalendarTask;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction$AddVCalendarTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction$AddVCalendarTask;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Intent;)Landroid/net/Uri;
    .locals 6
    .param p1, "params"    # [Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 70
    array-length v3, p1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 71
    return-object v5

    .line 73
    :cond_0
    const/4 v3, 0x0

    aget-object v0, p1, v3

    .line 74
    .local v0, "data":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 75
    .local v2, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 76
    .local v1, "internalUri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 78
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction$AddVCalendarTask;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 77
    invoke-static {v3, v2}, Lcom/sonyericsson/conversations/util/VCalendarUtil;->createVCalendarFileFromInputStream(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 80
    .end local v1    # "internalUri":Landroid/net/Uri;
    :cond_1
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, [Landroid/content/Intent;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction$AddVCalendarTask;->doInBackground([Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction$AddVCalendarTask;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    const v1, 0x7f0b01c5

    .line 87
    const/4 v2, 0x1

    .line 85
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction$AddVCalendarTask;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;->buildEventAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction$AddVCalendarTask;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;->showKeyboardAfterAction()Z

    move-result v2

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->sendAttachment(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/Object;

    .prologue
    .line 83
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "uri":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction$AddVCalendarTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

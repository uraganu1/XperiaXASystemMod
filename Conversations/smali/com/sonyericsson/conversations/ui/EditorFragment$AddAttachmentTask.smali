.class Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;
.super Landroid/os/AsyncTask;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddAttachmentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field attachmentResult:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 2669
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "attachmentData"    # [Ljava/lang/Object;

    .prologue
    .line 2673
    check-cast p1, [Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    .end local p1    # "attachmentData":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;->doInBackground([Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;)Ljava/lang/Void;
    .locals 11
    .param p1, "attachmentData"    # [Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 2674
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 2675
    .local v0, "attachment":Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2676
    .local v6, "startTime":J
    const-string/jumbo v1, "Conversations"

    invoke-static {v1, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2677
    const-string/jumbo v1, "onActivityResult: Add image started."

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 2680
    :cond_0
    if-eqz v0, :cond_1

    .line 2681
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get3(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v1

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0, v1, v8}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->addAttachment(Lcom/sonyericsson/conversations/ui/Composer;Landroid/app/Fragment;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;->attachmentResult:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

    .line 2683
    :cond_1
    const-string/jumbo v1, "Conversations"

    invoke-static {v1, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2684
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2685
    .local v4, "endTime":J
    sub-long v2, v4, v6

    .line 2687
    .local v2, "elapsedTime":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onActivityResult: Add image ended. Time elapsed: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, " ms"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2686
    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 2689
    .end local v2    # "elapsedTime":J
    .end local v4    # "endTime":J
    :cond_2
    return-object v10
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "_result"    # Ljava/lang/Object;

    .prologue
    .line 2693
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "_result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "_result"    # Ljava/lang/Void;

    .prologue
    .line 2694
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;->attachmentResult:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

    if-eqz v0, :cond_0

    .line 2695
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;->attachmentResult:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onAddAttachmentPostExecute(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;)V

    .line 2693
    :cond_0
    return-void
.end method

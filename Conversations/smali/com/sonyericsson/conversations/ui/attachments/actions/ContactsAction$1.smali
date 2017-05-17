.class Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$1;
.super Ljava/lang/Object;
.source "ContactsAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->handleActivityResult(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;

.field final synthetic val$contactIds:[J


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;[J)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;
    .param p2, "val$contactIds"    # [J

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$1;->val$contactIds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 111
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 113
    packed-switch p2, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 115
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$1;->val$contactIds:[J

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->-wrap0(Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;[J)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_1
    :try_start_1
    new-instance v1, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$1;->val$contactIds:[J

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;[J)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    sget-object v3, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;->TEXT:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

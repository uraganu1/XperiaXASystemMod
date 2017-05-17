.class Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$2;
.super Ljava/lang/Object;
.source "ContactsAction.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->handleSendContactByVcard([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;

.field final synthetic val$selectedContact:[J


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;[J)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;
    .param p2, "val$selectedContact"    # [J

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$2;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$2;->val$selectedContact:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResponse(Z)V
    .locals 4
    .param p1, "isGranted"    # Z

    .prologue
    .line 160
    if-eqz p1, :cond_0

    .line 161
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$2;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$2;->val$selectedContact:[J

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;[J)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    sget-object v2, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;->V_CARD:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 159
    :cond_0
    return-void
.end method

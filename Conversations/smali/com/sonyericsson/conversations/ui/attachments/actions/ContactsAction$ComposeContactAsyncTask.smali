.class Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;
.super Landroid/os/AsyncTask;
.source "ContactsAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposeContactAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_ui_attachments_actions_ContactsAction$ModesSwitchesValues:[I


# instance fields
.field private mContactIds:[J

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_ui_attachments_actions_ContactsAction$ModesSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->-com_sonyericsson_conversations_ui_attachments_actions_ContactsAction$ModesSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->-com_sonyericsson_conversations_ui_attachments_actions_ContactsAction$ModesSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;->values()[Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;->TEXT:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;->V_CARD:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->-com_sonyericsson_conversations_ui_attachments_actions_ContactsAction$ModesSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;[J)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;
    .param p2, "contactIds"    # [J

    .prologue
    .line 176
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->mContactIds:[J

    .line 178
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->mContext:Landroid/content/Context;

    .line 176
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .locals 11
    .param p1, "mode"    # [Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "attachment":Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->mContext:Landroid/content/Context;

    if-nez v8, :cond_0

    .line 185
    return-object v9

    .line 188
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->-getcom_sonyericsson_conversations_ui_attachments_actions_ContactsAction$ModesSwitchesValues()[I

    move-result-object v8

    aget-object v9, p1, v10

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 217
    const-string/jumbo v8, "Unsupported contact share"

    invoke-static {v8}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 219
    .end local v0    # "attachment":Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    :goto_0
    return-object v0

    .line 190
    .restart local v0    # "attachment":Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    :pswitch_0
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getAttachmentTarget()Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;->getCurrentMessageSize()I

    move-result v4

    .line 191
    .local v4, "curMmsSize":I
    const/4 v6, 0x0

    .line 192
    .local v6, "imFileTransferCapable":Z
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 193
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->mContext:Landroid/content/Context;

    instance-of v8, v8, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    .line 192
    if-eqz v8, :cond_1

    .line 194
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getComposer()Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v2

    .line 196
    .local v2, "composer":Lcom/sonyericsson/conversations/ui/Composer;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->isImFileTransferCapable()Z

    move-result v6

    .line 200
    .end local v2    # "composer":Lcom/sonyericsson/conversations/ui/Composer;
    .end local v6    # "imFileTransferCapable":Z
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->mContactIds:[J

    .line 199
    invoke-static {v8, v9, v4, v6}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->getVcardUri(Landroid/content/Context;[JIZ)Landroid/os/Bundle;

    move-result-object v1

    .line 201
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "sendContact_error_code"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 202
    .local v5, "errorText":I
    const-string/jumbo v8, "sendContact_vcard_uri"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 204
    .local v7, "vCardUri":Landroid/net/Uri;
    if-eqz v5, :cond_3

    .line 205
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v8, v5, v9}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 196
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v5    # "errorText":I
    .end local v7    # "vCardUri":Landroid/net/Uri;
    .restart local v2    # "composer":Lcom/sonyericsson/conversations/ui/Composer;
    .restart local v6    # "imFileTransferCapable":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 208
    .end local v2    # "composer":Lcom/sonyericsson/conversations/ui/Composer;
    .end local v6    # "imFileTransferCapable":Z
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "errorText":I
    .restart local v7    # "vCardUri":Landroid/net/Uri;
    :cond_3
    invoke-static {v7}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->buildContactAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v0

    .local v0, "attachment":Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    goto :goto_0

    .line 212
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "curMmsSize":I
    .end local v5    # "errorText":I
    .end local v7    # "vCardUri":Landroid/net/Uri;
    .local v0, "attachment":Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v3, "contactsInfo":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->mContactIds:[J

    invoke-static {v8, v9, v3}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->getContactsInfo(Landroid/content/Context;[JLjava/lang/StringBuilder;)V

    .line 214
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->buildContactStringAttachment(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v0

    .local v0, "attachment":Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "mode"    # [Ljava/lang/Object;

    .prologue
    .line 182
    check-cast p1, [Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    .end local p1    # "mode":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->doInBackground([Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;)V
    .locals 2
    .param p1, "attachment"    # Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->showKeyboardAfterAction()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->sendAttachment(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Z)Z

    .line 223
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "attachment"    # Ljava/lang/Object;

    .prologue
    .line 223
    check-cast p1, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    .end local p1    # "attachment":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->onPostExecute(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;)V

    return-void
.end method

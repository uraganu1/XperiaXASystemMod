.class Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$2;
.super Ljava/lang/Object;
.source "ImResizeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$2;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 128
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$2;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    invoke-static {v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->-get1(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 129
    .local v0, "rememberChoice":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$2;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    invoke-static {v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->-get2(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;->ORIGINAL:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v1

    .line 133
    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->NEVER_RESIZE:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    .line 131
    invoke-interface {v1, v2}, Lcom/sonymobile/jms/setting/ImSettingApi;->setFileResizeOption(Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$2;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    invoke-static {v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->-get0(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;->ORIGINAL:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    invoke-interface {v1, v2}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;->onResizeDialogChoice(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;)V

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$2;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    invoke-static {v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->-get2(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    move-result-object v1

    .line 137
    sget-object v2, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;->RESIZED:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    .line 136
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    if-eqz v0, :cond_3

    .line 139
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v1

    .line 141
    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ALWAYS_RESIZE:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    .line 139
    invoke-interface {v1, v2}, Lcom/sonymobile/jms/setting/ImSettingApi;->setFileResizeOption(Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;)V

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$2;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    invoke-static {v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->-get0(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;->RESIZED:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    invoke-interface {v1, v2}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;->onResizeDialogChoice(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;)V

    goto :goto_0
.end method

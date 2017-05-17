.class public Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;
.super Landroid/app/Activity;
.source "ResizeDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity$1;
    }
.end annotation


# instance fields
.field private mFileUri:Landroid/net/Uri;

.field private mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field private resizeDialogListener:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->mFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;)Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity$1;-><init>(Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->resizeDialogListener:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;

    .line 23
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 54
    const-string/jumbo v7, "chatID"

    .line 53
    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/jms/conversation/ImConversationId;

    iput-object v6, p0, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->mFileUri:Landroid/net/Uri;

    .line 56
    iget-object v6, p0, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->mFileUri:Landroid/net/Uri;

    if-nez v6, :cond_1

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->finish()V

    .line 58
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 62
    const-string/jumbo v7, "original_size"

    .line 61
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 63
    .local v2, "originalSize":J
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "resized_size"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 65
    .local v4, "resizedSize":J
    iget-object v6, p0, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->mFileUri:Landroid/net/Uri;

    invoke-static {v6}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->getFileUriList(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v1

    .line 66
    .local v1, "fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->newInstance(Ljava/util/List;JJ)Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    move-result-object v0

    .line 68
    .local v0, "dlgFragment":Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;
    iget-object v6, p0, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->resizeDialogListener:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;

    invoke-virtual {v0, v6}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->setListener(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    sget-object v7, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->DIALOG_FRAGMENT_TAG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 51
    return-void
.end method

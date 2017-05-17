.class Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$2;
.super Ljava/lang/Object;
.source "Attachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->handleAddImage(Lcom/sonyericsson/conversations/ui/Composer;Landroid/app/Fragment;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

.field final synthetic val$composer:Lcom/sonyericsson/conversations/ui/Composer;

.field final synthetic val$editorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field final synthetic val$saveSetting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$settingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sonyericsson/conversations/settings/SettingsManager;Lcom/sonyericsson/conversations/ui/EditorFragment;Lcom/sonyericsson/conversations/ui/Composer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .param p2, "val$saveSetting"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "val$settingsManager"    # Lcom/sonyericsson/conversations/settings/SettingsManager;
    .param p4, "val$editorFragment"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p5, "val$composer"    # Lcom/sonyericsson/conversations/ui/Composer;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$2;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$2;->val$saveSetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$2;->val$settingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$2;->val$editorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$2;->val$composer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$2;->val$saveSetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$2;->val$settingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$2;->val$editorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->persistGeoTagSettings(ZLandroid/app/Activity;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$2;->val$editorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$2;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    .line 253
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$2;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$2;->val$composer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->-wrap1(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Lcom/sonyericsson/conversations/ui/Composer;Z)I

    move-result v2

    .line 252
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->-wrap0(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;I)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onAddAttachmentPostExecute(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;)V

    .line 248
    return-void
.end method

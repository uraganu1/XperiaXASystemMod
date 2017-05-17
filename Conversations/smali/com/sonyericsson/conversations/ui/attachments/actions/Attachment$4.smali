.class Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$4;
.super Ljava/lang/Object;
.source "Attachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

.field final synthetic val$editorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field final synthetic val$saveSetting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$settingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sonyericsson/conversations/settings/SettingsManager;Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .param p2, "val$saveSetting"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "val$settingsManager"    # Lcom/sonyericsson/conversations/settings/SettingsManager;
    .param p4, "val$editorFragment"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$4;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$4;->val$saveSetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$4;->val$settingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$4;->val$editorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$4;->val$saveSetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$4;->val$settingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$4;->val$editorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->persistGeoTagSettings(ZLandroid/app/Activity;)V

    .line 267
    :cond_0
    return-void
.end method

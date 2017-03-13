.class Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager$1;
.super Landroid/database/ContentObserver;
.source "KeyguardDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager$1;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager$1;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->-wrap0(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;)I

    move-result v0

    .line 264
    .local v0, "value":I
    const-string/jumbo v1, "KeyguardDialogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DialogSequenceManager DialogSequenceObserver--onChange()--dialog_sequence_settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-nez v0, :cond_1

    .line 268
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager$1;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;

    invoke-static {v1, v4}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->-wrap1(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;Z)V

    .line 269
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager$1;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;

    invoke-virtual {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->handleShowDialog()V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    if-ne v0, v5, :cond_0

    .line 271
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager$1;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;

    invoke-static {v1, v5}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->-wrap1(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;Z)V

    .line 272
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager$1;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;

    invoke-virtual {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->handleShowDialog()V

    goto :goto_0
.end method

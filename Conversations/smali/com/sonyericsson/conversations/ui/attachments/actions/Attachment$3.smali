.class Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$3;
.super Ljava/lang/Object;
.source "Attachment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$saveSetting:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .param p2, "val$saveSetting"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$3;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$3;->val$saveSetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$3;->val$saveSetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 260
    return-void
.end method

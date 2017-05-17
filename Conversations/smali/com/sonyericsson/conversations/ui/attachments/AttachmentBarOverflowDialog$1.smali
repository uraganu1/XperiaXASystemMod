.class Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$1;
.super Ljava/lang/Object;
.source "AttachmentBarOverflowDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;->show(Landroid/content/Context;[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mItemSelected:Z

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;

.field final synthetic val$adapter:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;
    .param p2, "val$adapter"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$1;->val$adapter:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$1;->mItemSelected:Z

    .line 31
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 36
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$1;->mItemSelected:Z

    if-nez v1, :cond_0

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$1;->mItemSelected:Z

    .line 38
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$1;->val$adapter:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;->getItem(I)Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v0

    .line 39
    .local v0, "menuItem":Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->getAction()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->handleButtonClicked()V

    .line 35
    .end local v0    # "menuItem":Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    :cond_0
    return-void
.end method

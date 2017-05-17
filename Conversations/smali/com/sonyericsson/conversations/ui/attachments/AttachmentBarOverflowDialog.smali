.class public Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;
.super Landroid/app/DialogFragment;
.source "AttachmentBarOverflowDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Landroid/content/Context;[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "menuItems"    # [Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;

    invoke-direct {v0, p2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;-><init>([Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V

    .line 29
    .local v0, "adapter":Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;
    const v1, 0x7f0b00b8

    .line 30
    .local v1, "titleResId":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b00b8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 31
    new-instance v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$1;

    invoke-direct {v3, p0, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$1;-><init>(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog$Adapter;)V

    .line 30
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 27
    return-void
.end method
